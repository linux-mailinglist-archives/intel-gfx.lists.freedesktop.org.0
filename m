Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A7899A2C7
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 13:35:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEFB910E107;
	Fri, 11 Oct 2024 11:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB1E110E107;
 Fri, 11 Oct 2024 11:35:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Implement_Wa=5F14022?=
 =?utf-8?q?698537?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2024 11:35:17 -0000
Message-ID: <172864651789.1240354.14804706714765660361@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241011103250.1035316-1-raag.jadav@intel.com>
In-Reply-To: <20241011103250.1035316-1-raag.jadav@intel.com>
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

Series: Implement Wa_14022698537
URL   : https://patchwork.freedesktop.org/series/139883/
State : warning

== Summary ==

Error: dim checkpatch failed
132c044fd5e1 drm/i915/pciids: Refactor DG2 PCI IDs into workaround ranges
-:18: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#18: FILE: include/drm/intel/i915_pciids.h:720:
+#define INTEL_DG2_G10_WA_IDS(MACRO__, ...) \
+	MACRO__(0x56A0, ## __VA_ARGS__), \
+	MACRO__(0x56A1, ## __VA_ARGS__), \
+	MACRO__(0x56A2, ## __VA_ARGS__)

-:18: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#18: FILE: include/drm/intel/i915_pciids.h:720:
+#define INTEL_DG2_G10_WA_IDS(MACRO__, ...) \
+	MACRO__(0x56A0, ## __VA_ARGS__), \
+	MACRO__(0x56A1, ## __VA_ARGS__), \
+	MACRO__(0x56A2, ## __VA_ARGS__)

-:34: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#34: FILE: include/drm/intel/i915_pciids.h:733:
+#define INTEL_DG2_G11_WA_IDS(MACRO__, ...) \
+	MACRO__(0x56A5, ## __VA_ARGS__), \
+	MACRO__(0x56A6, ## __VA_ARGS__), \
+	MACRO__(0x56B0, ## __VA_ARGS__), \
+	MACRO__(0x56B1, ## __VA_ARGS__)

-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#34: FILE: include/drm/intel/i915_pciids.h:733:
+#define INTEL_DG2_G11_WA_IDS(MACRO__, ...) \
+	MACRO__(0x56A5, ## __VA_ARGS__), \
+	MACRO__(0x56A6, ## __VA_ARGS__), \
+	MACRO__(0x56B0, ## __VA_ARGS__), \
+	MACRO__(0x56B1, ## __VA_ARGS__)

-:57: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#57: FILE: include/drm/intel/i915_pciids.h:749:
+#define INTEL_DG2_G12_WA_IDS(MACRO__, ...) \
 	MACRO__(0x56A3, ## __VA_ARGS__), \
 	MACRO__(0x56A4, ## __VA_ARGS__), \
 	MACRO__(0x56B2, ## __VA_ARGS__), \
 	MACRO__(0x56B3, ## __VA_ARGS__)

-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#57: FILE: include/drm/intel/i915_pciids.h:749:
+#define INTEL_DG2_G12_WA_IDS(MACRO__, ...) \
 	MACRO__(0x56A3, ## __VA_ARGS__), \
 	MACRO__(0x56A4, ## __VA_ARGS__), \
 	MACRO__(0x56B2, ## __VA_ARGS__), \
 	MACRO__(0x56B3, ## __VA_ARGS__)

-:63: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#63: FILE: include/drm/intel/i915_pciids.h:755:
+#define INTEL_DG2_G12_IDS(MACRO__, ...) \
+	INTEL_DG2_G11_WA_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5696, ## __VA_ARGS__), \
+	MACRO__(0x5697, ## __VA_ARGS__)

-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#63: FILE: include/drm/intel/i915_pciids.h:755:
+#define INTEL_DG2_G12_IDS(MACRO__, ...) \
+	INTEL_DG2_G11_WA_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5696, ## __VA_ARGS__), \
+	MACRO__(0x5697, ## __VA_ARGS__)

-:68: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#68: FILE: include/drm/intel/i915_pciids.h:760:
+#define INTEL_DG2_WA_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_WA_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_WA_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_WA_IDS(MACRO__, ## __VA_ARGS__)

-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#68: FILE: include/drm/intel/i915_pciids.h:760:
+#define INTEL_DG2_WA_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_WA_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_WA_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_WA_IDS(MACRO__, ## __VA_ARGS__)

total: 5 errors, 0 warnings, 5 checks, 61 lines checked
a91046b9601b drm/i915/dg2: Introduce DG2_WA subplatform
8de9d66be810 drm/i915/wa: Introduce intel_wa_cpu.c for CPU specific workarounds
-:26: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#26: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 49 lines checked
88cd723cc2f7 drm/i915/dg2: Implement Wa_14022698537


