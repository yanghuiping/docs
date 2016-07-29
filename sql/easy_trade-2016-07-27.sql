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
CREATE TABLE purchase_product
(
   id                   INT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自动生成',
   contract_id          INT NOT NULL COMMENT '合同主键',
   product_model        VARCHAR(50) COMMENT '型号',
   product_name         VARCHAR(100) COMMENT '商品名称',
   product_specifications VARCHAR(50) COMMENT '规格',
   per_value            VARCHAR(15) COMMENT '1单位数量',
   unit                 VARCHAR(100) COMMENT '单位',
   num                  NUMERIC(50,0) COMMENT '数量',
   price                NUMERIC(15,0) COMMENT '单价',
   total_amount         NUMERIC(15,0) COMMENT '总金额',
   create_time       DATETIME NOT NULL COMMENT '创建时间',
   update_time          DATETIME NOT NULL COMMENT '更新时间',
   del_flag             INT NOT NULL COMMENT '删除标识。0：非删除；1：删除',
   remark               VARCHAR(300) COMMENT '备注',
   PRIMARY KEY (id)
);

alter table purchase_product comment '采购产品表';

