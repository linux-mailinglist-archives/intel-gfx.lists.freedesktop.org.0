Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC082FDCBE
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 23:52:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848A76E44D;
	Wed, 20 Jan 2021 22:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 492B06E44D;
 Wed, 20 Jan 2021 22:52:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 411E3A47EB;
 Wed, 20 Jan 2021 22:52:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 20 Jan 2021 22:52:48 -0000
Message-ID: <161118316823.8788.15268109281012473597@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210114201314.783648-1-imre.deak@intel.com>
In-Reply-To: <20210114201314.783648-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gen12=3A_Add_display_render_clear_color_decompress?=
 =?utf-8?q?ion_support_=28rev5=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gen12: Add display render clear color decompression support (rev5)
URL   : https://patchwork.freedesktop.org/series/85877/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
249da006ed76 drm/framebuffer: Format modifier for Intel Gen 12 render compression with Clear Color
8815035bf706 drm/i915/gem: Add a helper to read data from a GEM object page
-:48: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:341:
+i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)

-:64: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#64: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:357:
+i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)

-:92: WARNING:TYPO_SPELLING: 'sucess' may be misspelled - perhaps 'success'?
#92: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:385:
+ * Returns 0 on sucess or -ENODEV if the type of @obj's backing store is
                 ^^^^^^

-:135: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#135: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:540:
+int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size);

total: 0 errors, 4 warnings, 0 checks, 95 lines checked
34cda0c7d54c drm/i915/tgl: Add Clear Color support for TGL Render Decompression
-:360: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#360: FILE: drivers/gpu/drm/i915/i915_reg.h:7120:
+#define PLANE_CC_VAL(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_CC_VAL_1(pipe), _PLANE_CC_VAL_2(pipe))

total: 0 errors, 0 warnings, 1 checks, 272 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
