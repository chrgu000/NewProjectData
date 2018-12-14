/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/7/11 11:47:24                           */
/*==============================================================*/


drop table if exists lsh_address;

drop table if exists lsh_app_user;

drop table if exists lsh_article;

drop table if exists lsh_article_comment;

drop table if exists lsh_article_picture;

drop table if exists lsh_birthday;

drop table if exists lsh_cart;

drop table if exists lsh_collection;

drop table if exists lsh_finance;

drop table if exists lsh_goods;

drop table if exists lsh_goods_comment;

drop table if exists lsh_goods_comment_picture;

drop table if exists lsh_goods_picture;

drop table if exists lsh_goods_spec;

drop table if exists lsh_goods_type;

drop table if exists lsh_memorial_day;

drop table if exists lsh_order;

drop table if exists lsh_praise;

drop table if exists lsh_sku;

drop table if exists lsh_sku_spec_value;

drop table if exists lsh_spec;

drop table if exists lsh_spec_value;

drop table if exists lsh_sys_config;

/*==============================================================*/
/* Table: lsh_address                                           */
/*==============================================================*/
create table lsh_address
(
   address_id           int not null auto_increment,
   name                 varchar(255),
   phone_number         varchar(255),
   area_id              int,
   details_addess       varchar(255),
   is_default_address   int,
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   user_id              int,
   primary key (address_id)
);

/*==============================================================*/
/* Table: lsh_app_user                                          */
/*==============================================================*/
create table lsh_app_user
(
   user_id              int not null auto_increment,
   phone_number         varchar(255) comment '手机号',
   nick_name            varchar(255) comment '昵称',
   invite_code          varchar(255) comment '邀请码',
   parent_id            int comment '上级编号',
   role                 varchar(255) comment '角色,普通用户:common,代理商:agent,合伙人:partner,VIP会员:vip',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   password             varchar(255) comment '密码',
   picture_id           varchar(255) comment '头像',
   sex                  int comment '性别，1男，2女，0未知',
   birthday             varchar(255) comment '生日',
   integration          int comment '积分',
   partner_user_id      int comment '最近合伙人编号',
   money                decimal(8,2) comment '余额',
   primary key (user_id)
);

/*==============================================================*/
/* Table: lsh_article                                           */
/*==============================================================*/
create table lsh_article
(
   article_id           int not null auto_increment,
   content              text comment '内容',
   visitor_volume       int comment '浏览量',
   user_id              int comment '用户编号',
   collection_volume    int comment '收藏量',
   praise_volume        int comment '点赞量',
   title                varchar(255) comment '标题',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   primary key (article_id)
);

/*==============================================================*/
/* Table: lsh_article_comment                                   */
/*==============================================================*/
create table lsh_article_comment
(
   articlecomment_id    int not null auto_increment,
   article_id           int comment '贴子编号',
   content              varchar(2550) comment '内容',
   user_id              int comment '评论人编号',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   parent_id            int comment '回复评论编号',
   primary key (articlecomment_id)
);

/*==============================================================*/
/* Table: lsh_article_picture                                   */
/*==============================================================*/
create table lsh_article_picture
(
   article_picture_id   int not null auto_increment,
   article_id           int comment '贴子编号',
   picture_id           int comment '图片编号',
   primary key (article_picture_id)
);

/*==============================================================*/
/* Table: lsh_birthday                                          */
/*==============================================================*/
create table lsh_birthday
(
   birthday_id          int not null auto_increment,
   name                 varchar(255) comment '姓名',
   phone_number         varchar(255) comment '手机号',
   birthday             varchar(255) comment '生日',
   user_id              int comment '用户编号',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   sex                  int comment '性别，1为男，2为女，0为未知',
   relationship         varchar(255) comment '关系',
   picture_id           varchar(255) comment '头像',
   advance_date_count   int comment '提前提醒天数',
   is_remind_lunar      int comment '是否农历提醒，1为是，0为否',
   is_remind_solar      int comment '是否公历提醒，1为是，0为否',
   primary key (birthday_id)
);

/*==============================================================*/
/* Table: lsh_cart                                              */
/*==============================================================*/
create table lsh_cart
(
   cart_id              int not null auto_increment,
   goods_id             int comment '商品编号',
   spec                 varchar(255) comment '规格',
   goods_current_price  decimal(8,2) comment '商品现单价',
   amount               int comment '数量',
   goods_amount         decimal(8,2) comment '商品金额',
   integration_amount   int comment '使用礼豆数量',
   deduction_money      decimal(8,2) comment '礼豆抵扣金额',
   real_pay_amount      decimal(8,2) comment '实付金额',
   user_id              int comment '用户编号',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   order_id             varchar(255) comment '订单编号',
   goods_original_price decimal(8,2) comment '商品原单价',
   goods_position       int comment '0普通商品,1积分商品,2生日那天免费送蛋糕商品,3抽奖商品',
   need_integration     int comment '兑换所需礼豆(积分商品才有的字段)',
   primary key (cart_id)
);

/*==============================================================*/
/* Table: lsh_collection                                        */
/*==============================================================*/
create table lsh_collection
(
   collection_id        int not null auto_increment,
   article_id           int,
   goods_id             int,
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   user_id              int comment '用户编号',
   collection_type      int comment '收藏类型,0为商品，1为贴子',
   primary key (collection_id)
);

/*==============================================================*/
/* Table: lsh_finance                                           */
/*==============================================================*/
create table lsh_finance
(
   finance_id           int not null auto_increment,
   finance_type         int comment '类型，0收入,1提现',
   amount               decimal(8,2) comment '金额',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   income_reason        varchar(255) comment '收入来源',
   user_id              int comment '用户编号',
   primary key (finance_id)
);

/*==============================================================*/
/* Table: lsh_goods                                             */
/*==============================================================*/
create table lsh_goods
(
   goods_id             int not null auto_increment,
   goodstype_id         int comment '商品类目',
   goods_name           varchar(255) comment '商品名称',
   original_price       decimal(8,2) comment '原价',
   current_price        decimal(8,2) comment '现价',
   discount             decimal(8,2) comment '折扣',
   deduction_money      decimal(8,2) comment '礼豆抵扣金额',
   goods_position       int comment '0普通商品,1积分商品,2生日那天免费送蛋糕商品,3抽奖商品',
   integration          int comment '所需礼豆',
   picture_id           varchar(255) comment '商品小图',
   sales_volume         int comment '销量',
   goods_details        text comment '商品详情',
   seqence              int comment '排序',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   gift_bag_type        int comment '1为代理商礼包、2为VIP礼包、3为合伙人礼包、0为非礼包',
   primary key (goods_id)
);

/*==============================================================*/
/* Table: lsh_goods_comment                                     */
/*==============================================================*/
create table lsh_goods_comment
(
   goodscomment_id      int not null auto_increment,
   goods_id             int,
   content              varchar(2550),
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   user_id              int,
   cart_id              int,
   primary key (goodscomment_id)
);

/*==============================================================*/
/* Table: lsh_goods_comment_picture                             */
/*==============================================================*/
create table lsh_goods_comment_picture
(
   comment_picture_id   int not null auto_increment,
   picture_id           int,
   goodscomment_id      int,
   primary key (comment_picture_id)
);

/*==============================================================*/
/* Table: lsh_goods_picture                                     */
/*==============================================================*/
create table lsh_goods_picture
(
   goods_picture_id     int not null auto_increment,
   goods_id             int,
   picture_id           int,
   seqence              int comment '排序',
   primary key (goods_picture_id)
);

/*==============================================================*/
/* Table: lsh_goods_spec                                        */
/*==============================================================*/
create table lsh_goods_spec
(
   goods_spec_id        int not null auto_increment,
   goods_id             int,
   spec_id              int,
   primary key (goods_spec_id)
);

/*==============================================================*/
/* Table: lsh_goods_type                                        */
/*==============================================================*/
create table lsh_goods_type
(
   goodstype_id         int not null auto_increment comment 'id',
   type_name            varchar(255) comment '分类名称',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   seqence              int comment '排序',
   primary key (goodstype_id)
);

/*==============================================================*/
/* Table: lsh_memorial_day                                      */
/*==============================================================*/
create table lsh_memorial_day
(
   memorialday_id       int not null auto_increment,
   user_id              int comment '用户编号',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   name                 varchar(255) comment '纪念名称',
   commemorate_date     varchar(255) comment '纪念日期',
   primary key (memorialday_id)
);

/*==============================================================*/
/* Table: lsh_order                                             */
/*==============================================================*/
create table lsh_order
(
   order_id             varchar(255) not null,
   total_amount         decimal(8,2) comment '订单总金额',
   goods_amount         decimal(8,2) comment '商品金额',
   freight_amount       decimal(8,2) comment '邮费',
   deduction_amount     decimal(8,2) comment '礼豆抵扣金额',
   integration_amount   int comment '使用礼豆数量',
   real_pay_amount      decimal(8,2) comment '实付金额',
   create_date          varchar(255) comment '创建时间',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改时间',
   update_user          varchar(255) comment '修改人',
   delete_status        int comment '删除状态,0为未删除,1为删除',
   area_id              int comment '地区编号',
   details_address      varchar(255) comment '详细地址',
   order_status         int comment '订单状态，0为待支付，1为待发货，2为待改货，3为待评价，4为已完成',
   pay_status           int comment '支付状态，0为未支付，1为已支付',
   out_order_id         varchar(255) comment '支付编号',
   user_id              int comment '用户编号',
   primary key (order_id)
);

/*==============================================================*/
/* Table: lsh_praise                                            */
/*==============================================================*/
create table lsh_praise
(
   article_id           int not null,
   user_id              int not null,
   primary key (article_id, user_id)
);

/*==============================================================*/
/* Table: lsh_sku                                               */
/*==============================================================*/
create table lsh_sku
(
   sku_id               int not null auto_increment,
   goods_id             int,
   goods_price          decimal(8,2),
   goods_inventory      int,
   integration          int,
   primary key (sku_id)
);

/*==============================================================*/
/* Table: lsh_sku_spec_value                                    */
/*==============================================================*/
create table lsh_sku_spec_value
(
   sku_id               int not null,
   specvalue_id         int not null,
   primary key (sku_id, specvalue_id)
);

/*==============================================================*/
/* Table: lsh_spec                                              */
/*==============================================================*/
create table lsh_spec
(
   spec_id              int not null auto_increment,
   spec                 varchar(255) comment '规格',
   seqence              int comment '排序',
   primary key (spec_id)
);

/*==============================================================*/
/* Table: lsh_spec_value                                        */
/*==============================================================*/
create table lsh_spec_value
(
   specvalue_id         int not null auto_increment,
   spec_value           varchar(255),
   seqence              int comment '排序',
   spec_id              int,
   primary key (specvalue_id)
);

/*==============================================================*/
/* Table: lsh_sys_config                                        */
/*==============================================================*/
create table lsh_sys_config
(
   agent_one_income     decimal(8,4) comment '代理商一级分润',
   agent_two_income     decimal(8,4) comment '代理商二级分润',
   partner_one_income   decimal(8,4) comment '合伙人一级分润',
   partner_two_income   decimal(8,4) comment '合伙人二级分润',
   vip_one_income       decimal(8,4) comment 'VIP一级分润',
   vip_two_income       decimal(8,4) comment 'VIP二级分润',
   minimum_income       decimal(8,2) comment '收入最低金额',
   integration_return_rate decimal(8,2) comment '消费1元所返回的礼豆数量',
   integration_rate     int comment '1元对应的礼豆数量'
);

alter table lsh_address add constraint FK_Reference_10 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_article add constraint FK_Reference_4 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_article_comment add constraint FK_Reference_2 foreign key (article_id)
      references lsh_article (article_id) on delete restrict on update restrict;

alter table lsh_article_comment add constraint FK_Reference_21 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_article_comment add constraint FK_Reference_22 foreign key (parent_id)
      references lsh_article_comment (articlecomment_id) on delete restrict on update restrict;

alter table lsh_article_picture add constraint FK_Reference_1 foreign key (article_id)
      references lsh_article (article_id) on delete restrict on update restrict;

alter table lsh_birthday add constraint FK_Reference_7 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_cart add constraint FK_Reference_3 foreign key (order_id)
      references lsh_order (order_id) on delete restrict on update restrict;

alter table lsh_cart add constraint FK_Reference_5 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_collection add constraint FK_Reference_12 foreign key (goods_id)
      references lsh_goods (goods_id) on delete restrict on update restrict;

alter table lsh_collection add constraint FK_Reference_13 foreign key (article_id)
      references lsh_article (article_id) on delete restrict on update restrict;

alter table lsh_collection add constraint FK_Reference_20 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_finance add constraint FK_Reference_23 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_goods add constraint FK_Reference_16 foreign key (goodstype_id)
      references lsh_goods_type (goodstype_id) on delete restrict on update restrict;

alter table lsh_goods_comment add constraint FK_Reference_11 foreign key (goods_id)
      references lsh_goods (goods_id) on delete restrict on update restrict;

alter table lsh_goods_comment add constraint FK_Reference_17 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_goods_comment add constraint FK_Reference_18 foreign key (cart_id)
      references lsh_cart (cart_id) on delete restrict on update restrict;

alter table lsh_goods_comment_picture add constraint FK_Reference_19 foreign key (goodscomment_id)
      references lsh_goods_comment (goodscomment_id) on delete restrict on update restrict;

alter table lsh_goods_picture add constraint FK_Reference_9 foreign key (goods_id)
      references lsh_goods (goods_id) on delete restrict on update restrict;

alter table lsh_goods_spec add constraint FK_Reference_25 foreign key (spec_id)
      references lsh_spec (spec_id) on delete restrict on update restrict;

alter table lsh_goods_spec add constraint FK_Reference_26 foreign key (goods_id)
      references lsh_goods (goods_id) on delete restrict on update restrict;

alter table lsh_memorial_day add constraint FK_Reference_8 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_order add constraint FK_Reference_6 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_praise add constraint FK_Reference_14 foreign key (user_id)
      references lsh_app_user (user_id) on delete restrict on update restrict;

alter table lsh_praise add constraint FK_Reference_15 foreign key (article_id)
      references lsh_article (article_id) on delete restrict on update restrict;

alter table lsh_sku add constraint FK_Reference_28 foreign key (goods_id)
      references lsh_goods (goods_id) on delete restrict on update restrict;

alter table lsh_sku_spec_value add constraint FK_Reference_29 foreign key (specvalue_id)
      references lsh_spec_value (specvalue_id) on delete restrict on update restrict;

alter table lsh_sku_spec_value add constraint FK_Reference_30 foreign key (sku_id)
      references lsh_sku (sku_id) on delete restrict on update restrict;

alter table lsh_spec_value add constraint FK_Reference_24 foreign key (spec_id)
      references lsh_spec (spec_id) on delete restrict on update restrict;

