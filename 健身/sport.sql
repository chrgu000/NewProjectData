/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/5/15 11:38:45                           */
/*==============================================================*/


drop table if exists sp_area;

drop table if exists sp_card;

drop table if exists sp_consume_record;

drop table if exists sp_gymnasium;

drop table if exists sp_gymnasium_type;

drop table if exists sp_lock;

drop table if exists sp_option;

drop table if exists sp_order;

drop table if exists sp_question;

drop table if exists sp_recharge;

drop table if exists sp_wechat_user;

/*==============================================================*/
/* Table: sp_area                                               */
/*==============================================================*/
create table sp_area
(
   area_id              int not null auto_increment comment '主键',
   name                 varchar(255) comment '简称',
   full_name            varchar(255) comment '全称',
   lng                  double(10,10) comment '经度',
   lat                  double(10,10) comment '纬度',
   parent_id            int comment '上级',
   level                int comment '级别,0为省,1为市,2为区',
   primary key (area_id)
);

/*==============================================================*/
/* Table: sp_card                                               */
/*==============================================================*/
create table sp_card
(
   id                   int not null auto_increment comment '主键',
   openid               varchar(255) comment '微信用户',
   balance              double(8,2) comment '余额',
   valid_date           varchar(255) comment '有效日期',
   expiry_date          varchar(255) comment '失效日期',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   primary key (id)
);

/*==============================================================*/
/* Table: sp_consume_record                                     */
/*==============================================================*/
create table sp_consume_record
(
   consume_record_id    bigint not null auto_increment comment '主键',
   openid               varchar(255) comment '微信用户',
   consume_amount       double(8,2) comment '消费金额',
   real_pay             double(8,2) comment '实付金额',
   balance_pay_amount   double(8,2) comment '余额实付金额',
   weixin_pay_amount    double(8,2) comment '微信实付金额',
   pay_status           int comment '支付状态,0:支付中,1支付成功',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   consume_sn           varchar(255) comment '消费编号',
   consume_stype        int comment '消费类型,0:微信支付订单,1余额支付订单,2微信余额混合支付订单,3微信充值',
   order_id             bigint comment '订单编号',
   primary key (consume_record_id)
);

/*==============================================================*/
/* Table: sp_gymnasium                                          */
/*==============================================================*/
create table sp_gymnasium
(
   gymnasium_id         int not null auto_increment comment '主键',
   name                 varchar(255) comment '名称',
   introduction         text comment '介绍',
   area_id              int comment '地区编号',
   address_detail       varchar(255) comment '详细地址',
   lng                  double(10,10) comment '经度',
   lat                  double(10,10) comment '纬度',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   gymnasium_type_id    int comment '场馆类型',
   lock_id              int comment '锁',
   primary key (gymnasium_id)
);

/*==============================================================*/
/* Table: sp_gymnasium_type                                     */
/*==============================================================*/
create table sp_gymnasium_type
(
   gymnasium_type_id    int not null auto_increment comment '主键',
   name                 varchar(255) comment '名称',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   primary key (gymnasium_type_id)
);

/*==============================================================*/
/* Table: sp_lock                                               */
/*==============================================================*/
create table sp_lock
(
   lock_id              int not null auto_increment comment '主键',
   lock_sn              varchar(255) comment '锁编码',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   primary key (lock_id)
);

/*==============================================================*/
/* Table: sp_option                                             */
/*==============================================================*/
create table sp_option
(
   option_id            int not null auto_increment comment '主键',
   question_option      varchar(255) comment '问题值',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   question_id          int comment '问题',
   primary key (option_id)
);

/*==============================================================*/
/* Table: sp_order                                              */
/*==============================================================*/
create table sp_order
(
   order_id             bigint not null auto_increment comment '主键',
   openid               varchar(255) comment '微信用户',
   order_amount         double(8,2) comment '订单金额',
   real_pay             double(8,2) comment '实付金额',
   pay_status           int comment '支付状态,0支付中,1:支付成功,2:已开门',
   order_status         int comment '订单状态,0:支付中,1:支付成功',
   gymnasium_id         int comment '场馆',
   begin_time           varchar(255) comment '开始时间',
   end_time             varchar(255) comment '结束时间',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   train_minutes        int comment '训练时长/分',
   primary key (order_id)
);

/*==============================================================*/
/* Table: sp_question                                           */
/*==============================================================*/
create table sp_question
(
   question_id          int not null auto_increment,
   question             varchar(255),
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   primary key (question_id)
);

/*==============================================================*/
/* Table: sp_recharge                                           */
/*==============================================================*/
create table sp_recharge
(
   id                   int not null auto_increment comment '主键',
   pay_amount           double(8,2) comment '充值金额',
   account_amount       double(8,2) comment '到账金额',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   primary key (id)
);

/*==============================================================*/
/* Table: sp_wechat_user                                        */
/*==============================================================*/
create table sp_wechat_user
(
   openid               varchar(255) not null,
   subscribe            int comment '是否关注,0为未关注,1为关注',
   nickname             varchar(255) comment '昵称',
   sex                  int comment '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
   language             varchar(255) comment '语言',
   city                 varchar(255) comment '城市',
   province             varchar(255) comment '省份',
   country              varchar(255) comment '国家',
   headimgurl           varchar(255) comment '头像',
   subscribe_time       bigint comment '关注时间',
   unionid              varchar(255) comment 'unionid',
   remark               varchar(255) comment '备注',
   groupid              int comment '组',
   tagid_list           varchar(255) comment '标签列表',
   createTime           varchar(255) comment '创建时间',
   train_count          int comment '累计训练/次',
   train_minutes        int comment '累计时长/分钟',
   train_days           int comment '累计天数',
   phone_number         varchar(255) comment '手机号',
   weight               int comment '体重/KG',
   height               int comment '身高/CM',
   birthday             varchar(255) comment '生日',
   fill_sex             int comment '用户填写的性别，用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
   soprt_address        varchar(255) comment '健身地方',
   sport_goal           varchar(255) comment '健身目的，用逗号隔开',
   sport_time           varchar(255) comment '健身时长/年',
   primary key (openid)
);

alter table sp_area add constraint FK_Reference_10 foreign key (parent_id)
      references sp_area (area_id) on delete restrict on update restrict;

alter table sp_card add constraint FK_Reference_4 foreign key (openid)
      references sp_wechat_user (openid) on delete restrict on update restrict;

alter table sp_consume_record add constraint FK_Reference_5 foreign key (order_id)
      references sp_order (order_id) on delete restrict on update restrict;

alter table sp_consume_record add constraint FK_Reference_6 foreign key (openid)
      references sp_wechat_user (openid) on delete restrict on update restrict;

alter table sp_gymnasium add constraint FK_Reference_1 foreign key (gymnasium_type_id)
      references sp_gymnasium_type (gymnasium_type_id) on delete restrict on update restrict;

alter table sp_gymnasium add constraint FK_Reference_2 foreign key (area_id)
      references sp_area (area_id) on delete restrict on update restrict;

alter table sp_gymnasium add constraint FK_Reference_7 foreign key (lock_id)
      references sp_lock (lock_id) on delete restrict on update restrict;

alter table sp_option add constraint FK_Reference_9 foreign key (question_id)
      references sp_question (question_id) on delete restrict on update restrict;

alter table sp_order add constraint FK_Reference_3 foreign key (openid)
      references sp_wechat_user (openid) on delete restrict on update restrict;

alter table sp_order add constraint FK_Reference_8 foreign key (gymnasium_id)
      references sp_gymnasium (gymnasium_id) on delete restrict on update restrict;

