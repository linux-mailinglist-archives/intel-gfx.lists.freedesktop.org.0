Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF4956719B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 16:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784E014A8C7;
	Tue,  5 Jul 2022 14:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB71714A25E;
 Tue,  5 Jul 2022 14:54:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2E37A363D;
 Tue,  5 Jul 2022 14:54:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 05 Jul 2022 14:54:19 -0000
Message-ID: <165703285970.2011.7240621940214554694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220705122455.3866745-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220705122455.3866745-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixes_integer_overflow_or_integer_truncation_issues_in_page?=
 =?utf-8?q?_lookups=2C_ttm_place_configuration_and_scatterlist_creation_?=
 =?utf-8?b?KHJldjMp?=
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

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev3)
URL   : https://patchwork.freedesktop.org/series/104704/
State : warning

== Summary ==

Error: dim checkpatch failed
a9f2e87eee8d drm: Move and add a few utility macros into drm util header
6d3ba3e26e48 drm/i915/gem: Typecheck page lookups
-:89: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#89: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:374:
+#define __i915_gem_object_get_sg(obj, it, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	(__i915_gem_object_get_sg)(obj, it, n, offset); \
+})

-:104: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#104: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:386:
+#define i915_gem_object_get_sg(obj, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	(i915_gem_object_get_sg)(obj, n, offset); \
+})

-:119: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#119: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:398:
+#define i915_gem_object_get_sg_dma(obj, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	(i915_gem_object_get_sg_dma)(obj, n, offset); \
+})

-:129: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#129: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:406:
+#define i915_gem_object_get_page(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	(i915_gem_object_get_page)(obj, n); \
+})

-:139: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#139: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:414:
+#define i915_gem_object_get_dirty_page(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	(i915_gem_object_get_dirty_page)(obj, n); \
+})

-:150: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#150: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:423:
+#define i915_gem_object_get_dma_address_len(obj, n, len) ({ \
+	exactly_pgoff_t(n); \
+	(i915_gem_object_get_dma_address_len)(obj, n, len); \
+})

-:160: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#160: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:431:
+#define i915_gem_object_get_dma_address(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	(i915_gem_object_get_dma_address)(obj, n); \
+})

total: 0 errors, 0 warnings, 7 checks, 391 lines checked
26cca639bed5 drm/i915: Check for integer truncation on scatterlist creation
-:199: WARNING:NEW_TYPEDEFS: do not add new typedefs
#199: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:222:
+typedef unsigned int __sg_size_t; /* see linux/scatterlist.h */

-:200: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#200: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:223:
+#define sg_alloc_table(sgt, nents, gfp) \
+	overflows_type(nents, __sg_size_t) ? -E2BIG : (sg_alloc_table)(sgt, (__sg_size_t)(nents), gfp)

-:200: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'nents' - possible side-effects?
#200: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:223:
+#define sg_alloc_table(sgt, nents, gfp) \
+	overflows_type(nents, __sg_size_t) ? -E2BIG : (sg_alloc_table)(sgt, (__sg_size_t)(nents), gfp)

-:201: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#201: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:224:
+	overflows_type(nents, __sg_size_t) ? -E2BIG : (sg_alloc_table)(sgt, (__sg_size_t)(nents), gfp)

-:203: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#203: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:226:
+#define sg_alloc_table_from_pages_segment(sgt, pages, npages, offset, size, max_segment, gfp) \
+	overflows_type(npages, __sg_size_t) ? -E2BIG : (sg_alloc_table_from_pages_segment)(sgt, pages, (__sg_size_t)(npages), offset, size, max_segment, gfp)

-:203: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'npages' - possible side-effects?
#203: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:226:
+#define sg_alloc_table_from_pages_segment(sgt, pages, npages, offset, size, max_segment, gfp) \
+	overflows_type(npages, __sg_size_t) ? -E2BIG : (sg_alloc_table_from_pages_segment)(sgt, pages, (__sg_size_t)(npages), offset, size, max_segment, gfp)

-:204: WARNING:LONG_LINE: line length of 157 exceeds 100 columns
#204: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:227:
+	overflows_type(npages, __sg_size_t) ? -E2BIG : (sg_alloc_table_from_pages_segment)(sgt, pages, (__sg_size_t)(npages), offset, size, max_segment, gfp)

total: 2 errors, 3 warnings, 2 checks, 123 lines checked
97ac44a48866 drm/i915: Check for integer truncation on the configuration of ttm place
-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ptr' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:140:
+#define SAFE_CONVERSION(ptr, value) ({ \
+	if (!safe_conversion(ptr, value)) { \
+		GEM_BUG_ON(overflows_type(value, *ptr)); \
+	} \
+})

-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'value' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:140:
+#define SAFE_CONVERSION(ptr, value) ({ \
+	if (!safe_conversion(ptr, value)) { \
+		GEM_BUG_ON(overflows_type(value, *ptr)); \
+	} \
+})

-:66: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ptr' - possible side-effects?
#66: FILE: drivers/gpu/drm/i915/intel_region_ttm.c:205:
+#define SAFE_CONVERSION(ptr, value) ({ \
+	if (!safe_conversion(ptr, value)) { \
+		GEM_BUG_ON(overflows_type(value, *ptr)); \
+		ret = -E2BIG; \
+		goto out; \
+	} \
+})

-:66: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'value' - possible side-effects?
#66: FILE: drivers/gpu/drm/i915/intel_region_ttm.c:205:
+#define SAFE_CONVERSION(ptr, value) ({ \
+	if (!safe_conversion(ptr, value)) { \
+		GEM_BUG_ON(overflows_type(value, *ptr)); \
+		ret = -E2BIG; \
+		goto out; \
+	} \
+})

-:66: WARNING:MACRO_WITH_FLOW_CONTROL: Macros with flow control statements should be avoided
#66: FILE: drivers/gpu/drm/i915/intel_region_ttm.c:205:
+#define SAFE_CONVERSION(ptr, value) ({ \
+	if (!safe_conversion(ptr, value)) { \
+		GEM_BUG_ON(overflows_type(value, *ptr)); \
+		ret = -E2BIG; \
+		goto out; \
+	} \
+})

total: 0 errors, 1 warnings, 4 checks, 65 lines checked
312aff1f2799 drm/i915: Check if the size is too big while creating shmem file
af0e92722339 drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
to add vma. The direct function that returns -ENOSPC is drm_mm_insert_node_in_range().

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
9ed7d10f87ba drm/i915: Remove truncation warning for large objects


