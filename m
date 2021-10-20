Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE5B43429C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 02:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281C46E0BC;
	Wed, 20 Oct 2021 00:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C0C7B6E20E;
 Wed, 20 Oct 2021 00:37:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8898AADD5;
 Wed, 20 Oct 2021 00:37:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Oct 2021 00:37:38 -0000
Message-ID: <163469025873.27359.10048932037506363268@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211020002353.193893-1-jose.souza@intel.com>
In-Reply-To: <20211020002353.193893-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_Add_struct_to_ho?=
 =?utf-8?q?ld_IP_version?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/3] drm/i915: Add struct to hold IP version
URL   : https://patchwork.freedesktop.org/series/96038/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
41a0609f8b33 drm/i915: Add struct to hold IP version
-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/i915_drv.h:1331:
+#define GRAPHICS_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->graphics.ver, \
+					       INTEL_INFO(i915)->graphics.rel)

-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/i915_drv.h:1337:
+#define MEDIA_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->media.arch, \
+					       INTEL_INFO(i915)->media.rel)

total: 0 errors, 0 warnings, 2 checks, 139 lines checked
bd6fdf51759f drm/i915: Track media IP stepping separated from GT
-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/i915_drv.h:1362:
+#define IS_MEDIA_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_MEDIA_STEP(__i915) == STEP_NONE), \
+	 INTEL_MEDIA_STEP(__i915) >= (since) && INTEL_MEDIA_STEP(__i915) < (until))

total: 0 errors, 0 warnings, 1 checks, 133 lines checked
92310e925ccb drm/i915: Rename GT_STEP to GRAPHICS_STEP
-:206: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#206: FILE: drivers/gpu/drm/i915/i915_drv.h:1358:
+#define IS_GRAPHICS_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_GRAPHICS_STEP(__i915) == STEP_NONE), \
+	 INTEL_GRAPHICS_STEP(__i915) >= (since) && INTEL_GRAPHICS_STEP(__i915) < (until))

-:217: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#217: FILE: drivers/gpu/drm/i915/i915_drv.h:1538:
+#define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))

-:221: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#221: FILE: drivers/gpu/drm/i915/i915_drv.h:1540:
+#define IS_KBL_GRAPHICS_STEP(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && IS_GRAPHICS_STEP(dev_priv, since, until))

-:228: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#228: FILE: drivers/gpu/drm/i915/i915_drv.h:1545:
+#define IS_JSL_EHL_GRAPHICS_STEP(p, since, until) \
+	(IS_JSL_EHL(p) && IS_GRAPHICS_STEP(p, since, until))

-:238: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#238: FILE: drivers/gpu/drm/i915/i915_drv.h:1554:
+#define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
 	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))

-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/i915_drv.h:1558:
+#define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
 	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))

-:254: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#254: FILE: drivers/gpu/drm/i915/i915_drv.h:1565:
+#define IS_DG1_GRAPHICS_STEP(p, since, until) \
+	(IS_DG1(p) && IS_GRAPHICS_STEP(p, since, until))

-:264: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#264: FILE: drivers/gpu/drm/i915/i915_drv.h:1574:
+#define IS_ADLS_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))

-:274: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#274: FILE: drivers/gpu/drm/i915/i915_drv.h:1582:
+#define IS_ADLP_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_P(__i915) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))

-:281: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#281: FILE: drivers/gpu/drm/i915/i915_drv.h:1586:
+#define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
+	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))

-:291: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#291: FILE: drivers/gpu/drm/i915/i915_drv.h:1603:
+#define IS_DG2_GRAPHICS_STEP(__i915, variant, since, until) \
 	(IS_SUBPLATFORM(__i915, INTEL_DG2, INTEL_SUBPLATFORM_##variant) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 11 checks, 309 lines checked


