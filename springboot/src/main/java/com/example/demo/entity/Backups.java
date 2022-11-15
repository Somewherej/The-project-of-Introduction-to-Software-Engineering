package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@TableName("backups")
@Data
public class Backups {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.ASSIGN_UUID)
    private Long id;

    private String mysqlIp;

    private String mysqlPort;

    private String mysqlCmd;

    private String mysqlBackCmd;

    private String databaseName;

    private String backupsPath;

    private String backupsName;

    private Date recoveryTime;

    private Date createTime;

    private String descr;

}
