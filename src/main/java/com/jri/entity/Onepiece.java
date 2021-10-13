package com.jri.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * onepiece
 * @author 
 */
@Data
public class Onepiece implements Serializable {
    private Integer id;

    private String name;

    private String gender;

    private String addr;

    private String info;

    private static final long serialVersionUID = 1L;
}