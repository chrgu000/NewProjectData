/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/11/27 10:58:17                          */
/*==============================================================*/


drop table if exists bed_area;

drop table if exists bed_bed;

drop table if exists bed_feed_back;

drop table if exists bed_feed_back_picture;

drop table if exists bed_feed_back_type;

drop table if exists bed_hospital;

drop table if exists bed_order;

drop table if exists bed_recharge_amount;

drop table if exists bed_recharge_record;

drop table if exists bed_refund_record;

drop table if exists bed_setting;

/*==============================================================*/
/* Table: bed_area                                              */
/*==============================================================*/
create table bed_area
(
   area_id              int not null,
   name                 varchar(255),
   full_name            varchar(255),
   lng                  varchar(255),
   lat                  varchar(255),
   parent_id            int,
   level                int comment '0省，1市，2区',
   primary key (area_id)
);

/*==============================================================*/
/* Table: bed_bed                                               */
/*==============================================================*/
create table bed_bed
(
   id                   int not null auto_increment comment '编号',
   ali_device_name      varchar(255) comment '阿里云设备名称',
   ali_device_secret    varchar(255) comment '阿里云设备密钥',
   status               int comment '当前状态1空闲中,2使用中',
   hospital_id          int comment '所属医院',
   create_date          varchar(255) comment '创建日期',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改日期',
   update_user          varchar(255) comment '修改人',
   delete_status        varchar(255) comment '0为未删除,1为删除',
   electric_quantity    decimal(8,2) comment '电量',
   version              varchar(255) comment '版本号',
   primary key (id)
);

/*==============================================================*/
/* Table: bed_feed_back                                         */
/*==============================================================*/
create table bed_feed_back
(
   id                   int not null auto_increment comment '编号',
   device_name          varchar(255) comment '反馈类型名称',
   wechat_user_id       int comment '微信用户编号',
   bed_id               int comment '陪护床编号',
   remark               varchar(255) comment '备注',
   create_date          varchar(255) comment '创建日期',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改日期',
   update_user          varchar(255) comment '修改人',
   delete_status        varchar(255) comment '0为未删除,1为删除',
   primary key (id)
);

/*==============================================================*/
/* Table: bed_feed_back_picture                                 */
/*==============================================================*/
create table bed_feed_back_picture
(
   feed_back_id         int not null comment '反馈编号',
   picture_id           varbinary(255) not null comment '图片编号',
   primary key (feed_back_id, picture_id)
);

/*==============================================================*/
/* Table: bed_feed_back_type                                    */
/*==============================================================*/
create table bed_feed_back_type
(
   id                   int not null auto_increment comment '编号',
   type_name            varchar(255) comment '反馈类型名称',
   create_date          varchar(255) comment '创建日期',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改日期',
   update_user          varchar(255) comment '修改人',
   delete_status        varchar(255) comment '0为未删除,1为删除',
   primary key (id)
);

/*==============================================================*/
/* Table: bed_hospital                                          */
/*==============================================================*/
create table bed_hospital
(
   id                   int not null auto_increment comment '编号',
   hospital_name        varchar(255) comment '医院名称',
   agent_id             varchar(255) comment '所属代理',
   hospital_leader_id   varchar(255) comment '所属院长',
   price                decimal(8,2) comment '陪护床单价/分钟',
   province_id          int,
   city_id              int,
   area_id              int comment '地区编号',
   address              varchar(255) comment '详细地址',
   create_date          varchar(255) comment '创建日期',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改日期',
   update_user          varchar(255) comment '修改人',
   delete_status        varchar(255) comment '0为未删除,1为删除',
   primary key (id)
);

/*==============================================================*/
/* Table: bed_order                                             */
/*==============================================================*/
create table bed_order
(
   id                   varchar(255) not null comment '编号',
   wechat_user_id       int comment '微信用户id',
   bed_id               int comment '陪护床编号',
   begin_time           varchar(255) comment '开始时间',
   end_time             varchar(255) comment '结束时间',
   amount               decimal(8,2) comment '消费金额',
   status               int comment '1待支付,2使用中,3已完成',
   create_date          varchar(255) comment '创建日期',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改日期',
   update_user          varchar(255) comment '修改人',
   delete_status        varchar(255) comment '0为未删除,1为删除',
   primary key (id)
);

/*==============================================================*/
/* Table: bed_recharge_amount                                   */
/*==============================================================*/
create table bed_recharge_amount
(
   id                   int not null auto_increment comment '编号',
   recharge_amount      decimal(8,2) comment '充值金额',
   create_date          varchar(255) comment '创建日期',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改日期',
   update_user          varchar(255) comment '修改人',
   delete_status        varchar(255) comment '0为未删除,1为删除',
   primary key (id)
);

/*==============================================================*/
/* Table: bed_recharge_record                                   */
/*==============================================================*/
create table bed_recharge_record
(
   id                   int not null auto_increment comment '编号',
   recharge_sn          varchar(255) comment '充值编号',
   wechat_user_id       int comment '微信用户',
   amount               decimal(8,2) comment '充值金额',
   status               int comment '0充值中,1充值成功',
   refundable           int comment '能否退款,0不可以,1可以',
   create_date          varchar(255) comment '创建日期',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改日期',
   update_user          varchar(255) comment '修改人',
   delete_status        varchar(255) comment '0为未删除,1为删除',
   refund_amount        decimal(8,2) comment '退款金额',
   primary key (id)
);

/*==============================================================*/
/* Table: bed_refund_record                                     */
/*==============================================================*/
create table bed_refund_record
(
   id                   int not null auto_increment comment '编号',
   refund_sn            varchar(255) comment '退款编号',
   recharge_id          int comment '充值id',
   amount               decimal(8,2) comment '退款金额',
   wechat_user_id       int comment '微信用户编号',
   create_date          varchar(255) comment '创建日期',
   create_user          varchar(255) comment '创建人',
   update_date          varchar(255) comment '修改日期',
   update_user          varchar(255) comment '修改人',
   delete_status        varchar(255) comment '0为未删除,1为删除',
   primary key (id)
);

/*==============================================================*/
/* Table: bed_setting                                           */
/*==============================================================*/
create table bed_setting
(
   free_minute          int comment '免费试用分钟'
);

