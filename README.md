# SQLD


<h3>[식별자]</h3>

<h4>대표성여부</h4>
주식별자	- 엔터티 내에서 각 행을 구분할 수 있는 구분자이며, 타 엔터티와 참조관계를 연결할 수 있는 식별자 (ex. 사원번호, 고객번호)<br>
보조식별자	- 엔터티 내에서 각 행을 구분할 수 있는 구분자이나 대표성을 가지지 못해 참조관계 연결을 못함(ex. 주민등록번호)<br>

<h4>스스로 생성여부</h4>
내부식별자	- 엔터티 내부에서 스스로 만들어지는 식별자(ex. 고객번호)<br>
외부식별자	- 타 엔터티와의 관계를 통해 타 엔터티로부터 받아오는 식별자(ex. 주문엔터티의 고객번호)<br>

<h4>속성의 수</h4>
단일식별자	- 하나의 속성으로 구성된 식별자(ex. 고객엔터티의 고객번호 )<br>
복합식별자	- 둘 이상의 속성으로 구성된 식별자(ex. 주문상세엔터티의 주문번호+상세순번)<br>

<h4>대체여부</h4>
본질식별자	- 업무(비즈니스)에 의해 만들어지는 식별자(ex. 고객번호)<br>
인조식별자	- 업무적으로 만들어지지는 않지만 원조식별자가 복잡한 구성을 가지고 있기 때문에 인위적으로 만든 식별자(ex. 주문엔터티의 주문번호(고객번호+주문번호+순번))<br>
<hr><br>
<h3>[RANK]</h3>
<h4>RANK()</h4> : 중복값은 중복등수, 등수 건너뜀(1위, 1위, 3위, 4위)<br>
<h4>DENSE_RANK()</h4> : 중복값은 중복등수, 등수 안 건너뜀(1위, 1위, 2위, 2위)<br>
<h4>ROW_NUMBER()</h4> : 중복값이 있어도 고유 등수 부여(1위, 2위, 3위, 4위)<br>
