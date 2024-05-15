Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3728C6BE1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 20:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1493810E384;
	Wed, 15 May 2024 18:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E99B10E384;
 Wed, 15 May 2024 18:10:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/2=5D_drm/i915/pciids=3A_switch_to_xe_driver_style_PCI_ID_ma?=
 =?utf-8?q?cros?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 15 May 2024 18:10:05 -0000
Message-ID: <171579660531.2118792.2896115481989957106@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240515165651.1230465-1-jani.nikula@intel.com>
In-Reply-To: <20240515165651.1230465-1-jani.nikula@intel.com>
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

Series: series starting with [1/2] drm/i915/pciids: switch to xe driver style PCI ID macros
URL   : https://patchwork.freedesktop.org/series/133664/
State : warning

== Summary ==

Error: dim checkpatch failed
527339fb7437 drm/i915/pciids: switch to xe driver style PCI ID macros
-:533: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#533: FILE: include/drm/i915_pciids.h:50:
+#define INTEL_I810_IDS(MACRO__, ...) \
+	MACRO__(0x7121, ## __VA_ARGS__), /* I810 */ \
+	MACRO__(0x7123, ## __VA_ARGS__), /* I810_DC100 */ \
+	MACRO__(0x7125, ## __VA_ARGS__)  /* I810_E */

-:533: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#533: FILE: include/drm/i915_pciids.h:50:
+#define INTEL_I810_IDS(MACRO__, ...) \
+	MACRO__(0x7121, ## __VA_ARGS__), /* I810 */ \
+	MACRO__(0x7123, ## __VA_ARGS__), /* I810_DC100 */ \
+	MACRO__(0x7125, ## __VA_ARGS__)  /* I810_E */

-:556: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#556: FILE: include/drm/i915_pciids.h:64:
+#define INTEL_I85X_IDS(MACRO__, ...) \
+	MACRO__(0x3582, ## __VA_ARGS__), /* I855_GM */ \
+	MACRO__(0x358e, ## __VA_ARGS__)

-:556: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#556: FILE: include/drm/i915_pciids.h:64:
+#define INTEL_I85X_IDS(MACRO__, ...) \
+	MACRO__(0x3582, ## __VA_ARGS__), /* I855_GM */ \
+	MACRO__(0x358e, ## __VA_ARGS__)

-:568: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#568: FILE: include/drm/i915_pciids.h:71:
+#define INTEL_I915G_IDS(MACRO__, ...) \
+	MACRO__(0x2582, ## __VA_ARGS__), /* I915_G */ \
+	MACRO__(0x258a, ## __VA_ARGS__)  /* E7221_G */

-:568: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#568: FILE: include/drm/i915_pciids.h:71:
+#define INTEL_I915G_IDS(MACRO__, ...) \
+	MACRO__(0x2582, ## __VA_ARGS__), /* I915_G */ \
+	MACRO__(0x258a, ## __VA_ARGS__)  /* E7221_G */

-:585: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#585: FILE: include/drm/i915_pciids.h:81:
+#define INTEL_I945GM_IDS(MACRO__, ...) \
+	MACRO__(0x27a2, ## __VA_ARGS__), /* I945_GM */ \
+	MACRO__(0x27ae, ## __VA_ARGS__)  /* I945_GME */

-:585: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#585: FILE: include/drm/i915_pciids.h:81:
+#define INTEL_I945GM_IDS(MACRO__, ...) \
+	MACRO__(0x27a2, ## __VA_ARGS__), /* I945_GM */ \
+	MACRO__(0x27ae, ## __VA_ARGS__)  /* I945_GME */

-:594: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#594: FILE: include/drm/i915_pciids.h:85:
+#define INTEL_I965G_IDS(MACRO__, ...) \
+	MACRO__(0x2972, ## __VA_ARGS__), /* I946_GZ */ \
+	MACRO__(0x2982, ## __VA_ARGS__),	/* G35_G */ \
+	MACRO__(0x2992, ## __VA_ARGS__),	/* I965_Q */ \
+	MACRO__(0x29a2, ## __VA_ARGS__)	/* I965_G */

-:594: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#594: FILE: include/drm/i915_pciids.h:85:
+#define INTEL_I965G_IDS(MACRO__, ...) \
+	MACRO__(0x2972, ## __VA_ARGS__), /* I946_GZ */ \
+	MACRO__(0x2982, ## __VA_ARGS__),	/* G35_G */ \
+	MACRO__(0x2992, ## __VA_ARGS__),	/* I965_Q */ \
+	MACRO__(0x29a2, ## __VA_ARGS__)	/* I965_G */

-:604: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#604: FILE: include/drm/i915_pciids.h:91:
+#define INTEL_G33_IDS(MACRO__, ...) \
+	MACRO__(0x29b2, ## __VA_ARGS__), /* Q35_G */ \
+	MACRO__(0x29c2, ## __VA_ARGS__),	/* G33_G */ \
+	MACRO__(0x29d2, ## __VA_ARGS__)	/* Q33_G */

-:604: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#604: FILE: include/drm/i915_pciids.h:91:
+#define INTEL_G33_IDS(MACRO__, ...) \
+	MACRO__(0x29b2, ## __VA_ARGS__), /* Q35_G */ \
+	MACRO__(0x29c2, ## __VA_ARGS__),	/* G33_G */ \
+	MACRO__(0x29d2, ## __VA_ARGS__)	/* Q33_G */

-:612: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#612: FILE: include/drm/i915_pciids.h:96:
+#define INTEL_I965GM_IDS(MACRO__, ...) \
+	MACRO__(0x2a02, ## __VA_ARGS__),	/* I965_GM */ \
+	MACRO__(0x2a12, ## __VA_ARGS__)  /* I965_GME */

-:612: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#612: FILE: include/drm/i915_pciids.h:96:
+#define INTEL_I965GM_IDS(MACRO__, ...) \
+	MACRO__(0x2a02, ## __VA_ARGS__),	/* I965_GM */ \
+	MACRO__(0x2a12, ## __VA_ARGS__)  /* I965_GME */

-:972: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#972: FILE: include/drm/i915_pciids.h:103:
+#define INTEL_G45_IDS(MACRO__, ...) \
+	MACRO__(0x2e02, ## __VA_ARGS__), /* IGD_E_G */ \
+	MACRO__(0x2e12, ## __VA_ARGS__), /* Q45_G */ \
+	MACRO__(0x2e22, ## __VA_ARGS__), /* G45_G */ \
+	MACRO__(0x2e32, ## __VA_ARGS__), /* G41_G */ \
+	MACRO__(0x2e42, ## __VA_ARGS__), /* B43_G */ \
+	MACRO__(0x2e92, ## __VA_ARGS__)	/* B43_G.1 */

-:972: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#972: FILE: include/drm/i915_pciids.h:103:
+#define INTEL_G45_IDS(MACRO__, ...) \
+	MACRO__(0x2e02, ## __VA_ARGS__), /* IGD_E_G */ \
+	MACRO__(0x2e12, ## __VA_ARGS__), /* Q45_G */ \
+	MACRO__(0x2e22, ## __VA_ARGS__), /* G45_G */ \
+	MACRO__(0x2e32, ## __VA_ARGS__), /* G41_G */ \
+	MACRO__(0x2e42, ## __VA_ARGS__), /* B43_G */ \
+	MACRO__(0x2e92, ## __VA_ARGS__)	/* B43_G.1 */

-:986: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#986: FILE: include/drm/i915_pciids.h:117:
+#define INTEL_PNV_IDS(MACRO__, ...) \
+	INTEL_PNV_G_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_PNV_M_IDS(MACRO__, ## __VA_ARGS__)

-:986: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#986: FILE: include/drm/i915_pciids.h:117:
+#define INTEL_PNV_IDS(MACRO__, ...) \
+	INTEL_PNV_G_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_PNV_M_IDS(MACRO__, ## __VA_ARGS__)

-:996: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#996: FILE: include/drm/i915_pciids.h:127:
+#define INTEL_ILK_IDS(MACRO__, ...) \
+	INTEL_ILK_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_ILK_M_IDS(MACRO__, ## __VA_ARGS__)

-:996: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#996: FILE: include/drm/i915_pciids.h:127:
+#define INTEL_ILK_IDS(MACRO__, ...) \
+	INTEL_ILK_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_ILK_M_IDS(MACRO__, ## __VA_ARGS__)

-:1000: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1000: FILE: include/drm/i915_pciids.h:131:
+#define INTEL_SNB_D_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0102, ## __VA_ARGS__), \
+	MACRO__(0x010A, ## __VA_ARGS__)

-:1000: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1000: FILE: include/drm/i915_pciids.h:131:
+#define INTEL_SNB_D_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0102, ## __VA_ARGS__), \
+	MACRO__(0x010A, ## __VA_ARGS__)

-:1004: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1004: FILE: include/drm/i915_pciids.h:135:
+#define INTEL_SNB_D_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0112, ## __VA_ARGS__), \
+	MACRO__(0x0122, ## __VA_ARGS__)

-:1004: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1004: FILE: include/drm/i915_pciids.h:135:
+#define INTEL_SNB_D_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0112, ## __VA_ARGS__), \
+	MACRO__(0x0122, ## __VA_ARGS__)

-:1008: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1008: FILE: include/drm/i915_pciids.h:139:
+#define INTEL_SNB_D_IDS(MACRO__, ...) \
+	INTEL_SNB_D_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SNB_D_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1008: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1008: FILE: include/drm/i915_pciids.h:139:
+#define INTEL_SNB_D_IDS(MACRO__, ...) \
+	INTEL_SNB_D_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SNB_D_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1015: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1015: FILE: include/drm/i915_pciids.h:146:
+#define INTEL_SNB_M_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0116, ## __VA_ARGS__), \
+	MACRO__(0x0126, ## __VA_ARGS__)

-:1015: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1015: FILE: include/drm/i915_pciids.h:146:
+#define INTEL_SNB_M_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0116, ## __VA_ARGS__), \
+	MACRO__(0x0126, ## __VA_ARGS__)

-:1019: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1019: FILE: include/drm/i915_pciids.h:150:
+#define INTEL_SNB_M_IDS(MACRO__, ...) \
+	INTEL_SNB_M_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SNB_M_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1019: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1019: FILE: include/drm/i915_pciids.h:150:
+#define INTEL_SNB_M_IDS(MACRO__, ...) \
+	INTEL_SNB_M_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SNB_M_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1023: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1023: FILE: include/drm/i915_pciids.h:154:
+#define INTEL_SNB_IDS(MACRO__, ...) \
+	INTEL_SNB_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SNB_M_IDS(MACRO__, ## __VA_ARGS__)

-:1023: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1023: FILE: include/drm/i915_pciids.h:154:
+#define INTEL_SNB_IDS(MACRO__, ...) \
+	INTEL_SNB_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SNB_M_IDS(MACRO__, ## __VA_ARGS__)

-:1033: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1033: FILE: include/drm/i915_pciids.h:164:
+#define INTEL_IVB_M_IDS(MACRO__, ...) \
+	INTEL_IVB_M_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_IVB_M_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1033: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1033: FILE: include/drm/i915_pciids.h:164:
+#define INTEL_IVB_M_IDS(MACRO__, ...) \
+	INTEL_IVB_M_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_IVB_M_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1037: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1037: FILE: include/drm/i915_pciids.h:168:
+#define INTEL_IVB_D_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0152, ## __VA_ARGS__), /* GT1 desktop */ \
+	MACRO__(0x015a, ## __VA_ARGS__)  /* GT1 server */

-:1037: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1037: FILE: include/drm/i915_pciids.h:168:
+#define INTEL_IVB_D_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0152, ## __VA_ARGS__), /* GT1 desktop */ \
+	MACRO__(0x015a, ## __VA_ARGS__)  /* GT1 server */

-:1041: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1041: FILE: include/drm/i915_pciids.h:172:
+#define INTEL_IVB_D_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0162, ## __VA_ARGS__), /* GT2 desktop */ \
+	MACRO__(0x016a, ## __VA_ARGS__)  /* GT2 server */

-:1041: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1041: FILE: include/drm/i915_pciids.h:172:
+#define INTEL_IVB_D_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0162, ## __VA_ARGS__), /* GT2 desktop */ \
+	MACRO__(0x016a, ## __VA_ARGS__)  /* GT2 server */

-:1045: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1045: FILE: include/drm/i915_pciids.h:176:
+#define INTEL_IVB_D_IDS(MACRO__, ...) \
+	INTEL_IVB_D_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_IVB_D_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1045: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1045: FILE: include/drm/i915_pciids.h:176:
+#define INTEL_IVB_D_IDS(MACRO__, ...) \
+	INTEL_IVB_D_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_IVB_D_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1049: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1049: FILE: include/drm/i915_pciids.h:180:
+#define INTEL_IVB_IDS(MACRO__, ...) \
+	INTEL_IVB_M_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_IVB_D_IDS(MACRO__, ## __VA_ARGS__)

-:1049: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1049: FILE: include/drm/i915_pciids.h:180:
+#define INTEL_IVB_IDS(MACRO__, ...) \
+	INTEL_IVB_M_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_IVB_D_IDS(MACRO__, ## __VA_ARGS__)

-:1056: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1056: FILE: include/drm/i915_pciids.h:187:
+#define INTEL_HSW_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0A02, ## __VA_ARGS__), /* ULT GT1 desktop */ \
+	MACRO__(0x0A06, ## __VA_ARGS__), /* ULT GT1 mobile */ \
+	MACRO__(0x0A0A, ## __VA_ARGS__), /* ULT GT1 server */ \
+	MACRO__(0x0A0B, ## __VA_ARGS__)  /* ULT GT1 reserved */

-:1056: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1056: FILE: include/drm/i915_pciids.h:187:
+#define INTEL_HSW_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x0A02, ## __VA_ARGS__), /* ULT GT1 desktop */ \
+	MACRO__(0x0A06, ## __VA_ARGS__), /* ULT GT1 mobile */ \
+	MACRO__(0x0A0A, ## __VA_ARGS__), /* ULT GT1 server */ \
+	MACRO__(0x0A0B, ## __VA_ARGS__)  /* ULT GT1 reserved */

-:1065: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1065: FILE: include/drm/i915_pciids.h:196:
+#define INTEL_HSW_GT1_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0402, ## __VA_ARGS__), /* GT1 desktop */ \
+	MACRO__(0x0406, ## __VA_ARGS__), /* GT1 mobile */ \
+	MACRO__(0x040A, ## __VA_ARGS__), /* GT1 server */ \
+	MACRO__(0x040B, ## __VA_ARGS__), /* GT1 reserved */ \
+	MACRO__(0x040E, ## __VA_ARGS__), /* GT1 reserved */ \
+	MACRO__(0x0C02, ## __VA_ARGS__), /* SDV GT1 desktop */ \
+	MACRO__(0x0C06, ## __VA_ARGS__), /* SDV GT1 mobile */ \
+	MACRO__(0x0C0A, ## __VA_ARGS__), /* SDV GT1 server */ \
+	MACRO__(0x0C0B, ## __VA_ARGS__), /* SDV GT1 reserved */ \
+	MACRO__(0x0C0E, ## __VA_ARGS__), /* SDV GT1 reserved */ \
+	MACRO__(0x0D02, ## __VA_ARGS__), /* CRW GT1 desktop */ \
+	MACRO__(0x0D06, ## __VA_ARGS__), /* CRW GT1 mobile */ \
+	MACRO__(0x0D0A, ## __VA_ARGS__), /* CRW GT1 server */ \
+	MACRO__(0x0D0B, ## __VA_ARGS__), /* CRW GT1 reserved */ \
+	MACRO__(0x0D0E, ## __VA_ARGS__)  /* CRW GT1 reserved */

-:1065: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1065: FILE: include/drm/i915_pciids.h:196:
+#define INTEL_HSW_GT1_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0402, ## __VA_ARGS__), /* GT1 desktop */ \
+	MACRO__(0x0406, ## __VA_ARGS__), /* GT1 mobile */ \
+	MACRO__(0x040A, ## __VA_ARGS__), /* GT1 server */ \
+	MACRO__(0x040B, ## __VA_ARGS__), /* GT1 reserved */ \
+	MACRO__(0x040E, ## __VA_ARGS__), /* GT1 reserved */ \
+	MACRO__(0x0C02, ## __VA_ARGS__), /* SDV GT1 desktop */ \
+	MACRO__(0x0C06, ## __VA_ARGS__), /* SDV GT1 mobile */ \
+	MACRO__(0x0C0A, ## __VA_ARGS__), /* SDV GT1 server */ \
+	MACRO__(0x0C0B, ## __VA_ARGS__), /* SDV GT1 reserved */ \
+	MACRO__(0x0C0E, ## __VA_ARGS__), /* SDV GT1 reserved */ \
+	MACRO__(0x0D02, ## __VA_ARGS__), /* CRW GT1 desktop */ \
+	MACRO__(0x0D06, ## __VA_ARGS__), /* CRW GT1 mobile */ \
+	MACRO__(0x0D0A, ## __VA_ARGS__), /* CRW GT1 server */ \
+	MACRO__(0x0D0B, ## __VA_ARGS__), /* CRW GT1 reserved */ \
+	MACRO__(0x0D0E, ## __VA_ARGS__)  /* CRW GT1 reserved */

-:1084: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1084: FILE: include/drm/i915_pciids.h:215:
+#define INTEL_HSW_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0A12, ## __VA_ARGS__), /* ULT GT2 desktop */ \
+	MACRO__(0x0A16, ## __VA_ARGS__), /* ULT GT2 mobile */ \
+	MACRO__(0x0A1A, ## __VA_ARGS__), /* ULT GT2 server */ \
+	MACRO__(0x0A1B, ## __VA_ARGS__)  /* ULT GT2 reserved */ \
+

-:1084: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1084: FILE: include/drm/i915_pciids.h:215:
+#define INTEL_HSW_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x0A12, ## __VA_ARGS__), /* ULT GT2 desktop */ \
+	MACRO__(0x0A16, ## __VA_ARGS__), /* ULT GT2 mobile */ \
+	MACRO__(0x0A1A, ## __VA_ARGS__), /* ULT GT2 server */ \
+	MACRO__(0x0A1B, ## __VA_ARGS__)  /* ULT GT2 reserved */ \
+

-:1093: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1093: FILE: include/drm/i915_pciids.h:224:
+#define INTEL_HSW_GT2_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0412, ## __VA_ARGS__), /* GT2 desktop */ \
+	MACRO__(0x0416, ## __VA_ARGS__), /* GT2 mobile */ \
+	MACRO__(0x041A, ## __VA_ARGS__), /* GT2 server */ \
+	MACRO__(0x041B, ## __VA_ARGS__), /* GT2 reserved */ \
+	MACRO__(0x041E, ## __VA_ARGS__), /* GT2 reserved */ \
+	MACRO__(0x0C12, ## __VA_ARGS__), /* SDV GT2 desktop */ \
+	MACRO__(0x0C16, ## __VA_ARGS__), /* SDV GT2 mobile */ \
+	MACRO__(0x0C1A, ## __VA_ARGS__), /* SDV GT2 server */ \
+	MACRO__(0x0C1B, ## __VA_ARGS__), /* SDV GT2 reserved */ \
+	MACRO__(0x0C1E, ## __VA_ARGS__), /* SDV GT2 reserved */ \
+	MACRO__(0x0D12, ## __VA_ARGS__), /* CRW GT2 desktop */ \
+	MACRO__(0x0D16, ## __VA_ARGS__), /* CRW GT2 mobile */ \
+	MACRO__(0x0D1A, ## __VA_ARGS__), /* CRW GT2 server */ \
+	MACRO__(0x0D1B, ## __VA_ARGS__), /* CRW GT2 reserved */ \
+	MACRO__(0x0D1E, ## __VA_ARGS__)  /* CRW GT2 reserved */

-:1093: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1093: FILE: include/drm/i915_pciids.h:224:
+#define INTEL_HSW_GT2_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0412, ## __VA_ARGS__), /* GT2 desktop */ \
+	MACRO__(0x0416, ## __VA_ARGS__), /* GT2 mobile */ \
+	MACRO__(0x041A, ## __VA_ARGS__), /* GT2 server */ \
+	MACRO__(0x041B, ## __VA_ARGS__), /* GT2 reserved */ \
+	MACRO__(0x041E, ## __VA_ARGS__), /* GT2 reserved */ \
+	MACRO__(0x0C12, ## __VA_ARGS__), /* SDV GT2 desktop */ \
+	MACRO__(0x0C16, ## __VA_ARGS__), /* SDV GT2 mobile */ \
+	MACRO__(0x0C1A, ## __VA_ARGS__), /* SDV GT2 server */ \
+	MACRO__(0x0C1B, ## __VA_ARGS__), /* SDV GT2 reserved */ \
+	MACRO__(0x0C1E, ## __VA_ARGS__), /* SDV GT2 reserved */ \
+	MACRO__(0x0D12, ## __VA_ARGS__), /* CRW GT2 desktop */ \
+	MACRO__(0x0D16, ## __VA_ARGS__), /* CRW GT2 mobile */ \
+	MACRO__(0x0D1A, ## __VA_ARGS__), /* CRW GT2 server */ \
+	MACRO__(0x0D1B, ## __VA_ARGS__), /* CRW GT2 reserved */ \
+	MACRO__(0x0D1E, ## __VA_ARGS__)  /* CRW GT2 reserved */

-:1112: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1112: FILE: include/drm/i915_pciids.h:243:
+#define INTEL_HSW_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x0A22, ## __VA_ARGS__), /* ULT GT3 desktop */ \
+	MACRO__(0x0A26, ## __VA_ARGS__), /* ULT GT3 mobile */ \
+	MACRO__(0x0A2A, ## __VA_ARGS__), /* ULT GT3 server */ \
+	MACRO__(0x0A2B, ## __VA_ARGS__), /* ULT GT3 reserved */ \
+	MACRO__(0x0A2E, ## __VA_ARGS__)  /* ULT GT3 reserved */

-:1112: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1112: FILE: include/drm/i915_pciids.h:243:
+#define INTEL_HSW_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x0A22, ## __VA_ARGS__), /* ULT GT3 desktop */ \
+	MACRO__(0x0A26, ## __VA_ARGS__), /* ULT GT3 mobile */ \
+	MACRO__(0x0A2A, ## __VA_ARGS__), /* ULT GT3 server */ \
+	MACRO__(0x0A2B, ## __VA_ARGS__), /* ULT GT3 reserved */ \
+	MACRO__(0x0A2E, ## __VA_ARGS__)  /* ULT GT3 reserved */

-:1119: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1119: FILE: include/drm/i915_pciids.h:250:
+#define INTEL_HSW_GT3_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0422, ## __VA_ARGS__), /* GT3 desktop */ \
+	MACRO__(0x0426, ## __VA_ARGS__), /* GT3 mobile */ \
+	MACRO__(0x042A, ## __VA_ARGS__), /* GT3 server */ \
+	MACRO__(0x042B, ## __VA_ARGS__), /* GT3 reserved */ \
+	MACRO__(0x042E, ## __VA_ARGS__), /* GT3 reserved */ \
+	MACRO__(0x0C22, ## __VA_ARGS__), /* SDV GT3 desktop */ \
+	MACRO__(0x0C26, ## __VA_ARGS__), /* SDV GT3 mobile */ \
+	MACRO__(0x0C2A, ## __VA_ARGS__), /* SDV GT3 server */ \
+	MACRO__(0x0C2B, ## __VA_ARGS__), /* SDV GT3 reserved */ \
+	MACRO__(0x0C2E, ## __VA_ARGS__), /* SDV GT3 reserved */ \
+	MACRO__(0x0D22, ## __VA_ARGS__), /* CRW GT3 desktop */ \
+	MACRO__(0x0D26, ## __VA_ARGS__), /* CRW GT3 mobile */ \
+	MACRO__(0x0D2A, ## __VA_ARGS__), /* CRW GT3 server */ \
+	MACRO__(0x0D2B, ## __VA_ARGS__), /* CRW GT3 reserved */ \
+	MACRO__(0x0D2E, ## __VA_ARGS__)  /* CRW GT3 reserved */

-:1119: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1119: FILE: include/drm/i915_pciids.h:250:
+#define INTEL_HSW_GT3_IDS(MACRO__, ...) \
+	INTEL_HSW_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x0422, ## __VA_ARGS__), /* GT3 desktop */ \
+	MACRO__(0x0426, ## __VA_ARGS__), /* GT3 mobile */ \
+	MACRO__(0x042A, ## __VA_ARGS__), /* GT3 server */ \
+	MACRO__(0x042B, ## __VA_ARGS__), /* GT3 reserved */ \
+	MACRO__(0x042E, ## __VA_ARGS__), /* GT3 reserved */ \
+	MACRO__(0x0C22, ## __VA_ARGS__), /* SDV GT3 desktop */ \
+	MACRO__(0x0C26, ## __VA_ARGS__), /* SDV GT3 mobile */ \
+	MACRO__(0x0C2A, ## __VA_ARGS__), /* SDV GT3 server */ \
+	MACRO__(0x0C2B, ## __VA_ARGS__), /* SDV GT3 reserved */ \
+	MACRO__(0x0C2E, ## __VA_ARGS__), /* SDV GT3 reserved */ \
+	MACRO__(0x0D22, ## __VA_ARGS__), /* CRW GT3 desktop */ \
+	MACRO__(0x0D26, ## __VA_ARGS__), /* CRW GT3 mobile */ \
+	MACRO__(0x0D2A, ## __VA_ARGS__), /* CRW GT3 server */ \
+	MACRO__(0x0D2B, ## __VA_ARGS__), /* CRW GT3 reserved */ \
+	MACRO__(0x0D2E, ## __VA_ARGS__)  /* CRW GT3 reserved */

-:1137: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1137: FILE: include/drm/i915_pciids.h:268:
+#define INTEL_HSW_IDS(MACRO__, ...) \
+	INTEL_HSW_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_GT3_IDS(MACRO__, ## __VA_ARGS__)

-:1137: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1137: FILE: include/drm/i915_pciids.h:268:
+#define INTEL_HSW_IDS(MACRO__, ...) \
+	INTEL_HSW_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_HSW_GT3_IDS(MACRO__, ## __VA_ARGS__)

-:1142: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1142: FILE: include/drm/i915_pciids.h:273:
+#define INTEL_VLV_IDS(MACRO__, ...) \
+	MACRO__(0x0f30, ## __VA_ARGS__), \
+	MACRO__(0x0f31, ## __VA_ARGS__), \
+	MACRO__(0x0f32, ## __VA_ARGS__), \
+	MACRO__(0x0f33, ## __VA_ARGS__)

-:1142: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1142: FILE: include/drm/i915_pciids.h:273:
+#define INTEL_VLV_IDS(MACRO__, ...) \
+	MACRO__(0x0f30, ## __VA_ARGS__), \
+	MACRO__(0x0f31, ## __VA_ARGS__), \
+	MACRO__(0x0f32, ## __VA_ARGS__), \
+	MACRO__(0x0f33, ## __VA_ARGS__)

-:1148: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1148: FILE: include/drm/i915_pciids.h:279:
+#define INTEL_BDW_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x1606, ## __VA_ARGS__), /* GT1 ULT */ \
+	MACRO__(0x160B, ## __VA_ARGS__)  /* GT1 Iris */

-:1148: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1148: FILE: include/drm/i915_pciids.h:279:
+#define INTEL_BDW_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x1606, ## __VA_ARGS__), /* GT1 ULT */ \
+	MACRO__(0x160B, ## __VA_ARGS__)  /* GT1 Iris */

-:1155: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1155: FILE: include/drm/i915_pciids.h:286:
+#define INTEL_BDW_GT1_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1602, ## __VA_ARGS__), /* GT1 ULT */ \
+	MACRO__(0x160A, ## __VA_ARGS__), /* GT1 Server */ \
+	MACRO__(0x160D, ## __VA_ARGS__)  /* GT1 Workstation */

-:1155: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1155: FILE: include/drm/i915_pciids.h:286:
+#define INTEL_BDW_GT1_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1602, ## __VA_ARGS__), /* GT1 ULT */ \
+	MACRO__(0x160A, ## __VA_ARGS__), /* GT1 Server */ \
+	MACRO__(0x160D, ## __VA_ARGS__)  /* GT1 Workstation */

-:1162: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1162: FILE: include/drm/i915_pciids.h:293:
+#define INTEL_BDW_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x1616, ## __VA_ARGS__), /* GT2 ULT */ \
+	MACRO__(0x161B, ## __VA_ARGS__)  /* GT2 ULT */

-:1162: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1162: FILE: include/drm/i915_pciids.h:293:
+#define INTEL_BDW_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x1616, ## __VA_ARGS__), /* GT2 ULT */ \
+	MACRO__(0x161B, ## __VA_ARGS__)  /* GT2 ULT */

-:1169: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1169: FILE: include/drm/i915_pciids.h:300:
+#define INTEL_BDW_GT2_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1612, ## __VA_ARGS__), /* GT2 Halo */ \
+	MACRO__(0x161A, ## __VA_ARGS__), /* GT2 Server */ \
+	MACRO__(0x161D, ## __VA_ARGS__)  /* GT2 Workstation */

-:1169: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1169: FILE: include/drm/i915_pciids.h:300:
+#define INTEL_BDW_GT2_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1612, ## __VA_ARGS__), /* GT2 Halo */ \
+	MACRO__(0x161A, ## __VA_ARGS__), /* GT2 Server */ \
+	MACRO__(0x161D, ## __VA_ARGS__)  /* GT2 Workstation */

-:1176: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1176: FILE: include/drm/i915_pciids.h:307:
+#define INTEL_BDW_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x1626, ## __VA_ARGS__), /* ULT */ \
+	MACRO__(0x162B, ## __VA_ARGS__)  /* Iris */ \
+

-:1176: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1176: FILE: include/drm/i915_pciids.h:307:
+#define INTEL_BDW_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x1626, ## __VA_ARGS__), /* ULT */ \
+	MACRO__(0x162B, ## __VA_ARGS__)  /* Iris */ \
+

-:1183: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1183: FILE: include/drm/i915_pciids.h:314:
+#define INTEL_BDW_GT3_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1622, ## __VA_ARGS__), /* ULT */ \
+	MACRO__(0x162A, ## __VA_ARGS__), /* Server */ \
+	MACRO__(0x162D, ## __VA_ARGS__)  /* Workstation */

-:1183: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1183: FILE: include/drm/i915_pciids.h:314:
+#define INTEL_BDW_GT3_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1622, ## __VA_ARGS__), /* ULT */ \
+	MACRO__(0x162A, ## __VA_ARGS__), /* Server */ \
+	MACRO__(0x162D, ## __VA_ARGS__)  /* Workstation */

-:1190: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1190: FILE: include/drm/i915_pciids.h:321:
+#define INTEL_BDW_ULT_RSVD_IDS(MACRO__, ...) \
+	MACRO__(0x1636, ## __VA_ARGS__), /* ULT */ \
+	MACRO__(0x163B, ## __VA_ARGS__)  /* Iris */

-:1190: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1190: FILE: include/drm/i915_pciids.h:321:
+#define INTEL_BDW_ULT_RSVD_IDS(MACRO__, ...) \
+	MACRO__(0x1636, ## __VA_ARGS__), /* ULT */ \
+	MACRO__(0x163B, ## __VA_ARGS__)  /* Iris */

-:1197: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1197: FILE: include/drm/i915_pciids.h:328:
+#define INTEL_BDW_RSVD_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_RSVD_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_RSVD_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1632, ## __VA_ARGS__), /* ULT */ \
+	MACRO__(0x163A, ## __VA_ARGS__), /* Server */ \
+	MACRO__(0x163D, ## __VA_ARGS__)  /* Workstation */

-:1197: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1197: FILE: include/drm/i915_pciids.h:328:
+#define INTEL_BDW_RSVD_IDS(MACRO__, ...) \
+	INTEL_BDW_ULT_RSVD_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_ULX_RSVD_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1632, ## __VA_ARGS__), /* ULT */ \
+	MACRO__(0x163A, ## __VA_ARGS__), /* Server */ \
+	MACRO__(0x163D, ## __VA_ARGS__)  /* Workstation */

-:1204: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1204: FILE: include/drm/i915_pciids.h:335:
+#define INTEL_BDW_IDS(MACRO__, ...) \
+	INTEL_BDW_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_RSVD_IDS(MACRO__, ## __VA_ARGS__)

-:1204: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1204: FILE: include/drm/i915_pciids.h:335:
+#define INTEL_BDW_IDS(MACRO__, ...) \
+	INTEL_BDW_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_BDW_RSVD_IDS(MACRO__, ## __VA_ARGS__)

-:1210: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1210: FILE: include/drm/i915_pciids.h:341:
+#define INTEL_CHV_IDS(MACRO__, ...) \
+	MACRO__(0x22b0, ## __VA_ARGS__), \
+	MACRO__(0x22b1, ## __VA_ARGS__), \
+	MACRO__(0x22b2, ## __VA_ARGS__), \
+	MACRO__(0x22b3, ## __VA_ARGS__)

-:1210: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1210: FILE: include/drm/i915_pciids.h:341:
+#define INTEL_CHV_IDS(MACRO__, ...) \
+	MACRO__(0x22b0, ## __VA_ARGS__), \
+	MACRO__(0x22b1, ## __VA_ARGS__), \
+	MACRO__(0x22b2, ## __VA_ARGS__), \
+	MACRO__(0x22b3, ## __VA_ARGS__)

-:1216: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1216: FILE: include/drm/i915_pciids.h:347:
+#define INTEL_SKL_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x1906, ## __VA_ARGS__), /* ULT GT1 */ \
+	MACRO__(0x1913, ## __VA_ARGS__)  /* ULT GT1.5 */

-:1216: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1216: FILE: include/drm/i915_pciids.h:347:
+#define INTEL_SKL_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x1906, ## __VA_ARGS__), /* ULT GT1 */ \
+	MACRO__(0x1913, ## __VA_ARGS__)  /* ULT GT1.5 */

-:1220: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1220: FILE: include/drm/i915_pciids.h:351:
+#define INTEL_SKL_ULX_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x190E, ## __VA_ARGS__), /* ULX GT1 */ \
+	MACRO__(0x1915, ## __VA_ARGS__)  /* ULX GT1.5 */

-:1220: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1220: FILE: include/drm/i915_pciids.h:351:
+#define INTEL_SKL_ULX_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x190E, ## __VA_ARGS__), /* ULX GT1 */ \
+	MACRO__(0x1915, ## __VA_ARGS__)  /* ULX GT1.5 */

-:1224: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1224: FILE: include/drm/i915_pciids.h:355:
+#define INTEL_SKL_GT1_IDS(MACRO__, ...) \
+	INTEL_SKL_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1902, ## __VA_ARGS__), /* DT  GT1 */ \
+	MACRO__(0x190A, ## __VA_ARGS__), /* SRV GT1 */ \
+	MACRO__(0x190B, ## __VA_ARGS__), /* Halo GT1 */ \
+	MACRO__(0x1917, ## __VA_ARGS__)  /* DT  GT1.5 */

-:1224: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1224: FILE: include/drm/i915_pciids.h:355:
+#define INTEL_SKL_GT1_IDS(MACRO__, ...) \
+	INTEL_SKL_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1902, ## __VA_ARGS__), /* DT  GT1 */ \
+	MACRO__(0x190A, ## __VA_ARGS__), /* SRV GT1 */ \
+	MACRO__(0x190B, ## __VA_ARGS__), /* Halo GT1 */ \
+	MACRO__(0x1917, ## __VA_ARGS__)  /* DT  GT1.5 */

-:1232: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1232: FILE: include/drm/i915_pciids.h:363:
+#define INTEL_SKL_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x1916, ## __VA_ARGS__), /* ULT GT2 */ \
+	MACRO__(0x1921, ## __VA_ARGS__)  /* ULT GT2F */

-:1232: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1232: FILE: include/drm/i915_pciids.h:363:
+#define INTEL_SKL_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x1916, ## __VA_ARGS__), /* ULT GT2 */ \
+	MACRO__(0x1921, ## __VA_ARGS__)  /* ULT GT2F */

-:1239: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1239: FILE: include/drm/i915_pciids.h:370:
+#define INTEL_SKL_GT2_IDS(MACRO__, ...) \
+	INTEL_SKL_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1912, ## __VA_ARGS__), /* DT  GT2 */ \
+	MACRO__(0x191A, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x191B, ## __VA_ARGS__), /* Halo GT2 */ \
+	MACRO__(0x191D, ## __VA_ARGS__)  /* WKS GT2 */

-:1239: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1239: FILE: include/drm/i915_pciids.h:370:
+#define INTEL_SKL_GT2_IDS(MACRO__, ...) \
+	INTEL_SKL_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x1912, ## __VA_ARGS__), /* DT  GT2 */ \
+	MACRO__(0x191A, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x191B, ## __VA_ARGS__), /* Halo GT2 */ \
+	MACRO__(0x191D, ## __VA_ARGS__)  /* WKS GT2 */

-:1247: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1247: FILE: include/drm/i915_pciids.h:378:
+#define INTEL_SKL_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x1923, ## __VA_ARGS__), /* ULT GT3 */ \
+	MACRO__(0x1926, ## __VA_ARGS__), /* ULT GT3e */ \
+	MACRO__(0x1927, ## __VA_ARGS__)  /* ULT GT3e */

-:1247: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1247: FILE: include/drm/i915_pciids.h:378:
+#define INTEL_SKL_ULT_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x1923, ## __VA_ARGS__), /* ULT GT3 */ \
+	MACRO__(0x1926, ## __VA_ARGS__), /* ULT GT3e */ \
+	MACRO__(0x1927, ## __VA_ARGS__)  /* ULT GT3e */

-:1252: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1252: FILE: include/drm/i915_pciids.h:383:
+#define INTEL_SKL_GT3_IDS(MACRO__, ...) \
+	INTEL_SKL_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x192A, ## __VA_ARGS__), /* SRV GT3 */ \
+	MACRO__(0x192B, ## __VA_ARGS__), /* Halo GT3e */ \
+	MACRO__(0x192D, ## __VA_ARGS__)  /* SRV GT3e */

-:1252: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1252: FILE: include/drm/i915_pciids.h:383:
+#define INTEL_SKL_GT3_IDS(MACRO__, ...) \
+	INTEL_SKL_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x192A, ## __VA_ARGS__), /* SRV GT3 */ \
+	MACRO__(0x192B, ## __VA_ARGS__), /* Halo GT3e */ \
+	MACRO__(0x192D, ## __VA_ARGS__)  /* SRV GT3e */

-:1258: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1258: FILE: include/drm/i915_pciids.h:389:
+#define INTEL_SKL_GT4_IDS(MACRO__, ...) \
+	MACRO__(0x1932, ## __VA_ARGS__), /* DT GT4 */ \
+	MACRO__(0x193A, ## __VA_ARGS__), /* SRV GT4e */ \
+	MACRO__(0x193B, ## __VA_ARGS__), /* Halo GT4e */ \
+	MACRO__(0x193D, ## __VA_ARGS__) /* WKS GT4e */

-:1258: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1258: FILE: include/drm/i915_pciids.h:389:
+#define INTEL_SKL_GT4_IDS(MACRO__, ...) \
+	MACRO__(0x1932, ## __VA_ARGS__), /* DT GT4 */ \
+	MACRO__(0x193A, ## __VA_ARGS__), /* SRV GT4e */ \
+	MACRO__(0x193B, ## __VA_ARGS__), /* Halo GT4e */ \
+	MACRO__(0x193D, ## __VA_ARGS__) /* WKS GT4e */

-:1264: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1264: FILE: include/drm/i915_pciids.h:395:
+#define INTEL_SKL_IDS(MACRO__, ...) \
+	INTEL_SKL_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT4_IDS(MACRO__, ## __VA_ARGS__)

-:1264: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1264: FILE: include/drm/i915_pciids.h:395:
+#define INTEL_SKL_IDS(MACRO__, ...) \
+	INTEL_SKL_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_SKL_GT4_IDS(MACRO__, ## __VA_ARGS__)

-:1270: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1270: FILE: include/drm/i915_pciids.h:401:
+#define INTEL_BXT_IDS(MACRO__, ...) \
+	MACRO__(0x0A84, ## __VA_ARGS__), \
+	MACRO__(0x1A84, ## __VA_ARGS__), \
+	MACRO__(0x1A85, ## __VA_ARGS__), \
+	MACRO__(0x5A84, ## __VA_ARGS__), /* APL HD Graphics 505 */ \
+	MACRO__(0x5A85, ## __VA_ARGS__)  /* APL HD Graphics 500 */

-:1270: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1270: FILE: include/drm/i915_pciids.h:401:
+#define INTEL_BXT_IDS(MACRO__, ...) \
+	MACRO__(0x0A84, ## __VA_ARGS__), \
+	MACRO__(0x1A84, ## __VA_ARGS__), \
+	MACRO__(0x1A85, ## __VA_ARGS__), \
+	MACRO__(0x5A84, ## __VA_ARGS__), /* APL HD Graphics 505 */ \
+	MACRO__(0x5A85, ## __VA_ARGS__)  /* APL HD Graphics 500 */

-:1277: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1277: FILE: include/drm/i915_pciids.h:408:
+#define INTEL_GLK_IDS(MACRO__, ...) \
+	MACRO__(0x3184, ## __VA_ARGS__), \
+	MACRO__(0x3185, ## __VA_ARGS__)

-:1277: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1277: FILE: include/drm/i915_pciids.h:408:
+#define INTEL_GLK_IDS(MACRO__, ...) \
+	MACRO__(0x3184, ## __VA_ARGS__), \
+	MACRO__(0x3185, ## __VA_ARGS__)

-:1281: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1281: FILE: include/drm/i915_pciids.h:412:
+#define INTEL_KBL_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x5906, ## __VA_ARGS__), /* ULT GT1 */ \
+	MACRO__(0x5913, ## __VA_ARGS__)  /* ULT GT1.5 */

-:1281: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1281: FILE: include/drm/i915_pciids.h:412:
+#define INTEL_KBL_ULT_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x5906, ## __VA_ARGS__), /* ULT GT1 */ \
+	MACRO__(0x5913, ## __VA_ARGS__)  /* ULT GT1.5 */

-:1285: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1285: FILE: include/drm/i915_pciids.h:416:
+#define INTEL_KBL_ULX_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x590E, ## __VA_ARGS__), /* ULX GT1 */ \
+	MACRO__(0x5915, ## __VA_ARGS__)  /* ULX GT1.5 */

-:1285: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1285: FILE: include/drm/i915_pciids.h:416:
+#define INTEL_KBL_ULX_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x590E, ## __VA_ARGS__), /* ULX GT1 */ \
+	MACRO__(0x5915, ## __VA_ARGS__)  /* ULX GT1.5 */

-:1289: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1289: FILE: include/drm/i915_pciids.h:420:
+#define INTEL_KBL_GT1_IDS(MACRO__, ...) \
+	INTEL_KBL_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5902, ## __VA_ARGS__), /* DT  GT1 */ \
+	MACRO__(0x5908, ## __VA_ARGS__), /* Halo GT1 */ \
+	MACRO__(0x590A, ## __VA_ARGS__), /* SRV GT1 */ \
+	MACRO__(0x590B, ## __VA_ARGS__) /* Halo GT1 */

-:1289: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1289: FILE: include/drm/i915_pciids.h:420:
+#define INTEL_KBL_GT1_IDS(MACRO__, ...) \
+	INTEL_KBL_ULT_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_ULX_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5902, ## __VA_ARGS__), /* DT  GT1 */ \
+	MACRO__(0x5908, ## __VA_ARGS__), /* Halo GT1 */ \
+	MACRO__(0x590A, ## __VA_ARGS__), /* SRV GT1 */ \
+	MACRO__(0x590B, ## __VA_ARGS__) /* Halo GT1 */

-:1297: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1297: FILE: include/drm/i915_pciids.h:428:
+#define INTEL_KBL_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x5916, ## __VA_ARGS__), /* ULT GT2 */ \
+	MACRO__(0x5921, ## __VA_ARGS__)  /* ULT GT2F */

-:1297: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1297: FILE: include/drm/i915_pciids.h:428:
+#define INTEL_KBL_ULT_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x5916, ## __VA_ARGS__), /* ULT GT2 */ \
+	MACRO__(0x5921, ## __VA_ARGS__)  /* ULT GT2F */

-:1304: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1304: FILE: include/drm/i915_pciids.h:435:
+#define INTEL_KBL_GT2_IDS(MACRO__, ...) \
+	INTEL_KBL_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5912, ## __VA_ARGS__), /* DT  GT2 */ \
+	MACRO__(0x5917, ## __VA_ARGS__), /* Mobile GT2 */ \
+	MACRO__(0x591A, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x591B, ## __VA_ARGS__), /* Halo GT2 */ \
+	MACRO__(0x591D, ## __VA_ARGS__) /* WKS GT2 */

-:1304: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1304: FILE: include/drm/i915_pciids.h:435:
+#define INTEL_KBL_GT2_IDS(MACRO__, ...) \
+	INTEL_KBL_ULT_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_ULX_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5912, ## __VA_ARGS__), /* DT  GT2 */ \
+	MACRO__(0x5917, ## __VA_ARGS__), /* Mobile GT2 */ \
+	MACRO__(0x591A, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x591B, ## __VA_ARGS__), /* Halo GT2 */ \
+	MACRO__(0x591D, ## __VA_ARGS__) /* WKS GT2 */

-:1316: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1316: FILE: include/drm/i915_pciids.h:447:
+#define INTEL_KBL_GT3_IDS(MACRO__, ...) \
+	INTEL_KBL_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5923, ## __VA_ARGS__), /* ULT GT3 */ \
+	MACRO__(0x5927, ## __VA_ARGS__) /* ULT GT3 */

-:1316: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1316: FILE: include/drm/i915_pciids.h:447:
+#define INTEL_KBL_GT3_IDS(MACRO__, ...) \
+	INTEL_KBL_ULT_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5923, ## __VA_ARGS__), /* ULT GT3 */ \
+	MACRO__(0x5927, ## __VA_ARGS__) /* ULT GT3 */

-:1328: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1328: FILE: include/drm/i915_pciids.h:456:
+#define INTEL_AML_KBL_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x591C, ## __VA_ARGS__),  /* ULX GT2 */ \
+	MACRO__(0x87C0, ## __VA_ARGS__) /* ULX GT2 */

-:1328: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1328: FILE: include/drm/i915_pciids.h:456:
+#define INTEL_AML_KBL_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x591C, ## __VA_ARGS__),  /* ULX GT2 */ \
+	MACRO__(0x87C0, ## __VA_ARGS__) /* ULX GT2 */

-:1344: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1344: FILE: include/drm/i915_pciids.h:465:
+#define INTEL_CML_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x9BA2, ## __VA_ARGS__), \
+	MACRO__(0x9BA4, ## __VA_ARGS__), \
+	MACRO__(0x9BA5, ## __VA_ARGS__), \
+	MACRO__(0x9BA8, ## __VA_ARGS__)

-:1344: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1344: FILE: include/drm/i915_pciids.h:465:
+#define INTEL_CML_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x9BA2, ## __VA_ARGS__), \
+	MACRO__(0x9BA4, ## __VA_ARGS__), \
+	MACRO__(0x9BA5, ## __VA_ARGS__), \
+	MACRO__(0x9BA8, ## __VA_ARGS__)

-:1354: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1354: FILE: include/drm/i915_pciids.h:471:
+#define INTEL_CML_U_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x9B21, ## __VA_ARGS__), \
+	MACRO__(0x9BAA, ## __VA_ARGS__), \
+	MACRO__(0x9BAC, ## __VA_ARGS__)

-:1354: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1354: FILE: include/drm/i915_pciids.h:471:
+#define INTEL_CML_U_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x9B21, ## __VA_ARGS__), \
+	MACRO__(0x9BAA, ## __VA_ARGS__), \
+	MACRO__(0x9BAC, ## __VA_ARGS__)

-:1386: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1386: FILE: include/drm/i915_pciids.h:477:
+#define INTEL_CML_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x9BC2, ## __VA_ARGS__), \
+	MACRO__(0x9BC4, ## __VA_ARGS__), \
+	MACRO__(0x9BC5, ## __VA_ARGS__), \
+	MACRO__(0x9BC6, ## __VA_ARGS__), \
+	MACRO__(0x9BC8, ## __VA_ARGS__), \
+	MACRO__(0x9BE6, ## __VA_ARGS__), \
+	MACRO__(0x9BF6, ## __VA_ARGS__)

-:1386: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1386: FILE: include/drm/i915_pciids.h:477:
+#define INTEL_CML_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x9BC2, ## __VA_ARGS__), \
+	MACRO__(0x9BC4, ## __VA_ARGS__), \
+	MACRO__(0x9BC5, ## __VA_ARGS__), \
+	MACRO__(0x9BC6, ## __VA_ARGS__), \
+	MACRO__(0x9BC8, ## __VA_ARGS__), \
+	MACRO__(0x9BE6, ## __VA_ARGS__), \
+	MACRO__(0x9BF6, ## __VA_ARGS__)

-:1395: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1395: FILE: include/drm/i915_pciids.h:486:
+#define INTEL_CML_U_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x9B41, ## __VA_ARGS__), \
+	MACRO__(0x9BCA, ## __VA_ARGS__), \
+	MACRO__(0x9BCC, ## __VA_ARGS__)

-:1395: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1395: FILE: include/drm/i915_pciids.h:486:
+#define INTEL_CML_U_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x9B41, ## __VA_ARGS__), \
+	MACRO__(0x9BCA, ## __VA_ARGS__), \
+	MACRO__(0x9BCC, ## __VA_ARGS__)

-:1400: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1400: FILE: include/drm/i915_pciids.h:491:
+#define INTEL_CML_IDS(MACRO__, ...) \
+	INTEL_CML_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_U_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_U_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1400: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1400: FILE: include/drm/i915_pciids.h:491:
+#define INTEL_CML_IDS(MACRO__, ...) \
+	INTEL_CML_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_U_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CML_U_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1406: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1406: FILE: include/drm/i915_pciids.h:497:
+#define INTEL_KBL_IDS(MACRO__, ...) \
+	INTEL_KBL_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT4_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_AML_KBL_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1406: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1406: FILE: include/drm/i915_pciids.h:497:
+#define INTEL_KBL_IDS(MACRO__, ...) \
+	INTEL_KBL_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_KBL_GT4_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_AML_KBL_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1425: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1425: FILE: include/drm/i915_pciids.h:505:
+#define INTEL_CFL_S_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x3E90, ## __VA_ARGS__), /* SRV GT1 */ \
+	MACRO__(0x3E93, ## __VA_ARGS__), /* SRV GT1 */ \
+	MACRO__(0x3E99, ## __VA_ARGS__)  /* SRV GT1 */

-:1425: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1425: FILE: include/drm/i915_pciids.h:505:
+#define INTEL_CFL_S_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x3E90, ## __VA_ARGS__), /* SRV GT1 */ \
+	MACRO__(0x3E93, ## __VA_ARGS__), /* SRV GT1 */ \
+	MACRO__(0x3E99, ## __VA_ARGS__)  /* SRV GT1 */

-:1430: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1430: FILE: include/drm/i915_pciids.h:510:
+#define INTEL_CFL_S_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3E91, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x3E92, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x3E96, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x3E98, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x3E9A, ## __VA_ARGS__)  /* SRV GT2 */

-:1430: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1430: FILE: include/drm/i915_pciids.h:510:
+#define INTEL_CFL_S_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3E91, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x3E92, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x3E96, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x3E98, ## __VA_ARGS__), /* SRV GT2 */ \
+	MACRO__(0x3E9A, ## __VA_ARGS__)  /* SRV GT2 */

-:1446: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1446: FILE: include/drm/i915_pciids.h:521:
+#define INTEL_CFL_H_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3E94, ## __VA_ARGS__),  /* Halo GT2 */ \
+	MACRO__(0x3E9B, ## __VA_ARGS__) /* Halo GT2 */

-:1446: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1446: FILE: include/drm/i915_pciids.h:521:
+#define INTEL_CFL_H_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3E94, ## __VA_ARGS__),  /* Halo GT2 */ \
+	MACRO__(0x3E9B, ## __VA_ARGS__) /* Halo GT2 */

-:1471: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1471: FILE: include/drm/i915_pciids.h:530:
+#define INTEL_CFL_U_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x3EA5, ## __VA_ARGS__), /* ULT GT3 */ \
+	MACRO__(0x3EA6, ## __VA_ARGS__), /* ULT GT3 */ \
+	MACRO__(0x3EA7, ## __VA_ARGS__), /* ULT GT3 */ \
+	MACRO__(0x3EA8, ## __VA_ARGS__)  /* ULT GT3 */

-:1471: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1471: FILE: include/drm/i915_pciids.h:530:
+#define INTEL_CFL_U_GT3_IDS(MACRO__, ...) \
+	MACRO__(0x3EA5, ## __VA_ARGS__), /* ULT GT3 */ \
+	MACRO__(0x3EA6, ## __VA_ARGS__), /* ULT GT3 */ \
+	MACRO__(0x3EA7, ## __VA_ARGS__), /* ULT GT3 */ \
+	MACRO__(0x3EA8, ## __VA_ARGS__)  /* ULT GT3 */

-:1477: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1477: FILE: include/drm/i915_pciids.h:536:
+#define INTEL_CFL_IDS(MACRO__, ...) \
+	INTEL_CFL_S_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_S_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_H_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_H_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_U_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_U_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_AML_CFL_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1477: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1477: FILE: include/drm/i915_pciids.h:536:
+#define INTEL_CFL_IDS(MACRO__, ...) \
+	INTEL_CFL_S_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_S_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_H_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_H_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_U_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_CFL_U_GT3_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_AML_CFL_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1490: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1490: FILE: include/drm/i915_pciids.h:546:
+#define INTEL_WHL_U_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x3EA1, ## __VA_ARGS__), \
+	MACRO__(0x3EA4, ## __VA_ARGS__)

-:1490: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1490: FILE: include/drm/i915_pciids.h:546:
+#define INTEL_WHL_U_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x3EA1, ## __VA_ARGS__), \
+	MACRO__(0x3EA4, ## __VA_ARGS__)

-:1498: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1498: FILE: include/drm/i915_pciids.h:551:
+#define INTEL_WHL_U_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3EA0, ## __VA_ARGS__), \
+	MACRO__(0x3EA3, ## __VA_ARGS__)

-:1498: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1498: FILE: include/drm/i915_pciids.h:551:
+#define INTEL_WHL_U_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x3EA0, ## __VA_ARGS__), \
+	MACRO__(0x3EA3, ## __VA_ARGS__)

-:1512: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1512: FILE: include/drm/i915_pciids.h:559:
+#define INTEL_WHL_IDS(MACRO__, ...) \
+	INTEL_WHL_U_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_WHL_U_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_WHL_U_GT3_IDS(MACRO__, ## __VA_ARGS__)

-:1512: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1512: FILE: include/drm/i915_pciids.h:559:
+#define INTEL_WHL_IDS(MACRO__, ...) \
+	INTEL_WHL_U_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_WHL_U_GT2_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_WHL_U_GT3_IDS(MACRO__, ## __VA_ARGS__)

-:1536: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1536: FILE: include/drm/i915_pciids.h:565:
+#define INTEL_CNL_PORT_F_IDS(MACRO__, ...) \
+	MACRO__(0x5A44, ## __VA_ARGS__), \
+	MACRO__(0x5A4C, ## __VA_ARGS__), \
+	MACRO__(0x5A54, ## __VA_ARGS__), \
+	MACRO__(0x5A5C, ## __VA_ARGS__)

-:1536: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1536: FILE: include/drm/i915_pciids.h:565:
+#define INTEL_CNL_PORT_F_IDS(MACRO__, ...) \
+	MACRO__(0x5A44, ## __VA_ARGS__), \
+	MACRO__(0x5A4C, ## __VA_ARGS__), \
+	MACRO__(0x5A54, ## __VA_ARGS__), \
+	MACRO__(0x5A5C, ## __VA_ARGS__)

-:1542: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1542: FILE: include/drm/i915_pciids.h:571:
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

-:1542: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1542: FILE: include/drm/i915_pciids.h:571:
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

-:1575: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1575: FILE: include/drm/i915_pciids.h:585:
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

-:1575: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1575: FILE: include/drm/i915_pciids.h:585:
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

-:1590: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1590: FILE: include/drm/i915_pciids.h:600:
+#define INTEL_ICL_IDS(MACRO__, ...) \
+	INTEL_ICL_PORT_F_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x8A51, ## __VA_ARGS__), \
+	MACRO__(0x8A5D, ## __VA_ARGS__)

-:1590: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1590: FILE: include/drm/i915_pciids.h:600:
+#define INTEL_ICL_IDS(MACRO__, ...) \
+	INTEL_ICL_PORT_F_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x8A51, ## __VA_ARGS__), \
+	MACRO__(0x8A5D, ## __VA_ARGS__)

-:1603: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1603: FILE: include/drm/i915_pciids.h:606:
+#define INTEL_EHL_IDS(MACRO__, ...) \
+	MACRO__(0x4541, ## __VA_ARGS__), \
+	MACRO__(0x4551, ## __VA_ARGS__), \
+	MACRO__(0x4555, ## __VA_ARGS__), \
+	MACRO__(0x4557, ## __VA_ARGS__), \
+	MACRO__(0x4570, ## __VA_ARGS__), \
+	MACRO__(0x4571, ## __VA_ARGS__)

-:1603: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1603: FILE: include/drm/i915_pciids.h:606:
+#define INTEL_EHL_IDS(MACRO__, ...) \
+	MACRO__(0x4541, ## __VA_ARGS__), \
+	MACRO__(0x4551, ## __VA_ARGS__), \
+	MACRO__(0x4555, ## __VA_ARGS__), \
+	MACRO__(0x4557, ## __VA_ARGS__), \
+	MACRO__(0x4570, ## __VA_ARGS__), \
+	MACRO__(0x4571, ## __VA_ARGS__)

-:1618: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1618: FILE: include/drm/i915_pciids.h:615:
+#define INTEL_JSL_IDS(MACRO__, ...) \
+	MACRO__(0x4E51, ## __VA_ARGS__), \
+	MACRO__(0x4E55, ## __VA_ARGS__), \
+	MACRO__(0x4E57, ## __VA_ARGS__), \
+	MACRO__(0x4E61, ## __VA_ARGS__), \
+	MACRO__(0x4E71, ## __VA_ARGS__)

-:1618: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1618: FILE: include/drm/i915_pciids.h:615:
+#define INTEL_JSL_IDS(MACRO__, ...) \
+	MACRO__(0x4E51, ## __VA_ARGS__), \
+	MACRO__(0x4E55, ## __VA_ARGS__), \
+	MACRO__(0x4E57, ## __VA_ARGS__), \
+	MACRO__(0x4E61, ## __VA_ARGS__), \
+	MACRO__(0x4E71, ## __VA_ARGS__)

-:1644: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1644: FILE: include/drm/i915_pciids.h:623:
+#define INTEL_TGL_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x9A60, ## __VA_ARGS__), \
+	MACRO__(0x9A68, ## __VA_ARGS__), \
+	MACRO__(0x9A70, ## __VA_ARGS__)

-:1644: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1644: FILE: include/drm/i915_pciids.h:623:
+#define INTEL_TGL_GT1_IDS(MACRO__, ...) \
+	MACRO__(0x9A60, ## __VA_ARGS__), \
+	MACRO__(0x9A68, ## __VA_ARGS__), \
+	MACRO__(0x9A70, ## __VA_ARGS__)

-:1649: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1649: FILE: include/drm/i915_pciids.h:628:
+#define INTEL_TGL_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x9A40, ## __VA_ARGS__), \
+	MACRO__(0x9A49, ## __VA_ARGS__), \
+	MACRO__(0x9A59, ## __VA_ARGS__), \
+	MACRO__(0x9A78, ## __VA_ARGS__), \
+	MACRO__(0x9AC0, ## __VA_ARGS__), \
+	MACRO__(0x9AC9, ## __VA_ARGS__), \
+	MACRO__(0x9AD9, ## __VA_ARGS__), \
+	MACRO__(0x9AF8, ## __VA_ARGS__)

-:1649: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1649: FILE: include/drm/i915_pciids.h:628:
+#define INTEL_TGL_GT2_IDS(MACRO__, ...) \
+	MACRO__(0x9A40, ## __VA_ARGS__), \
+	MACRO__(0x9A49, ## __VA_ARGS__), \
+	MACRO__(0x9A59, ## __VA_ARGS__), \
+	MACRO__(0x9A78, ## __VA_ARGS__), \
+	MACRO__(0x9AC0, ## __VA_ARGS__), \
+	MACRO__(0x9AC9, ## __VA_ARGS__), \
+	MACRO__(0x9AD9, ## __VA_ARGS__), \
+	MACRO__(0x9AF8, ## __VA_ARGS__)

-:1659: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1659: FILE: include/drm/i915_pciids.h:638:
+#define INTEL_TGL_IDS(MACRO__, ...) \
+	INTEL_TGL_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_TGL_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1659: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1659: FILE: include/drm/i915_pciids.h:638:
+#define INTEL_TGL_IDS(MACRO__, ...) \
+	INTEL_TGL_GT1_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_TGL_GT2_IDS(MACRO__, ## __VA_ARGS__)

-:1671: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1671: FILE: include/drm/i915_pciids.h:643:
+#define INTEL_RKL_IDS(MACRO__, ...) \
+	MACRO__(0x4C80, ## __VA_ARGS__), \
+	MACRO__(0x4C8A, ## __VA_ARGS__), \
+	MACRO__(0x4C8B, ## __VA_ARGS__), \
+	MACRO__(0x4C8C, ## __VA_ARGS__), \
+	MACRO__(0x4C90, ## __VA_ARGS__), \
+	MACRO__(0x4C9A, ## __VA_ARGS__)

-:1671: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1671: FILE: include/drm/i915_pciids.h:643:
+#define INTEL_RKL_IDS(MACRO__, ...) \
+	MACRO__(0x4C80, ## __VA_ARGS__), \
+	MACRO__(0x4C8A, ## __VA_ARGS__), \
+	MACRO__(0x4C8B, ## __VA_ARGS__), \
+	MACRO__(0x4C8C, ## __VA_ARGS__), \
+	MACRO__(0x4C90, ## __VA_ARGS__), \
+	MACRO__(0x4C9A, ## __VA_ARGS__)

-:1686: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1686: FILE: include/drm/i915_pciids.h:652:
+#define INTEL_DG1_IDS(MACRO__, ...) \
+	MACRO__(0x4905, ## __VA_ARGS__), \
+	MACRO__(0x4906, ## __VA_ARGS__), \
+	MACRO__(0x4907, ## __VA_ARGS__), \
+	MACRO__(0x4908, ## __VA_ARGS__), \
+	MACRO__(0x4909, ## __VA_ARGS__)

-:1686: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1686: FILE: include/drm/i915_pciids.h:652:
+#define INTEL_DG1_IDS(MACRO__, ...) \
+	MACRO__(0x4905, ## __VA_ARGS__), \
+	MACRO__(0x4906, ## __VA_ARGS__), \
+	MACRO__(0x4907, ## __VA_ARGS__), \
+	MACRO__(0x4908, ## __VA_ARGS__), \
+	MACRO__(0x4909, ## __VA_ARGS__)

-:1703: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1703: FILE: include/drm/i915_pciids.h:660:
+#define INTEL_ADLS_IDS(MACRO__, ...) \
+	MACRO__(0x4680, ## __VA_ARGS__), \
+	MACRO__(0x4682, ## __VA_ARGS__), \
+	MACRO__(0x4688, ## __VA_ARGS__), \
+	MACRO__(0x468A, ## __VA_ARGS__), \
+	MACRO__(0x468B, ## __VA_ARGS__), \
+	MACRO__(0x4690, ## __VA_ARGS__), \
+	MACRO__(0x4692, ## __VA_ARGS__), \
+	MACRO__(0x4693, ## __VA_ARGS__)

-:1703: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1703: FILE: include/drm/i915_pciids.h:660:
+#define INTEL_ADLS_IDS(MACRO__, ...) \
+	MACRO__(0x4680, ## __VA_ARGS__), \
+	MACRO__(0x4682, ## __VA_ARGS__), \
+	MACRO__(0x4688, ## __VA_ARGS__), \
+	MACRO__(0x468A, ## __VA_ARGS__), \
+	MACRO__(0x468B, ## __VA_ARGS__), \
+	MACRO__(0x4690, ## __VA_ARGS__), \
+	MACRO__(0x4692, ## __VA_ARGS__), \
+	MACRO__(0x4693, ## __VA_ARGS__)

-:1733: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1733: FILE: include/drm/i915_pciids.h:671:
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

-:1733: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1733: FILE: include/drm/i915_pciids.h:671:
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

-:1760: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1760: FILE: include/drm/i915_pciids.h:692:
+#define INTEL_ADLN_IDS(MACRO__, ...) \
+	MACRO__(0x46D0, ## __VA_ARGS__), \
+	MACRO__(0x46D1, ## __VA_ARGS__), \
+	MACRO__(0x46D2, ## __VA_ARGS__), \
+	MACRO__(0x46D3, ## __VA_ARGS__), \
+	MACRO__(0x46D4, ## __VA_ARGS__)

-:1760: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1760: FILE: include/drm/i915_pciids.h:692:
+#define INTEL_ADLN_IDS(MACRO__, ...) \
+	MACRO__(0x46D0, ## __VA_ARGS__), \
+	MACRO__(0x46D1, ## __VA_ARGS__), \
+	MACRO__(0x46D2, ## __VA_ARGS__), \
+	MACRO__(0x46D3, ## __VA_ARGS__), \
+	MACRO__(0x46D4, ## __VA_ARGS__)

-:1777: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1777: FILE: include/drm/i915_pciids.h:700:
+#define INTEL_RPLS_IDS(MACRO__, ...) \
+	MACRO__(0xA780, ## __VA_ARGS__), \
+	MACRO__(0xA781, ## __VA_ARGS__), \
+	MACRO__(0xA782, ## __VA_ARGS__), \
+	MACRO__(0xA783, ## __VA_ARGS__), \
+	MACRO__(0xA788, ## __VA_ARGS__), \
+	MACRO__(0xA789, ## __VA_ARGS__), \
+	MACRO__(0xA78A, ## __VA_ARGS__), \
+	MACRO__(0xA78B, ## __VA_ARGS__)

-:1777: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1777: FILE: include/drm/i915_pciids.h:700:
+#define INTEL_RPLS_IDS(MACRO__, ...) \
+	MACRO__(0xA780, ## __VA_ARGS__), \
+	MACRO__(0xA781, ## __VA_ARGS__), \
+	MACRO__(0xA782, ## __VA_ARGS__), \
+	MACRO__(0xA783, ## __VA_ARGS__), \
+	MACRO__(0xA788, ## __VA_ARGS__), \
+	MACRO__(0xA789, ## __VA_ARGS__), \
+	MACRO__(0xA78A, ## __VA_ARGS__), \
+	MACRO__(0xA78B, ## __VA_ARGS__)

-:1794: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1794: FILE: include/drm/i915_pciids.h:711:
+#define INTEL_RPLU_IDS(MACRO__, ...) \
+	MACRO__(0xA721, ## __VA_ARGS__), \
+	MACRO__(0xA7A1, ## __VA_ARGS__), \
+	MACRO__(0xA7A9, ## __VA_ARGS__), \
+	MACRO__(0xA7AC, ## __VA_ARGS__), \
+	MACRO__(0xA7AD, ## __VA_ARGS__)

-:1794: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1794: FILE: include/drm/i915_pciids.h:711:
+#define INTEL_RPLU_IDS(MACRO__, ...) \
+	MACRO__(0xA721, ## __VA_ARGS__), \
+	MACRO__(0xA7A1, ## __VA_ARGS__), \
+	MACRO__(0xA7A9, ## __VA_ARGS__), \
+	MACRO__(0xA7AC, ## __VA_ARGS__), \
+	MACRO__(0xA7AD, ## __VA_ARGS__)

-:1808: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1808: FILE: include/drm/i915_pciids.h:719:
+#define INTEL_RPLP_IDS(MACRO__, ...) \
+	MACRO__(0xA720, ## __VA_ARGS__), \
+	MACRO__(0xA7A0, ## __VA_ARGS__), \
+	MACRO__(0xA7A8, ## __VA_ARGS__), \
+	MACRO__(0xA7AA, ## __VA_ARGS__), \
+	MACRO__(0xA7AB, ## __VA_ARGS__)

-:1808: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1808: FILE: include/drm/i915_pciids.h:719:
+#define INTEL_RPLP_IDS(MACRO__, ...) \
+	MACRO__(0xA720, ## __VA_ARGS__), \
+	MACRO__(0xA7A0, ## __VA_ARGS__), \
+	MACRO__(0xA7A8, ## __VA_ARGS__), \
+	MACRO__(0xA7AA, ## __VA_ARGS__), \
+	MACRO__(0xA7AB, ## __VA_ARGS__)

-:1862: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1862: FILE: include/drm/i915_pciids.h:727:
+#define INTEL_DG2_G10_IDS(MACRO__, ...) \
+	MACRO__(0x5690, ## __VA_ARGS__), \
+	MACRO__(0x5691, ## __VA_ARGS__), \
+	MACRO__(0x5692, ## __VA_ARGS__), \
+	MACRO__(0x56A0, ## __VA_ARGS__), \
+	MACRO__(0x56A1, ## __VA_ARGS__), \
+	MACRO__(0x56A2, ## __VA_ARGS__), \
+	MACRO__(0x56BE, ## __VA_ARGS__), \
+	MACRO__(0x56BF, ## __VA_ARGS__)

-:1862: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1862: FILE: include/drm/i915_pciids.h:727:
+#define INTEL_DG2_G10_IDS(MACRO__, ...) \
+	MACRO__(0x5690, ## __VA_ARGS__), \
+	MACRO__(0x5691, ## __VA_ARGS__), \
+	MACRO__(0x5692, ## __VA_ARGS__), \
+	MACRO__(0x56A0, ## __VA_ARGS__), \
+	MACRO__(0x56A1, ## __VA_ARGS__), \
+	MACRO__(0x56A2, ## __VA_ARGS__), \
+	MACRO__(0x56BE, ## __VA_ARGS__), \
+	MACRO__(0x56BF, ## __VA_ARGS__)

-:1872: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1872: FILE: include/drm/i915_pciids.h:737:
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

-:1872: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1872: FILE: include/drm/i915_pciids.h:737:
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

-:1885: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1885: FILE: include/drm/i915_pciids.h:750:
+#define INTEL_DG2_G12_IDS(MACRO__, ...) \
+	MACRO__(0x5696, ## __VA_ARGS__), \
+	MACRO__(0x5697, ## __VA_ARGS__), \
+	MACRO__(0x56A3, ## __VA_ARGS__), \
+	MACRO__(0x56A4, ## __VA_ARGS__), \
+	MACRO__(0x56B2, ## __VA_ARGS__), \
+	MACRO__(0x56B3, ## __VA_ARGS__)

-:1885: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1885: FILE: include/drm/i915_pciids.h:750:
+#define INTEL_DG2_G12_IDS(MACRO__, ...) \
+	MACRO__(0x5696, ## __VA_ARGS__), \
+	MACRO__(0x5697, ## __VA_ARGS__), \
+	MACRO__(0x56A3, ## __VA_ARGS__), \
+	MACRO__(0x56A4, ## __VA_ARGS__), \
+	MACRO__(0x56B2, ## __VA_ARGS__), \
+	MACRO__(0x56B3, ## __VA_ARGS__)

-:1893: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1893: FILE: include/drm/i915_pciids.h:758:
+#define INTEL_DG2_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_IDS(MACRO__, ## __VA_ARGS__)

-:1893: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1893: FILE: include/drm/i915_pciids.h:758:
+#define INTEL_DG2_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_IDS(MACRO__, ## __VA_ARGS__)

-:1898: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1898: FILE: include/drm/i915_pciids.h:763:
+#define INTEL_ATS_M150_IDS(MACRO__, ...) \
+	MACRO__(0x56C0, ## __VA_ARGS__), \
+	MACRO__(0x56C2, ## __VA_ARGS__)

-:1898: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1898: FILE: include/drm/i915_pciids.h:763:
+#define INTEL_ATS_M150_IDS(MACRO__, ...) \
+	MACRO__(0x56C0, ## __VA_ARGS__), \
+	MACRO__(0x56C2, ## __VA_ARGS__)

-:1905: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1905: FILE: include/drm/i915_pciids.h:770:
+#define INTEL_ATS_M_IDS(MACRO__, ...) \
+	INTEL_ATS_M150_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)

-:1905: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1905: FILE: include/drm/i915_pciids.h:770:
+#define INTEL_ATS_M_IDS(MACRO__, ...) \
+	INTEL_ATS_M150_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)

-:1920: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1920: FILE: include/drm/i915_pciids.h:775:
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

-:1920: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#1920: FILE: include/drm/i915_pciids.h:775:
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

total: 95 errors, 0 warnings, 95 checks, 1887 lines checked
16a88d9e58a0 drm/i915: stop redefining INTEL_VGA_DEVICE


