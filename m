Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F9F5EB496
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 00:33:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AD710E529;
	Mon, 26 Sep 2022 22:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6AA410E522;
 Mon, 26 Sep 2022 22:33:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB341A47EB;
 Mon, 26 Sep 2022 22:33:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Mon, 26 Sep 2022 22:33:43 -0000
Message-ID: <166423162367.15109.9715030099421870156@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220926153953.3836470-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220926153953.3836470-1-gwan-gyeong.mun@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/109063/
State : warning

== Summary ==

Error: dim checkpatch failed
1ae330098759 overflow: Allow mixed type arguments
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
[2] https://lore.kernel.org/lkml/20220824084514.2261614-2-gwan-gyeong.mun@intel.com

-:29: WARNING:BAD_SIGN_OFF: Use a single space after Tested-by:
#29: 
Tested-by:  Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

-:139: CHECK:SPACING: No space is necessary after a cast
#139: FILE: lib/overflow_kunit.c:27:
+#define DEFINE_TEST_ARRAY(t)	DEFINE_TEST_ARRAY_TYPED(t, t, t)

-:139: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#139: FILE: lib/overflow_kunit.c:27:
+#define DEFINE_TEST_ARRAY(t)	DEFINE_TEST_ARRAY_TYPED(t, t, t)

-:153: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#153: FILE: lib/overflow_kunit.c:228:
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

-:153: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'sym' - possible side-effects?
#153: FILE: lib/overflow_kunit.c:228:
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

-:153: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'a' - possible side-effects?
#153: FILE: lib/overflow_kunit.c:228:
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

-:153: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#153: FILE: lib/overflow_kunit.c:228:
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

-:153: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'r' - possible side-effects?
#153: FILE: lib/overflow_kunit.c:228:
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

-:153: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'of' - possible side-effects?
#153: FILE: lib/overflow_kunit.c:228:
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

-:177: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#177: FILE: lib/overflow_kunit.c:247:
+#define DEFINE_TEST_FUNC_TYPED(n, t, fmt)				\
+static void do_test_ ## n(struct kunit *test, const struct test_ ## n *p) \
 {							   		\
 	check_one_op(t, fmt, add, "+", p->a, p->b, p->sum, p->s_of);	\
 	check_one_op(t, fmt, add, "+", p->b, p->a, p->sum, p->s_of);	\

-:177: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#177: FILE: lib/overflow_kunit.c:247:
+#define DEFINE_TEST_FUNC_TYPED(n, t, fmt)				\
+static void do_test_ ## n(struct kunit *test, const struct test_ ## n *p) \
 {							   		\
 	check_one_op(t, fmt, add, "+", p->a, p->b, p->sum, p->s_of);	\
 	check_one_op(t, fmt, add, "+", p->b, p->a, p->sum, p->s_of);	\

-:187: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#187: FILE: lib/overflow_kunit.c:257:
+static void n ## _overflow_test(struct kunit *test) {			\

-:214: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#214: FILE: lib/overflow_kunit.c:285:
+};
+DEFINE_TEST_FUNC_TYPED(u32_u32__u8, u8, "%d");

-:220: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#220: FILE: lib/overflow_kunit.c:291:
+};
+DEFINE_TEST_FUNC_TYPED(u32_u32__int, int, "%d");

-:227: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#227: FILE: lib/overflow_kunit.c:298:
+};
+DEFINE_TEST_FUNC_TYPED(u8_u8__int, int, "%d");

-:234: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#234: FILE: lib/overflow_kunit.c:305:
+};
+DEFINE_TEST_FUNC_TYPED(int_int__u8, u8, "%d");

total: 1 errors, 2 warnings, 14 checks, 224 lines checked
19791f706694 overflow: Introduce check_assign() and check_assign_user_ptr()
d55b9aa8dddf overflow: Introduce overflows_type() and __castable_to_type()
-:94: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#94: FILE: include/linux/overflow.h:174:
+#define __overflows_type_constexpr(x, T) (			\
+	is_unsigned_type(typeof(x)) ?				\
+		(x) > type_max(typeof(T)) ? 1 : 0		\
+	: is_unsigned_type(typeof(T)) ?				\
+		(x) < 0 || (x) > type_max(typeof(T)) ? 1 : 0	\
+		: (x) < type_min(typeof(T)) ||			\
+		  (x) > type_max(typeof(T)) ? 1 : 0 )

-:95: CHECK:SPACING: No space is necessary after a cast
#95: FILE: include/linux/overflow.h:175:
+	is_unsigned_type(typeof(x)) ?				\

-:96: CHECK:SPACING: No space is necessary after a cast
#96: FILE: include/linux/overflow.h:176:
+		(x) > type_max(typeof(T)) ? 1 : 0		\

-:97: CHECK:SPACING: No space is necessary after a cast
#97: FILE: include/linux/overflow.h:177:
+	: is_unsigned_type(typeof(T)) ?				\

-:98: CHECK:SPACING: No space is necessary after a cast
#98: FILE: include/linux/overflow.h:178:
+		(x) < 0 || (x) > type_max(typeof(T)) ? 1 : 0	\

-:99: CHECK:SPACING: No space is necessary after a cast
#99: FILE: include/linux/overflow.h:179:
+		: (x) < type_min(typeof(T)) ||			\

-:100: CHECK:SPACING: No space is necessary after a cast
#100: FILE: include/linux/overflow.h:180:
+		  (x) > type_max(typeof(T)) ? 1 : 0 )

-:100: ERROR:SPACING: space prohibited before that close parenthesis ')'
#100: FILE: include/linux/overflow.h:180:
+		  (x) > type_max(typeof(T)) ? 1 : 0 )

-:121: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#121: FILE: include/linux/overflow.h:201:
+#define overflows_type(n, T)					\
+	__builtin_choose_expr(__is_constexpr(n),		\
+			      __overflows_type_constexpr(n, T),	\
+			      __overflows_type(n, T))

-:121: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'T' - possible side-effects?
#121: FILE: include/linux/overflow.h:201:
+#define overflows_type(n, T)					\
+	__builtin_choose_expr(__is_constexpr(n),		\
+			      __overflows_type_constexpr(n, T),	\
+			      __overflows_type(n, T))

-:137: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#137: FILE: include/linux/overflow.h:217:
+#define __castable_to_type(n, T)					\
+	__builtin_choose_expr(__is_constexpr(n),			\
+			      !__overflows_type_constexpr(n, T),	\
+			      __same_type(n, T))

-:137: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'T' - possible side-effects?
#137: FILE: include/linux/overflow.h:217:
+#define __castable_to_type(n, T)					\
+	__builtin_choose_expr(__is_constexpr(n),			\
+			      !__overflows_type_constexpr(n, T),	\
+			      __same_type(n, T))

-:177: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'of' - possible side-effects?
#177: FILE: lib/overflow_kunit.c:698:
+#define __TEST_OVERFLOWS_TYPE(func, arg1, arg2, of)	do {		\
+	bool __of = func(arg1, arg2);					\
+	KUNIT_EXPECT_EQ_MSG(test, __of, of,				\
+		"expected " #func "(" #arg1 ", " #arg2 " to%s overflow\n",\
+		of ? "" : " not");					\
+	count++;							\
+} while (0)

-:186: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__t2' - possible side-effects?
#186: FILE: lib/overflow_kunit.c:707:
+#define TEST_OVERFLOWS_TYPE(__t1, __t2, v, of) do {			\
+	__t1 t1 = (v);							\
+	__t2 t2;							\
+	__TEST_OVERFLOWS_TYPE(__overflows_type, t1, t2, of);		\
+	__TEST_OVERFLOWS_TYPE(__overflows_type, t1, __t2, of);		\
+	__TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, t2, of);	\
+	__TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, __t2, of);\
+} while (0)

-:186: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'of' - possible side-effects?
#186: FILE: lib/overflow_kunit.c:707:
+#define TEST_OVERFLOWS_TYPE(__t1, __t2, v, of) do {			\
+	__t1 t1 = (v);							\
+	__t2 t2;							\
+	__TEST_OVERFLOWS_TYPE(__overflows_type, t1, t2, of);		\
+	__TEST_OVERFLOWS_TYPE(__overflows_type, t1, __t2, of);		\
+	__TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, t2, of);	\
+	__TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, __t2, of);\
+} while (0)

-:389: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't1' - possible side-effects?
#389: FILE: lib/overflow_kunit.c:910:
+#define TEST_SAME_TYPE(t1, t2, same)			do {	\
+	typeof(t1) __t1h = type_max(t1);			\
+	typeof(t1) __t1l = type_min(t1);			\
+	typeof(t2) __t2h = type_max(t2);			\
+	typeof(t2) __t2l = type_min(t2);			\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t1, __t1h));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t1, __t1l));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t1h, t1));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t1l, t1));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t2, __t2h));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t2, __t2l));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t2h, t2));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t2l, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t1, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t2, __t1h));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t2, __t1l));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t1h, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t1l, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t1, __t2h));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t1, __t2l));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t2h, t1));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t2l, t1));	\
+} while (0)

-:389: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't2' - possible side-effects?
#389: FILE: lib/overflow_kunit.c:910:
+#define TEST_SAME_TYPE(t1, t2, same)			do {	\
+	typeof(t1) __t1h = type_max(t1);			\
+	typeof(t1) __t1l = type_min(t1);			\
+	typeof(t2) __t2h = type_max(t2);			\
+	typeof(t2) __t2l = type_min(t2);			\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t1, __t1h));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t1, __t1l));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t1h, t1));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t1l, t1));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t2, __t2h));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t2, __t2l));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t2h, t2));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t2l, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t1, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t2, __t1h));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t2, __t1l));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t1h, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t1l, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t1, __t2h));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t1, __t2l));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t2h, t1));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t2l, t1));	\
+} while (0)

-:389: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'same' - possible side-effects?
#389: FILE: lib/overflow_kunit.c:910:
+#define TEST_SAME_TYPE(t1, t2, same)			do {	\
+	typeof(t1) __t1h = type_max(t1);			\
+	typeof(t1) __t1l = type_min(t1);			\
+	typeof(t2) __t2h = type_max(t2);			\
+	typeof(t2) __t2l = type_min(t2);			\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t1, __t1h));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t1, __t1l));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t1h, t1));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t1l, t1));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t2, __t2h));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(t2, __t2l));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t2h, t2));	\
+	KUNIT_EXPECT_EQ(test, true, __same_type(__t2l, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t1, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t2, __t1h));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t2, __t1l));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t1h, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t1l, t2));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t1, __t2h));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(t1, __t2l));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t2h, t1));	\
+	KUNIT_EXPECT_EQ(test, same, __same_type(__t2l, t1));	\
+} while (0)

-:390: CHECK:SPACING: No space is necessary after a cast
#390: FILE: lib/overflow_kunit.c:911:
+	typeof(t1) __t1h = type_max(t1);			\

-:391: CHECK:SPACING: No space is necessary after a cast
#391: FILE: lib/overflow_kunit.c:912:
+	typeof(t1) __t1l = type_min(t1);			\

-:419: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'base' - possible side-effects?
#419: FILE: lib/overflow_kunit.c:940:
+#define TEST_TYPE_SETS(base, mu8, mu16, mu32, ms8, ms16, ms32, mu64, ms64) \
+do {									\
+	TEST_SAME_TYPE(base,  u8,  mu8);				\
+	TEST_SAME_TYPE(base, u16, mu16);				\
+	TEST_SAME_TYPE(base, u32, mu32);				\
+	TEST_SAME_TYPE(base,  s8,  ms8);				\
+	TEST_SAME_TYPE(base, s16, ms16);				\
+	TEST_SAME_TYPE(base, s32, ms32);				\
+	TEST_SAME_TYPE64(base, u64, mu64);				\
+	TEST_SAME_TYPE64(base, s64, ms64);				\
+} while (0)

-:470: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pass' - possible side-effects?
#470: FILE: lib/overflow_kunit.c:991:
+#define TEST_CASTABLE_TO_TYPE(arg1, arg2, pass)	do {	\
+	bool __pass = __castable_to_type(arg1, arg2);		\
+	KUNIT_EXPECT_EQ_MSG(test, __pass, pass,			\
+		"expected __castable_to_type(" #arg1 ", " #arg2 ") to%s pass\n",\
+		pass ? "" : " not");				\
+	count++;						\
+} while (0)

total: 1 errors, 0 warnings, 21 checks, 495 lines checked
d41bafa5a1c1 drm/i915/gem: Typecheck page lookups
-:146: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#146: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:413:
+#define i915_gem_object_page_iter_get_sg(obj, it, n, offset) ({	\
+	static_assert(__castable_to_type(n , pgoff_t));		\
+	__i915_gem_object_page_iter_get_sg(obj, it, n, offset);	\
+})

-:147: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#147: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:414:
+	static_assert(__castable_to_type(n , pgoff_t));		\
 	                                   ^

-:195: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#195: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:458:
+#define i915_gem_object_get_sg(obj, n, offset) ({	\
+	static_assert(__castable_to_type(n , pgoff_t));	\
+	__i915_gem_object_get_sg(obj, n, offset);	\
+})

-:196: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#196: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:459:
+	static_assert(__castable_to_type(n , pgoff_t));	\
 	                                   ^

-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:503:
+#define i915_gem_object_get_sg_dma(obj, n, offset) ({	\
+	static_assert(__castable_to_type(n , pgoff_t));	\
+	__i915_gem_object_get_sg_dma(obj, n, offset);	\
+})

-:245: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#245: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:504:
+	static_assert(__castable_to_type(n , pgoff_t));	\
 	                                   ^

-:282: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#282: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:539:
+#define i915_gem_object_get_page(obj, n) ({		\
+	static_assert(__castable_to_type(n , pgoff_t));	\
+	__i915_gem_object_get_page(obj, n);		\
+})

-:283: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#283: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:540:
+	static_assert(__castable_to_type(n , pgoff_t));	\
 	                                   ^

-:319: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#319: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:574:
+#define i915_gem_object_get_dirty_page(obj, n) ({	\
+	static_assert(__castable_to_type(n , pgoff_t));	\
+	__i915_gem_object_get_dirty_page(obj, n);	\
+})

-:320: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#320: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:575:
+	static_assert(__castable_to_type(n , pgoff_t));	\
 	                                   ^

-:360: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#360: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:612:
+#define i915_gem_object_get_dma_address_len(obj, n, len) ({	\
+	static_assert(__castable_to_type(n , pgoff_t));		\
+	__i915_gem_object_get_dma_address_len(obj, n, len);	\
+})

-:361: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#361: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:613:
+	static_assert(__castable_to_type(n , pgoff_t));		\
 	                                   ^

-:397: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#397: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:647:
+#define i915_gem_object_get_dma_address(obj, n) ({	\
+	static_assert(__castable_to_type(n , pgoff_t));	\
+	__i915_gem_object_get_dma_address(obj, n);	\
+})

-:398: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#398: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:648:
+	static_assert(__castable_to_type(n , pgoff_t));	\
 	                                   ^

total: 7 errors, 0 warnings, 7 checks, 623 lines checked
705acbbb056f drm/i915: Check for integer truncation on scatterlist creation
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
2d50276f60e4 drm/i915: Check for integer truncation on the configuration of ttm place
bf9e6355c268 drm/i915: Check if the size is too big while creating shmem file
e4f7f4726c16 drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
to add vma. The direct function that returns -ENOSPC is drm_mm_insert_node_in_range().

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
d22c0b7f26dd drm/i915: Remove truncation warning for large objects


