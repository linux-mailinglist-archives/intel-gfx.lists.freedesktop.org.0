Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC61357B05C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 07:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B224C113903;
	Wed, 20 Jul 2022 05:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8351F113903;
 Wed, 20 Jul 2022 05:32:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69169A7DFF;
 Wed, 20 Jul 2022 05:32:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Wed, 20 Jul 2022 05:32:01 -0000
Message-ID: <165829512139.27272.9389490389231738714@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220719140424.430572-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220719140424.430572-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixes_integer_overflow_or_integer_truncation_issues_in_page?=
 =?utf-8?q?_lookups=2C_ttm_place_configuration_and_scatterlist_creation_?=
 =?utf-8?b?KHJldjcp?=
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

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev7)
URL   : https://patchwork.freedesktop.org/series/104704/
State : warning

== Summary ==

Error: dim checkpatch failed
fd0eb0f6ea9e drm: Move and add a few utility macros into drm util header
-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#87: FILE: include/drm/drm_util.h:92:
+#define overflows_type(x, T) \
+	(is_type_unsigned(x) ? \
+		is_type_unsigned(T) ? \
+			(sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+			: (sizeof(x) >= sizeof(T) && (x) >> (BITS_PER_TYPE(T) - 1)) ? 1 : 0 \
+	: is_type_unsigned(T) ? \
+		((x) < 0) ? 1 : (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+		: (sizeof(x) > sizeof(T)) ? \
+			((x) < 0) ? (((x) * -1) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+				: ((x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+			: 0)

-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'T' - possible side-effects?
#87: FILE: include/drm/drm_util.h:92:
+#define overflows_type(x, T) \
+	(is_type_unsigned(x) ? \
+		is_type_unsigned(T) ? \
+			(sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+			: (sizeof(x) >= sizeof(T) && (x) >> (BITS_PER_TYPE(T) - 1)) ? 1 : 0 \
+	: is_type_unsigned(T) ? \
+		((x) < 0) ? 1 : (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+		: (sizeof(x) > sizeof(T)) ? \
+			((x) < 0) ? (((x) * -1) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+				: ((x) >> BITS_PER_TYPE(T)) ? 1 : 0 \
+			: 0)

total: 0 errors, 0 warnings, 2 checks, 100 lines checked
5ca6d2f20a7e drm/i915/gem: Typecheck page lookups
-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:413:
+#define i915_gem_object_page_iter_get_sg(obj, it, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_page_iter_get_sg(obj, it, n, offset); \
+})

-:187: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#187: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:458:
+#define i915_gem_object_get_sg(obj, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_sg(obj, n, offset); \
+})

-:215: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#215: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:483:
+__i915_gem_object_get_sg_dma(struct drm_i915_gem_object *obj, pgoff_t n,
+			    unsigned int *offset)

-:236: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#236: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:503:
+#define i915_gem_object_get_sg_dma(obj, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_sg_dma(obj, n, offset); \
+})

-:274: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#274: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:539:
+#define i915_gem_object_get_page(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_page(obj, n); \
+})

-:311: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#311: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:574:
+#define i915_gem_object_get_dirty_page(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_dirty_page(obj, n); \
+})

-:352: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#352: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:612:
+#define i915_gem_object_get_dma_address_len(obj, n, len) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_dma_address_len(obj, n, len); \
+})

-:389: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#389: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:647:
+#define i915_gem_object_get_dma_address(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_dma_address(obj, n); \
+})

total: 0 errors, 0 warnings, 8 checks, 616 lines checked
a5e4f12a288f drm/i915: Check for integer truncation on scatterlist creation
-:200: WARNING:NEW_TYPEDEFS: do not add new typedefs
#200: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:224:
+typedef unsigned int __sg_size_t; /* see linux/scatterlist.h */

-:201: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#201: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:225:
+#define sg_alloc_table(sgt, nents, gfp) \
+	overflows_type(nents, __sg_size_t) ? -E2BIG : (sg_alloc_table)(sgt, (__sg_size_t)(nents), gfp)

-:201: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'nents' - possible side-effects?
#201: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:225:
+#define sg_alloc_table(sgt, nents, gfp) \
+	overflows_type(nents, __sg_size_t) ? -E2BIG : (sg_alloc_table)(sgt, (__sg_size_t)(nents), gfp)

-:202: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#202: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:226:
+	overflows_type(nents, __sg_size_t) ? -E2BIG : (sg_alloc_table)(sgt, (__sg_size_t)(nents), gfp)

-:204: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#204: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:228:
+#define sg_alloc_table_from_pages_segment(sgt, pages, npages, offset, size, max_segment, gfp) \
+	overflows_type(npages, __sg_size_t) ? -E2BIG : (sg_alloc_table_from_pages_segment)(sgt, pages, (__sg_size_t)(npages), offset, size, max_segment, gfp)

-:204: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'npages' - possible side-effects?
#204: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:228:
+#define sg_alloc_table_from_pages_segment(sgt, pages, npages, offset, size, max_segment, gfp) \
+	overflows_type(npages, __sg_size_t) ? -E2BIG : (sg_alloc_table_from_pages_segment)(sgt, pages, (__sg_size_t)(npages), offset, size, max_segment, gfp)

-:205: WARNING:LONG_LINE: line length of 157 exceeds 100 columns
#205: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:229:
+	overflows_type(npages, __sg_size_t) ? -E2BIG : (sg_alloc_table_from_pages_segment)(sgt, pages, (__sg_size_t)(npages), offset, size, max_segment, gfp)

total: 2 errors, 3 warnings, 2 checks, 123 lines checked
2f673156c741 drm/i915: Check for integer truncation on the configuration of ttm place
-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ptr' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/i915_gem.h:86:
+#define safe_conversion_gem_bug_on(ptr, value) !({ \
+	safe_conversion(ptr, value) ? 0 \
+		: (({ GEM_BUG_ON(overflows_type(value, *ptr)); }), 1); \
+})

-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'value' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/i915_gem.h:86:
+#define safe_conversion_gem_bug_on(ptr, value) !({ \
+	safe_conversion(ptr, value) ? 0 \
+		: (({ GEM_BUG_ON(overflows_type(value, *ptr)); }), 1); \
+})

total: 0 errors, 0 warnings, 2 checks, 63 lines checked
ea7d805dc37d drm/i915: Check if the size is too big while creating shmem file
efcb6a9e6238 drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
to add vma. The direct function that returns -ENOSPC is drm_mm_insert_node_in_range().

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
1c0e06ffa256 drm/i915: Remove truncation warning for large objects


