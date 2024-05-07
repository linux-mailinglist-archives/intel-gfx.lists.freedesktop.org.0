Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D688BE4E8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 15:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAFEB112BFA;
	Tue,  7 May 2024 13:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F5FF112BFA;
 Tue,  7 May 2024 13:56:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_PCI_ID_m?=
 =?utf-8?q?acro_and_subplatform_changes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 May 2024 13:56:53 -0000
Message-ID: <171509021331.1961497.876066437828143058@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1715086509.git.jani.nikula@intel.com>
In-Reply-To: <cover.1715086509.git.jani.nikula@intel.com>
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

Series: drm/i915: PCI ID macro and subplatform changes
URL   : https://patchwork.freedesktop.org/series/133278/
State : warning

== Summary ==

Error: dim checkpatch failed
5e9db20a2cd7 drm/i915: don't include CML PCI IDs in CFL
-:46: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#46: FILE: include/drm/i915_pciids.h:475:
+#define INTEL_CML_IDS(info) \
+	INTEL_CML_GT1_IDS(info), \
+	INTEL_CML_GT2_IDS(info), \
+	INTEL_CML_U_GT1_IDS(info), \
+	INTEL_CML_U_GT2_IDS(info)

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#46: FILE: include/drm/i915_pciids.h:475:
+#define INTEL_CML_IDS(info) \
+	INTEL_CML_GT1_IDS(info), \
+	INTEL_CML_GT2_IDS(info), \
+	INTEL_CML_U_GT1_IDS(info), \
+	INTEL_CML_U_GT2_IDS(info)

total: 1 errors, 0 warnings, 1 checks, 38 lines checked
c159e9e9fdea drm/i915: don't include RPL-U PCI IDs in RPL-P
1307fd06edb5 drm/i915: separate RPL-U from RPL-P
10e7e76ee3af drm/i915: simplify ULT/ULX subplatform detection
3a87e64d6ea8 drm/i915: make the PCI ID macros more flexible
-:536: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#536: FILE: include/drm/i915_pciids.h:50:
+#define INTEL_I810_IDS(MACRO__, ...) \
+	MACRO__(0x7121, ## __VA_ARGS__), /* I810 */ \
+	MACRO__(0x7123, ## __VA_ARGS__), /* I810_DC100 */ \
+	MACRO__(0x7125, ## __VA_ARGS__)  /* I810_E */

-:536: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#536: FILE: include/drm/i915_pciids.h:50:
+#define INTEL_I810_IDS(MACRO__, ...) \
+	MACRO__(0x7121, ## __VA_ARGS__), /* I810 */ \
+	MACRO__(0x7123, ## __VA_ARGS__), /* I810_DC100 */ \
+	MACRO__(0x7125, ## __VA_ARGS__)  /* I810_E */

-:559: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#559: FILE: include/drm/i915_pciids.h:64:
+#define INTEL_I85X_IDS(MACRO__, ...) \
+	MACRO__(0x3582, ## __VA_ARGS__),	/* I855_GM */ \
+	MACRO__(0x358e, ## __VA_ARGS__)

-:559: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#559: FILE: include/drm/i915_pciids.h:64:
+#define INTEL_I85X_IDS(MACRO__, ...) \
+	MACRO__(0x3582, ## __VA_ARGS__),	/* I855_GM */ \
+	MACRO__(0x358e, ## __VA_ARGS__)

-:571: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#571: FILE: include/drm/i915_pciids.h:71:
+#define INTEL_I915G_IDS(MACRO__, ...) \
+	MACRO__(0x2582, ## __VA_ARGS__),	/* I915_G */ \
+	MACRO__(0x258a, ## __VA_ARGS__)		/* E7221_G */

-:571: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#571: FILE: include/drm/i915_pciids.h:71:
+#define INTEL_I915G_IDS(MACRO__, ...) \
+	MACRO__(0x2582, ## __VA_ARGS__),	/* I915_G */ \
+	MACRO__(0x258a, ## __VA_ARGS__)		/* E7221_G */

-:588: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#588: FILE: include/drm/i915_pciids.h:81:
+#define INTEL_I945GM_IDS(MACRO__, ...) \
+	MACRO__(0x27a2, ## __VA_ARGS__),	/* I945_GM */ \
+	MACRO__(0x27ae, ## __VA_ARGS__)		/* I945_GME */

-:588: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#588: FILE: include/drm/i915_pciids.h:81:
+#define INTEL_I945GM_IDS(MACRO__, ...) \
+	MACRO__(0x27a2, ## __VA_ARGS__),	/* I945_GM */ \
+	MACRO__(0x27ae, ## __VA_ARGS__)		/* I945_GME */

-:597: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#597: FILE: include/drm/i915_pciids.h:85:
+#define INTEL_I965G_IDS(MACRO__, ...) \
+	MACRO__(0x2972, ## __VA_ARGS__),	/* I946_GZ */ \
+	MACRO__(0x2982, ## __VA_ARGS__),	/* G35_G */ \
+	MACRO__(0x2992, ## __VA_ARGS__),	/* I965_Q */ \
+	MACRO__(0x29a2, ## __VA_ARGS__)		/* I965_G */

-:597: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#597: FILE: include/drm/i915_pciids.h:85:
+#define INTEL_I965G_IDS(MACRO__, ...) \
+	MACRO__(0x2972, ## __VA_ARGS__),	/* I946_GZ */ \
+	MACRO__(0x2982, ## __VA_ARGS__),	/* G35_G */ \
+	MACRO__(0x2992, ## __VA_ARGS__),	/* I965_Q */ \
+	MACRO__(0x29a2, ## __VA_ARGS__)		/* I965_G */

-:950: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#950: FILE: include/drm/i915_pciids.h:91:
+#define INTEL_G33_IDS(MACRO__, ...) \
+	MACRO__(0x29b2, ## __VA_ARGS__),	/* Q35_G */ \
+	MACRO__(0x29c2, ## __VA_ARGS__),	/* G33_G */ \
+	MACRO__(0x29d2, ## __VA_ARGS__)		/* Q33_G */

-:950: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#950: FILE: include/drm/i915_pciids.h:91:
+#define INTEL_G33_IDS(MACRO__, ...) \
+	MACRO__(0x29b2, ## __VA_ARGS__),	/* Q35_G */ \
+	MACRO__(0x29c2, ## __VA_ARGS__),	/* G33_G */ \
+	MACRO__(0x29d2, ## __VA_ARGS__)		/* Q33_G */

-:955: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#955: FILE: include/drm/i915_pciids.h:96:
+#define INTEL_I965GM_IDS(MACRO__, ...) \
+	MACRO__(0x2a02, ## __VA_ARGS__),	/* I965_GM */ \
+	MACRO__(0x2a12, ## __VA_ARGS__)		/* I965_GME */

-:955: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#955: FILE: include/drm/i915_pciids.h:96:
+#define INTEL_I965GM_IDS(MACRO__, ...) \
+	MACRO__(0x2a02, ## __VA_ARGS__),	/* I965_GM */ \
+	MACRO__(0x2a12, ## __VA_ARGS__)		/* I965_GME */

-:962: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#962: FILE: include/drm/i915_pciids.h:103:
+#define INTEL_G45_IDS(MACRO__, ...) \
+	MACRO__(0x2e02, ## __VA_ARGS__),	/* IGD_E_G */ \
+	MACRO__(0x2e12, ## __VA_ARGS__),	/* Q45_G */ \
+	MACRO__(0x2e22, ## __VA_ARGS__),	/* G45_G */ \
+	MACRO__(0x2e32, ## __VA_ARGS__),	/* G41_G */ \
+	MACRO__(0x2e42, ## __VA_ARGS__),	/* B43_G */ \
+	MACRO__(0x2e92, ## __VA_ARGS__)		/* B43_G.1 */

-:962: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#962: FILE: include/drm/i915_pciids.h:103:
+#define INTEL_G45_IDS(MACRO__, ...) \
+	MACRO__(0x2e02, ## __VA_ARGS__),	/* IGD_E_G */ \
+	MACRO__(0x2e12, ## __VA_ARGS__),	/* Q45_G */ \
+	MACRO__(0x2e22, ## __VA_ARGS__),	/* G45_G */ \
+	MACRO__(0x2e32, ## __VA_ARGS__),	/* G41_G */ \
+	MACRO__(0x2e42, ## __VA_ARGS__),	/* B43_G */ \
+	MACRO__(0x2e92, ## __VA_ARGS__)		/* B43_G.1 */

-:982: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#982: FILE: include/drm/i915_pciids.h:123:
+#define INTEL_SNB_D_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0102, ## __VA_ARGS__), \
+	MACRO__(0x010A, ## __VA_ARGS__)

-:982: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#982: FILE: include/drm/i915_pciids.h:123:
+#define INTEL_SNB_D_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0102, ## __VA_ARGS__), \
+	MACRO__(0x010A, ## __VA_ARGS__)

-:986: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#986: FILE: include/drm/i915_pciids.h:127:
+#define INTEL_SNB_D_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0112, ## __VA_ARGS__), \
+	MACRO__(0x0122, ## __VA_ARGS__)

-:986: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#986: FILE: include/drm/i915_pciids.h:127:
+#define INTEL_SNB_D_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0112, ## __VA_ARGS__), \
+	MACRO__(0x0122, ## __VA_ARGS__)

-:990: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#990: FILE: include/drm/i915_pciids.h:131:
+#define INTEL_SNB_D_IDS(MACRO__, ...) \
+	INTEL_SNB_D_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SNB_D_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:990: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#990: FILE: include/drm/i915_pciids.h:131:
+#define INTEL_SNB_D_IDS(MACRO__, ...) \
+	INTEL_SNB_D_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SNB_D_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:997: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#997: FILE: include/drm/i915_pciids.h:138:
+#define INTEL_SNB_M_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0116, ## __VA_ARGS__), \
+	MACRO__(0x0126, ## __VA_ARGS__)

-:997: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#997: FILE: include/drm/i915_pciids.h:138:
+#define INTEL_SNB_M_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0116, ## __VA_ARGS__), \
+	MACRO__(0x0126, ## __VA_ARGS__)

-:1001: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1001: FILE: include/drm/i915_pciids.h:142:
+#define INTEL_SNB_M_IDS(MACRO__, ...) \
+	INTEL_SNB_M_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SNB_M_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1001: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1001: FILE: include/drm/i915_pciids.h:142:
+#define INTEL_SNB_M_IDS(MACRO__, ...) \
+	INTEL_SNB_M_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SNB_M_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1011: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1011: FILE: include/drm/i915_pciids.h:152:
+#define INTEL_IVB_M_IDS(MACRO__, ...) \
+	INTEL_IVB_M_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_IVB_M_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1011: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1011: FILE: include/drm/i915_pciids.h:152:
+#define INTEL_IVB_M_IDS(MACRO__, ...) \
+	INTEL_IVB_M_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_IVB_M_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1015: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1015: FILE: include/drm/i915_pciids.h:156:
+#define INTEL_IVB_D_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0152, ## __VA_ARGS__),	/* GT1 desktop */ \
+	MACRO__(0x015a, ## __VA_ARGS__)		/* GT1 server */

-:1015: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1015: FILE: include/drm/i915_pciids.h:156:
+#define INTEL_IVB_D_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0152, ## __VA_ARGS__),	/* GT1 desktop */ \
+	MACRO__(0x015a, ## __VA_ARGS__)		/* GT1 server */

-:1019: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1019: FILE: include/drm/i915_pciids.h:160:
+#define INTEL_IVB_D_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0162, ## __VA_ARGS__),	/* GT2 desktop */ \
+	MACRO__(0x016a, ## __VA_ARGS__)		/* GT2 server */

-:1019: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1019: FILE: include/drm/i915_pciids.h:160:
+#define INTEL_IVB_D_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0162, ## __VA_ARGS__),	/* GT2 desktop */ \
+	MACRO__(0x016a, ## __VA_ARGS__)		/* GT2 server */

-:1023: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1023: FILE: include/drm/i915_pciids.h:164:
+#define INTEL_IVB_D_IDS(MACRO__, ...) \
+	INTEL_IVB_D_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_IVB_D_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1023: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1023: FILE: include/drm/i915_pciids.h:164:
+#define INTEL_IVB_D_IDS(MACRO__, ...) \
+	INTEL_IVB_D_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_IVB_D_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1030: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1030: FILE: include/drm/i915_pciids.h:171:
+#define INTEL_HSW_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0A02, ## __VA_ARGS__),	/* ULT GT1 desktop */ \
+	MACRO__(0x0A06, ## __VA_ARGS__),	/* ULT GT1 mobile */ \
+	MACRO__(0x0A0A, ## __VA_ARGS__),	/* ULT GT1 server */ \
+	MACRO__(0x0A0B, ## __VA_ARGS__)		/* ULT GT1 reserved */

-:1030: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1030: FILE: include/drm/i915_pciids.h:171:
+#define INTEL_HSW_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0A02, ## __VA_ARGS__),	/* ULT GT1 desktop */ \
+	MACRO__(0x0A06, ## __VA_ARGS__),	/* ULT GT1 mobile */ \
+	MACRO__(0x0A0A, ## __VA_ARGS__),	/* ULT GT1 server */ \
+	MACRO__(0x0A0B, ## __VA_ARGS__)		/* ULT GT1 reserved */

-:1039: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1039: FILE: include/drm/i915_pciids.h:180:
+#define INTEL_HSW_GT1_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0402, ## __VA_ARGS__),	/* GT1 desktop */ \
+	MACRO__(0x0406, ## __VA_ARGS__),	/* GT1 mobile */ \
+	MACRO__(0x040A, ## __VA_ARGS__),	/* GT1 server */ \
+	MACRO__(0x040B, ## __VA_ARGS__),	/* GT1 reserved */ \
+	MACRO__(0x040E, ## __VA_ARGS__),	/* GT1 reserved */ \
+	MACRO__(0x0C02, ## __VA_ARGS__),	/* SDV GT1 desktop */ \
+	MACRO__(0x0C06, ## __VA_ARGS__),	/* SDV GT1 mobile */ \
+	MACRO__(0x0C0A, ## __VA_ARGS__),	/* SDV GT1 server */ \
+	MACRO__(0x0C0B, ## __VA_ARGS__),	/* SDV GT1 reserved */ \
+	MACRO__(0x0C0E, ## __VA_ARGS__),	/* SDV GT1 reserved */ \
+	MACRO__(0x0D02, ## __VA_ARGS__),	/* CRW GT1 desktop */ \
+	MACRO__(0x0D06, ## __VA_ARGS__),	/* CRW GT1 mobile */	\
+	MACRO__(0x0D0A, ## __VA_ARGS__),	/* CRW GT1 server */ \
+	MACRO__(0x0D0B, ## __VA_ARGS__),	/* CRW GT1 reserved */ \
+	MACRO__(0x0D0E, ## __VA_ARGS__)		/* CRW GT1 reserved */

-:1039: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1039: FILE: include/drm/i915_pciids.h:180:
+#define INTEL_HSW_GT1_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0402, ## __VA_ARGS__),	/* GT1 desktop */ \
+	MACRO__(0x0406, ## __VA_ARGS__),	/* GT1 mobile */ \
+	MACRO__(0x040A, ## __VA_ARGS__),	/* GT1 server */ \
+	MACRO__(0x040B, ## __VA_ARGS__),	/* GT1 reserved */ \
+	MACRO__(0x040E, ## __VA_ARGS__),	/* GT1 reserved */ \
+	MACRO__(0x0C02, ## __VA_ARGS__),	/* SDV GT1 desktop */ \
+	MACRO__(0x0C06, ## __VA_ARGS__),	/* SDV GT1 mobile */ \
+	MACRO__(0x0C0A, ## __VA_ARGS__),	/* SDV GT1 server */ \
+	MACRO__(0x0C0B, ## __VA_ARGS__),	/* SDV GT1 reserved */ \
+	MACRO__(0x0C0E, ## __VA_ARGS__),	/* SDV GT1 reserved */ \
+	MACRO__(0x0D02, ## __VA_ARGS__),	/* CRW GT1 desktop */ \
+	MACRO__(0x0D06, ## __VA_ARGS__),	/* CRW GT1 mobile */	\
+	MACRO__(0x0D0A, ## __VA_ARGS__),	/* CRW GT1 server */ \
+	MACRO__(0x0D0B, ## __VA_ARGS__),	/* CRW GT1 reserved */ \
+	MACRO__(0x0D0E, ## __VA_ARGS__)		/* CRW GT1 reserved */

-:1058: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1058: FILE: include/drm/i915_pciids.h:199:
+#define INTEL_HSW_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0A12, ## __VA_ARGS__),	/* ULT GT2 desktop */ \
+	MACRO__(0x0A16, ## __VA_ARGS__),	/* ULT GT2 mobile */	\
+	MACRO__(0x0A1A, ## __VA_ARGS__),	/* ULT GT2 server */ \
+	MACRO__(0x0A1B, ## __VA_ARGS__)		/* ULT GT2 reserved */ \
+

-:1058: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1058: FILE: include/drm/i915_pciids.h:199:
+#define INTEL_HSW_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0A12, ## __VA_ARGS__),	/* ULT GT2 desktop */ \
+	MACRO__(0x0A16, ## __VA_ARGS__),	/* ULT GT2 mobile */	\
+	MACRO__(0x0A1A, ## __VA_ARGS__),	/* ULT GT2 server */ \
+	MACRO__(0x0A1B, ## __VA_ARGS__)		/* ULT GT2 reserved */ \
+

-:1067: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1067: FILE: include/drm/i915_pciids.h:208:
+#define INTEL_HSW_GT2_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0412, ## __VA_ARGS__),	/* GT2 desktop */ \
+	MACRO__(0x0416, ## __VA_ARGS__),	/* GT2 mobile */ \
+	MACRO__(0x041A, ## __VA_ARGS__),	/* GT2 server */ \
+	MACRO__(0x041B, ## __VA_ARGS__),	/* GT2 reserved */ \
+	MACRO__(0x041E, ## __VA_ARGS__),	/* GT2 reserved */ \
+	MACRO__(0x0C12, ## __VA_ARGS__),	/* SDV GT2 desktop */ \
+	MACRO__(0x0C16, ## __VA_ARGS__),	/* SDV GT2 mobile */ \
+	MACRO__(0x0C1A, ## __VA_ARGS__),	/* SDV GT2 server */ \
+	MACRO__(0x0C1B, ## __VA_ARGS__),	/* SDV GT2 reserved */ \
+	MACRO__(0x0C1E, ## __VA_ARGS__),	/* SDV GT2 reserved */ \
+	MACRO__(0x0D12, ## __VA_ARGS__),	/* CRW GT2 desktop */ \
+	MACRO__(0x0D16, ## __VA_ARGS__),	/* CRW GT2 mobile */ \
+	MACRO__(0x0D1A, ## __VA_ARGS__),	/* CRW GT2 server */ \
+	MACRO__(0x0D1B, ## __VA_ARGS__),	/* CRW GT2 reserved */ \
+	MACRO__(0x0D1E, ## __VA_ARGS__)		/* CRW GT2 reserved */

-:1067: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1067: FILE: include/drm/i915_pciids.h:208:
+#define INTEL_HSW_GT2_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0412, ## __VA_ARGS__),	/* GT2 desktop */ \
+	MACRO__(0x0416, ## __VA_ARGS__),	/* GT2 mobile */ \
+	MACRO__(0x041A, ## __VA_ARGS__),	/* GT2 server */ \
+	MACRO__(0x041B, ## __VA_ARGS__),	/* GT2 reserved */ \
+	MACRO__(0x041E, ## __VA_ARGS__),	/* GT2 reserved */ \
+	MACRO__(0x0C12, ## __VA_ARGS__),	/* SDV GT2 desktop */ \
+	MACRO__(0x0C16, ## __VA_ARGS__),	/* SDV GT2 mobile */ \
+	MACRO__(0x0C1A, ## __VA_ARGS__),	/* SDV GT2 server */ \
+	MACRO__(0x0C1B, ## __VA_ARGS__),	/* SDV GT2 reserved */ \
+	MACRO__(0x0C1E, ## __VA_ARGS__),	/* SDV GT2 reserved */ \
+	MACRO__(0x0D12, ## __VA_ARGS__),	/* CRW GT2 desktop */ \
+	MACRO__(0x0D16, ## __VA_ARGS__),	/* CRW GT2 mobile */ \
+	MACRO__(0x0D1A, ## __VA_ARGS__),	/* CRW GT2 server */ \
+	MACRO__(0x0D1B, ## __VA_ARGS__),	/* CRW GT2 reserved */ \
+	MACRO__(0x0D1E, ## __VA_ARGS__)		/* CRW GT2 reserved */

-:1086: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1086: FILE: include/drm/i915_pciids.h:227:
+#define INTEL_HSW_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x0A22, ## __VA_ARGS__),	/* ULT GT3 desktop */ \
+	MACRO__(0x0A26, ## __VA_ARGS__),	/* ULT GT3 mobile */ \
+	MACRO__(0x0A2A, ## __VA_ARGS__),	/* ULT GT3 server */ \
+	MACRO__(0x0A2B, ## __VA_ARGS__),	/* ULT GT3 reserved */ \
+	MACRO__(0x0A2E, ## __VA_ARGS__)		/* ULT GT3 reserved */

-:1086: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1086: FILE: include/drm/i915_pciids.h:227:
+#define INTEL_HSW_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x0A22, ## __VA_ARGS__),	/* ULT GT3 desktop */ \
+	MACRO__(0x0A26, ## __VA_ARGS__),	/* ULT GT3 mobile */ \
+	MACRO__(0x0A2A, ## __VA_ARGS__),	/* ULT GT3 server */ \
+	MACRO__(0x0A2B, ## __VA_ARGS__),	/* ULT GT3 reserved */ \
+	MACRO__(0x0A2E, ## __VA_ARGS__)		/* ULT GT3 reserved */

-:1093: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1093: FILE: include/drm/i915_pciids.h:234:
+#define INTEL_HSW_GT3_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0422, ## __VA_ARGS__),	/* GT3 desktop */ \
+	MACRO__(0x0426, ## __VA_ARGS__),	/* GT3 mobile */ \
+	MACRO__(0x042A, ## __VA_ARGS__),	/* GT3 server */ \
+	MACRO__(0x042B, ## __VA_ARGS__),	/* GT3 reserved */ \
+	MACRO__(0x042E, ## __VA_ARGS__),	/* GT3 reserved */ \
+	MACRO__(0x0C22, ## __VA_ARGS__),	/* SDV GT3 desktop */ \
+	MACRO__(0x0C26, ## __VA_ARGS__),	/* SDV GT3 mobile */ \
+	MACRO__(0x0C2A, ## __VA_ARGS__),	/* SDV GT3 server */ \
+	MACRO__(0x0C2B, ## __VA_ARGS__),	/* SDV GT3 reserved */ \
+	MACRO__(0x0C2E, ## __VA_ARGS__),	/* SDV GT3 reserved */ \
+	MACRO__(0x0D22, ## __VA_ARGS__),	/* CRW GT3 desktop */ \
+	MACRO__(0x0D26, ## __VA_ARGS__),	/* CRW GT3 mobile */ \
+	MACRO__(0x0D2A, ## __VA_ARGS__),	/* CRW GT3 server */ \
+	MACRO__(0x0D2B, ## __VA_ARGS__),	/* CRW GT3 reserved */ \
+	MACRO__(0x0D2E, ## __VA_ARGS__)		/* CRW GT3 reserved */

-:1093: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1093: FILE: include/drm/i915_pciids.h:234:
+#define INTEL_HSW_GT3_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0422, ## __VA_ARGS__),	/* GT3 desktop */ \
+	MACRO__(0x0426, ## __VA_ARGS__),	/* GT3 mobile */ \
+	MACRO__(0x042A, ## __VA_ARGS__),	/* GT3 server */ \
+	MACRO__(0x042B, ## __VA_ARGS__),	/* GT3 reserved */ \
+	MACRO__(0x042E, ## __VA_ARGS__),	/* GT3 reserved */ \
+	MACRO__(0x0C22, ## __VA_ARGS__),	/* SDV GT3 desktop */ \
+	MACRO__(0x0C26, ## __VA_ARGS__),	/* SDV GT3 mobile */ \
+	MACRO__(0x0C2A, ## __VA_ARGS__),	/* SDV GT3 server */ \
+	MACRO__(0x0C2B, ## __VA_ARGS__),	/* SDV GT3 reserved */ \
+	MACRO__(0x0C2E, ## __VA_ARGS__),	/* SDV GT3 reserved */ \
+	MACRO__(0x0D22, ## __VA_ARGS__),	/* CRW GT3 desktop */ \
+	MACRO__(0x0D26, ## __VA_ARGS__),	/* CRW GT3 mobile */ \
+	MACRO__(0x0D2A, ## __VA_ARGS__),	/* CRW GT3 server */ \
+	MACRO__(0x0D2B, ## __VA_ARGS__),	/* CRW GT3 reserved */ \
+	MACRO__(0x0D2E, ## __VA_ARGS__)		/* CRW GT3 reserved */

-:1111: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1111: FILE: include/drm/i915_pciids.h:252:
+#define INTEL_HSW_IDS(MACRO__, ...) \
+	INTEL_HSW_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_GT3_IDS(MACRO__, ## __VA_ARGS__)

-:1111: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1111: FILE: include/drm/i915_pciids.h:252:
+#define INTEL_HSW_IDS(MACRO__, ...) \
+	INTEL_HSW_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_GT3_IDS(MACRO__, ## __VA_ARGS__)

-:1116: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1116: FILE: include/drm/i915_pciids.h:257:
+#define INTEL_VLV_IDS(MACRO__, ...) \
+	MACRO__(0x0f30, ## __VA_ARGS__), \
+	MACRO__(0x0f31, ## __VA_ARGS__), \
+	MACRO__(0x0f32, ## __VA_ARGS__), \
+	MACRO__(0x0f33, ## __VA_ARGS__)

-:1116: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1116: FILE: include/drm/i915_pciids.h:257:
+#define INTEL_VLV_IDS(MACRO__, ...) \
+	MACRO__(0x0f30, ## __VA_ARGS__), \
+	MACRO__(0x0f31, ## __VA_ARGS__), \
+	MACRO__(0x0f32, ## __VA_ARGS__), \
+	MACRO__(0x0f33, ## __VA_ARGS__)

-:1122: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1122: FILE: include/drm/i915_pciids.h:263:
+#define INTEL_BDW_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x1606, ## __VA_ARGS__),	/* GT1 ULT */ \
+	MACRO__(0x160B, ## __VA_ARGS__)		/* GT1 Iris */

-:1122: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1122: FILE: include/drm/i915_pciids.h:263:
+#define INTEL_BDW_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x1606, ## __VA_ARGS__),	/* GT1 ULT */ \
+	MACRO__(0x160B, ## __VA_ARGS__)		/* GT1 Iris */

-:1129: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1129: FILE: include/drm/i915_pciids.h:270:
+#define INTEL_BDW_GT1_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1602, ## __VA_ARGS__),	/* GT1 ULT */ \
+	MACRO__(0x160A, ## __VA_ARGS__),	/* GT1 Server */ \
+	MACRO__(0x160D, ## __VA_ARGS__)		/* GT1 Workstation */

-:1129: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1129: FILE: include/drm/i915_pciids.h:270:
+#define INTEL_BDW_GT1_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1602, ## __VA_ARGS__),	/* GT1 ULT */ \
+	MACRO__(0x160A, ## __VA_ARGS__),	/* GT1 Server */ \
+	MACRO__(0x160D, ## __VA_ARGS__)		/* GT1 Workstation */

-:1136: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1136: FILE: include/drm/i915_pciids.h:277:
+#define INTEL_BDW_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x1616, ## __VA_ARGS__),	/* GT2 ULT */ \
+	MACRO__(0x161B, ## __VA_ARGS__)		/* GT2 ULT */

-:1136: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1136: FILE: include/drm/i915_pciids.h:277:
+#define INTEL_BDW_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x1616, ## __VA_ARGS__),	/* GT2 ULT */ \
+	MACRO__(0x161B, ## __VA_ARGS__)		/* GT2 ULT */

-:1143: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1143: FILE: include/drm/i915_pciids.h:284:
+#define INTEL_BDW_GT2_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1612, ## __VA_ARGS__),	/* GT2 Halo */	\
+	MACRO__(0x161A, ## __VA_ARGS__),	/* GT2 Server */ \
+	MACRO__(0x161D, ## __VA_ARGS__)		/* GT2 Workstation */

-:1143: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1143: FILE: include/drm/i915_pciids.h:284:
+#define INTEL_BDW_GT2_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1612, ## __VA_ARGS__),	/* GT2 Halo */	\
+	MACRO__(0x161A, ## __VA_ARGS__),	/* GT2 Server */ \
+	MACRO__(0x161D, ## __VA_ARGS__)		/* GT2 Workstation */

-:1150: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1150: FILE: include/drm/i915_pciids.h:291:
+#define INTEL_BDW_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x1626, ## __VA_ARGS__),	/* ULT */ \
+	MACRO__(0x162B, ## __VA_ARGS__)		/* Iris */ \
+

-:1150: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1150: FILE: include/drm/i915_pciids.h:291:
+#define INTEL_BDW_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x1626, ## __VA_ARGS__),	/* ULT */ \
+	MACRO__(0x162B, ## __VA_ARGS__)		/* Iris */ \
+

-:1157: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1157: FILE: include/drm/i915_pciids.h:298:
+#define INTEL_BDW_GT3_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1622, ## __VA_ARGS__),	/* ULT */ \
+	MACRO__(0x162A, ## __VA_ARGS__),	/* Server */ \
+	MACRO__(0x162D, ## __VA_ARGS__)		/* Workstation */

-:1157: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1157: FILE: include/drm/i915_pciids.h:298:
+#define INTEL_BDW_GT3_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1622, ## __VA_ARGS__),	/* ULT */ \
+	MACRO__(0x162A, ## __VA_ARGS__),	/* Server */ \
+	MACRO__(0x162D, ## __VA_ARGS__)		/* Workstation */

-:1164: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1164: FILE: include/drm/i915_pciids.h:305:
+#define INTEL_BDW_ULT_RSVD_IDS(MACRO__, ...) \
+	MACRO__(0x1636, ## __VA_ARGS__),	/* ULT */ \
+	MACRO__(0x163B, ## __VA_ARGS__)		/* Iris */

-:1164: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1164: FILE: include/drm/i915_pciids.h:305:
+#define INTEL_BDW_ULT_RSVD_IDS(MACRO__, ...) \
+	MACRO__(0x1636, ## __VA_ARGS__),	/* ULT */ \
+	MACRO__(0x163B, ## __VA_ARGS__)		/* Iris */

-:1171: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1171: FILE: include/drm/i915_pciids.h:312:
+#define INTEL_BDW_RSVD_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_RSVD_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_RSVD_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1632, ## __VA_ARGS__),	/* ULT */ \
+	MACRO__(0x163A, ## __VA_ARGS__),	/* Server */ \
+	MACRO__(0x163D, ## __VA_ARGS__)		/* Workstation */

-:1171: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1171: FILE: include/drm/i915_pciids.h:312:
+#define INTEL_BDW_RSVD_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_RSVD_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_RSVD_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1632, ## __VA_ARGS__),	/* ULT */ \
+	MACRO__(0x163A, ## __VA_ARGS__),	/* Server */ \
+	MACRO__(0x163D, ## __VA_ARGS__)		/* Workstation */

-:1178: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1178: FILE: include/drm/i915_pciids.h:319:
+#define INTEL_BDW_IDS(MACRO__, ...) \
+	INTEL_BDW_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_RSVD_IDS(MACRO__, ## __VA_ARGS__)

-:1178: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1178: FILE: include/drm/i915_pciids.h:319:
+#define INTEL_BDW_IDS(MACRO__, ...) \
+	INTEL_BDW_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_RSVD_IDS(MACRO__, ## __VA_ARGS__)

-:1184: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1184: FILE: include/drm/i915_pciids.h:325:
+#define INTEL_CHV_IDS(MACRO__, ...) \
+	MACRO__(0x22b0, ## __VA_ARGS__), \
+	MACRO__(0x22b1, ## __VA_ARGS__), \
+	MACRO__(0x22b2, ## __VA_ARGS__), \
+	MACRO__(0x22b3, ## __VA_ARGS__)

-:1184: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1184: FILE: include/drm/i915_pciids.h:325:
+#define INTEL_CHV_IDS(MACRO__, ...) \
+	MACRO__(0x22b0, ## __VA_ARGS__), \
+	MACRO__(0x22b1, ## __VA_ARGS__), \
+	MACRO__(0x22b2, ## __VA_ARGS__), \
+	MACRO__(0x22b3, ## __VA_ARGS__)

-:1190: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1190: FILE: include/drm/i915_pciids.h:331:
+#define INTEL_SKL_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x1906, ## __VA_ARGS__),	/* ULT GT1 */ \
+	MACRO__(0x1913, ## __VA_ARGS__)		/* ULT GT1.5 */

-:1190: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1190: FILE: include/drm/i915_pciids.h:331:
+#define INTEL_SKL_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x1906, ## __VA_ARGS__),	/* ULT GT1 */ \
+	MACRO__(0x1913, ## __VA_ARGS__)		/* ULT GT1.5 */

-:1194: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1194: FILE: include/drm/i915_pciids.h:335:
+#define INTEL_SKL_ULX_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x190E, ## __VA_ARGS__),	/* ULX GT1 */ \
+	MACRO__(0x1915, ## __VA_ARGS__)		/* ULX GT1.5 */

-:1194: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1194: FILE: include/drm/i915_pciids.h:335:
+#define INTEL_SKL_ULX_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x190E, ## __VA_ARGS__),	/* ULX GT1 */ \
+	MACRO__(0x1915, ## __VA_ARGS__)		/* ULX GT1.5 */

-:1198: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1198: FILE: include/drm/i915_pciids.h:339:
+#define INTEL_SKL_GT1_IDS(MACRO__, ...)	\
+	INTEL_SKL_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1902, ## __VA_ARGS__),	/* DT  GT1 */ \
+	MACRO__(0x190A, ## __VA_ARGS__),	/* SRV GT1 */ \
+	MACRO__(0x190B, ## __VA_ARGS__),	/* Halo GT1 */ \
+	MACRO__(0x1917, ## __VA_ARGS__)		/* DT  GT1.5 */

-:1198: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1198: FILE: include/drm/i915_pciids.h:339:
+#define INTEL_SKL_GT1_IDS(MACRO__, ...)	\
+	INTEL_SKL_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1902, ## __VA_ARGS__),	/* DT  GT1 */ \
+	MACRO__(0x190A, ## __VA_ARGS__),	/* SRV GT1 */ \
+	MACRO__(0x190B, ## __VA_ARGS__),	/* Halo GT1 */ \
+	MACRO__(0x1917, ## __VA_ARGS__)		/* DT  GT1.5 */

-:1206: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1206: FILE: include/drm/i915_pciids.h:347:
+#define INTEL_SKL_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x1916, ## __VA_ARGS__),	/* ULT GT2 */ \
+	MACRO__(0x1921, ## __VA_ARGS__)		/* ULT GT2F */

-:1206: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1206: FILE: include/drm/i915_pciids.h:347:
+#define INTEL_SKL_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x1916, ## __VA_ARGS__),	/* ULT GT2 */ \
+	MACRO__(0x1921, ## __VA_ARGS__)		/* ULT GT2F */

-:1213: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1213: FILE: include/drm/i915_pciids.h:354:
+#define INTEL_SKL_GT2_IDS(MACRO__, ...)	\
+	INTEL_SKL_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1912, ## __VA_ARGS__),	/* DT  GT2 */ \
+	MACRO__(0x191A, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x191B, ## __VA_ARGS__),	/* Halo GT2 */ \
+	MACRO__(0x191D, ## __VA_ARGS__)		/* WKS GT2 */

-:1213: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1213: FILE: include/drm/i915_pciids.h:354:
+#define INTEL_SKL_GT2_IDS(MACRO__, ...)	\
+	INTEL_SKL_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1912, ## __VA_ARGS__),	/* DT  GT2 */ \
+	MACRO__(0x191A, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x191B, ## __VA_ARGS__),	/* Halo GT2 */ \
+	MACRO__(0x191D, ## __VA_ARGS__)		/* WKS GT2 */

-:1221: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1221: FILE: include/drm/i915_pciids.h:362:
+#define INTEL_SKL_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x1923, ## __VA_ARGS__),	/* ULT GT3 */ \
+	MACRO__(0x1926, ## __VA_ARGS__),	/* ULT GT3e */ \
+	MACRO__(0x1927, ## __VA_ARGS__)		/* ULT GT3e */

-:1221: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1221: FILE: include/drm/i915_pciids.h:362:
+#define INTEL_SKL_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x1923, ## __VA_ARGS__),	/* ULT GT3 */ \
+	MACRO__(0x1926, ## __VA_ARGS__),	/* ULT GT3e */ \
+	MACRO__(0x1927, ## __VA_ARGS__)		/* ULT GT3e */

-:1226: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1226: FILE: include/drm/i915_pciids.h:367:
+#define INTEL_SKL_GT3_IDS(MACRO__, ...) \
+	INTEL_SKL_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x192A, ## __VA_ARGS__),	/* SRV GT3 */ \
+	MACRO__(0x192B, ## __VA_ARGS__),	/* Halo GT3e */ \
+	MACRO__(0x192D, ## __VA_ARGS__)		/* SRV GT3e */

-:1226: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1226: FILE: include/drm/i915_pciids.h:367:
+#define INTEL_SKL_GT3_IDS(MACRO__, ...) \
+	INTEL_SKL_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x192A, ## __VA_ARGS__),	/* SRV GT3 */ \
+	MACRO__(0x192B, ## __VA_ARGS__),	/* Halo GT3e */ \
+	MACRO__(0x192D, ## __VA_ARGS__)		/* SRV GT3e */

-:1232: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1232: FILE: include/drm/i915_pciids.h:373:
+#define INTEL_SKL_GT4_IDS(MACRO__, ...) \
+	MACRO__(0x1932, ## __VA_ARGS__),	/* DT GT4 */ \
+	MACRO__(0x193A, ## __VA_ARGS__),	/* SRV GT4e */ \
+	MACRO__(0x193B, ## __VA_ARGS__),	/* Halo GT4e */ \
+	MACRO__(0x193D, ## __VA_ARGS__)		/* WKS GT4e */

-:1232: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1232: FILE: include/drm/i915_pciids.h:373:
+#define INTEL_SKL_GT4_IDS(MACRO__, ...) \
+	MACRO__(0x1932, ## __VA_ARGS__),	/* DT GT4 */ \
+	MACRO__(0x193A, ## __VA_ARGS__),	/* SRV GT4e */ \
+	MACRO__(0x193B, ## __VA_ARGS__),	/* Halo GT4e */ \
+	MACRO__(0x193D, ## __VA_ARGS__)		/* WKS GT4e */

-:1238: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1238: FILE: include/drm/i915_pciids.h:379:
+#define INTEL_SKL_IDS(MACRO__, ...)	 \
+	INTEL_SKL_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT4_IDS(MACRO__, ## __VA_ARGS__)

-:1238: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1238: FILE: include/drm/i915_pciids.h:379:
+#define INTEL_SKL_IDS(MACRO__, ...)	 \
+	INTEL_SKL_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT4_IDS(MACRO__, ## __VA_ARGS__)

-:1244: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1244: FILE: include/drm/i915_pciids.h:385:
+#define INTEL_BXT_IDS(MACRO__, ...) \
+	MACRO__(0x0A84, ## __VA_ARGS__), \
+	MACRO__(0x1A84, ## __VA_ARGS__), \
+	MACRO__(0x1A85, ## __VA_ARGS__), \
+	MACRO__(0x5A84, ## __VA_ARGS__),	/* APL HD Graphics 505 */ \
+	MACRO__(0x5A85, ## __VA_ARGS__)		/* APL HD Graphics 500 */

-:1244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1244: FILE: include/drm/i915_pciids.h:385:
+#define INTEL_BXT_IDS(MACRO__, ...) \
+	MACRO__(0x0A84, ## __VA_ARGS__), \
+	MACRO__(0x1A84, ## __VA_ARGS__), \
+	MACRO__(0x1A85, ## __VA_ARGS__), \
+	MACRO__(0x5A84, ## __VA_ARGS__),	/* APL HD Graphics 505 */ \
+	MACRO__(0x5A85, ## __VA_ARGS__)		/* APL HD Graphics 500 */

-:1251: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1251: FILE: include/drm/i915_pciids.h:392:
+#define INTEL_GLK_IDS(MACRO__, ...) \
+	MACRO__(0x3184, ## __VA_ARGS__), \
+	MACRO__(0x3185, ## __VA_ARGS__)

-:1251: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1251: FILE: include/drm/i915_pciids.h:392:
+#define INTEL_GLK_IDS(MACRO__, ...) \
+	MACRO__(0x3184, ## __VA_ARGS__), \
+	MACRO__(0x3185, ## __VA_ARGS__)

-:1255: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1255: FILE: include/drm/i915_pciids.h:396:
+#define INTEL_KBL_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x5906, ## __VA_ARGS__),	/* ULT GT1 */ \
+	MACRO__(0x5913, ## __VA_ARGS__)		/* ULT GT1.5 */

-:1255: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1255: FILE: include/drm/i915_pciids.h:396:
+#define INTEL_KBL_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x5906, ## __VA_ARGS__),	/* ULT GT1 */ \
+	MACRO__(0x5913, ## __VA_ARGS__)		/* ULT GT1.5 */

-:1259: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1259: FILE: include/drm/i915_pciids.h:400:
+#define INTEL_KBL_ULX_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x590E, ## __VA_ARGS__),	/* ULX GT1 */ \
+	MACRO__(0x5915, ## __VA_ARGS__)		/* ULX GT1.5 */

-:1259: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1259: FILE: include/drm/i915_pciids.h:400:
+#define INTEL_KBL_ULX_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x590E, ## __VA_ARGS__),	/* ULX GT1 */ \
+	MACRO__(0x5915, ## __VA_ARGS__)		/* ULX GT1.5 */

-:1263: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1263: FILE: include/drm/i915_pciids.h:404:
+#define INTEL_KBL_GT1_IDS(MACRO__, ...)	\
+	INTEL_KBL_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5902, ## __VA_ARGS__),	/* DT  GT1 */ \
+	MACRO__(0x5908, ## __VA_ARGS__),	/* Halo GT1 */ \
+	MACRO__(0x590A, ## __VA_ARGS__),	/* SRV GT1 */ \
+	MACRO__(0x590B, ## __VA_ARGS__)		/* Halo GT1 */

-:1263: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1263: FILE: include/drm/i915_pciids.h:404:
+#define INTEL_KBL_GT1_IDS(MACRO__, ...)	\
+	INTEL_KBL_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5902, ## __VA_ARGS__),	/* DT  GT1 */ \
+	MACRO__(0x5908, ## __VA_ARGS__),	/* Halo GT1 */ \
+	MACRO__(0x590A, ## __VA_ARGS__),	/* SRV GT1 */ \
+	MACRO__(0x590B, ## __VA_ARGS__)		/* Halo GT1 */

-:1271: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1271: FILE: include/drm/i915_pciids.h:412:
+#define INTEL_KBL_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x5916, ## __VA_ARGS__),	/* ULT GT2 */ \
+	MACRO__(0x5921, ## __VA_ARGS__)		/* ULT GT2F */

-:1271: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1271: FILE: include/drm/i915_pciids.h:412:
+#define INTEL_KBL_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x5916, ## __VA_ARGS__),	/* ULT GT2 */ \
+	MACRO__(0x5921, ## __VA_ARGS__)		/* ULT GT2F */

-:1278: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1278: FILE: include/drm/i915_pciids.h:419:
+#define INTEL_KBL_GT2_IDS(MACRO__, ...)	\
+	INTEL_KBL_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5912, ## __VA_ARGS__),	/* DT  GT2 */ \
+	MACRO__(0x5917, ## __VA_ARGS__),	/* Mobile GT2 */ \
+	MACRO__(0x591A, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x591B, ## __VA_ARGS__),	/* Halo GT2 */ \
+	MACRO__(0x591D, ## __VA_ARGS__)		/* WKS GT2 */

-:1278: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1278: FILE: include/drm/i915_pciids.h:419:
+#define INTEL_KBL_GT2_IDS(MACRO__, ...)	\
+	INTEL_KBL_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5912, ## __VA_ARGS__),	/* DT  GT2 */ \
+	MACRO__(0x5917, ## __VA_ARGS__),	/* Mobile GT2 */ \
+	MACRO__(0x591A, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x591B, ## __VA_ARGS__),	/* Halo GT2 */ \
+	MACRO__(0x591D, ## __VA_ARGS__)		/* WKS GT2 */

-:1290: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1290: FILE: include/drm/i915_pciids.h:431:
+#define INTEL_KBL_GT3_IDS(MACRO__, ...) \
+	INTEL_KBL_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5923, ## __VA_ARGS__),	/* ULT GT3 */ \
+	MACRO__(0x5927, ## __VA_ARGS__)		/* ULT GT3 */

-:1290: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1290: FILE: include/drm/i915_pciids.h:431:
+#define INTEL_KBL_GT3_IDS(MACRO__, ...) \
+	INTEL_KBL_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5923, ## __VA_ARGS__),	/* ULT GT3 */ \
+	MACRO__(0x5927, ## __VA_ARGS__)		/* ULT GT3 */

-:1302: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1302: FILE: include/drm/i915_pciids.h:440:
+#define INTEL_AML_KBL_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x591C, ## __VA_ARGS__),	/* ULX GT2 */ \
+	MACRO__(0x87C0, ## __VA_ARGS__)		/* ULX GT2 */

-:1302: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1302: FILE: include/drm/i915_pciids.h:440:
+#define INTEL_AML_KBL_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x591C, ## __VA_ARGS__),	/* ULX GT2 */ \
+	MACRO__(0x87C0, ## __VA_ARGS__)		/* ULX GT2 */

-:1318: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1318: FILE: include/drm/i915_pciids.h:449:
+#define INTEL_CML_GT1_IDS(MACRO__, ...)	\
+	MACRO__(0x9BA2, ## __VA_ARGS__), \
+	MACRO__(0x9BA4, ## __VA_ARGS__), \
+	MACRO__(0x9BA5, ## __VA_ARGS__), \
+	MACRO__(0x9BA8, ## __VA_ARGS__)

-:1318: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1318: FILE: include/drm/i915_pciids.h:449:
+#define INTEL_CML_GT1_IDS(MACRO__, ...)	\
+	MACRO__(0x9BA2, ## __VA_ARGS__), \
+	MACRO__(0x9BA4, ## __VA_ARGS__), \
+	MACRO__(0x9BA5, ## __VA_ARGS__), \
+	MACRO__(0x9BA8, ## __VA_ARGS__)

-:1328: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1328: FILE: include/drm/i915_pciids.h:455:
+#define INTEL_CML_U_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x9B21, ## __VA_ARGS__), \
+	MACRO__(0x9BAA, ## __VA_ARGS__), \
+	MACRO__(0x9BAC, ## __VA_ARGS__)

-:1328: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1328: FILE: include/drm/i915_pciids.h:455:
+#define INTEL_CML_U_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x9B21, ## __VA_ARGS__), \
+	MACRO__(0x9BAA, ## __VA_ARGS__), \
+	MACRO__(0x9BAC, ## __VA_ARGS__)

-:1360: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1360: FILE: include/drm/i915_pciids.h:461:
+#define INTEL_CML_GT2_IDS(MACRO__, ...)	\
+	MACRO__(0x9BC2, ## __VA_ARGS__), \
+	MACRO__(0x9BC4, ## __VA_ARGS__), \
+	MACRO__(0x9BC5, ## __VA_ARGS__), \
+	MACRO__(0x9BC6, ## __VA_ARGS__), \
+	MACRO__(0x9BC8, ## __VA_ARGS__), \
+	MACRO__(0x9BE6, ## __VA_ARGS__), \
+	MACRO__(0x9BF6, ## __VA_ARGS__)

-:1360: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1360: FILE: include/drm/i915_pciids.h:461:
+#define INTEL_CML_GT2_IDS(MACRO__, ...)	\
+	MACRO__(0x9BC2, ## __VA_ARGS__), \
+	MACRO__(0x9BC4, ## __VA_ARGS__), \
+	MACRO__(0x9BC5, ## __VA_ARGS__), \
+	MACRO__(0x9BC6, ## __VA_ARGS__), \
+	MACRO__(0x9BC8, ## __VA_ARGS__), \
+	MACRO__(0x9BE6, ## __VA_ARGS__), \
+	MACRO__(0x9BF6, ## __VA_ARGS__)

-:1369: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1369: FILE: include/drm/i915_pciids.h:470:
+#define INTEL_CML_U_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x9B41, ## __VA_ARGS__), \
+	MACRO__(0x9BCA, ## __VA_ARGS__), \
+	MACRO__(0x9BCC, ## __VA_ARGS__)

-:1369: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1369: FILE: include/drm/i915_pciids.h:470:
+#define INTEL_CML_U_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x9B41, ## __VA_ARGS__), \
+	MACRO__(0x9BCA, ## __VA_ARGS__), \
+	MACRO__(0x9BCC, ## __VA_ARGS__)

-:1374: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1374: FILE: include/drm/i915_pciids.h:475:
+#define INTEL_CML_IDS(MACRO__, ...) \
+	INTEL_CML_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_U_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_U_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1374: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1374: FILE: include/drm/i915_pciids.h:475:
+#define INTEL_CML_IDS(MACRO__, ...) \
+	INTEL_CML_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_U_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_U_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1380: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1380: FILE: include/drm/i915_pciids.h:481:
+#define INTEL_KBL_IDS(MACRO__, ...) \
+	INTEL_KBL_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT4_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_AML_KBL_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1380: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1380: FILE: include/drm/i915_pciids.h:481:
+#define INTEL_KBL_IDS(MACRO__, ...) \
+	INTEL_KBL_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT4_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_AML_KBL_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1399: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1399: FILE: include/drm/i915_pciids.h:489:
+#define INTEL_CFL_S_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x3E90, ## __VA_ARGS__),	/* SRV GT1 */ \
+	MACRO__(0x3E93, ## __VA_ARGS__),	/* SRV GT1 */ \
+	MACRO__(0x3E99, ## __VA_ARGS__)		/* SRV GT1 */

-:1399: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1399: FILE: include/drm/i915_pciids.h:489:
+#define INTEL_CFL_S_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x3E90, ## __VA_ARGS__),	/* SRV GT1 */ \
+	MACRO__(0x3E93, ## __VA_ARGS__),	/* SRV GT1 */ \
+	MACRO__(0x3E99, ## __VA_ARGS__)		/* SRV GT1 */

-:1404: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1404: FILE: include/drm/i915_pciids.h:494:
+#define INTEL_CFL_S_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3E91, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x3E92, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x3E96, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x3E98, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x3E9A, ## __VA_ARGS__)		/* SRV GT2 */

-:1404: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1404: FILE: include/drm/i915_pciids.h:494:
+#define INTEL_CFL_S_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3E91, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x3E92, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x3E96, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x3E98, ## __VA_ARGS__),	/* SRV GT2 */ \
+	MACRO__(0x3E9A, ## __VA_ARGS__)		/* SRV GT2 */

-:1420: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1420: FILE: include/drm/i915_pciids.h:505:
+#define INTEL_CFL_H_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3E94, ## __VA_ARGS__),	/* Halo GT2 */ \
+	MACRO__(0x3E9B, ## __VA_ARGS__)		/* Halo GT2 */

-:1420: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1420: FILE: include/drm/i915_pciids.h:505:
+#define INTEL_CFL_H_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3E94, ## __VA_ARGS__),	/* Halo GT2 */ \
+	MACRO__(0x3E9B, ## __VA_ARGS__)		/* Halo GT2 */

-:1436: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1436: FILE: include/drm/i915_pciids.h:514:
+#define INTEL_CFL_U_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x3EA5, ## __VA_ARGS__),	/* ULT GT3 */ \
+	MACRO__(0x3EA6, ## __VA_ARGS__),	/* ULT GT3 */ \
+	MACRO__(0x3EA7, ## __VA_ARGS__),	/* ULT GT3 */ \
+	MACRO__(0x3EA8, ## __VA_ARGS__)		/* ULT GT3 */

-:1436: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1436: FILE: include/drm/i915_pciids.h:514:
+#define INTEL_CFL_U_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x3EA5, ## __VA_ARGS__),	/* ULT GT3 */ \
+	MACRO__(0x3EA6, ## __VA_ARGS__),	/* ULT GT3 */ \
+	MACRO__(0x3EA7, ## __VA_ARGS__),	/* ULT GT3 */ \
+	MACRO__(0x3EA8, ## __VA_ARGS__)		/* ULT GT3 */

-:1446: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1446: FILE: include/drm/i915_pciids.h:521:
+#define INTEL_WHL_U_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x3EA1, ## __VA_ARGS__), \
+	MACRO__(0x3EA4, ## __VA_ARGS__)

-:1446: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1446: FILE: include/drm/i915_pciids.h:521:
+#define INTEL_WHL_U_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x3EA1, ## __VA_ARGS__), \
+	MACRO__(0x3EA4, ## __VA_ARGS__)

-:1454: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1454: FILE: include/drm/i915_pciids.h:526:
+#define INTEL_WHL_U_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3EA0, ## __VA_ARGS__), \
+	MACRO__(0x3EA3, ## __VA_ARGS__)

-:1454: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1454: FILE: include/drm/i915_pciids.h:526:
+#define INTEL_WHL_U_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3EA0, ## __VA_ARGS__), \
+	MACRO__(0x3EA3, ## __VA_ARGS__)

-:1476: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1476: FILE: include/drm/i915_pciids.h:534:
+#define INTEL_CFL_IDS(MACRO__, ...) \
+	INTEL_CFL_S_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_S_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_H_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_H_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_U_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_U_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_WHL_U_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_WHL_U_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_WHL_U_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_AML_CFL_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1476: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1476: FILE: include/drm/i915_pciids.h:534:
+#define INTEL_CFL_IDS(MACRO__, ...) \
+	INTEL_CFL_S_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_S_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_H_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_H_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_U_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_U_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_WHL_U_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_WHL_U_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_WHL_U_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_AML_CFL_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1507: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1507: FILE: include/drm/i915_pciids.h:547:
+#define INTEL_CNL_PORT_F_IDS(MACRO__, ...) \
+	MACRO__(0x5A44, ## __VA_ARGS__), \
+	MACRO__(0x5A4C, ## __VA_ARGS__), \
+	MACRO__(0x5A54, ## __VA_ARGS__), \
+	MACRO__(0x5A5C, ## __VA_ARGS__)

-:1507: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1507: FILE: include/drm/i915_pciids.h:547:
+#define INTEL_CNL_PORT_F_IDS(MACRO__, ...) \
+	MACRO__(0x5A44, ## __VA_ARGS__), \
+	MACRO__(0x5A4C, ## __VA_ARGS__), \
+	MACRO__(0x5A54, ## __VA_ARGS__), \
+	MACRO__(0x5A5C, ## __VA_ARGS__)

-:1513: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1513: FILE: include/drm/i915_pciids.h:553:
+#define INTEL_CNL_IDS(MACRO__, ...) \
+	INTEL_CNL_PORT_F_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5A40, ## __VA_ARGS__), \
+	MACRO__(0x5A41, ## __VA_ARGS__), \
+	MACRO__(0x5A42, ## __VA_ARGS__), \
+	MACRO__(0x5A49, ## __VA_ARGS__), \
+	MACRO__(0x5A4A, ## __VA_ARGS__), \
+	MACRO__(0x5A50, ## __VA_ARGS__), \
+	MACRO__(0x5A51, ## __VA_ARGS__), \
+	MACRO__(0x5A52, ## __VA_ARGS__), \
+	MACRO__(0x5A59, ## __VA_ARGS__), \
+	MACRO__(0x5A5A, ## __VA_ARGS__)

-:1513: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1513: FILE: include/drm/i915_pciids.h:553:
+#define INTEL_CNL_IDS(MACRO__, ...) \
+	INTEL_CNL_PORT_F_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5A40, ## __VA_ARGS__), \
+	MACRO__(0x5A41, ## __VA_ARGS__), \
+	MACRO__(0x5A42, ## __VA_ARGS__), \
+	MACRO__(0x5A49, ## __VA_ARGS__), \
+	MACRO__(0x5A4A, ## __VA_ARGS__), \
+	MACRO__(0x5A50, ## __VA_ARGS__), \
+	MACRO__(0x5A51, ## __VA_ARGS__), \
+	MACRO__(0x5A52, ## __VA_ARGS__), \
+	MACRO__(0x5A59, ## __VA_ARGS__), \
+	MACRO__(0x5A5A, ## __VA_ARGS__)

-:1546: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1546: FILE: include/drm/i915_pciids.h:567:
+#define INTEL_ICL_PORT_F_IDS(MACRO__, ...) \
+	MACRO__(0x8A50, ## __VA_ARGS__), \
+	MACRO__(0x8A52, ## __VA_ARGS__), \
+	MACRO__(0x8A53, ## __VA_ARGS__), \
+	MACRO__(0x8A54, ## __VA_ARGS__), \
+	MACRO__(0x8A56, ## __VA_ARGS__), \
+	MACRO__(0x8A57, ## __VA_ARGS__), \
+	MACRO__(0x8A58, ## __VA_ARGS__), \
+	MACRO__(0x8A59, ## __VA_ARGS__), \
+	MACRO__(0x8A5A, ## __VA_ARGS__), \
+	MACRO__(0x8A5B, ## __VA_ARGS__), \
+	MACRO__(0x8A5C, ## __VA_ARGS__), \
+	MACRO__(0x8A70, ## __VA_ARGS__), \
+	MACRO__(0x8A71, ## __VA_ARGS__)

-:1546: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1546: FILE: include/drm/i915_pciids.h:567:
+#define INTEL_ICL_PORT_F_IDS(MACRO__, ...) \
+	MACRO__(0x8A50, ## __VA_ARGS__), \
+	MACRO__(0x8A52, ## __VA_ARGS__), \
+	MACRO__(0x8A53, ## __VA_ARGS__), \
+	MACRO__(0x8A54, ## __VA_ARGS__), \
+	MACRO__(0x8A56, ## __VA_ARGS__), \
+	MACRO__(0x8A57, ## __VA_ARGS__), \
+	MACRO__(0x8A58, ## __VA_ARGS__), \
+	MACRO__(0x8A59, ## __VA_ARGS__), \
+	MACRO__(0x8A5A, ## __VA_ARGS__), \
+	MACRO__(0x8A5B, ## __VA_ARGS__), \
+	MACRO__(0x8A5C, ## __VA_ARGS__), \
+	MACRO__(0x8A70, ## __VA_ARGS__), \
+	MACRO__(0x8A71, ## __VA_ARGS__)

-:1561: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1561: FILE: include/drm/i915_pciids.h:582:
+#define INTEL_ICL_11_IDS(MACRO__, ...) \
+	INTEL_ICL_PORT_F_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x8A51, ## __VA_ARGS__), \
+	MACRO__(0x8A5D, ## __VA_ARGS__)

-:1561: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1561: FILE: include/drm/i915_pciids.h:582:
+#define INTEL_ICL_11_IDS(MACRO__, ...) \
+	INTEL_ICL_PORT_F_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x8A51, ## __VA_ARGS__), \
+	MACRO__(0x8A5D, ## __VA_ARGS__)

-:1574: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1574: FILE: include/drm/i915_pciids.h:588:
+#define INTEL_EHL_IDS(MACRO__, ...) \
+	MACRO__(0x4541, ## __VA_ARGS__), \
+	MACRO__(0x4551, ## __VA_ARGS__), \
+	MACRO__(0x4555, ## __VA_ARGS__), \
+	MACRO__(0x4557, ## __VA_ARGS__), \
+	MACRO__(0x4570, ## __VA_ARGS__), \
+	MACRO__(0x4571, ## __VA_ARGS__)

-:1574: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1574: FILE: include/drm/i915_pciids.h:588:
+#define INTEL_EHL_IDS(MACRO__, ...) \
+	MACRO__(0x4541, ## __VA_ARGS__), \
+	MACRO__(0x4551, ## __VA_ARGS__), \
+	MACRO__(0x4555, ## __VA_ARGS__), \
+	MACRO__(0x4557, ## __VA_ARGS__), \
+	MACRO__(0x4570, ## __VA_ARGS__), \
+	MACRO__(0x4571, ## __VA_ARGS__)

-:1589: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1589: FILE: include/drm/i915_pciids.h:597:
+#define INTEL_JSL_IDS(MACRO__, ...) \
+	MACRO__(0x4E51, ## __VA_ARGS__), \
+	MACRO__(0x4E55, ## __VA_ARGS__), \
+	MACRO__(0x4E57, ## __VA_ARGS__), \
+	MACRO__(0x4E61, ## __VA_ARGS__), \
+	MACRO__(0x4E71, ## __VA_ARGS__)

-:1589: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1589: FILE: include/drm/i915_pciids.h:597:
+#define INTEL_JSL_IDS(MACRO__, ...) \
+	MACRO__(0x4E51, ## __VA_ARGS__), \
+	MACRO__(0x4E55, ## __VA_ARGS__), \
+	MACRO__(0x4E57, ## __VA_ARGS__), \
+	MACRO__(0x4E61, ## __VA_ARGS__), \
+	MACRO__(0x4E71, ## __VA_ARGS__)

-:1615: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1615: FILE: include/drm/i915_pciids.h:605:
+#define INTEL_TGL_12_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x9A60, ## __VA_ARGS__), \
+	MACRO__(0x9A68, ## __VA_ARGS__), \
+	MACRO__(0x9A70, ## __VA_ARGS__)

-:1615: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1615: FILE: include/drm/i915_pciids.h:605:
+#define INTEL_TGL_12_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x9A60, ## __VA_ARGS__), \
+	MACRO__(0x9A68, ## __VA_ARGS__), \
+	MACRO__(0x9A70, ## __VA_ARGS__)

-:1620: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1620: FILE: include/drm/i915_pciids.h:610:
+#define INTEL_TGL_12_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x9A40, ## __VA_ARGS__), \
+	MACRO__(0x9A49, ## __VA_ARGS__), \
+	MACRO__(0x9A59, ## __VA_ARGS__), \
+	MACRO__(0x9A78, ## __VA_ARGS__), \
+	MACRO__(0x9AC0, ## __VA_ARGS__), \
+	MACRO__(0x9AC9, ## __VA_ARGS__), \
+	MACRO__(0x9AD9, ## __VA_ARGS__), \
+	MACRO__(0x9AF8, ## __VA_ARGS__)

-:1620: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1620: FILE: include/drm/i915_pciids.h:610:
+#define INTEL_TGL_12_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x9A40, ## __VA_ARGS__), \
+	MACRO__(0x9A49, ## __VA_ARGS__), \
+	MACRO__(0x9A59, ## __VA_ARGS__), \
+	MACRO__(0x9A78, ## __VA_ARGS__), \
+	MACRO__(0x9AC0, ## __VA_ARGS__), \
+	MACRO__(0x9AC9, ## __VA_ARGS__), \
+	MACRO__(0x9AD9, ## __VA_ARGS__), \
+	MACRO__(0x9AF8, ## __VA_ARGS__)

-:1630: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1630: FILE: include/drm/i915_pciids.h:620:
+#define INTEL_TGL_12_IDS(MACRO__, ...) \
+	INTEL_TGL_12_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_TGL_12_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1630: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1630: FILE: include/drm/i915_pciids.h:620:
+#define INTEL_TGL_12_IDS(MACRO__, ...) \
+	INTEL_TGL_12_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_TGL_12_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1642: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1642: FILE: include/drm/i915_pciids.h:625:
+#define INTEL_RKL_IDS(MACRO__, ...) \
+	MACRO__(0x4C80, ## __VA_ARGS__), \
+	MACRO__(0x4C8A, ## __VA_ARGS__), \
+	MACRO__(0x4C8B, ## __VA_ARGS__), \
+	MACRO__(0x4C8C, ## __VA_ARGS__), \
+	MACRO__(0x4C90, ## __VA_ARGS__), \
+	MACRO__(0x4C9A, ## __VA_ARGS__)

-:1642: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1642: FILE: include/drm/i915_pciids.h:625:
+#define INTEL_RKL_IDS(MACRO__, ...) \
+	MACRO__(0x4C80, ## __VA_ARGS__), \
+	MACRO__(0x4C8A, ## __VA_ARGS__), \
+	MACRO__(0x4C8B, ## __VA_ARGS__), \
+	MACRO__(0x4C8C, ## __VA_ARGS__), \
+	MACRO__(0x4C90, ## __VA_ARGS__), \
+	MACRO__(0x4C9A, ## __VA_ARGS__)

-:1657: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1657: FILE: include/drm/i915_pciids.h:634:
+#define INTEL_DG1_IDS(MACRO__, ...) \
+	MACRO__(0x4905, ## __VA_ARGS__), \
+	MACRO__(0x4906, ## __VA_ARGS__), \
+	MACRO__(0x4907, ## __VA_ARGS__), \
+	MACRO__(0x4908, ## __VA_ARGS__), \
+	MACRO__(0x4909, ## __VA_ARGS__)

-:1657: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1657: FILE: include/drm/i915_pciids.h:634:
+#define INTEL_DG1_IDS(MACRO__, ...) \
+	MACRO__(0x4905, ## __VA_ARGS__), \
+	MACRO__(0x4906, ## __VA_ARGS__), \
+	MACRO__(0x4907, ## __VA_ARGS__), \
+	MACRO__(0x4908, ## __VA_ARGS__), \
+	MACRO__(0x4909, ## __VA_ARGS__)

-:1674: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1674: FILE: include/drm/i915_pciids.h:642:
+#define INTEL_ADLS_IDS(MACRO__, ...) \
+	MACRO__(0x4680, ## __VA_ARGS__), \
+	MACRO__(0x4682, ## __VA_ARGS__), \
+	MACRO__(0x4688, ## __VA_ARGS__), \
+	MACRO__(0x468A, ## __VA_ARGS__), \
+	MACRO__(0x468B, ## __VA_ARGS__), \
+	MACRO__(0x4690, ## __VA_ARGS__), \
+	MACRO__(0x4692, ## __VA_ARGS__), \
+	MACRO__(0x4693, ## __VA_ARGS__)

-:1674: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1674: FILE: include/drm/i915_pciids.h:642:
+#define INTEL_ADLS_IDS(MACRO__, ...) \
+	MACRO__(0x4680, ## __VA_ARGS__), \
+	MACRO__(0x4682, ## __VA_ARGS__), \
+	MACRO__(0x4688, ## __VA_ARGS__), \
+	MACRO__(0x468A, ## __VA_ARGS__), \
+	MACRO__(0x468B, ## __VA_ARGS__), \
+	MACRO__(0x4690, ## __VA_ARGS__), \
+	MACRO__(0x4692, ## __VA_ARGS__), \
+	MACRO__(0x4693, ## __VA_ARGS__)

-:1704: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1704: FILE: include/drm/i915_pciids.h:653:
+#define INTEL_ADLP_IDS(MACRO__, ...) \
+	MACRO__(0x46A0, ## __VA_ARGS__), \
+	MACRO__(0x46A1, ## __VA_ARGS__), \
+	MACRO__(0x46A2, ## __VA_ARGS__), \
+	MACRO__(0x46A3, ## __VA_ARGS__), \
+	MACRO__(0x46A6, ## __VA_ARGS__), \
+	MACRO__(0x46A8, ## __VA_ARGS__), \
+	MACRO__(0x46AA, ## __VA_ARGS__), \
+	MACRO__(0x462A, ## __VA_ARGS__), \
+	MACRO__(0x4626, ## __VA_ARGS__), \
+	MACRO__(0x4628, ## __VA_ARGS__), \
+	MACRO__(0x46B0, ## __VA_ARGS__), \
+	MACRO__(0x46B1, ## __VA_ARGS__), \
+	MACRO__(0x46B2, ## __VA_ARGS__), \
+	MACRO__(0x46B3, ## __VA_ARGS__), \
+	MACRO__(0x46C0, ## __VA_ARGS__), \
+	MACRO__(0x46C1, ## __VA_ARGS__), \
+	MACRO__(0x46C2, ## __VA_ARGS__), \
+	MACRO__(0x46C3, ## __VA_ARGS__)

-:1704: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1704: FILE: include/drm/i915_pciids.h:653:
+#define INTEL_ADLP_IDS(MACRO__, ...) \
+	MACRO__(0x46A0, ## __VA_ARGS__), \
+	MACRO__(0x46A1, ## __VA_ARGS__), \
+	MACRO__(0x46A2, ## __VA_ARGS__), \
+	MACRO__(0x46A3, ## __VA_ARGS__), \
+	MACRO__(0x46A6, ## __VA_ARGS__), \
+	MACRO__(0x46A8, ## __VA_ARGS__), \
+	MACRO__(0x46AA, ## __VA_ARGS__), \
+	MACRO__(0x462A, ## __VA_ARGS__), \
+	MACRO__(0x4626, ## __VA_ARGS__), \
+	MACRO__(0x4628, ## __VA_ARGS__), \
+	MACRO__(0x46B0, ## __VA_ARGS__), \
+	MACRO__(0x46B1, ## __VA_ARGS__), \
+	MACRO__(0x46B2, ## __VA_ARGS__), \
+	MACRO__(0x46B3, ## __VA_ARGS__), \
+	MACRO__(0x46C0, ## __VA_ARGS__), \
+	MACRO__(0x46C1, ## __VA_ARGS__), \
+	MACRO__(0x46C2, ## __VA_ARGS__), \
+	MACRO__(0x46C3, ## __VA_ARGS__)

-:1731: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1731: FILE: include/drm/i915_pciids.h:674:
+#define INTEL_ADLN_IDS(MACRO__, ...) \
+	MACRO__(0x46D0, ## __VA_ARGS__), \
+	MACRO__(0x46D1, ## __VA_ARGS__), \
+	MACRO__(0x46D2, ## __VA_ARGS__), \
+	MACRO__(0x46D3, ## __VA_ARGS__), \
+	MACRO__(0x46D4, ## __VA_ARGS__)

-:1731: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1731: FILE: include/drm/i915_pciids.h:674:
+#define INTEL_ADLN_IDS(MACRO__, ...) \
+	MACRO__(0x46D0, ## __VA_ARGS__), \
+	MACRO__(0x46D1, ## __VA_ARGS__), \
+	MACRO__(0x46D2, ## __VA_ARGS__), \
+	MACRO__(0x46D3, ## __VA_ARGS__), \
+	MACRO__(0x46D4, ## __VA_ARGS__)

-:1748: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1748: FILE: include/drm/i915_pciids.h:682:
+#define INTEL_RPLS_IDS(MACRO__, ...) \
+	MACRO__(0xA780, ## __VA_ARGS__), \
+	MACRO__(0xA781, ## __VA_ARGS__), \
+	MACRO__(0xA782, ## __VA_ARGS__), \
+	MACRO__(0xA783, ## __VA_ARGS__), \
+	MACRO__(0xA788, ## __VA_ARGS__), \
+	MACRO__(0xA789, ## __VA_ARGS__), \
+	MACRO__(0xA78A, ## __VA_ARGS__), \
+	MACRO__(0xA78B, ## __VA_ARGS__)

-:1748: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1748: FILE: include/drm/i915_pciids.h:682:
+#define INTEL_RPLS_IDS(MACRO__, ...) \
+	MACRO__(0xA780, ## __VA_ARGS__), \
+	MACRO__(0xA781, ## __VA_ARGS__), \
+	MACRO__(0xA782, ## __VA_ARGS__), \
+	MACRO__(0xA783, ## __VA_ARGS__), \
+	MACRO__(0xA788, ## __VA_ARGS__), \
+	MACRO__(0xA789, ## __VA_ARGS__), \
+	MACRO__(0xA78A, ## __VA_ARGS__), \
+	MACRO__(0xA78B, ## __VA_ARGS__)

-:1765: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1765: FILE: include/drm/i915_pciids.h:693:
+#define INTEL_RPLU_IDS(MACRO__, ...) \
+	MACRO__(0xA721, ## __VA_ARGS__), \
+	MACRO__(0xA7A1, ## __VA_ARGS__), \
+	MACRO__(0xA7A9, ## __VA_ARGS__), \
+	MACRO__(0xA7AC, ## __VA_ARGS__), \
+	MACRO__(0xA7AD, ## __VA_ARGS__)

-:1765: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1765: FILE: include/drm/i915_pciids.h:693:
+#define INTEL_RPLU_IDS(MACRO__, ...) \
+	MACRO__(0xA721, ## __VA_ARGS__), \
+	MACRO__(0xA7A1, ## __VA_ARGS__), \
+	MACRO__(0xA7A9, ## __VA_ARGS__), \
+	MACRO__(0xA7AC, ## __VA_ARGS__), \
+	MACRO__(0xA7AD, ## __VA_ARGS__)

-:1779: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1779: FILE: include/drm/i915_pciids.h:701:
+#define INTEL_RPLP_IDS(MACRO__, ...) \
+	MACRO__(0xA720, ## __VA_ARGS__), \
+	MACRO__(0xA7A0, ## __VA_ARGS__), \
+	MACRO__(0xA7A8, ## __VA_ARGS__), \
+	MACRO__(0xA7AA, ## __VA_ARGS__), \
+	MACRO__(0xA7AB, ## __VA_ARGS__)

-:1779: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1779: FILE: include/drm/i915_pciids.h:701:
+#define INTEL_RPLP_IDS(MACRO__, ...) \
+	MACRO__(0xA720, ## __VA_ARGS__), \
+	MACRO__(0xA7A0, ## __VA_ARGS__), \
+	MACRO__(0xA7A8, ## __VA_ARGS__), \
+	MACRO__(0xA7AA, ## __VA_ARGS__), \
+	MACRO__(0xA7AB, ## __VA_ARGS__)

-:1833: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1833: FILE: include/drm/i915_pciids.h:709:
+#define INTEL_DG2_G10_IDS(MACRO__, ...) \
+	MACRO__(0x5690, ## __VA_ARGS__), \
+	MACRO__(0x5691, ## __VA_ARGS__), \
+	MACRO__(0x5692, ## __VA_ARGS__), \
+	MACRO__(0x56A0, ## __VA_ARGS__), \
+	MACRO__(0x56A1, ## __VA_ARGS__), \
+	MACRO__(0x56A2, ## __VA_ARGS__), \
+	MACRO__(0x56BE, ## __VA_ARGS__), \
+	MACRO__(0x56BF, ## __VA_ARGS__)

-:1833: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1833: FILE: include/drm/i915_pciids.h:709:
+#define INTEL_DG2_G10_IDS(MACRO__, ...) \
+	MACRO__(0x5690, ## __VA_ARGS__), \
+	MACRO__(0x5691, ## __VA_ARGS__), \
+	MACRO__(0x5692, ## __VA_ARGS__), \
+	MACRO__(0x56A0, ## __VA_ARGS__), \
+	MACRO__(0x56A1, ## __VA_ARGS__), \
+	MACRO__(0x56A2, ## __VA_ARGS__), \
+	MACRO__(0x56BE, ## __VA_ARGS__), \
+	MACRO__(0x56BF, ## __VA_ARGS__)

-:1843: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1843: FILE: include/drm/i915_pciids.h:719:
+#define INTEL_DG2_G11_IDS(MACRO__, ...) \
+	MACRO__(0x5693, ## __VA_ARGS__), \
+	MACRO__(0x5694, ## __VA_ARGS__), \
+	MACRO__(0x5695, ## __VA_ARGS__), \
+	MACRO__(0x56A5, ## __VA_ARGS__), \
+	MACRO__(0x56A6, ## __VA_ARGS__), \
+	MACRO__(0x56B0, ## __VA_ARGS__), \
+	MACRO__(0x56B1, ## __VA_ARGS__), \
+	MACRO__(0x56BA, ## __VA_ARGS__), \
+	MACRO__(0x56BB, ## __VA_ARGS__), \
+	MACRO__(0x56BC, ## __VA_ARGS__), \
+	MACRO__(0x56BD, ## __VA_ARGS__)

-:1843: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1843: FILE: include/drm/i915_pciids.h:719:
+#define INTEL_DG2_G11_IDS(MACRO__, ...) \
+	MACRO__(0x5693, ## __VA_ARGS__), \
+	MACRO__(0x5694, ## __VA_ARGS__), \
+	MACRO__(0x5695, ## __VA_ARGS__), \
+	MACRO__(0x56A5, ## __VA_ARGS__), \
+	MACRO__(0x56A6, ## __VA_ARGS__), \
+	MACRO__(0x56B0, ## __VA_ARGS__), \
+	MACRO__(0x56B1, ## __VA_ARGS__), \
+	MACRO__(0x56BA, ## __VA_ARGS__), \
+	MACRO__(0x56BB, ## __VA_ARGS__), \
+	MACRO__(0x56BC, ## __VA_ARGS__), \
+	MACRO__(0x56BD, ## __VA_ARGS__)

-:1856: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1856: FILE: include/drm/i915_pciids.h:732:
+#define INTEL_DG2_G12_IDS(MACRO__, ...) \
+	MACRO__(0x5696, ## __VA_ARGS__), \
+	MACRO__(0x5697, ## __VA_ARGS__), \
+	MACRO__(0x56A3, ## __VA_ARGS__), \
+	MACRO__(0x56A4, ## __VA_ARGS__), \
+	MACRO__(0x56B2, ## __VA_ARGS__), \
+	MACRO__(0x56B3, ## __VA_ARGS__)

-:1856: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1856: FILE: include/drm/i915_pciids.h:732:
+#define INTEL_DG2_G12_IDS(MACRO__, ...) \
+	MACRO__(0x5696, ## __VA_ARGS__), \
+	MACRO__(0x5697, ## __VA_ARGS__), \
+	MACRO__(0x56A3, ## __VA_ARGS__), \
+	MACRO__(0x56A4, ## __VA_ARGS__), \
+	MACRO__(0x56B2, ## __VA_ARGS__), \
+	MACRO__(0x56B3, ## __VA_ARGS__)

-:1864: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1864: FILE: include/drm/i915_pciids.h:740:
+#define INTEL_DG2_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_IDS(MACRO__, ## __VA_ARGS__)

-:1864: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1864: FILE: include/drm/i915_pciids.h:740:
+#define INTEL_DG2_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_IDS(MACRO__, ## __VA_ARGS__)

-:1869: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1869: FILE: include/drm/i915_pciids.h:745:
+#define INTEL_ATS_M150_IDS(MACRO__, ...) \
+	MACRO__(0x56C0, ## __VA_ARGS__), \
+	MACRO__(0x56C2, ## __VA_ARGS__)

-:1869: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1869: FILE: include/drm/i915_pciids.h:745:
+#define INTEL_ATS_M150_IDS(MACRO__, ...) \
+	MACRO__(0x56C0, ## __VA_ARGS__), \
+	MACRO__(0x56C2, ## __VA_ARGS__)

-:1876: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1876: FILE: include/drm/i915_pciids.h:752:
+#define INTEL_ATS_M_IDS(MACRO__, ...) \
+	INTEL_ATS_M150_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)

-:1876: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1876: FILE: include/drm/i915_pciids.h:752:
+#define INTEL_ATS_M_IDS(MACRO__, ...) \
+	INTEL_ATS_M150_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)

-:1891: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1891: FILE: include/drm/i915_pciids.h:757:
+#define INTEL_MTL_IDS(MACRO__, ...) \
+	MACRO__(0x7D40, ## __VA_ARGS__), \
+	MACRO__(0x7D41, ## __VA_ARGS__), \
+	MACRO__(0x7D45, ## __VA_ARGS__), \
+	MACRO__(0x7D51, ## __VA_ARGS__), \
+	MACRO__(0x7D55, ## __VA_ARGS__), \
+	MACRO__(0x7D60, ## __VA_ARGS__), \
+	MACRO__(0x7D67, ## __VA_ARGS__), \
+	MACRO__(0x7DD1, ## __VA_ARGS__), \
+	MACRO__(0x7DD5, ## __VA_ARGS__)

-:1891: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1891: FILE: include/drm/i915_pciids.h:757:
+#define INTEL_MTL_IDS(MACRO__, ...) \
+	MACRO__(0x7D40, ## __VA_ARGS__), \
+	MACRO__(0x7D41, ## __VA_ARGS__), \
+	MACRO__(0x7D45, ## __VA_ARGS__), \
+	MACRO__(0x7D51, ## __VA_ARGS__), \
+	MACRO__(0x7D55, ## __VA_ARGS__), \
+	MACRO__(0x7D60, ## __VA_ARGS__), \
+	MACRO__(0x7D67, ## __VA_ARGS__), \
+	MACRO__(0x7DD1, ## __VA_ARGS__), \
+	MACRO__(0x7DD5, ## __VA_ARGS__)

total: 90 errors, 0 warnings, 90 checks, 1864 lines checked


