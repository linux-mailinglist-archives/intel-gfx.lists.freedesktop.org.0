Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8758954E772
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 18:41:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545C811A564;
	Thu, 16 Jun 2022 16:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AF7911A564;
 Thu, 16 Jun 2022 16:41:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 117BBAADD7;
 Thu, 16 Jun 2022 16:41:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 16 Jun 2022 16:41:13 -0000
Message-ID: <165539767304.17457.14547349734166302016@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220616120106.24353-1-anshuman.gupta@intel.com>
In-Reply-To: <20220616120106.24353-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DG2_VRAM=5FSR_Support_=28rev3=29?=
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

Series: DG2 VRAM_SR Support (rev3)
URL   : https://patchwork.freedesktop.org/series/104128/
State : warning

== Summary ==

Error: dim checkpatch failed
ee513fcc2693 drm/i915/dgfx: OpRegion VRAM Self Refresh Support
341133e9b9ad drm/i915/dg1: OpRegion PCON DG1 MBD config support
b0e90ba1012b drm/i915/dg2: Add DG2_NB_MBD subplatform
-:108: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#108: FILE: include/drm/i915_pciids.h:696:
+#define INTEL_DG2_G10_NB_MBD_IDS(info) \
 	INTEL_VGA_DEVICE(0x5690, info), \
 	INTEL_VGA_DEVICE(0x5691, info), \
+	INTEL_VGA_DEVICE(0x5692, info)

-:108: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#108: FILE: include/drm/i915_pciids.h:696:
+#define INTEL_DG2_G10_NB_MBD_IDS(info) \
 	INTEL_VGA_DEVICE(0x5690, info), \
 	INTEL_VGA_DEVICE(0x5691, info), \
+	INTEL_VGA_DEVICE(0x5692, info)

-:114: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#114: FILE: include/drm/i915_pciids.h:701:
+#define INTEL_DG2_G11_NB_MBD_IDS(info) \
+	INTEL_VGA_DEVICE(0x5693, info), \
+	INTEL_VGA_DEVICE(0x5694, info), \
+	INTEL_VGA_DEVICE(0x5695, info)

-:114: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#114: FILE: include/drm/i915_pciids.h:701:
+#define INTEL_DG2_G11_NB_MBD_IDS(info) \
+	INTEL_VGA_DEVICE(0x5693, info), \
+	INTEL_VGA_DEVICE(0x5694, info), \
+	INTEL_VGA_DEVICE(0x5695, info)

-:119: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#119: FILE: include/drm/i915_pciids.h:706:
+#define INTEL_DG2_G12_NB_MBD_IDS(info) \
+	INTEL_VGA_DEVICE(0x5696, info), \
+	INTEL_VGA_DEVICE(0x5697, info)

-:119: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#119: FILE: include/drm/i915_pciids.h:706:
+#define INTEL_DG2_G12_NB_MBD_IDS(info) \
+	INTEL_VGA_DEVICE(0x5696, info), \
+	INTEL_VGA_DEVICE(0x5697, info)

-:123: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#123: FILE: include/drm/i915_pciids.h:710:
+#define INTEL_DG2_G10_IDS(info) \
 	INTEL_VGA_DEVICE(0x56A0, info), \
 	INTEL_VGA_DEVICE(0x56A1, info), \
 	INTEL_VGA_DEVICE(0x56A2, info)

-:123: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#123: FILE: include/drm/i915_pciids.h:710:
+#define INTEL_DG2_G10_IDS(info) \
 	INTEL_VGA_DEVICE(0x56A0, info), \
 	INTEL_VGA_DEVICE(0x56A1, info), \
 	INTEL_VGA_DEVICE(0x56A2, info)

total: 4 errors, 0 warnings, 4 checks, 117 lines checked
b835f2871301 drm/i915/dg2: DG2 MBD config
-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/i915_drv.h:1025:
+#define IS_DG2_MBD(dev_priv) (IS_DG2_G10_NB_MBD(dev_priv) || IS_DG2_G11_NB_MBD(dev_priv) || \
+			      IS_DG2_G12_NB_MBD(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 29 lines checked
28151cba023d drm/i915/dgfx: Add has_lmem_sr
78ead46ad383 drm/i915/dgfx: Setup VRAM SR with D3COLD
-:101: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#101: FILE: drivers/gpu/drm/i915/intel_pcode.c:271:
+			      REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND,
+			      DG1_PCODE_D3_VRAM_SR) |

-:103: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#103: FILE: drivers/gpu/drm/i915/intel_pcode.c:273:
+			      REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1,
+			      DG1_ENABLE_SR), 0); /* no data needed for this cmd */

total: 0 errors, 0 warnings, 2 checks, 138 lines checked
434f8395d301 drm/i915/rpm: Enable D3Cold VRAM SR Support
3824ea24e1b1 drm/i915/xehpsdv: Store lmem region in gt
993fde5ec166 drm/i915/rpm: d3cold Policy
-:73: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#73: FILE: drivers/gpu/drm/i915/i915_params.c:201:
+i915_param_named_unsafe(d3cold_sr_lmem_threshold, int, 0400,
+	"Enable Vidoe RAM Self refresh when size of lmem is greater to this threshold. "

total: 0 errors, 0 warnings, 1 checks, 58 lines checked


