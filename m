Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89AF2F8938
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jan 2021 00:14:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E876F6E4AD;
	Fri, 15 Jan 2021 23:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A0AC36E4AD;
 Fri, 15 Jan 2021 23:14:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9AB68A9A42;
 Fri, 15 Jan 2021 23:14:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 15 Jan 2021 23:14:08 -0000
Message-ID: <161075244860.28529.6723608736565728634@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210114201314.783648-1-imre.deak@intel.com>
In-Reply-To: <20210114201314.783648-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gen12=3A_Add_display_render_clear_color_decompress?=
 =?utf-8?q?ion_support_=28rev4=29?=
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

Series: drm/i915/gen12: Add display render clear color decompression support (rev4)
URL   : https://patchwork.freedesktop.org/series/85877/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b3cc19e97e22 drm/framebuffer: Format modifier for Intel Gen 12 render compression with Clear Color
bbfeeeb2135d drm/i915/gem: Add a helper to read data from a GEM object page
-:43: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:388:
+i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)

-:59: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:404:
+i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)

-:86: WARNING:TYPO_SPELLING: 'sucess' may be misspelled - perhaps 'success'?
#86: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:431:
+ * Returns 0 on sucess or -ENODEV if the type of @obj's backing store is
                 ^^^^^^

-:129: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#129: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:549:
+int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size);

total: 0 errors, 4 warnings, 0 checks, 94 lines checked
874804c1b4dd drm/i915/tgl: Add Clear Color support for TGL Render Decompression
-:360: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#360: FILE: drivers/gpu/drm/i915/i915_reg.h:7120:
+#define PLANE_CC_VAL(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_CC_VAL_1(pipe), _PLANE_CC_VAL_2(pipe))

total: 0 errors, 0 warnings, 1 checks, 272 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
