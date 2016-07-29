/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/7/29 9:51:08                            */
/*==============================================================*/


drop table if exists purchase_contract;

drop table if exists purchase_product;

/*==============================================================*/
/* Table: purchase_contract                                     */
/*==============================================================*/
create table purchase_contract
(
   id                   int not null auto_increment comment '主键ID，自动生成',
   contract_name        varchar(100) not null comment '合同名称',
   contract_code        varchar(50) not null comment '合同编号',
   buy_company_name     varchar(100) comment '需方公司名称',
   buy_contacts_name    varchar(50) comment '需方联系人姓名',
   buy_contacts_tel     varchar(15) comment '需方联系人电话',
   sell_company_name    varchar(100) comment '供方公司名称',
   sell_contacts_name   varchar(50) comment '供方联系人姓名',
   sell_contacts_tel    varchar(15) comment '供方联系人电话',
   create_time          datetime not null comment '添加时间',
   effective_time       datetime comment '合同签订时间',
   del_flag             int not null comment '删除标识。0：非删除；1：删除',
   update_time          datetime not null comment '更新时间',
   remark               varchar(300) comment '备注',
   primary key (id)
);

alter table purchase_contract comment '采购合同表';

/*==============================================================*/
/* Table: purchase_product                                      */
/*==============================================================*/
create table purchase_product
(
   id                   int not null auto_increment comment '主键ID，自动生成',
   contract_id          int not null comment '合同主键',
   product_model        varchar(50) comment '型号',
   product_name         varchar(100) comment '商品名称',
   product_specifications varchar(50) comment '规格',
   per_value            varchar(15) comment '1单位数量',
   unit                 varchar(100) comment '单位',
   num                  varchar(50) comment '数量',
   price                varchar(15) comment '单价',
   total_amount         datetime comment '总金额',
   effective_time       datetime not null comment '创建时间',
   update_time          datetime not null comment '更新时间',
   del_flag             int not null comment '删除标识。0：非删除；1：删除',
   remark               varchar(300) comment '备注',
   primary key (id)
);

alter table purchase_product comment '采购产品表';

