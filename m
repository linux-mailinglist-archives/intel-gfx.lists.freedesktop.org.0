Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E3AB0C040
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 11:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC96C10E4B4;
	Mon, 21 Jul 2025 09:26:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKlWjvIR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87D6610E4C5;
 Mon, 21 Jul 2025 09:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753089964; x=1784625964;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mxjb81KKiDjNILIAsyLHrW/JhBDsUnyExl2VcHnfRpA=;
 b=mKlWjvIR3nKsUDmg+zb1IGqJcggw5380YPFIAkmtS8zS45libZbb0MK7
 tzvXA1p8vtjnn+EZsnal65S4ar7THWjdgAb9uxaaaKlYrUWOaBXjO7kEI
 8XX3I6xnKlX1y8009Xme/SeoA2xfeq2lsS+H25xDrHL5RoWH3fwlPxErh
 BfvMCE4szxhU9Bbv3wMerkRczIaz7WSiAAjsxnevXTrvoveazZ+FYu4wL
 Cwy4qU9S9hK3H4nzYngvDMGO/Ei4ONalzSHUz/Nlra9jaZa6u2vp6xRwE
 PYjdzLU5bvUwyxQuXkL9lFGPsAEnaqOpYpam7naKK5C/GP+ifa9hhHcSb w==;
X-CSE-ConnectionGUID: nQCVrR3QRW+wiiyyM5z08g==
X-CSE-MsgGUID: 8YUHksoGQP2oDNAfNtMMyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55455387"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55455387"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:26:04 -0700
X-CSE-ConnectionGUID: taZYVwwIQzeg2ROlOpEpCA==
X-CSE-MsgGUID: IqVCNAaxStaSc27xumb2bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="163335161"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:26:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/9] drm/i915/display_wa: Add support for Wa_14021768792
Date: Mon, 21 Jul 2025 14:45:26 +0530
Message-ID: <20250721091529.3864004-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some BMG ultrajoiner configurations require support for Link M/N ratios
between 10.0 and 15.0. This range is not natively supported and requires
a workaround.

Wa_14021768792 enables this support by utilizing HDMI_EMP_DATA,
CHICKEN_BITs, and extended bits in the LINK_N registers.

Add the necessary logic to enable the workaround on applicable platforms.

Bspec: 49266
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_wa.c    | 18 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.h    |  1 +
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 399c08902413..541967168e97 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -5,11 +5,13 @@
 
 #include <drm/drm_print.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
 #include "intel_display_wa.h"
+#include "intel_step.h"
 
 static void gen11_display_wa_apply(struct intel_display *display)
 {
@@ -52,6 +54,20 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
 }
 
+/*
+ * Wa_14021768792:
+ * Fixes: Limitation of Link M/N ratio > 10 for specific Xe2HPD platforms.
+ * Workaround: Use HDMI_EMP_DATA, CHICKEN_BITs and extended bits in LINK_N registers to support
+ * LINK M/N ratios from > 10 but < 15.
+ */
+static bool intel_display_needs_wa_14021768792(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	return (DISPLAY_VER(display) == 14 && IS_DGFX(i915) &&
+		IS_DISPLAY_STEP(display, STEP_C0, STEP_FOREVER));
+}
+
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
 {
 	switch (wa) {
@@ -59,6 +75,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return intel_display_needs_wa_16023588340(display);
 	case INTEL_DISPLAY_WA_16025573575:
 		return intel_display_needs_wa_16025573575(display);
+	case INTEL_DISPLAY_WA_14021768792:
+		return intel_display_needs_wa_14021768792(display);
 	default:
 		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index aedea4cfa3ce..8470f4ceea1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -24,6 +24,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
 enum intel_display_wa {
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
+	INTEL_DISPLAY_WA_14021768792,
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
-- 
2.45.2

