package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 *
 * </p>
 *
 * @author Xxxten0219
 * @since 2022-10-22
 */
@Data
@EqualsAndHashCode(callSuper = false)
@com.baomidou.mybatisplus.annotation.TableName("table_name")
public class TableName implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 数据库表名称
     */
    private String name;

    /**
     * 数据库表描述
     */
    private String descr;


}
