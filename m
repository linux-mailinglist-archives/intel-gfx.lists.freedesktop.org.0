Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 501D28C2563
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 15:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A705A10E1AD;
	Fri, 10 May 2024 13:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8141910E1AD;
 Fri, 10 May 2024 13:09:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/pciids=3A_P?=
 =?utf-8?q?CI_ID_macro_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 May 2024 13:09:02 -0000
Message-ID: <171534654252.2056703.15287261869853263195@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1715340032.git.jani.nikula@intel.com>
In-Reply-To: <cover.1715340032.git.jani.nikula@intel.com>
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

Series: drm/i915/pciids: PCI ID macro cleanups
URL   : https://patchwork.freedesktop.org/series/133444/
State : warning

== Summary ==

Error: dim checkpatch failed
74c4a4b08b9b drm/i915/pciids: add INTEL_PNV_IDS(), use acronym
-:72: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#72: FILE: include/drm/i915_pciids.h:117:
+#define INTEL_PNV_IDS(info) \
+	INTEL_PNV_G_IDS(info), \
+	INTEL_PNV_M_IDS(info)

-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#72: FILE: include/drm/i915_pciids.h:117:
+#define INTEL_PNV_IDS(info) \
+	INTEL_PNV_G_IDS(info), \
+	INTEL_PNV_M_IDS(info)

total: 1 errors, 0 warnings, 1 checks, 46 lines checked
ec59b5b635f2 drm/i915/pciids: add INTEL_ILK_IDS(), use acronym
-:73: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#73: FILE: include/drm/i915_pciids.h:127:
+#define INTEL_ILK_IDS(info) \
+	INTEL_ILK_D_IDS(info), \
+	INTEL_ILK_M_IDS(info)

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#73: FILE: include/drm/i915_pciids.h:127:
+#define INTEL_ILK_IDS(info) \
+	INTEL_ILK_D_IDS(info), \
+	INTEL_ILK_M_IDS(info)

total: 1 errors, 0 warnings, 1 checks, 47 lines checked
36178b28f831 drm/i915/pciids: add INTEL_SNB_IDS()
-:48: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#48: FILE: include/drm/i915_pciids.h:154:
+#define INTEL_SNB_IDS(info) \
+	INTEL_SNB_D_IDS(info), \
+	INTEL_SNB_M_IDS(info)

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#48: FILE: include/drm/i915_pciids.h:154:
+#define INTEL_SNB_IDS(info) \
+	INTEL_SNB_D_IDS(info), \
+	INTEL_SNB_M_IDS(info)

total: 1 errors, 0 warnings, 1 checks, 28 lines checked
05d3be80584d drm/i915/pciids: add INTEL_IVB_IDS()
-:48: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#48: FILE: include/drm/i915_pciids.h:180:
+#define INTEL_IVB_IDS(info) \
+	INTEL_IVB_M_IDS(info), \
+	INTEL_IVB_D_IDS(info)

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#48: FILE: include/drm/i915_pciids.h:180:
+#define INTEL_IVB_IDS(info) \
+	INTEL_IVB_M_IDS(info), \
+	INTEL_IVB_D_IDS(info)

total: 1 errors, 0 warnings, 1 checks, 28 lines checked
b960793f2bf0 drm/i915/pciids: don't include WHL/CML PCI IDs in CFL
-:56: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#56: FILE: include/drm/i915_pciids.h:491:
+#define INTEL_CML_IDS(info) \
+	INTEL_CML_GT1_IDS(info), \
+	INTEL_CML_GT2_IDS(info), \
+	INTEL_CML_U_GT1_IDS(info), \
+	INTEL_CML_U_GT2_IDS(info)

-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#56: FILE: include/drm/i915_pciids.h:491:
+#define INTEL_CML_IDS(info) \
+	INTEL_CML_GT1_IDS(info), \
+	INTEL_CML_GT2_IDS(info), \
+	INTEL_CML_U_GT1_IDS(info), \
+	INTEL_CML_U_GT2_IDS(info)

-:69: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#69: FILE: include/drm/i915_pciids.h:536:
+#define INTEL_CFL_IDS(info)	   \
+	INTEL_CFL_S_GT1_IDS(info), \
+	INTEL_CFL_S_GT2_IDS(info), \
+	INTEL_CFL_H_GT1_IDS(info), \
+	INTEL_CFL_H_GT2_IDS(info), \
+	INTEL_CFL_U_GT2_IDS(info), \
+	INTEL_CFL_U_GT3_IDS(info), \
+	INTEL_AML_CFL_GT2_IDS(info)

-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#69: FILE: include/drm/i915_pciids.h:536:
+#define INTEL_CFL_IDS(info)	   \
+	INTEL_CFL_S_GT1_IDS(info), \
+	INTEL_CFL_S_GT2_IDS(info), \
+	INTEL_CFL_H_GT1_IDS(info), \
+	INTEL_CFL_H_GT2_IDS(info), \
+	INTEL_CFL_U_GT2_IDS(info), \
+	INTEL_CFL_U_GT3_IDS(info), \
+	INTEL_AML_CFL_GT2_IDS(info)

-:92: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#92: FILE: include/drm/i915_pciids.h:559:
+#define INTEL_WHL_IDS(info) \
 	INTEL_WHL_U_GT1_IDS(info), \
 	INTEL_WHL_U_GT2_IDS(info), \
+	INTEL_WHL_U_GT3_IDS(info)

-:92: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#92: FILE: include/drm/i915_pciids.h:559:
+#define INTEL_WHL_IDS(info) \
 	INTEL_WHL_U_GT1_IDS(info), \
 	INTEL_WHL_U_GT2_IDS(info), \
+	INTEL_WHL_U_GT3_IDS(info)

total: 3 errors, 0 warnings, 3 checks, 66 lines checked
765c60a9fc28 drm/i915/pciids: remove 11 from INTEL_ICL_IDS()
-:61: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#61: FILE: include/drm/i915_pciids.h:600:
+#define INTEL_ICL_IDS(info) \
 	INTEL_ICL_PORT_F_IDS(info), \
 	INTEL_VGA_DEVICE(0x8A51, info), \
 	INTEL_VGA_DEVICE(0x8A5D, info)

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#61: FILE: include/drm/i915_pciids.h:600:
+#define INTEL_ICL_IDS(info) \
 	INTEL_ICL_PORT_F_IDS(info), \
 	INTEL_VGA_DEVICE(0x8A51, info), \
 	INTEL_VGA_DEVICE(0x8A5D, info)

total: 1 errors, 0 warnings, 1 checks, 32 lines checked
e9739817685c drm/i915/pciids: remove 12 from INTEL_TGL_IDS()
-:74: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#74: FILE: include/drm/i915_pciids.h:623:
+#define INTEL_TGL_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x9A60, info), \
 	INTEL_VGA_DEVICE(0x9A68, info), \
 	INTEL_VGA_DEVICE(0x9A70, info)

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#74: FILE: include/drm/i915_pciids.h:623:
+#define INTEL_TGL_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x9A60, info), \
 	INTEL_VGA_DEVICE(0x9A68, info), \
 	INTEL_VGA_DEVICE(0x9A70, info)

-:80: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#80: FILE: include/drm/i915_pciids.h:628:
+#define INTEL_TGL_GT2_IDS(info) \
 	INTEL_VGA_DEVICE(0x9A40, info), \
 	INTEL_VGA_DEVICE(0x9A49, info), \
 	INTEL_VGA_DEVICE(0x9A59, info), \

-:80: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#80: FILE: include/drm/i915_pciids.h:628:
+#define INTEL_TGL_GT2_IDS(info) \
 	INTEL_VGA_DEVICE(0x9A40, info), \
 	INTEL_VGA_DEVICE(0x9A49, info), \
 	INTEL_VGA_DEVICE(0x9A59, info), \

-:91: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#91: FILE: include/drm/i915_pciids.h:638:
+#define INTEL_TGL_IDS(info) \
+	INTEL_TGL_GT1_IDS(info), \
+	INTEL_TGL_GT2_IDS(info)

-:91: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#91: FILE: include/drm/i915_pciids.h:638:
+#define INTEL_TGL_IDS(info) \
+	INTEL_TGL_GT1_IDS(info), \
+	INTEL_TGL_GT2_IDS(info)

total: 3 errors, 0 warnings, 3 checks, 58 lines checked
18218e6b0d87 drm/i915/pciids: don't include RPL-U PCI IDs in RPL-P


