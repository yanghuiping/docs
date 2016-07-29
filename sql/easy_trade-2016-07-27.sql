/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/7/29 9:33:44                            */
/*==============================================================*/


DROP TABLE IF EXISTS purchase_contract;

DROP TABLE IF EXISTS purchase_product;

/*==============================================================*/
/* Table: purchase_contract                                     */
/*==============================================================*/
CREATE TABLE purchase_contract
(
   id                   INT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自动生成',
   contract_name        VARCHAR(100) NOT NULL COMMENT '合同名称',
   contract_code        VARCHAR(50) NOT NULL COMMENT '合同编号',
   buy_company_name     VARCHAR(100) COMMENT '需方公司名称',
   buy_contacts_name    VARCHAR(50) COMMENT '需方联系人姓名',
   buy_contacts_tel     VARCHAR(15) COMMENT '需方联系人电话',
   sell_company_name    VARCHAR(100) COMMENT '供方公司名称',
   sell_contacts_name   VARCHAR(50) COMMENT '供方联系人姓名',
   sell_contacts_tel    VARCHAR(15) COMMENT '供方联系人电话',
   create_time          DATETIME NOT NULL COMMENT '添加时间',
   effective_time       DATETIME COMMENT '合同签订时间',
   del_flag             NUMERIC(8,0) NOT NULL COMMENT '删除标识。0：非删除；1：删除',
   update_time          DATETIME NOT NULL COMMENT '更新时间',
   remark               VARCHAR(300) COMMENT '备注',
   PRIMARY KEY (id)
);

ALTER TABLE purchase_contract COMMENT '采购合同表';

/*==============================================================*/
/* Table: purchase_product                                      */
/*==============================================================*/
CREATE TABLE purchase_product
(
   id                   INT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自动生成',
   contract_id          NUMERIC(8,0) NOT NULL COMMENT '合同主键',
   product_model        VARCHAR(50) COMMENT '型号',
   product_name         VARCHAR(100) COMMENT '商品名称',
   product_specifications VARCHAR(50) COMMENT '规格',
   per_value            VARCHAR(15) COMMENT '1单位数量',
   unit                 VARCHAR(100) COMMENT '单位',
   num                  VARCHAR(50) COMMENT '数量',
   price                VARCHAR(15) COMMENT '单价',
   total_amount         DATETIME COMMENT '总金额',
   effective_time       DATETIME NOT NULL COMMENT '创建时间',
   update_time          DATETIME NOT NULL COMMENT '更新时间',
   del_flag             NUMERIC(8,0) NOT NULL COMMENT '删除标识。0：非删除；1：删除',
   remark               VARCHAR(300) COMMENT '备注',
   PRIMARY KEY (id)
);

ALTER TABLE purchase_product COMMENT '采购产品表';

