package cc.ryanc.halo.model.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author : RYAN0UP
 * @version : 1.0
 * description :
 * @date : 2018/1/24
 */
@Data
@Entity
@Table(name = "halo_menu")
public class Menu {

    /**
     * 编号 自增
     */
    @Id
    @GeneratedValue
    private Long menuId;

    /**
     * 菜单名称
     */
    private String menuName;

    /**
     * 菜单路径
     */
    private String menuUrl;

    /**
     * 排序编号
     */
    private Integer menuSort;

    /**
     * 图标，可选，部分主题可显示
     */
    private String menuIcon;
}
