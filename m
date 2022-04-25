Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBF750EB4C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 23:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894F410E776;
	Mon, 25 Apr 2022 21:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCF1110E776;
 Mon, 25 Apr 2022 21:27:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B91BCA00FD;
 Mon, 25 Apr 2022 21:27:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 25 Apr 2022 21:27:04 -0000
Message-ID: <165092202475.32283.941702910283263008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220425211251.77154-1-matthew.d.roper@intel.com>
In-Reply-To: <20220425211251.77154-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Upstream_initial_DG2_PCI_IDs?=
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

Series: i915: Upstream initial DG2 PCI IDs
URL   : https://patchwork.freedesktop.org/series/103098/
State : warning

== Summary ==

Error: dim checkpatch failed
54fcf40b14d7 topic/core-for-CI: Revert DG2 and ATS-M device IDs
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 92b805135ed2 ("drm/i915: Add DG2 PCI IDs")'
#9: 
 - 92b805135ed2 ("drm/i915: Add DG2 PCI IDs")

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit bca8f652e1a0 ("topic/core-for-CI: Add ATS-M PCI IDs")'
#10: 
 - bca8f652e1a0 ("topic/core-for-CI: Add ATS-M PCI IDs")

total: 2 errors, 0 warnings, 0 checks, 98 lines checked
dd0e2dc75482 drm/i915: Add first set of DG2 PCI IDs
-:92: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#92: FILE: include/drm/i915_pciids.h:696:
+#define INTEL_DG2_G10_IDS(info) \
+	INTEL_VGA_DEVICE(0x5690, info), \
+	INTEL_VGA_DEVICE(0x5691, info), \
+	INTEL_VGA_DEVICE(0x5692, info)

-:92: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#92: FILE: include/drm/i915_pciids.h:696:
+#define INTEL_DG2_G10_IDS(info) \
+	INTEL_VGA_DEVICE(0x5690, info), \
+	INTEL_VGA_DEVICE(0x5691, info), \
+	INTEL_VGA_DEVICE(0x5692, info)

-:97: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#97: FILE: include/drm/i915_pciids.h:701:
+#define INTEL_DG2_G11_IDS(info) \
+	INTEL_VGA_DEVICE(0x5693, info), \
+	INTEL_VGA_DEVICE(0x5694, info), \
+	INTEL_VGA_DEVICE(0x5695, info), \
+	INTEL_VGA_DEVICE(0x56B0, info)

-:97: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#97: FILE: include/drm/i915_pciids.h:701:
+#define INTEL_DG2_G11_IDS(info) \
+	INTEL_VGA_DEVICE(0x5693, info), \
+	INTEL_VGA_DEVICE(0x5694, info), \
+	INTEL_VGA_DEVICE(0x5695, info), \
+	INTEL_VGA_DEVICE(0x56B0, info)

-:103: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#103: FILE: include/drm/i915_pciids.h:707:
+#define INTEL_DG2_G12_IDS(info) \
+	INTEL_VGA_DEVICE(0x5696, info), \
+	INTEL_VGA_DEVICE(0x5697, info), \
+	INTEL_VGA_DEVICE(0x56B2, info)

-:103: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#103: FILE: include/drm/i915_pciids.h:707:
+#define INTEL_DG2_G12_IDS(info) \
+	INTEL_VGA_DEVICE(0x5696, info), \
+	INTEL_VGA_DEVICE(0x5697, info), \
+	INTEL_VGA_DEVICE(0x56B2, info)

-:108: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#108: FILE: include/drm/i915_pciids.h:712:
+#define INTEL_DG2_IDS(info) \
+	INTEL_DG2_G10_IDS(info), \
+	INTEL_DG2_G11_IDS(info), \
+	INTEL_DG2_G12_IDS(info)

-:108: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#108: FILE: include/drm/i915_pciids.h:712:
+#define INTEL_DG2_IDS(info) \
+	INTEL_DG2_G10_IDS(info), \
+	INTEL_DG2_G11_IDS(info), \
+	INTEL_DG2_G12_IDS(info)

total: 4 errors, 0 warnings, 4 checks, 73 lines checked
33a4fa208957 topic/core-for-CI: Add remaining DG2 and ATS-M device IDs
-:95: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#95: FILE: include/drm/i915_pciids.h:732:
+#define INTEL_ATS_M_IDS(info) \
+	INTEL_ATS_M150_IDS(info), \
+	INTEL_ATS_M75_IDS(info)

-:95: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#95: FILE: include/drm/i915_pciids.h:732:
+#define INTEL_ATS_M_IDS(info) \
+	INTEL_ATS_M150_IDS(info), \
+	INTEL_ATS_M75_IDS(info)

total: 1 errors, 0 warnings, 1 checks, 70 lines checked


