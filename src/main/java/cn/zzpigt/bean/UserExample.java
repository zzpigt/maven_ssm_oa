package cn.zzpigt.bean;

import java.util.ArrayList;
import java.util.List;

public class UserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andUseridIsNull() {
            addCriterion("userId is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userId is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(Integer value) {
            addCriterion("userId =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(Integer value) {
            addCriterion("userId <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(Integer value) {
            addCriterion("userId >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("userId >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(Integer value) {
            addCriterion("userId <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(Integer value) {
            addCriterion("userId <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<Integer> values) {
            addCriterion("userId in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<Integer> values) {
            addCriterion("userId not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(Integer value1, Integer value2) {
            addCriterion("userId between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("userId not between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUnameIsNull() {
            addCriterion("uname is null");
            return (Criteria) this;
        }

        public Criteria andUnameIsNotNull() {
            addCriterion("uname is not null");
            return (Criteria) this;
        }

        public Criteria andUnameEqualTo(String value) {
            addCriterion("uname =", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotEqualTo(String value) {
            addCriterion("uname <>", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameGreaterThan(String value) {
            addCriterion("uname >", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameGreaterThanOrEqualTo(String value) {
            addCriterion("uname >=", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLessThan(String value) {
            addCriterion("uname <", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLessThanOrEqualTo(String value) {
            addCriterion("uname <=", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLike(String value) {
            addCriterion("uname like", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotLike(String value) {
            addCriterion("uname not like", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameIn(List<String> values) {
            addCriterion("uname in", values, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotIn(List<String> values) {
            addCriterion("uname not in", values, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameBetween(String value1, String value2) {
            addCriterion("uname between", value1, value2, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotBetween(String value1, String value2) {
            addCriterion("uname not between", value1, value2, "uname");
            return (Criteria) this;
        }

        public Criteria andUpwdIsNull() {
            addCriterion("upwd is null");
            return (Criteria) this;
        }

        public Criteria andUpwdIsNotNull() {
            addCriterion("upwd is not null");
            return (Criteria) this;
        }

        public Criteria andUpwdEqualTo(String value) {
            addCriterion("upwd =", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdNotEqualTo(String value) {
            addCriterion("upwd <>", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdGreaterThan(String value) {
            addCriterion("upwd >", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdGreaterThanOrEqualTo(String value) {
            addCriterion("upwd >=", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdLessThan(String value) {
            addCriterion("upwd <", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdLessThanOrEqualTo(String value) {
            addCriterion("upwd <=", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdLike(String value) {
            addCriterion("upwd like", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdNotLike(String value) {
            addCriterion("upwd not like", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdIn(List<String> values) {
            addCriterion("upwd in", values, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdNotIn(List<String> values) {
            addCriterion("upwd not in", values, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdBetween(String value1, String value2) {
            addCriterion("upwd between", value1, value2, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdNotBetween(String value1, String value2) {
            addCriterion("upwd not between", value1, value2, "upwd");
            return (Criteria) this;
        }

        public Criteria andNicknameIsNull() {
            addCriterion("nickName is null");
            return (Criteria) this;
        }

        public Criteria andNicknameIsNotNull() {
            addCriterion("nickName is not null");
            return (Criteria) this;
        }

        public Criteria andNicknameEqualTo(String value) {
            addCriterion("nickName =", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameNotEqualTo(String value) {
            addCriterion("nickName <>", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameGreaterThan(String value) {
            addCriterion("nickName >", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameGreaterThanOrEqualTo(String value) {
            addCriterion("nickName >=", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameLessThan(String value) {
            addCriterion("nickName <", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameLessThanOrEqualTo(String value) {
            addCriterion("nickName <=", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameLike(String value) {
            addCriterion("nickName like", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameNotLike(String value) {
            addCriterion("nickName not like", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameIn(List<String> values) {
            addCriterion("nickName in", values, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameNotIn(List<String> values) {
            addCriterion("nickName not in", values, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameBetween(String value1, String value2) {
            addCriterion("nickName between", value1, value2, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameNotBetween(String value1, String value2) {
            addCriterion("nickName not between", value1, value2, "nickname");
            return (Criteria) this;
        }

        public Criteria andLeaderidIsNull() {
            addCriterion("leaderId is null");
            return (Criteria) this;
        }

        public Criteria andLeaderidIsNotNull() {
            addCriterion("leaderId is not null");
            return (Criteria) this;
        }

        public Criteria andLeaderidEqualTo(Integer value) {
            addCriterion("leaderId =", value, "leaderid");
            return (Criteria) this;
        }

        public Criteria andLeaderidNotEqualTo(Integer value) {
            addCriterion("leaderId <>", value, "leaderid");
            return (Criteria) this;
        }

        public Criteria andLeaderidGreaterThan(Integer value) {
            addCriterion("leaderId >", value, "leaderid");
            return (Criteria) this;
        }

        public Criteria andLeaderidGreaterThanOrEqualTo(Integer value) {
            addCriterion("leaderId >=", value, "leaderid");
            return (Criteria) this;
        }

        public Criteria andLeaderidLessThan(Integer value) {
            addCriterion("leaderId <", value, "leaderid");
            return (Criteria) this;
        }

        public Criteria andLeaderidLessThanOrEqualTo(Integer value) {
            addCriterion("leaderId <=", value, "leaderid");
            return (Criteria) this;
        }

        public Criteria andLeaderidIn(List<Integer> values) {
            addCriterion("leaderId in", values, "leaderid");
            return (Criteria) this;
        }

        public Criteria andLeaderidNotIn(List<Integer> values) {
            addCriterion("leaderId not in", values, "leaderid");
            return (Criteria) this;
        }

        public Criteria andLeaderidBetween(Integer value1, Integer value2) {
            addCriterion("leaderId between", value1, value2, "leaderid");
            return (Criteria) this;
        }

        public Criteria andLeaderidNotBetween(Integer value1, Integer value2) {
            addCriterion("leaderId not between", value1, value2, "leaderid");
            return (Criteria) this;
        }

        public Criteria andFaceIsNull() {
            addCriterion("face is null");
            return (Criteria) this;
        }

        public Criteria andFaceIsNotNull() {
            addCriterion("face is not null");
            return (Criteria) this;
        }

        public Criteria andFaceEqualTo(String value) {
            addCriterion("face =", value, "face");
            return (Criteria) this;
        }

        public Criteria andFaceNotEqualTo(String value) {
            addCriterion("face <>", value, "face");
            return (Criteria) this;
        }

        public Criteria andFaceGreaterThan(String value) {
            addCriterion("face >", value, "face");
            return (Criteria) this;
        }

        public Criteria andFaceGreaterThanOrEqualTo(String value) {
            addCriterion("face >=", value, "face");
            return (Criteria) this;
        }

        public Criteria andFaceLessThan(String value) {
            addCriterion("face <", value, "face");
            return (Criteria) this;
        }

        public Criteria andFaceLessThanOrEqualTo(String value) {
            addCriterion("face <=", value, "face");
            return (Criteria) this;
        }

        public Criteria andFaceLike(String value) {
            addCriterion("face like", value, "face");
            return (Criteria) this;
        }

        public Criteria andFaceNotLike(String value) {
            addCriterion("face not like", value, "face");
            return (Criteria) this;
        }

        public Criteria andFaceIn(List<String> values) {
            addCriterion("face in", values, "face");
            return (Criteria) this;
        }

        public Criteria andFaceNotIn(List<String> values) {
            addCriterion("face not in", values, "face");
            return (Criteria) this;
        }

        public Criteria andFaceBetween(String value1, String value2) {
            addCriterion("face between", value1, value2, "face");
            return (Criteria) this;
        }

        public Criteria andFaceNotBetween(String value1, String value2) {
            addCriterion("face not between", value1, value2, "face");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}