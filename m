Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B38A151B245
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 00:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D9710EFDC;
	Wed,  4 May 2022 22:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1D3A610EB33;
 Wed,  4 May 2022 22:49:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A6B1A363D;
 Wed,  4 May 2022 22:49:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 04 May 2022 22:49:52 -0000
Message-ID: <165170459210.682.6516222141117582420@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220504190756.466270-1-jose.souza@intel.com>
In-Reply-To: <20220504190756.466270-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/12=5D_drm/i915=3A_Drop_IPC_from_?=
 =?utf-8?q?display_13_and_newer?=
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

Series: series starting with [01/12] drm/i915: Drop IPC from display 13 and newer
URL   : https://patchwork.freedesktop.org/series/103562/
State : warning

== Summary ==

Error: dim checkpatch failed
fe464ec005a5 drm/i915: Drop IPC from display 13 and newer
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_drv.h:1347:
+#define HAS_IPC(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 && \
+					  DISPLAY_VER(dev_priv) <= 12)

total: 0 errors, 0 warnings, 1 checks, 37 lines checked
bf709b66d5eb drm/i915/display: Disable DSB for DG2 and Alderlake-P
d6397bf6d28a drm/i915: Drop has_gt_uc from device info
41e40333f07a drm/i915: Drop has_rc6 from device info
6648e12a8320 drm/i915: Drop has_rc6p from device info
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_drv.h:1313:
+#define HAS_RC6p(dev_priv)		 (GRAPHICS_VER(dev_priv) >= 6 && \
+					  GRAPHICS_VER(dev_priv) <= 7 && \
+					  !IS_HASWELL(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 38 lines checked
a491192e6234 drm/i915: Drop has_reset_engine from device info
7a051e739286 drm/i915: Drop has_logical_ring_elsq from device info
707c49a2bf72 drm/i915: Drop has_ddi from device info
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_drv.h:1302:
+#define HAS_DDI(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 || \
+					  IS_HASWELL(dev_priv) || \
+					  IS_BROADWELL(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 38 lines checked
0ada70a2b0be drm/i915: Drop has_dp_mst from device info
0f2bb0d4f67d drm/i915: Drop has_psr from device info
85050c08ff9a drm/i915: Drop has_psr_hw_tracking from device info
-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#26: FILE: drivers/gpu/drm/i915/i915_drv.h:1307:
+#define HAS_PSR_HW_TRACKING(dev_priv)	 ((DISPLAY_VER(dev_priv) >= 9 && \
+					   DISPLAY_VER(dev_priv) <= 11) || \
+					  IS_TIGERLAKE(dev_priv) || \
+					  IS_DG1(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 54 lines checked
37af30910ec8 drm/i915: Drop supports_tv from device info
-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/i915_drv.h:1289:
+#define SUPPORTS_TV(dev_priv)		(IS_I915GM(dev_priv) || IS_I945GM(dev_priv) || \
+					 IS_I965GM(dev_priv) || IS_GM45(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 46 lines checked


