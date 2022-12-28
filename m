Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EBA658690
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 20:51:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05A9910E1E7;
	Wed, 28 Dec 2022 19:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82E2A10E1E5;
 Wed, 28 Dec 2022 19:51:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A712AA917;
 Wed, 28 Dec 2022 19:51:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Wed, 28 Dec 2022 19:51:51 -0000
Message-ID: <167225711146.24088.8938887270368297395@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221228192252.917299-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20221228192252.917299-1-gwan-gyeong.mun@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/112279/
State : warning

== Summary ==

Error: dim checkpatch failed
580bc7c6ee10 drm/i915/gem: Typecheck page lookups
-:56: WARNING:DEPRECATED_API: Deprecated use of 'kmap_atomic', prefer 'kmap_local_page' instead
#56: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:434:
+	src_map = kmap_atomic(i915_gem_object_get_page(obj, idx));

-:76: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#76: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:489:
+	GEM_BUG_ON(overflows_type(offset >> PAGE_SHIFT, pgoff_t));

-:150: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#150: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:413:
+#define i915_gem_object_page_iter_get_sg(obj, it, n, offset) ({	\
+	static_assert(castable_to_type(n, pgoff_t));		\
+	__i915_gem_object_page_iter_get_sg(obj, it, n, offset);	\
+})

-:199: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#199: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:458:
+#define i915_gem_object_get_sg(obj, n, offset) ({	\
+	static_assert(castable_to_type(n, pgoff_t));	\
+	__i915_gem_object_get_sg(obj, n, offset);	\
+})

-:248: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#248: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:503:
+#define i915_gem_object_get_sg_dma(obj, n, offset) ({	\
+	static_assert(castable_to_type(n, pgoff_t));	\
+	__i915_gem_object_get_sg_dma(obj, n, offset);	\
+})

-:286: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#286: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:539:
+#define i915_gem_object_get_page(obj, n) ({		\
+	static_assert(castable_to_type(n, pgoff_t));	\
+	__i915_gem_object_get_page(obj, n);		\
+})

-:323: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#323: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:574:
+#define i915_gem_object_get_dirty_page(obj, n) ({	\
+	static_assert(castable_to_type(n, pgoff_t));	\
+	__i915_gem_object_get_dirty_page(obj, n);	\
+})

-:364: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#364: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:612:
+#define i915_gem_object_get_dma_address_len(obj, n, len) ({	\
+	static_assert(castable_to_type(n, pgoff_t));		\
+	__i915_gem_object_get_dma_address_len(obj, n, len);	\
+})

-:401: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#401: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:647:
+#define i915_gem_object_get_dma_address(obj, n) ({	\
+	static_assert(castable_to_type(n, pgoff_t));	\
+	__i915_gem_object_get_dma_address(obj, n);	\
+})

total: 0 errors, 2 warnings, 7 checks, 616 lines checked
383085856287 drm/i915: Check for integer truncation on scatterlist creation
60d38f11dfc7 drm/i915: Check for integer truncation on the configuration of ttm place
c51e58da471c drm/i915: Check if the size is too big while creating shmem file
96ee63399a5e drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
2402a45e5aac drm/i915: Remove truncation warning for large objects


