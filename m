Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485E66176D7
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 07:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A047210E5A9;
	Thu,  3 Nov 2022 06:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 42A5310E5A9;
 Thu,  3 Nov 2022 06:46:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CC22AADD8;
 Thu,  3 Nov 2022 06:46:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Thu, 03 Nov 2022 06:46:06 -0000
Message-ID: <166745796622.9193.6668211032727939146@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221102145402.617336-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20221102145402.617336-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixes_integer_overflow_or_integer_truncation_issues_in_page?=
 =?utf-8?q?_lookups=2C_ttm_place_configuration_and_scatterlist_creation_?=
 =?utf-8?b?KHJldjIp?=
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

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev2)
URL   : https://patchwork.freedesktop.org/series/110413/
State : warning

== Summary ==

Error: dim checkpatch failed
dd0ceb452378 overflow: Introduce overflows_type() and castable_to_type()
-:27: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#27: 
[16:03:33] Elapsed time: 24.022s total, 0.002s configuring, 22.598s building, 0.767s running

-:99: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#99: FILE: include/linux/overflow.h:131:
+#define __overflows_type_constexpr(x, T) (			\
+	is_unsigned_type(typeof(x)) ?				\
+		(x) > type_max(typeof(T)) ? 1 : 0		\
+	: is_unsigned_type(typeof(T)) ?				\
+		(x) < 0 || (x) > type_max(typeof(T)) ? 1 : 0	\
+		: (x) < type_min(typeof(T)) ||			\
+		  (x) > type_max(typeof(T)) ? 1 : 0)

-:100: CHECK:SPACING: No space is necessary after a cast
#100: FILE: include/linux/overflow.h:132:
+	is_unsigned_type(typeof(x)) ?				\

-:101: CHECK:SPACING: No space is necessary after a cast
#101: FILE: include/linux/overflow.h:133:
+		(x) > type_max(typeof(T)) ? 1 : 0		\

-:102: CHECK:SPACING: No space is necessary after a cast
#102: FILE: include/linux/overflow.h:134:
+	: is_unsigned_type(typeof(T)) ?				\

-:103: CHECK:SPACING: No space is necessary after a cast
#103: FILE: include/linux/overflow.h:135:
+		(x) < 0 || (x) > type_max(typeof(T)) ? 1 : 0	\

-:104: CHECK:SPACING: No space is necessary after a cast
#104: FILE: include/linux/overflow.h:136:
+		: (x) < type_min(typeof(T)) ||			\

-:105: CHECK:SPACING: No space is necessary after a cast
#105: FILE: include/linux/overflow.h:137:
+		  (x) > type_max(typeof(T)) ? 1 : 0)

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#126: FILE: include/linux/overflow.h:158:
+#define overflows_type(n, T)					\
+	__builtin_choose_expr(__is_constexpr(n),		\
+			      __overflows_type_constexpr(n, T),	\
+			      __overflows_type(n, T))

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'T' - possible side-effects?
#126: FILE: include/linux/overflow.h:158:
+#define overflows_type(n, T)					\
+	__builtin_choose_expr(__is_constexpr(n),		\
+			      __overflows_type_constexpr(n, T),	\
+			      __overflows_type(n, T))

-:142: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#142: FILE: include/linux/overflow.h:174:
+#define castable_to_type(n, T)						\
+	__builtin_choose_expr(__is_constexpr(n),			\
+			      !__overflows_type_constexpr(n, T),	\
+			      __same_type(n, T))

-:142: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'T' - possible side-effects?
#142: FILE: include/linux/overflow.h:174:
+#define castable_to_type(n, T)						\
+	__builtin_choose_expr(__is_constexpr(n),			\
+			      !__overflows_type_constexpr(n, T),	\
+			      __same_type(n, T))

-:175: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'of' - possible side-effects?
#175: FILE: lib/overflow_kunit.c:744:
+#define __TEST_OVERFLOWS_TYPE(func, arg1, arg2, of)	do {		\
+	bool __of = func(arg1, arg2);					\
+	KUNIT_EXPECT_EQ_MSG(test, __of, of,				\
+		"expected " #func "(" #arg1 ", " #arg2 " to%s overflow\n",\
+		of ? "" : " not");					\
+	count++;							\
+} while (0)

-:184: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__t2' - possible side-effects?
#184: FILE: lib/overflow_kunit.c:753:
+#define TEST_OVERFLOWS_TYPE(__t1, __t2, v, of) do {			\
+	__t1 t1 = (v);							\
+	__t2 t2;							\
+	__TEST_OVERFLOWS_TYPE(__overflows_type, t1, t2, of);		\
+	__TEST_OVERFLOWS_TYPE(__overflows_type, t1, __t2, of);		\
+	__TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, t2, of);	\
+	__TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, __t2, of);\
+} while (0)

-:184: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'of' - possible side-effects?
#184: FILE: lib/overflow_kunit.c:753:
+#define TEST_OVERFLOWS_TYPE(__t1, __t2, v, of) do {			\
+	__t1 t1 = (v);							\
+	__t2 t2;							\
+	__TEST_OVERFLOWS_TYPE(__overflows_type, t1, t2, of);		\
+	__TEST_OVERFLOWS_TYPE(__overflows_type, t1, __t2, of);		\
+	__TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, t2, of);	\
+	__TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, __t2, of);\
+} while (0)

-:387: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't1' - possible side-effects?
#387: FILE: lib/overflow_kunit.c:956:
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

-:387: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't2' - possible side-effects?
#387: FILE: lib/overflow_kunit.c:956:
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

-:387: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'same' - possible side-effects?
#387: FILE: lib/overflow_kunit.c:956:
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

-:417: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'base' - possible side-effects?
#417: FILE: lib/overflow_kunit.c:986:
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

-:461: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pass' - possible side-effects?
#461: FILE: lib/overflow_kunit.c:1030:
+#define TEST_CASTABLE_TO_TYPE(arg1, arg2, pass)	do {	\
+	bool __pass = castable_to_type(arg1, arg2);		\
+	KUNIT_EXPECT_EQ_MSG(test, __pass, pass,			\
+		"expected castable_to_type(" #arg1 ", " #arg2 ") to%s pass\n",\
+		pass ? "" : " not");				\
+	count++;						\
+} while (0)

total: 0 errors, 1 warnings, 19 checks, 479 lines checked
b105f54348d9 drm/i915/gem: Typecheck page lookups
-:35: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match 
#35: 
Co-developed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
-:55: WARNING:DEPRECATED_API: Deprecated use of 'kmap_atomic', prefer 'kmap_local_page' instead
#55: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:434:
+	src_map = kmap_atomic(i915_gem_object_get_page(obj, idx));

-:75: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#75: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:489:
+	GEM_BUG_ON(overflows_type(offset >> PAGE_SHIFT, pgoff_t));

-:149: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#149: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:413:
+#define i915_gem_object_page_iter_get_sg(obj, it, n, offset) ({	\
+	static_assert(castable_to_type(n , pgoff_t));		\
+	__i915_gem_object_page_iter_get_sg(obj, it, n, offset);	\
+})

-:150: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#150: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:414:
+	static_assert(castable_to_type(n , pgoff_t));		\
 	                                 ^

-:198: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#198: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:458:
+#define i915_gem_object_get_sg(obj, n, offset) ({	\
+	static_assert(castable_to_type(n , pgoff_t));	\
+	__i915_gem_object_get_sg(obj, n, offset);	\
+})

-:199: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#199: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:459:
+	static_assert(castable_to_type(n , pgoff_t));	\
 	                                 ^

-:247: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#247: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:503:
+#define i915_gem_object_get_sg_dma(obj, n, offset) ({	\
+	static_assert(castable_to_type(n , pgoff_t));	\
+	__i915_gem_object_get_sg_dma(obj, n, offset);	\
+})

-:248: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#248: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:504:
+	static_assert(castable_to_type(n , pgoff_t));	\
 	                                 ^

-:285: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#285: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:539:
+#define i915_gem_object_get_page(obj, n) ({		\
+	static_assert(castable_to_type(n , pgoff_t));	\
+	__i915_gem_object_get_page(obj, n);		\
+})

-:286: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#286: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:540:
+	static_assert(castable_to_type(n , pgoff_t));	\
 	                                 ^

-:322: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#322: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:574:
+#define i915_gem_object_get_dirty_page(obj, n) ({	\
+	static_assert(castable_to_type(n , pgoff_t));	\
+	__i915_gem_object_get_dirty_page(obj, n);	\
+})

-:323: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#323: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:575:
+	static_assert(castable_to_type(n , pgoff_t));	\
 	                                 ^

-:363: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#363: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:612:
+#define i915_gem_object_get_dma_address_len(obj, n, len) ({	\
+	static_assert(castable_to_type(n , pgoff_t));		\
+	__i915_gem_object_get_dma_address_len(obj, n, len);	\
+})

-:364: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#364: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:613:
+	static_assert(castable_to_type(n , pgoff_t));		\
 	                                 ^

-:400: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#400: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:647:
+#define i915_gem_object_get_dma_address(obj, n) ({	\
+	static_assert(castable_to_type(n , pgoff_t));	\
+	__i915_gem_object_get_dma_address(obj, n);	\
+})

-:401: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#401: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:648:
+	static_assert(castable_to_type(n , pgoff_t));	\
 	                                 ^

total: 7 errors, 3 warnings, 7 checks, 616 lines checked
876f3b6a1df1 drm/i915: Check for integer truncation on scatterlist creation
-:39: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match 
#39: 
Co-developed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
total: 0 errors, 1 warnings, 0 checks, 205 lines checked
98f7bcc1df3e drm/i915: Check for integer truncation on the configuration of ttm place
0445afdda804 drm/i915: Check if the size is too big while creating shmem file
543f086b5093 drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
to add vma. The direct function that returns -ENOSPC is drm_mm_insert_node_in_range().

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
3348b03cb2ff drm/i915: Remove truncation warning for large objects


