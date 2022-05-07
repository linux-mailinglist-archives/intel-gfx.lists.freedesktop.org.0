Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6A851E77D
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:43:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A0F11221C;
	Sat,  7 May 2022 13:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2884C10F8B9;
 Sat,  7 May 2022 13:43:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27E8CAA0EA;
 Sat,  7 May 2022 13:43:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sat, 07 May 2022 13:43:29 -0000
Message-ID: <165193100913.22139.12993291513578934092@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220507132850.10272-1-jose.souza@intel.com>
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/16=5D_drm/i915=3A_Drop_has=5Fllc?=
 =?utf-8?q?_from_device_info?=
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

Series: series starting with [01/16] drm/i915: Drop has_llc from device info
URL   : https://patchwork.freedesktop.org/series/103718/
State : warning

== Summary ==

Error: dim checkpatch failed
749bad5dad9c drm/i915: Drop has_llc from device info
-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/i915_drv.h:1239:
+#define HAS_LLC(dev_priv)	(!IS_DGFX(dev_priv) && (GRAPHICS_VER(dev_priv) >= 8 || \
+							IS_HASWELL(dev_priv) || \
+							IS_IVYBRIDGE(dev_priv) || \
+							IS_SANDYBRIDGE(dev_priv)))

total: 0 errors, 0 warnings, 1 checks, 54 lines checked
54a34a98dcc4 drm/i915: Drop has_ipc from device info
59fd2eb5368e drm/i915/display: Disable DSB for DG2 and Alderlake-P
d0c64ff37c59 drm/i915: Drop has_rc6p from device info
-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/i915_drv.h:1318:
+#define HAS_RC6p(dev_priv)		 (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 36 lines checked
1832f734ee5e drm/i915: Drop has_psr_hw_tracking from device info
-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#36: FILE: drivers/gpu/drm/i915/display/intel_psr.c:87:
+#define HAS_PSR_HW_TRACKING(dev_priv) ((DISPLAY_VER(dev_priv) >= 9 && \
+					DISPLAY_VER(dev_priv) <= 11) || \
+					IS_TIGERLAKE(dev_priv) || \
+					IS_DG1(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 61 lines checked
d3c243f6bed4 drm/i915: Drop supports_tv from device info
-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/i915_drv.h:1293:
+#define SUPPORTS_TV(dev_priv)		(IS_I915GM(dev_priv) || IS_I945GM(dev_priv) || \
+					 IS_I965GM(dev_priv) || IS_GM45(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 46 lines checked
d20d70fb49a1 drm/i915: Drop has_4tile from device info
994026183810 drm/i915: Drop has_64bit_reloc from device info
574a028dd3b1 drm/i915: Drop has_global_mocs from device info
5c4257c463e4 drm/i915: Drop has_guc_deprivilege from device info
c1f37fbf76be drm/i915: Drop has_pxp from device info
d32fc5596825 drm/i915: Drop has_heci_gscfi from device info
07cf212d426a drm/i915: Drop has_heci_gscfi from device info
-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/i915_drv.h:1378:
+#define HAS_L3_DPF(dev_priv) (IS_HASWELL(dev_priv) || IS_IVYBRIDGE(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 51 lines checked
5198bddb1f82 drm/i915: Drop has_runtime_pm from device info
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_drv.h:1333:
+#define HAS_RUNTIME_PM(dev_priv) (GRAPHICS_VER(dev_priv) >= 8 || \
+				  IS_HASWELL(dev_priv) || \
+				  IS_VALLEYVIEW(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 54 lines checked
ca6382ffb8b2 drm/i915: Drop has_logical_ring_contexts from device info
850ead5e0d81 drm/i915: Drop display.has_fpga_db from device info
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_drv.h:1309:
+#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (DISPLAY_VER(dev_priv) >= 9 || \
+					  IS_BROADWELL(dev_priv) || \
+					  IS_HASWELL(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 38 lines checked


