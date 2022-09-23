Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA485E78A7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 12:49:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA7FB10E844;
	Fri, 23 Sep 2022 10:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2074D10E840;
 Fri, 23 Sep 2022 10:49:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE69DA66C9;
 Fri, 23 Sep 2022 10:49:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Fri, 23 Sep 2022 10:49:04 -0000
Message-ID: <166393014487.30119.18442397835072499694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220923082628.3061408-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220923082628.3061408-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixes_integer_overflow_or_integer_truncation_issues_in_page?=
 =?utf-8?q?_lookups=2C_ttm_place_configuration_and_scatterlist_creation?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation
URL   : https://patchwork.freedesktop.org/series/108945/
State : warning

== Summary ==

Error: dim checkpatch failed
c7e564bf76cd overflow: Allow mixed type arguments
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
[2] https://lore.kernel.org/lkml/20220824084514.2261614-2-gwan-gyeong.mun@intel.com

-:137: CHECK:SPACING: No space is necessary after a cast
#137: FILE: lib/overflow_kunit.c:27:
+#define DEFINE_TEST_ARRAY(t)	DEFINE_TEST_ARRAY_TYPED(t, t, t)

-:137: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#137: FILE: lib/overflow_kunit.c:27:
+#define DEFINE_TEST_ARRAY(t)	DEFINE_TEST_ARRAY_TYPED(t, t, t)

-:151: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#151: FILE: lib/overflow_kunit.c:228:
+#define check_one_op(t, fmt, op, sym, a, b, r, of) do {			\
+	int _a_orig = a, _a_bump = a + 1;				\
+	int _b_orig = b, _b_bump = b + 1;				\
+	bool _of;							\
+	t _r;								\
+									\
+	_of = check_ ## op ## _overflow(a, b, &_r);			\
+	KUNIT_EXPECT_EQ_MSG(test, _of, of,				\
 		"expected "fmt" "sym" "fmt" to%s overflow (type %s)\n",	\
+		a, b, of ? "" : " not", #t);				\
+	KUNIT_EXPECT_EQ_MSG(test, _r, r,				\
 		"expected "fmt" "sym" "fmt" == "fmt", got "fmt" (type %s)\n", \
+		a, b, r, _r, #t);					\
+	/* Check for internal macro side-effects. */			\
+	_of = check_ ## op ## _overflow(_a_orig++, _b_orig++, &_r);	\
+	KUNIT_EXPECT_EQ_MSG(test, _a_orig, _a_bump, "Unexpected " #op " macro side-effect!\n"); \
+	KUNIT_EXPECT_EQ_MSG(test, _b_orig, _b_bump, "Unexpected " #op " macro side-effect!\n"); \
 } while (0)

-:151: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'sym' - possible side-effects?
#151: FILE: lib/overflow_kunit.c:228:
+#define check_one_op(t, fmt, op, sym, a, b, r, of) do {			\
+	int _a_orig = a, _a_bump = a + 1;				\
+	int _b_orig = b, _b_bump = b + 1;				\
+	bool _of;							\
+	t _r;								\
+									\
+	_of = check_ ## op ## _overflow(a, b, &_r);			\
+	KUNIT_EXPECT_EQ_MSG(test, _of, of,				\
 		"expected "fmt" "sym" "fmt" to%s overflow (type %s)\n",	\
+		a, b, of ? "" : " not", #t);				\
+	KUNIT_EXPECT_EQ_MSG(test, _r, r,				\
 		"expected "fmt" "sym" "fmt" == "fmt", got "fmt" (type %s)\n", \
+		a, b, r, _r, #t);					\
+	/* Check for internal macro side-effects. */			\
+	_of = check_ ## op ## _overflow(_a_orig++, _b_orig++, &_r);	\
+	KUNIT_EXPECT_EQ_MSG(test, _a_orig, _a_bump, "Unexpected " #op " macro side-effect!\n"); \
+	KUNIT_EXPECT_EQ_MSG(test, _b_orig, _b_bump, "Unexpected " #op " macro side-effect!\n"); \
 } while (0)

-:151: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'a' - possible side-effects?
#151: FILE: lib/overflow_kunit.c:228:
+#define check_one_op(t, fmt, op, sym, a, b, r, of) do {			\
+	int _a_orig = a, _a_bump = a + 1;				\
+	int _b_orig = b, _b_bump = b + 1;				\
+	bool _of;							\
+	t _r;								\
+									\
+	_of = check_ ## op ## _overflow(a, b, &_r);			\
+	KUNIT_EXPECT_EQ_MSG(test, _of, of,				\
 		"expected "fmt" "sym" "fmt" to%s overflow (type %s)\n",	\
+		a, b, of ? "" : " not", #t);				\
+	KUNIT_EXPECT_EQ_MSG(test, _r, r,				\
 		"expected "fmt" "sym" "fmt" == "fmt", got "fmt" (type %s)\n", \
+		a, b, r, _r, #t);					\
+	/* Check for internal macro side-effects. */			\
+	_of = check_ ## op ## _overflow(_a_orig++, _b_orig++, &_r);	\
+	KUNIT_EXPECT_EQ_MSG(test, _a_orig, _a_bump, "Unexpected " #op " macro side-effect!\n"); \
+	KUNIT_EXPECT_EQ_MSG(test, _b_orig, _b_bump, "Unexpected " #op " macro side-effect!\n"); \
 } while (0)

-:151: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#151: FILE: lib/overflow_kunit.c:228:
+#define check_one_op(t, fmt, op, sym, a, b, r, of) do {			\
+	int _a_orig = a, _a_bump = a + 1;				\
+	int _b_orig = b, _b_bump = b + 1;				\
+	bool _of;							\
+	t _r;								\
+									\
+	_of = check_ ## op ## _overflow(a, b, &_r);			\
+	KUNIT_EXPECT_EQ_MSG(test, _of, of,				\
 		"expected "fmt" "sym" "fmt" to%s overflow (type %s)\n",	\
+		a, b, of ? "" : " not", #t);				\
+	KUNIT_EXPECT_EQ_MSG(test, _r, r,				\
 		"expected "fmt" "sym" "fmt" == "fmt", got "fmt" (type %s)\n", \
+		a, b, r, _r, #t);					\
+	/* Check for internal macro side-effects. */			\
+	_of = check_ ## op ## _overflow(_a_orig++, _b_orig++, &_r);	\
+	KUNIT_EXPECT_EQ_MSG(test, _a_orig, _a_bump, "Unexpected " #op " macro side-effect!\n"); \
+	KUNIT_EXPECT_EQ_MSG(test, _b_orig, _b_bump, "Unexpected " #op " macro side-effect!\n"); \
 } while (0)

-:151: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'r' - possible side-effects?
#151: FILE: lib/overflow_kunit.c:228:
+#define check_one_op(t, fmt, op, sym, a, b, r, of) do {			\
+	int _a_orig = a, _a_bump = a + 1;				\
+	int _b_orig = b, _b_bump = b + 1;				\
+	bool _of;							\
+	t _r;								\
+									\
+	_of = check_ ## op ## _overflow(a, b, &_r);			\
+	KUNIT_EXPECT_EQ_MSG(test, _of, of,				\
 		"expected "fmt" "sym" "fmt" to%s overflow (type %s)\n",	\
+		a, b, of ? "" : " not", #t);				\
+	KUNIT_EXPECT_EQ_MSG(test, _r, r,				\
 		"expected "fmt" "sym" "fmt" == "fmt", got "fmt" (type %s)\n", \
+		a, b, r, _r, #t);					\
+	/* Check for internal macro side-effects. */			\
+	_of = check_ ## op ## _overflow(_a_orig++, _b_orig++, &_r);	\
+	KUNIT_EXPECT_EQ_MSG(test, _a_orig, _a_bump, "Unexpected " #op " macro side-effect!\n"); \
+	KUNIT_EXPECT_EQ_MSG(test, _b_orig, _b_bump, "Unexpected " #op " macro side-effect!\n"); \
 } while (0)

-:151: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'of' - possible side-effects?
#151: FILE: lib/overflow_kunit.c:228:
+#define check_one_op(t, fmt, op, sym, a, b, r, of) do {			\
+	int _a_orig = a, _a_bump = a + 1;				\
+	int _b_orig = b, _b_bump = b + 1;				\
+	bool _of;							\
+	t _r;								\
+									\
+	_of = check_ ## op ## _overflow(a, b, &_r);			\
+	KUNIT_EXPECT_EQ_MSG(test, _of, of,				\
 		"expected "fmt" "sym" "fmt" to%s overflow (type %s)\n",	\
+		a, b, of ? "" : " not", #t);				\
+	KUNIT_EXPECT_EQ_MSG(test, _r, r,				\
 		"expected "fmt" "sym" "fmt" == "fmt", got "fmt" (type %s)\n", \
+		a, b, r, _r, #t);					\
+	/* Check for internal macro side-effects. */			\
+	_of = check_ ## op ## _overflow(_a_orig++, _b_orig++, &_r);	\
+	KUNIT_EXPECT_EQ_MSG(test, _a_orig, _a_bump, "Unexpected " #op " macro side-effect!\n"); \
+	KUNIT_EXPECT_EQ_MSG(test, _b_orig, _b_bump, "Unexpected " #op " macro side-effect!\n"); \
 } while (0)

-:175: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#175: FILE: lib/overflow_kunit.c:247:
+#define DEFINE_TEST_FUNC_TYPED(n, t, fmt)				\
+static void do_test_ ## n(struct kunit *test, const struct test_ ## n *p) \
 {							   		\
 	check_one_op(t, fmt, add, "+", p->a, p->b, p->sum, p->s_of);	\
 	check_one_op(t, fmt, add, "+", p->b, p->a, p->sum, p->s_of);	\

-:175: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#175: FILE: lib/overflow_kunit.c:247:
+#define DEFINE_TEST_FUNC_TYPED(n, t, fmt)				\
+static void do_test_ ## n(struct kunit *test, const struct test_ ## n *p) \
 {							   		\
 	check_one_op(t, fmt, add, "+", p->a, p->b, p->sum, p->s_of);	\
 	check_one_op(t, fmt, add, "+", p->b, p->a, p->sum, p->s_of);	\

-:185: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#185: FILE: lib/overflow_kunit.c:257:
+static void n ## _overflow_test(struct kunit *test) {			\

-:212: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#212: FILE: lib/overflow_kunit.c:285:
+};
+DEFINE_TEST_FUNC_TYPED(u32_u32__u8, u8, "%d");

-:218: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#218: FILE: lib/overflow_kunit.c:291:
+};
+DEFINE_TEST_FUNC_TYPED(u32_u32__int, int, "%d");

-:225: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#225: FILE: lib/overflow_kunit.c:298:
+};
+DEFINE_TEST_FUNC_TYPED(u8_u8__int, int, "%d");

-:232: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#232: FILE: lib/overflow_kunit.c:305:
+};
+DEFINE_TEST_FUNC_TYPED(int_int__u8, u8, "%d");

total: 1 errors, 1 warnings, 14 checks, 224 lines checked
538cff084db9 overflow: Move and add few utility macros into overflow
0e6250331316 compiler_types.h: Add assert_same_type to catch type mis-match while compiling
-:121: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#121: FILE: include/linux/compiler_types.h:335:
+#define assert_same_typable(t, n) static_assert(			       \
+		__builtin_choose_expr(__builtin_constant_p(n),		       \
+				      overflows_type_ret_const_expr(n,t) == 0, \
+				      __same_type(t, n)))

-:121: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#121: FILE: include/linux/compiler_types.h:335:
+#define assert_same_typable(t, n) static_assert(			       \
+		__builtin_choose_expr(__builtin_constant_p(n),		       \
+				      overflows_type_ret_const_expr(n,t) == 0, \
+				      __same_type(t, n)))

-:123: ERROR:SPACING: space required after that ',' (ctx:VxV)
#123: FILE: include/linux/compiler_types.h:337:
+				      overflows_type_ret_const_expr(n,t) == 0, \
 				                                     ^

-:157: ERROR:SPACING: space required after that ',' (ctx:VxV)
#157: FILE: include/linux/overflow.h:214:
+#define overflows_type_ret_const_expr(x,T) (			\
                                        ^

-:157: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#157: FILE: include/linux/overflow.h:214:
+#define overflows_type_ret_const_expr(x,T) (			\
+	is_unsigned_type(typeof(x)) ? 				\
+		x > type_max(typeof(T)) ? 1 : 0			\
+	: is_unsigned_type(typeof(T)) ? 			\
+		x < 0 || x > type_max(typeof(T)) ? 1 : 0	\
+		: x < type_min(typeof(T)) || x > type_max(typeof(T)) ? 1 : 0 )

-:157: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#157: FILE: include/linux/overflow.h:214:
+#define overflows_type_ret_const_expr(x,T) (			\
+	is_unsigned_type(typeof(x)) ? 				\
+		x > type_max(typeof(T)) ? 1 : 0			\
+	: is_unsigned_type(typeof(T)) ? 			\
+		x < 0 || x > type_max(typeof(T)) ? 1 : 0	\
+		: x < type_min(typeof(T)) || x > type_max(typeof(T)) ? 1 : 0 )

-:158: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#158: FILE: include/linux/overflow.h:215:
+^Iis_unsigned_type(typeof(x)) ? ^I^I^I^I\$

-:158: CHECK:SPACING: No space is necessary after a cast
#158: FILE: include/linux/overflow.h:215:
+	is_unsigned_type(typeof(x)) ? 				\

-:159: CHECK:SPACING: No space is necessary after a cast
#159: FILE: include/linux/overflow.h:216:
+		x > type_max(typeof(T)) ? 1 : 0			\

-:160: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#160: FILE: include/linux/overflow.h:217:
+^I: is_unsigned_type(typeof(T)) ? ^I^I^I\$

-:160: CHECK:SPACING: No space is necessary after a cast
#160: FILE: include/linux/overflow.h:217:
+	: is_unsigned_type(typeof(T)) ? 			\

-:161: CHECK:SPACING: No space is necessary after a cast
#161: FILE: include/linux/overflow.h:218:
+		x < 0 || x > type_max(typeof(T)) ? 1 : 0	\

-:162: CHECK:SPACING: No space is necessary after a cast
#162: FILE: include/linux/overflow.h:219:
+		: x < type_min(typeof(T)) || x > type_max(typeof(T)) ? 1 : 0 )

-:162: ERROR:SPACING: space prohibited before that close parenthesis ')'
#162: FILE: include/linux/overflow.h:219:
+		: x < type_min(typeof(T)) || x > type_max(typeof(T)) ? 1 : 0 )

-:178: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't2' - possible side-effects?
#178: FILE: lib/overflow_kunit.c:693:
+#define TEST_OVERFLOWS_TYPE(t1, t2, v, of) do {				\
+	t1 __t1 = v;							\
+	t2 __t2;							\
+	bool __of;							\
+	__of = overflows_type(v, t2);					\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#v, #t2, of ? "" : " not");			\
+	}								\
+	__of = overflows_type(v, __t2);					\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#v, #t2" __t2", of ? "" : " not");		\
+	}								\
+	__of = overflows_type(__t1, t2);				\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2, of ? "" : " not");		\
+	}								\
+	__of = overflows_type(__t1, __t2);				\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2" __t2", of ? "" : " not");	\
+	}								\
+	__of = overflows_type_ret_const_expr(v, t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#v, #t2, of ? "" : " not");			\
+	}								\
+	__of = overflows_type_ret_const_expr(v, __t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#v, #t2" __t2", of ? "" : " not");		\
+	}								\
+	__of = overflows_type_ret_const_expr(__t1, t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2, of ? "" : " not");		\
+	}								\
+	__of = overflows_type_ret_const_expr(__t1, __t2) ? true : false;\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2" __t2", of ? "" : " not");	\
+	}								\
+} while(0)

-:178: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'v' - possible side-effects?
#178: FILE: lib/overflow_kunit.c:693:
+#define TEST_OVERFLOWS_TYPE(t1, t2, v, of) do {				\
+	t1 __t1 = v;							\
+	t2 __t2;							\
+	bool __of;							\
+	__of = overflows_type(v, t2);					\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#v, #t2, of ? "" : " not");			\
+	}								\
+	__of = overflows_type(v, __t2);					\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#v, #t2" __t2", of ? "" : " not");		\
+	}								\
+	__of = overflows_type(__t1, t2);				\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2, of ? "" : " not");		\
+	}								\
+	__of = overflows_type(__t1, __t2);				\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2" __t2", of ? "" : " not");	\
+	}								\
+	__of = overflows_type_ret_const_expr(v, t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#v, #t2, of ? "" : " not");			\
+	}								\
+	__of = overflows_type_ret_const_expr(v, __t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#v, #t2" __t2", of ? "" : " not");		\
+	}								\
+	__of = overflows_type_ret_const_expr(__t1, t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2, of ? "" : " not");		\
+	}								\
+	__of = overflows_type_ret_const_expr(__t1, __t2) ? true : false;\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2" __t2", of ? "" : " not");	\
+	}								\
+} while(0)

-:178: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'of' - possible side-effects?
#178: FILE: lib/overflow_kunit.c:693:
+#define TEST_OVERFLOWS_TYPE(t1, t2, v, of) do {				\
+	t1 __t1 = v;							\
+	t2 __t2;							\
+	bool __of;							\
+	__of = overflows_type(v, t2);					\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#v, #t2, of ? "" : " not");			\
+	}								\
+	__of = overflows_type(v, __t2);					\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#v, #t2" __t2", of ? "" : " not");		\
+	}								\
+	__of = overflows_type(__t1, t2);				\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2, of ? "" : " not");		\
+	}								\
+	__of = overflows_type(__t1, __t2);				\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2" __t2", of ? "" : " not");	\
+	}								\
+	__of = overflows_type_ret_const_expr(v, t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#v, #t2, of ? "" : " not");			\
+	}								\
+	__of = overflows_type_ret_const_expr(v, __t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#v, #t2" __t2", of ? "" : " not");		\
+	}								\
+	__of = overflows_type_ret_const_expr(__t1, t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2, of ? "" : " not");		\
+	}								\
+	__of = overflows_type_ret_const_expr(__t1, __t2) ? true : false;\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2" __t2", of ? "" : " not");	\
+	}								\
+} while(0)

-:178: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'of' may be better as '(of)' to avoid precedence issues
#178: FILE: lib/overflow_kunit.c:693:
+#define TEST_OVERFLOWS_TYPE(t1, t2, v, of) do {				\
+	t1 __t1 = v;							\
+	t2 __t2;							\
+	bool __of;							\
+	__of = overflows_type(v, t2);					\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#v, #t2, of ? "" : " not");			\
+	}								\
+	__of = overflows_type(v, __t2);					\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#v, #t2" __t2", of ? "" : " not");		\
+	}								\
+	__of = overflows_type(__t1, t2);				\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2, of ? "" : " not");		\
+	}								\
+	__of = overflows_type(__t1, __t2);				\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2" __t2", of ? "" : " not");	\
+	}								\
+	__of = overflows_type_ret_const_expr(v, t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#v, #t2, of ? "" : " not");			\
+	}								\
+	__of = overflows_type_ret_const_expr(v, __t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#v, #t2" __t2", of ? "" : " not");		\
+	}								\
+	__of = overflows_type_ret_const_expr(__t1, t2) ? true : false;	\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2, of ? "" : " not");		\
+	}								\
+	__of = overflows_type_ret_const_expr(__t1, __t2) ? true : false;\
+	if (__of != of) {						\
+		KUNIT_EXPECT_EQ_MSG(test, __of, of,			\
+			"expected overflows_type_ret_const_expr(%s, %s) to%s overflow\n", \
+			#t1" __t1 = "#v, #t2" __t2", of ? "" : " not");	\
+	}								\
+} while(0)

-:192: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#192: FILE: lib/overflow_kunit.c:707:
+			#v, #t2" __t2", of ? "" : " not");		\

-:198: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#198: FILE: lib/overflow_kunit.c:713:
+			#t1" __t1 = "#v, #t2, of ? "" : " not");		\

-:204: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#204: FILE: lib/overflow_kunit.c:719:
+			#t1" __t1 = "#v, #t2" __t2", of ? "" : " not");	\

-:216: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#216: FILE: lib/overflow_kunit.c:731:
+			#v, #t2" __t2", of ? "" : " not");		\

-:222: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#222: FILE: lib/overflow_kunit.c:737:
+			#t1" __t1 = "#v, #t2, of ? "" : " not");		\

-:228: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#228: FILE: lib/overflow_kunit.c:743:
+			#t1" __t1 = "#v, #t2" __t2", of ? "" : " not");	\

-:230: ERROR:SPACING: space required before the open parenthesis '('
#230: FILE: lib/overflow_kunit.c:745:
+} while(0)

-:411: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#411: FILE: lib/overflow_kunit.c:926:
+#define TEST_ASSERT_SAME_TYPE(t) do {	\
+   typeof(t) __t1 = type_max(t);	\
+   typeof(t) __t2 = type_min(t);	\
+   assert_same_type(t, t);		\
+   assert_same_type(t, __t1);		\
+   assert_same_type(__t1, t);		\
+   assert_same_type(__t1, __t2);	\
+} while (0)

-:412: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#412: FILE: lib/overflow_kunit.c:927:
+   typeof(t) __t1 = type_max(t);^I\$

-:413: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#413: FILE: lib/overflow_kunit.c:928:
+   typeof(t) __t2 = type_min(t);^I\$

-:414: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#414: FILE: lib/overflow_kunit.c:929:
+   assert_same_type(t, t);^I^I\$

-:415: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#415: FILE: lib/overflow_kunit.c:930:
+   assert_same_type(t, __t1);^I^I\$

-:416: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#416: FILE: lib/overflow_kunit.c:931:
+   assert_same_type(__t1, t);^I^I\$

-:417: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#417: FILE: lib/overflow_kunit.c:932:
+   assert_same_type(__t1, __t2);^I\$

-:421: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#421: FILE: lib/overflow_kunit.c:936:
+#define TEST_ASSERT_SAME_TYPABLE(t) do {	\
+   typeof(t) __t1 = type_max(t);		\
+   typeof(t) __t2 = type_min(t);		\
+   assert_same_typable(t, __t1);		\
+   assert_same_typable(t, type_max(t));		\
+   assert_same_typable(t, type_min(t));		\
+   assert_same_typable(__t1, type_max(t));	\
+   assert_same_typable(__t1, type_min(t));	\
+   assert_same_typable(__t1, __t2);		\
+} while (0)

-:422: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#422: FILE: lib/overflow_kunit.c:937:
+   typeof(t) __t1 = type_max(t);^I^I\$

-:423: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#423: FILE: lib/overflow_kunit.c:938:
+   typeof(t) __t2 = type_min(t);^I^I\$

-:424: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#424: FILE: lib/overflow_kunit.c:939:
+   assert_same_typable(t, __t1);^I^I\$

-:425: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#425: FILE: lib/overflow_kunit.c:940:
+   assert_same_typable(t, type_max(t));^I^I\$

-:426: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#426: FILE: lib/overflow_kunit.c:941:
+   assert_same_typable(t, type_min(t));^I^I\$

-:427: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#427: FILE: lib/overflow_kunit.c:942:
+   assert_same_typable(__t1, type_max(t));^I\$

-:428: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#428: FILE: lib/overflow_kunit.c:943:
+   assert_same_typable(__t1, type_min(t));^I\$

-:429: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#429: FILE: lib/overflow_kunit.c:944:
+   assert_same_typable(__t1, __t2);^I^I\$

total: 4 errors, 16 warnings, 21 checks, 384 lines checked
9b54f0e94b58 drm/i915/gem: Typecheck page lookups
-:144: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#144: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:413:
+#define i915_gem_object_page_iter_get_sg(obj, it, n, offset) ({	\
+	assert_same_typable(pgoff_t, n);			\
+	__i915_gem_object_page_iter_get_sg(obj, it, n, offset);	\
+})

-:193: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#193: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:458:
+#define i915_gem_object_get_sg(obj, n, offset) ({	\
+	assert_same_typable(pgoff_t, n);		\
+	__i915_gem_object_get_sg(obj, n, offset);	\
+})

-:242: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#242: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:503:
+#define i915_gem_object_get_sg_dma(obj, n, offset) ({	\
+	assert_same_typable(pgoff_t, n);		\
+	__i915_gem_object_get_sg_dma(obj, n, offset);	\
+})

-:280: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#280: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:539:
+#define i915_gem_object_get_page(obj, n) ({	\
+	assert_same_typable(pgoff_t, n);	\
+	__i915_gem_object_get_page(obj, n);	\
+})

-:317: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#317: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:574:
+#define i915_gem_object_get_dirty_page(obj, n) ({	\
+	assert_same_typable(pgoff_t, n);		\
+	__i915_gem_object_get_dirty_page(obj, n);	\
+})

-:358: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#358: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:612:
+#define i915_gem_object_get_dma_address_len(obj, n, len) ({	\
+	assert_same_typable(pgoff_t, n);			\
+	__i915_gem_object_get_dma_address_len(obj, n, len);	\
+})

-:395: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#395: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:647:
+#define i915_gem_object_get_dma_address(obj, n) ({	\
+	assert_same_typable(pgoff_t, n);		\
+	__i915_gem_object_get_dma_address(obj, n);	\
+})

total: 0 errors, 0 warnings, 7 checks, 623 lines checked
a5c31124c167 drm/i915: Check for integer truncation on scatterlist creation
-:204: WARNING:NEW_TYPEDEFS: do not add new typedefs
#204: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:224:
+typedef unsigned int __sg_size_t; /* see linux/scatterlist.h */

-:205: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#205: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:225:
+#define sg_alloc_table(sgt, nents, gfp) \
+	overflows_type(nents, __sg_size_t) ? -E2BIG \
+		: ((sg_alloc_table)(sgt, (__sg_size_t)(nents), gfp))

-:205: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'nents' - possible side-effects?
#205: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:225:
+#define sg_alloc_table(sgt, nents, gfp) \
+	overflows_type(nents, __sg_size_t) ? -E2BIG \
+		: ((sg_alloc_table)(sgt, (__sg_size_t)(nents), gfp))

-:209: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#209: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:229:
+#define sg_alloc_table_from_pages_segment(sgt, pages, npages, offset, size, max_segment, gfp) \
+	overflows_type(npages, __sg_size_t) ? -E2BIG \
+		: ((sg_alloc_table_from_pages_segment)(sgt, pages, (__sg_size_t)(npages), offset, \
+						       size, max_segment, gfp))

-:209: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'npages' - possible side-effects?
#209: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:229:
+#define sg_alloc_table_from_pages_segment(sgt, pages, npages, offset, size, max_segment, gfp) \
+	overflows_type(npages, __sg_size_t) ? -E2BIG \
+		: ((sg_alloc_table_from_pages_segment)(sgt, pages, (__sg_size_t)(npages), offset, \
+						       size, max_segment, gfp))

total: 2 errors, 1 warnings, 2 checks, 126 lines checked
7fca72c6a9e8 drm/i915: Check for integer truncation on the configuration of ttm place
6015c16f33fc drm/i915: Check if the size is too big while creating shmem file
e4ecf5fc0a6a drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
to add vma. The direct function that returns -ENOSPC is drm_mm_insert_node_in_range().

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
45fbb3235000 drm/i915: Remove truncation warning for large objects


