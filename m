Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 573C159DB17
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 14:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497B611A058;
	Tue, 23 Aug 2022 12:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF8F31139AA;
 Tue, 23 Aug 2022 12:11:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D64CDAA914;
 Tue, 23 Aug 2022 12:11:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 23 Aug 2022 12:11:05 -0000
Message-ID: <166125666586.2117.12515742703395343505@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220823101729.2098841-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220823101729.2098841-1-gwan-gyeong.mun@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/107615/
State : warning

== Summary ==

Error: dim checkpatch failed
5b7f7fd11ece overflow: Move and add few utility macros into overflow
-:122: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#122: FILE: include/linux/overflow.h:91:
+#define overflows_ptr(x, T) __must_check_overflow(({	\
+	typecheck_pointer(T);				\
+	((x) < 0) ? 1 : (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0; \
+}))

-:122: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'T' - possible side-effects?
#122: FILE: include/linux/overflow.h:91:
+#define overflows_ptr(x, T) __must_check_overflow(({	\
+	typecheck_pointer(T);				\
+	((x) < 0) ? 1 : (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0; \
+}))

-:148: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ptr' - possible side-effects?
#148: FILE: include/linux/overflow.h:117:
+#define check_assign(value, ptr) __must_check_overflow(({	\
+	typecheck_pointer(ptr); 		\
+	__builtin_add_overflow(0, value, ptr);	\
+}))

-:149: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#149: FILE: include/linux/overflow.h:118:
+^Itypecheck_pointer(ptr); ^I^I\$

total: 0 errors, 1 warnings, 3 checks, 98 lines checked
9a428eab6305 util_macros: Add exact_type macro to catch type mis-match while compiling
278009000b9f drm/i915/gem: Typecheck page lookups
-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#141: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:413:
+#define i915_gem_object_page_iter_get_sg(obj, it, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_page_iter_get_sg(obj, it, n, offset); \
+})

-:190: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#190: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:458:
+#define i915_gem_object_get_sg(obj, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_sg(obj, n, offset); \
+})

-:239: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#239: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:503:
+#define i915_gem_object_get_sg_dma(obj, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_sg_dma(obj, n, offset); \
+})

-:277: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#277: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:539:
+#define i915_gem_object_get_page(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_page(obj, n); \
+})

-:314: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#314: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:574:
+#define i915_gem_object_get_dirty_page(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_dirty_page(obj, n); \
+})

-:355: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#355: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:612:
+#define i915_gem_object_get_dma_address_len(obj, n, len) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_dma_address_len(obj, n, len); \
+})

-:392: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#392: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:647:
+#define i915_gem_object_get_dma_address(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_dma_address(obj, n); \
+})

total: 0 errors, 0 warnings, 7 checks, 623 lines checked
596989805ffb drm/i915: Check for integer truncation on scatterlist creation
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
d2376e30f655 drm/i915: Check for integer truncation on the configuration of ttm place
60cb3ac0de79 drm/i915: Check if the size is too big while creating shmem file
bef81bc7ee40 drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
to add vma. The direct function that returns -ENOSPC is drm_mm_insert_node_in_range().

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
29fd7ba1ef7e drm/i915: Remove truncation warning for large objects


