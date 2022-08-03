CREATE TABLE TBL_DICTIONARY
(
    `TD_IDX`         INT             NOT NULL    AUTO_INCREMENT COMMENT '일련번호', 
    `TD_REG_DT`      DATETIME        NULL        COMMENT '등록날짜', 
    `TD_MOD_DT`      DATETIME        NULL        COMMENT '수정날짜', 
    `TD_DEL_DT`      DATETIME        NULL        COMMENT '삭제날짜', 
    `TD_ACTIVATION`  TINYINT         NULL        COMMENT '활성상태', 
    `TD_CODE`        VARCHAR(10)     NULL        COMMENT '분류코드', 
    `TD_WORD`        VARCHAR(100)    NULL        COMMENT '단어', 
     PRIMARY KEY (TD_IDX)
);

CREATE INDEX IX_TBL_DICTIONARY_1
    ON TBL_DICTIONARY(TD_ACTIVATION, TD_CODE);