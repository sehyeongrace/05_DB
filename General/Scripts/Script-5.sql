CREATE TABLE TB_REPLY(
	REPLY_NO NUMBER PRIMARY KEY,
	REPLY_WRITER VARCHAR(10) NOT NULL REFERENCES KH_MEMBER,
	REPLY_CONTENT VARCHAR2(500) NOT NULL,
	CREATE_DATE DATE DEFAULT SYSDATE,
	REF_BOARD_NO NUMBER NOT NULL REFERENCES TB_SPRING_BOARD
);
INSERT INTO TB_REPLY
VALUES (SEQ_RNO.NEXTVAL, 'user01', '후후후', SYSDATE, 1);
COMMIT;
CREATE SEQUENCE SEQ_RNO;
SELECT * FROM TB_REPLY;
SELECT
		  BOARD_NO boardNo
		, BOARD_TITLE boardTitle
		, BOARD_CONTENT boardContent
		, BOARD_WRITER boardWriter
		, TB_SPRING_BOARD.CREATE_DATE createDate
		, CHANGE_NAME changeName
		, REPLY_NO replyNo
		, REPLY_WRITER replyWriter
		, REPLY_CONTENT replyContent
		, REF_BOARD_NO refBoardNo
		, TB_REPLY.CREATE_DATE createDate
FROM
		TB_SPRING_BOARD
LEFT
JOIN
		TB_REPLY ON (BOARD_NO = REF_BOARD_NO)
WHERE
		BOARD_NO = 17
		
;


SELECT 
				BOARD_NO,
				BOARD_TITLE,
				BOARD_WRITER
FROM	
				TB_SPRING_BOARD 
WHERE 
				STATUS = 'Y'
AND 	
				--BOARD_WRITER LIKE '%ad%'
				--BOARD_TITLE LIKE '%마%'
				BOARD_CONTENT LIKE '%ㅎ%'
ORDER
BY 
				BOARD_NO DESC;


---------------------------------------------------------------


CREATE TABLE TB_COMMENTS(
	CONTENT VARCHAR2(1000) NOT NULL,
	CREATE_DATE DATE DEFAULT SYSDATE,
	UC_SEQ NUMBER NOT NULL
);

SELECT * FROM TB_COMMENTS;