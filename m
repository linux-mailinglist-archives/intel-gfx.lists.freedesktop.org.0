Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C032FC2DA
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 22:57:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 796D16E0BE;
	Tue, 19 Jan 2021 21:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EAF996E0BE;
 Tue, 19 Jan 2021 21:57:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6F97A9932;
 Tue, 19 Jan 2021 21:57:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 19 Jan 2021 21:57:06 -0000
Message-ID: <161109342691.4866.880511170575516272@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210119192931.1116500-1-lucas.demarchi@intel.com>
In-Reply-To: <20210119192931.1116500-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/2=5D_drm/i915/tgl=3A_Use_TGL?=
 =?utf-8?q?_stepping_info_for_applying_WAs?=
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

Series: series starting with [CI,1/2] drm/i915/tgl: Use TGL stepping info for applying WAs
URL   : https://patchwork.freedesktop.org/series/86051/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b4858a6d5ba2 drm/i915/tgl: Use TGL stepping info for applying WAs
-:199: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#199: FILE: drivers/gpu/drm/i915/i915_drv.h:1595:
+#define IS_TGL_DISP_STEPPING(p, since, until) \
 	(IS_TIGERLAKE(p) && \
+	 tgl_stepping_get(p)->disp_stepping >= (since) && \
+	 tgl_stepping_get(p)->disp_stepping <= (until))

-:207: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#207: FILE: drivers/gpu/drm/i915/i915_drv.h:1600:
+#define IS_TGL_UY_GT_STEPPING(p, since, until) \
 	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
+	 tgl_stepping_get(p)->gt_stepping >= (since) && \
+	 tgl_stepping_get(p)->gt_stepping <= (until))

-:215: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#215: FILE: drivers/gpu/drm/i915/i915_drv.h:1605:
+#define IS_TGL_GT_STEPPING(p, since, until) \
 	(IS_TIGERLAKE(p) && \
 	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \
+	 tgl_stepping_get(p)->gt_stepping >= (since) && \
+	 tgl_stepping_get(p)->gt_stepping <= (until))

total: 0 errors, 0 warnings, 3 checks, 182 lines checked
f7a4bb1da969 drm/i915/adl_s: Add ADL-S platform info and PCI ids
-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#128: FILE: drivers/gpu/drm/i915/i915_drv.h:1637:
+#define IS_ADLS_DISP_STEPPING(p, since, until) \
+	(IS_ALDERLAKE_S(p) && \
+	 tgl_stepping_get(p)->disp_stepping >= (since) && \
+	 tgl_stepping_get(p)->disp_stepping <= (until))

-:133: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#133: FILE: drivers/gpu/drm/i915/i915_drv.h:1642:
+#define IS_ADLS_GT_STEPPING(p, since, until) \
+	(IS_ALDERLAKE_S(p) && \
+	 tgl_stepping_get(p)->gt_stepping >= (since) && \
+	 tgl_stepping_get(p)->gt_stepping <= (until))

-:205: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#205: FILE: include/drm/i915_pciids.h:638:
+#define INTEL_ADLS_IDS(info) \
+	INTEL_VGA_DEVICE(0x4680, info), \
+	INTEL_VGA_DEVICE(0x4681, info), \
+	INTEL_VGA_DEVICE(0x4682, info), \
+	INTEL_VGA_DEVICE(0x4683, info), \
+	INTEL_VGA_DEVICE(0x4690, info), \
+	INTEL_VGA_DEVICE(0x4691, info), \
+	INTEL_VGA_DEVICE(0x4692, info), \
+	INTEL_VGA_DEVICE(0x4693, info)

-:205: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#205: FILE: include/drm/i915_pciids.h:638:
+#define INTEL_ADLS_IDS(info) \
+	INTEL_VGA_DEVICE(0x4680, info), \
+	INTEL_VGA_DEVICE(0x4681, info), \
+	INTEL_VGA_DEVICE(0x4682, info), \
+	INTEL_VGA_DEVICE(0x4683, info), \
+	INTEL_VGA_DEVICE(0x4690, info), \
+	INTEL_VGA_DEVICE(0x4691, info), \
+	INTEL_VGA_DEVICE(0x4692, info), \
+	INTEL_VGA_DEVICE(0x4693, info)

total: 1 errors, 0 warnings, 3 checks, 126 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
