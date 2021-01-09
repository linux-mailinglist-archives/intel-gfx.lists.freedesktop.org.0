Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 341092EFD1C
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Jan 2021 03:21:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F9376E903;
	Sat,  9 Jan 2021 02:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6417C6E902;
 Sat,  9 Jan 2021 02:21:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CB61A0118;
 Sat,  9 Jan 2021 02:21:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Sat, 09 Jan 2021 02:21:07 -0000
Message-ID: <161015886734.8886.15012443115669668277@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210108231853.2859646-1-aditya.swarup@intel.com>
In-Reply-To: <20210108231853.2859646-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Use_TGL_stepping_info_and_add_ADLS_platform_changes?=
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

Series: Use TGL stepping info and add ADLS platform changes
URL   : https://patchwork.freedesktop.org/series/85639/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8370ee3ba04f drm/i915/tgl: Use TGL stepping info for applying WAs
-:198: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#198: FILE: drivers/gpu/drm/i915/i915_drv.h:1595:
+#define IS_TGL_DISP_STEPPING(p, since, until) \
 	(IS_TIGERLAKE(p) && \
+	 tgl_stepping_get(p)->disp_stepping >= (since) && \
+	 tgl_stepping_get(p)->disp_stepping <= (until))

-:206: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#206: FILE: drivers/gpu/drm/i915/i915_drv.h:1600:
+#define IS_TGL_UY_GT_STEPPING(p, since, until) \
 	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
+	 tgl_stepping_get(p)->gt_stepping >= (since) && \
+	 tgl_stepping_get(p)->gt_stepping <= (until))

-:214: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#214: FILE: drivers/gpu/drm/i915/i915_drv.h:1605:
+#define IS_TGL_GT_STEPPING(p, since, until) \
 	(IS_TIGERLAKE(p) && \
 	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \
+	 tgl_stepping_get(p)->gt_stepping >= (since) && \
+	 tgl_stepping_get(p)->gt_stepping <= (until))

total: 0 errors, 0 warnings, 3 checks, 182 lines checked
6e0b18efc188 drm/i915/adl_s: Add ADL-S platform info and PCI ids
-:123: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#123: FILE: drivers/gpu/drm/i915/i915_drv.h:1639:
+#define IS_ADLS_DISP_STEPPING(p, since, until) \
+	(IS_ALDERLAKE_S(p) && \
+	 tgl_stepping_get(p)->disp_stepping >= (since) && \
+	 tgl_stepping_get(p)->disp_stepping <= (until))

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#128: FILE: drivers/gpu/drm/i915/i915_drv.h:1644:
+#define IS_ADLS_GT_STEPPING(p, since, until) \
+	(IS_ALDERLAKE_S(p) && \
+	 tgl_stepping_get(p)->gt_stepping >= (since) && \
+	 tgl_stepping_get(p)->gt_stepping <= (until))

-:200: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#200: FILE: include/drm/i915_pciids.h:638:
+#define INTEL_ADLS_IDS(info) \
+	INTEL_VGA_DEVICE(0x4680, info), \
+	INTEL_VGA_DEVICE(0x4681, info), \
+	INTEL_VGA_DEVICE(0x4682, info), \
+	INTEL_VGA_DEVICE(0x4683, info), \
+	INTEL_VGA_DEVICE(0x4690, info), \
+	INTEL_VGA_DEVICE(0x4691, info), \
+	INTEL_VGA_DEVICE(0x4692, info), \
+	INTEL_VGA_DEVICE(0x4693, info)

-:200: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#200: FILE: include/drm/i915_pciids.h:638:
+#define INTEL_ADLS_IDS(info) \
+	INTEL_VGA_DEVICE(0x4680, info), \
+	INTEL_VGA_DEVICE(0x4681, info), \
+	INTEL_VGA_DEVICE(0x4682, info), \
+	INTEL_VGA_DEVICE(0x4683, info), \
+	INTEL_VGA_DEVICE(0x4690, info), \
+	INTEL_VGA_DEVICE(0x4691, info), \
+	INTEL_VGA_DEVICE(0x4692, info), \
+	INTEL_VGA_DEVICE(0x4693, info)

total: 1 errors, 0 warnings, 3 checks, 128 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
