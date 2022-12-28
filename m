Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 082FD6577EC
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 15:40:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15B7110E1B2;
	Wed, 28 Dec 2022 14:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 476E210E1B2;
 Wed, 28 Dec 2022 14:40:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DEC3AA01E;
 Wed, 28 Dec 2022 14:40:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Wed, 28 Dec 2022 14:40:17 -0000
Message-ID: <167223841715.24091.15407736026649273233@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/112270/
State : warning

== Summary ==

Error: dim checkpatch failed
3f25c303c308 drm/i915/gem: Typecheck page lookups
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
3ff0cc513b10 drm/i915: Check for integer truncation on scatterlist creation
-:41: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match 
#41: 
Co-developed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
total: 0 errors, 1 warnings, 0 checks, 208 lines checked
60ebf055843e drm/i915: Check for integer truncation on the configuration of ttm place
3263dd2d212e drm/i915: Check if the size is too big while creating shmem file
396b8aa185d4 drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
to add vma. The direct function that returns -ENOSPC is drm_mm_insert_node_in_range().

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
f8ce83670ed3 drm/i915: Remove truncation warning for large objects


