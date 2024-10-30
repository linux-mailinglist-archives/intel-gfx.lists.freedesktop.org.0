Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D889B66E2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 16:03:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D69B10E7BD;
	Wed, 30 Oct 2024 15:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BD3B10E7BD;
 Wed, 30 Oct 2024 15:03:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Implement_Wa=5F14022?=
 =?utf-8?q?698537_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2024 15:03:34 -0000
Message-ID: <173030061430.1363580.14466362428929315638@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241030143418.410406-1-raag.jadav@intel.com>
In-Reply-To: <20241030143418.410406-1-raag.jadav@intel.com>
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

Series: Implement Wa_14022698537 (rev2)
URL   : https://patchwork.freedesktop.org/series/139883/
State : warning

== Summary ==

Error: dim checkpatch failed
6b96c7b8885a drm/intel/pciids: Refactor DG2 PCI IDs into segment ranges
-:25: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#25: FILE: include/drm/intel/pciids.h:720:
+#define INTEL_DG2_G10_D_IDS(MACRO__, ...) \
 	MACRO__(0x56A0, ## __VA_ARGS__), \
 	MACRO__(0x56A1, ## __VA_ARGS__), \
+	MACRO__(0x56A2, ## __VA_ARGS__)

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#25: FILE: include/drm/intel/pciids.h:720:
+#define INTEL_DG2_G10_D_IDS(MACRO__, ...) \
 	MACRO__(0x56A0, ## __VA_ARGS__), \
 	MACRO__(0x56A1, ## __VA_ARGS__), \
+	MACRO__(0x56A2, ## __VA_ARGS__)

-:31: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#31: FILE: include/drm/intel/pciids.h:725:
+#define INTEL_DG2_G10_E_IDS(MACRO__, ...) \
 	MACRO__(0x56BE, ## __VA_ARGS__), \
 	MACRO__(0x56BF, ## __VA_ARGS__)

-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#31: FILE: include/drm/intel/pciids.h:725:
+#define INTEL_DG2_G10_E_IDS(MACRO__, ...) \
 	MACRO__(0x56BE, ## __VA_ARGS__), \
 	MACRO__(0x56BF, ## __VA_ARGS__)

-:39: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#39: FILE: include/drm/intel/pciids.h:729:
+#define INTEL_DG2_G10_M_IDS(MACRO__, ...) \
+	MACRO__(0x5690, ## __VA_ARGS__), \
+	MACRO__(0x5691, ## __VA_ARGS__), \
+	MACRO__(0x5692, ## __VA_ARGS__)

-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#39: FILE: include/drm/intel/pciids.h:729:
+#define INTEL_DG2_G10_M_IDS(MACRO__, ...) \
+	MACRO__(0x5690, ## __VA_ARGS__), \
+	MACRO__(0x5691, ## __VA_ARGS__), \
+	MACRO__(0x5692, ## __VA_ARGS__)

-:44: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#44: FILE: include/drm/intel/pciids.h:734:
+#define INTEL_DG2_G10_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G10_E_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G10_M_IDS(MACRO__, ## __VA_ARGS__)

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#44: FILE: include/drm/intel/pciids.h:734:
+#define INTEL_DG2_G10_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G10_E_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G10_M_IDS(MACRO__, ## __VA_ARGS__)

-:49: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#49: FILE: include/drm/intel/pciids.h:739:
+#define INTEL_DG2_G11_D_IDS(MACRO__, ...) \
 	MACRO__(0x56A5, ## __VA_ARGS__), \
 	MACRO__(0x56A6, ## __VA_ARGS__), \
 	MACRO__(0x56B0, ## __VA_ARGS__), \
+	MACRO__(0x56B1, ## __VA_ARGS__)

-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#49: FILE: include/drm/intel/pciids.h:739:
+#define INTEL_DG2_G11_D_IDS(MACRO__, ...) \
 	MACRO__(0x56A5, ## __VA_ARGS__), \
 	MACRO__(0x56A6, ## __VA_ARGS__), \
 	MACRO__(0x56B0, ## __VA_ARGS__), \
+	MACRO__(0x56B1, ## __VA_ARGS__)

-:56: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#56: FILE: include/drm/intel/pciids.h:745:
+#define INTEL_DG2_G11_E_IDS(MACRO__, ...) \
 	MACRO__(0x56BA, ## __VA_ARGS__), \
 	MACRO__(0x56BB, ## __VA_ARGS__), \
 	MACRO__(0x56BC, ## __VA_ARGS__), \
 	MACRO__(0x56BD, ## __VA_ARGS__)

-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#56: FILE: include/drm/intel/pciids.h:745:
+#define INTEL_DG2_G11_E_IDS(MACRO__, ...) \
 	MACRO__(0x56BA, ## __VA_ARGS__), \
 	MACRO__(0x56BB, ## __VA_ARGS__), \
 	MACRO__(0x56BC, ## __VA_ARGS__), \
 	MACRO__(0x56BD, ## __VA_ARGS__)

-:65: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#65: FILE: include/drm/intel/pciids.h:751:
+#define INTEL_DG2_G11_M_IDS(MACRO__, ...) \
+	MACRO__(0x5693, ## __VA_ARGS__), \
+	MACRO__(0x5694, ## __VA_ARGS__), \
+	MACRO__(0x5695, ## __VA_ARGS__)

-:65: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#65: FILE: include/drm/intel/pciids.h:751:
+#define INTEL_DG2_G11_M_IDS(MACRO__, ...) \
+	MACRO__(0x5693, ## __VA_ARGS__), \
+	MACRO__(0x5694, ## __VA_ARGS__), \
+	MACRO__(0x5695, ## __VA_ARGS__)

-:70: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#70: FILE: include/drm/intel/pciids.h:756:
+#define INTEL_DG2_G11_IDS(MACRO__, ...) \
+	INTEL_DG2_G11_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_E_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_M_IDS(MACRO__, ## __VA_ARGS__)

-:70: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#70: FILE: include/drm/intel/pciids.h:756:
+#define INTEL_DG2_G11_IDS(MACRO__, ...) \
+	INTEL_DG2_G11_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_E_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_M_IDS(MACRO__, ## __VA_ARGS__)

-:75: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#75: FILE: include/drm/intel/pciids.h:761:
+#define INTEL_DG2_G12_D_IDS(MACRO__, ...) \
 	MACRO__(0x56A3, ## __VA_ARGS__), \
 	MACRO__(0x56A4, ## __VA_ARGS__), \
 	MACRO__(0x56B2, ## __VA_ARGS__), \
 	MACRO__(0x56B3, ## __VA_ARGS__)

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#75: FILE: include/drm/intel/pciids.h:761:
+#define INTEL_DG2_G12_D_IDS(MACRO__, ...) \
 	MACRO__(0x56A3, ## __VA_ARGS__), \
 	MACRO__(0x56A4, ## __VA_ARGS__), \
 	MACRO__(0x56B2, ## __VA_ARGS__), \
 	MACRO__(0x56B3, ## __VA_ARGS__)

-:81: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#81: FILE: include/drm/intel/pciids.h:767:
+#define INTEL_DG2_G12_M_IDS(MACRO__, ...) \
+	MACRO__(0x5696, ## __VA_ARGS__), \
+	MACRO__(0x5697, ## __VA_ARGS__)

-:81: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#81: FILE: include/drm/intel/pciids.h:767:
+#define INTEL_DG2_G12_M_IDS(MACRO__, ...) \
+	MACRO__(0x5696, ## __VA_ARGS__), \
+	MACRO__(0x5697, ## __VA_ARGS__)

-:85: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#85: FILE: include/drm/intel/pciids.h:771:
+#define INTEL_DG2_G12_IDS(MACRO__, ...) \
+	INTEL_DG2_G12_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_M_IDS(MACRO__, ## __VA_ARGS__)

-:85: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#85: FILE: include/drm/intel/pciids.h:771:
+#define INTEL_DG2_G12_IDS(MACRO__, ...) \
+	INTEL_DG2_G12_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_M_IDS(MACRO__, ## __VA_ARGS__)

-:89: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#89: FILE: include/drm/intel/pciids.h:775:
+#define INTEL_DG2_D_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_D_IDS(MACRO__, ## __VA_ARGS__)

-:89: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#89: FILE: include/drm/intel/pciids.h:775:
+#define INTEL_DG2_D_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_D_IDS(MACRO__, ## __VA_ARGS__)

total: 12 errors, 0 warnings, 12 checks, 79 lines checked
6e91624b80d3 drm/i915/dg2: Introduce DG2_D subplatform
fb34b2b10b7c drm/i915: Introduce intel_cpu_info.c for CPU IDs
-:28: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#28: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 62 lines checked
07a9b38a0475 drm/i915/dg2: Implement Wa_14022698537


