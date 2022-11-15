package com.example.demo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.Backups;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 * MySQL数据备份表 Mapper 接口
 * </p>
 *
 * @author Xxxten0219
 * @since 2022-10-18
 */
@Mapper
public interface BackupsMapper extends BaseMapper<Backups> {

}
