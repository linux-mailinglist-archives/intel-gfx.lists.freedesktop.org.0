Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6DC56AF78
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 02:46:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEBAB10E012;
	Fri,  8 Jul 2022 00:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CB2A10E012;
 Fri,  8 Jul 2022 00:45:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 172F9A66C8;
 Fri,  8 Jul 2022 00:45:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Fri, 08 Jul 2022 00:45:57 -0000
Message-ID: <165724115707.4504.9126830542569262401@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220708000335.2869311-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20220708000335.2869311-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Introduce_Meteorlake?=
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

Series: i915: Introduce Meteorlake
URL   : https://patchwork.freedesktop.org/series/106075/
State : warning

== Summary ==

Error: dim checkpatch failed
37acdff7a17b drm/i915/mtl: Add MeteorLake platform info
14c954fe2072 drm/i915/mtl: Add MeteorLake PCI IDs
-:100: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#100: FILE: include/drm/i915_pciids.h:737:
+#define INTEL_MTL_M_IDS(info) \
+	INTEL_VGA_DEVICE(0x7D40, info), \
+	INTEL_VGA_DEVICE(0x7D60, info)

-:100: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#100: FILE: include/drm/i915_pciids.h:737:
+#define INTEL_MTL_M_IDS(info) \
+	INTEL_VGA_DEVICE(0x7D40, info), \
+	INTEL_VGA_DEVICE(0x7D60, info)

-:104: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#104: FILE: include/drm/i915_pciids.h:741:
+#define INTEL_MTL_P_IDS(info) \
+	INTEL_VGA_DEVICE(0x7D45, info), \
+	INTEL_VGA_DEVICE(0x7D55, info), \
+	INTEL_VGA_DEVICE(0x7DD5, info)

-:104: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#104: FILE: include/drm/i915_pciids.h:741:
+#define INTEL_MTL_P_IDS(info) \
+	INTEL_VGA_DEVICE(0x7D45, info), \
+	INTEL_VGA_DEVICE(0x7D55, info), \
+	INTEL_VGA_DEVICE(0x7DD5, info)

-:109: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#109: FILE: include/drm/i915_pciids.h:746:
+#define INTEL_MTL_IDS(info) \
+	INTEL_MTL_M_IDS(info), \
+	INTEL_MTL_P_IDS(info)

-:109: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#109: FILE: include/drm/i915_pciids.h:746:
+#define INTEL_MTL_IDS(info) \
+	INTEL_MTL_M_IDS(info), \
+	INTEL_MTL_P_IDS(info)

total: 3 errors, 0 warnings, 3 checks, 71 lines checked


