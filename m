Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E55A8586F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 11:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C9910EB4C;
	Fri, 11 Apr 2025 09:54:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GtpRHLRJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3015F10EB51;
 Fri, 11 Apr 2025 09:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744365275; x=1775901275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gzut4MjIaCAX0CInQxFRZL4sug2h4P0vlkwo4V/uunE=;
 b=GtpRHLRJDM4G9AVKhXWL5cb/1E2aqm1X3JII2N97xz0g46wlsOT8hoGY
 qHaVR5qDWzNXl50TlbUfCszl3oq1xnSMcE8LbYf7sPlA3BDhrFFUxMs7g
 IA2lfSYDT5vJq2EoidD0oVQH0RW5EENkg8K5LLXb7KhAuixuSW/srbIoO
 BQ2nv98kO1rvVAstPK+2dfZysnPa2I9i3CPA4at4vM6Qycdhm4FGEdnxd
 917PsN/vb7ESbpcQdz5kAdwTRH0XVg8KKtWdxMtC8XdcMW6W+3btAAImw
 cIoT/HL9iHi8eNNv+luo5I138kRtyAKhqYnrPitCdUeJF6TKRxRrb+/My w==;
X-CSE-ConnectionGUID: hZGTk72sRNGJMXARtOBcng==
X-CSE-MsgGUID: HqM4t3XXS+igkoO9m3/AMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="56094854"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="56094854"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:54:34 -0700
X-CSE-ConnectionGUID: w42rjd2JS8eSTMAweOgLmw==
X-CSE-MsgGUID: fDDXng5USUejGFwDbbaiQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="133265624"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.115])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:54:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 2/4] drm/i915/display: Convert intel_pch towards intel_display
Date: Fri, 11 Apr 2025 12:54:12 +0300
Message-Id: <8ffe86eb2a02153e3f866a81fb6dc8a3327a0f25.1744364975.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744364975.git.jani.nikula@intel.com>
References: <cover.1744364975.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Rodrigo Vivi <rodrigo.vivi@intel.com>

Now that intel_pch lives under display, let's begin its
conversion towards struct intel_display.

Move the pch_type to inside intel_display and convert the
callers.

While doing it, sort intel_display_core.h include list
alphabetically.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 drivers/gpu/drm/i915/display/intel_pch.c      | 242 +++++++++---------
 drivers/gpu/drm/i915/display/intel_pch.h      |  40 +--
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   3 -
 drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
 drivers/gpu/drm/xe/xe_device_types.h          |   1 -
 7 files changed, 155 insertions(+), 141 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index eb6d6f2d0f75..48e47f0fd8b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -21,12 +21,13 @@
 #include "intel_display_limits.h"
 #include "intel_display_params.h"
 #include "intel_display_power.h"
+#include "intel_dmc_wl.h"
 #include "intel_dpll_mgr.h"
 #include "intel_fbc.h"
 #include "intel_global_state.h"
 #include "intel_gmbus.h"
 #include "intel_opregion.h"
-#include "intel_dmc_wl.h"
+#include "intel_pch.h"
 #include "intel_wm_types.h"
 
 struct task_struct;
@@ -289,6 +290,9 @@ struct intel_display {
 	/* Platform (and subplatform, if any) identification */
 	struct intel_display_platforms platform;
 
+	/* Intel PCH: where the south display engine lives */
+	enum intel_pch pch_type;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index 37766e40fd1c..e63480dd01fe 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -39,139 +39,150 @@
 
 /* Map PCH device id to PCH type, or PCH_NONE if unknown. */
 static enum intel_pch
-intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
+intel_pch_type(const struct intel_display *display, unsigned short id)
 {
 	switch (id) {
 	case INTEL_PCH_IBX_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Ibex Peak PCH\n");
-		drm_WARN_ON(&dev_priv->drm, GRAPHICS_VER(dev_priv) != 5);
+		drm_dbg_kms(display->drm, "Found Ibex Peak PCH\n");
+		drm_WARN_ON(display->drm, DISPLAY_VER(display) != 5);
 		return PCH_IBX;
 	case INTEL_PCH_CPT_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found CougarPoint PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    GRAPHICS_VER(dev_priv) != 6 && !IS_IVYBRIDGE(dev_priv));
+		drm_dbg_kms(display->drm, "Found CougarPoint PCH\n");
+		drm_WARN_ON(display->drm,
+			    DISPLAY_VER(display) != 6 &&
+			    !display->platform.ivybridge);
 		return PCH_CPT;
 	case INTEL_PCH_PPT_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found PantherPoint PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    GRAPHICS_VER(dev_priv) != 6 && !IS_IVYBRIDGE(dev_priv));
+		drm_dbg_kms(display->drm, "Found PantherPoint PCH\n");
+		drm_WARN_ON(display->drm,
+			    DISPLAY_VER(display) != 6 &&
+			    !display->platform.ivybridge);
 		/* PPT is CPT compatible */
 		return PCH_CPT;
 	case INTEL_PCH_LPT_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		drm_WARN_ON(&dev_priv->drm,
-			    IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv));
+		drm_dbg_kms(display->drm, "Found LynxPoint PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell &&
+			    !display->platform.broadwell);
+		drm_WARN_ON(display->drm,
+			    display->platform.haswell_ult ||
+			    display->platform.broadwell_ult);
 		return PCH_LPT_H;
 	case INTEL_PCH_LPT_LP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint LP PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL_ULT(dev_priv) && !IS_BROADWELL_ULT(dev_priv));
+		drm_dbg_kms(display->drm, "Found LynxPoint LP PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell &&
+			    !display->platform.broadwell);
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell_ult &&
+			    !display->platform.broadwell_ult);
 		return PCH_LPT_LP;
 	case INTEL_PCH_WPT_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		drm_WARN_ON(&dev_priv->drm,
-			    IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv));
+		drm_dbg_kms(display->drm, "Found WildcatPoint PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell &&
+			    !display->platform.broadwell);
+		drm_WARN_ON(display->drm,
+			    display->platform.haswell_ult ||
+			    display->platform.broadwell_ult);
 		/* WPT is LPT compatible */
 		return PCH_LPT_H;
 	case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint LP PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL_ULT(dev_priv) && !IS_BROADWELL_ULT(dev_priv));
+		drm_dbg_kms(display->drm, "Found WildcatPoint LP PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell &&
+			    !display->platform.broadwell);
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell_ult &&
+			    !display->platform.broadwell_ult);
 		/* WPT is LPT compatible */
 		return PCH_LPT_LP;
 	case INTEL_PCH_SPT_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found SunrisePoint PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found SunrisePoint PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.skylake &&
+			    !display->platform.kabylake);
 		return PCH_SPT;
 	case INTEL_PCH_SPT_LP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found SunrisePoint LP PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_SKYLAKE(dev_priv) &&
-			    !IS_KABYLAKE(dev_priv) &&
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found SunrisePoint LP PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.skylake &&
+			    !display->platform.kabylake &&
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		return PCH_SPT;
 	case INTEL_PCH_KBP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Kaby Lake PCH (KBP)\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_SKYLAKE(dev_priv) &&
-			    !IS_KABYLAKE(dev_priv) &&
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Kaby Lake PCH (KBP)\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.skylake &&
+			    !display->platform.kabylake &&
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		/* KBP is SPT compatible */
 		return PCH_SPT;
 	case INTEL_PCH_CNP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Cannon Lake PCH (CNP)\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Cannon Lake PCH (CNP)\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		return PCH_CNP;
 	case INTEL_PCH_CNP_LP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Found Cannon Lake LP PCH (CNP-LP)\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_WARN_ON(display->drm,
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		return PCH_CNP;
 	case INTEL_PCH_CMP_DEVICE_ID_TYPE:
 	case INTEL_PCH_CMP2_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Comet Lake PCH (CMP)\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv) &&
-			    !IS_ROCKETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Comet Lake PCH (CMP)\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake &&
+			    !display->platform.rocketlake);
 		/* CMP is CNP compatible */
 		return PCH_CNP;
 	case INTEL_PCH_CMP_V_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Comet Lake V PCH (CMP-V)\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Comet Lake V PCH (CMP-V)\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		/* CMP-V is based on KBP, which is SPT compatible */
 		return PCH_SPT;
 	case INTEL_PCH_ICP_DEVICE_ID_TYPE:
 	case INTEL_PCH_ICP2_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Ice Lake PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Ice Lake PCH\n");
+		drm_WARN_ON(display->drm, !display->platform.icelake);
 		return PCH_ICP;
 	case INTEL_PCH_MCC_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Mule Creek Canyon PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !(IS_JASPERLAKE(dev_priv) ||
-					      IS_ELKHARTLAKE(dev_priv)));
+		drm_dbg_kms(display->drm, "Found Mule Creek Canyon PCH\n");
+		drm_WARN_ON(display->drm, !(display->platform.jasperlake ||
+					    display->platform.elkhartlake));
 		/* MCC is TGP compatible */
 		return PCH_TGP;
 	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
 	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_TIGERLAKE(dev_priv) &&
-			    !IS_ROCKETLAKE(dev_priv) &&
-			    !IS_SKYLAKE(dev_priv) &&
-			    !IS_KABYLAKE(dev_priv) &&
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Tiger Lake LP PCH\n");
+		drm_WARN_ON(display->drm, !display->platform.tigerlake &&
+			    !display->platform.rocketlake &&
+			    !display->platform.skylake &&
+			    !display->platform.kabylake &&
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		return PCH_TGP;
 	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !(IS_JASPERLAKE(dev_priv) ||
-					      IS_ELKHARTLAKE(dev_priv)));
+		drm_dbg_kms(display->drm, "Found Jasper Lake PCH\n");
+		drm_WARN_ON(display->drm, !(display->platform.jasperlake ||
+					    display->platform.elkhartlake));
 		/* JSP is ICP compatible */
 		return PCH_ICP;
 	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP3_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP4_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
-			    !IS_ALDERLAKE_P(dev_priv));
+		drm_dbg_kms(display->drm, "Found Alder Lake PCH\n");
+		drm_WARN_ON(display->drm, !display->platform.alderlake_s &&
+			    !display->platform.alderlake_p);
 		return PCH_ADP;
 	default:
 		return PCH_NONE;
@@ -189,7 +200,7 @@ static bool intel_is_virt_pch(unsigned short id,
 }
 
 static void
-intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
+intel_virt_detect_pch(const struct intel_display *display,
 		      unsigned short *pch_id, enum intel_pch *pch_type)
 {
 	unsigned short id = 0;
@@ -201,44 +212,45 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
 	 * make an educated guess as to which PCH is really there.
 	 */
 
-	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
+	if (display->platform.alderlake_s || display->platform.alderlake_p)
 		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
-	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
+	else if (display->platform.tigerlake || display->platform.rocketlake)
 		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
-	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
+	else if (display->platform.jasperlake || display->platform.elkhartlake)
 		id = INTEL_PCH_MCC_DEVICE_ID_TYPE;
-	else if (IS_ICELAKE(dev_priv))
+	else if (display->platform.icelake)
 		id = INTEL_PCH_ICP_DEVICE_ID_TYPE;
-	else if (IS_COFFEELAKE(dev_priv) ||
-		 IS_COMETLAKE(dev_priv))
+	else if (display->platform.coffeelake ||
+		 display->platform.cometlake)
 		id = INTEL_PCH_CNP_DEVICE_ID_TYPE;
-	else if (IS_KABYLAKE(dev_priv) || IS_SKYLAKE(dev_priv))
+	else if (display->platform.kabylake || display->platform.skylake)
 		id = INTEL_PCH_SPT_DEVICE_ID_TYPE;
-	else if (IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv))
+	else if (display->platform.haswell_ult ||
+		 display->platform.broadwell_ult)
 		id = INTEL_PCH_LPT_LP_DEVICE_ID_TYPE;
-	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
+	else if (display->platform.haswell || display->platform.broadwell)
 		id = INTEL_PCH_LPT_DEVICE_ID_TYPE;
-	else if (GRAPHICS_VER(dev_priv) == 6 || IS_IVYBRIDGE(dev_priv))
+	else if (DISPLAY_VER(display) == 6 || display->platform.ivybridge)
 		id = INTEL_PCH_CPT_DEVICE_ID_TYPE;
-	else if (GRAPHICS_VER(dev_priv) == 5)
+	else if (DISPLAY_VER(display) == 5)
 		id = INTEL_PCH_IBX_DEVICE_ID_TYPE;
 
 	if (id)
-		drm_dbg_kms(&dev_priv->drm, "Assuming PCH ID %04x\n", id);
+		drm_dbg_kms(display->drm, "Assuming PCH ID %04x\n", id);
 	else
-		drm_dbg_kms(&dev_priv->drm, "Assuming no PCH\n");
+		drm_dbg_kms(display->drm, "Assuming no PCH\n");
 
-	*pch_type = intel_pch_type(dev_priv, id);
+	*pch_type = intel_pch_type(display, id);
 
 	/* Sanity check virtual PCH id */
-	if (drm_WARN_ON(&dev_priv->drm,
+	if (drm_WARN_ON(display->drm,
 			id && *pch_type == PCH_NONE))
 		id = 0;
 
 	*pch_id = id;
 }
 
-void intel_detect_pch(struct drm_i915_private *dev_priv)
+void intel_detect_pch(struct intel_display *display)
 {
 	struct pci_dev *pch = NULL;
 	unsigned short id;
@@ -248,21 +260,21 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	 * South display engine on the same PCI device: just assign the fake
 	 * PCH.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 20) {
-		dev_priv->pch_type = PCH_LNL;
+	if (DISPLAY_VER(display) >= 20) {
+		display->pch_type = PCH_LNL;
 		return;
-	} else if (IS_BATTLEMAGE(dev_priv) || IS_METEORLAKE(dev_priv)) {
+	} else if (display->platform.battlemage || display->platform.meteorlake) {
 		/*
 		 * Both north display and south display are on the SoC die.
 		 * The real PCH (if it even exists) is uninvolved in display.
 		 */
-		dev_priv->pch_type = PCH_MTL;
+		display->pch_type = PCH_MTL;
 		return;
-	} else if (IS_DG2(dev_priv)) {
-		dev_priv->pch_type = PCH_DG2;
+	} else if (display->platform.dg2) {
+		display->pch_type = PCH_DG2;
 		return;
-	} else if (IS_DG1(dev_priv)) {
-		dev_priv->pch_type = PCH_DG1;
+	} else if (display->platform.dg1) {
+		display->pch_type = PCH_DG1;
 		return;
 	}
 
@@ -283,14 +295,14 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 
 		id = pch->device & INTEL_PCH_DEVICE_ID_MASK;
 
-		pch_type = intel_pch_type(dev_priv, id);
+		pch_type = intel_pch_type(display, id);
 		if (pch_type != PCH_NONE) {
-			dev_priv->pch_type = pch_type;
+			display->pch_type = pch_type;
 			break;
 		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
 					     pch->subsystem_device)) {
-			intel_virt_detect_pch(dev_priv, &id, &pch_type);
-			dev_priv->pch_type = pch_type;
+			intel_virt_detect_pch(display, &id, &pch_type);
+			display->pch_type = pch_type;
 			break;
 		}
 	}
@@ -299,16 +311,16 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	 * Use PCH_NOP (PCH but no South Display) for PCH platforms without
 	 * display.
 	 */
-	if (pch && !HAS_DISPLAY(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (pch && !HAS_DISPLAY(display)) {
+		drm_dbg_kms(display->drm,
 			    "Display disabled, reverting to NOP PCH\n");
-		dev_priv->pch_type = PCH_NOP;
+		display->pch_type = PCH_NOP;
 	} else if (!pch) {
-		if (i915_run_as_guest() && HAS_DISPLAY(dev_priv)) {
-			intel_virt_detect_pch(dev_priv, &id, &pch_type);
-			dev_priv->pch_type = pch_type;
+		if (i915_run_as_guest() && HAS_DISPLAY(display)) {
+			intel_virt_detect_pch(display, &id, &pch_type);
+			display->pch_type = pch_type;
 		} else {
-			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
+			drm_dbg_kms(display->drm, "No PCH found.\n");
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch.h b/drivers/gpu/drm/i915/display/intel_pch.h
index b9fa2b2f07bc..b2b309a9fe6b 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.h
+++ b/drivers/gpu/drm/i915/display/intel_pch.h
@@ -6,7 +6,9 @@
 #ifndef __INTEL_PCH__
 #define __INTEL_PCH__
 
-struct drm_i915_private;
+#include "intel_display_conversion.h"
+
+struct intel_display;
 
 /*
  * Sorted by south display engine compatibility.
@@ -34,23 +36,23 @@ enum intel_pch {
 	PCH_LNL,
 };
 
-#define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
-#define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
-#define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
-#define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
-#define HAS_PCH_TGP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_TGP)
-#define HAS_PCH_ICP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ICP)
-#define HAS_PCH_CNP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_CNP)
-#define HAS_PCH_SPT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_SPT)
-#define HAS_PCH_LPT_H(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LPT_H)
-#define HAS_PCH_LPT_LP(dev_priv)		(INTEL_PCH_TYPE(dev_priv) == PCH_LPT_LP)
-#define HAS_PCH_LPT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LPT_H || \
-						 INTEL_PCH_TYPE(dev_priv) == PCH_LPT_LP)
-#define HAS_PCH_CPT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_CPT)
-#define HAS_PCH_IBX(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_IBX)
-#define HAS_PCH_NOP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_NOP)
-#define HAS_PCH_SPLIT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) != PCH_NONE)
-
-void intel_detect_pch(struct drm_i915_private *dev_priv);
+#define INTEL_PCH_TYPE(_display)		(__to_intel_display(_display)->pch_type)
+#define HAS_PCH_DG2(display)			(INTEL_PCH_TYPE(display) == PCH_DG2)
+#define HAS_PCH_ADP(display)			(INTEL_PCH_TYPE(display) == PCH_ADP)
+#define HAS_PCH_DG1(display)			(INTEL_PCH_TYPE(display) == PCH_DG1)
+#define HAS_PCH_TGP(display)			(INTEL_PCH_TYPE(display) == PCH_TGP)
+#define HAS_PCH_ICP(display)			(INTEL_PCH_TYPE(display) == PCH_ICP)
+#define HAS_PCH_CNP(display)			(INTEL_PCH_TYPE(display) == PCH_CNP)
+#define HAS_PCH_SPT(display)			(INTEL_PCH_TYPE(display) == PCH_SPT)
+#define HAS_PCH_LPT_H(display)			(INTEL_PCH_TYPE(display) == PCH_LPT_H)
+#define HAS_PCH_LPT_LP(display)			(INTEL_PCH_TYPE(display) == PCH_LPT_LP)
+#define HAS_PCH_LPT(display)			(INTEL_PCH_TYPE(display) == PCH_LPT_H || \
+						 INTEL_PCH_TYPE(display) == PCH_LPT_LP)
+#define HAS_PCH_CPT(display)			(INTEL_PCH_TYPE(display) == PCH_CPT)
+#define HAS_PCH_IBX(display)			(INTEL_PCH_TYPE(display) == PCH_IBX)
+#define HAS_PCH_NOP(display)			(INTEL_PCH_TYPE(display) == PCH_NOP)
+#define HAS_PCH_SPLIT(display)			(INTEL_PCH_TYPE(display) != PCH_NONE)
+
+void intel_detect_pch(struct intel_display *display);
 
 #endif /* __INTEL_PCH__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f5262b8ad237..787a9864c687 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -264,7 +264,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	i915_gem_init_early(dev_priv);
 
 	/* This must be called before any calls to HAS_PCH_* */
-	intel_detect_pch(dev_priv);
+	intel_detect_pch(display);
 
 	intel_irq_init(dev_priv);
 	intel_display_driver_early_probe(display);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 65e795a4ecba..38cd1750bc99 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -271,9 +271,6 @@ struct drm_i915_private {
 	/* pm private clock gating functions */
 	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
 
-	/* PCH chipset type */
-	enum intel_pch pch_type;
-
 	unsigned long gem_quirks;
 
 	struct i915_gem_mm mm;
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 20c3bcd953b7..45836fca51d8 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -134,7 +134,7 @@ int xe_display_init_early(struct xe_device *xe)
 	spin_lock_init(&xe->uncore.lock);
 
 	/* This must be called before any calls to HAS_PCH_* */
-	intel_detect_pch(xe);
+	intel_detect_pch(display);
 
 	intel_display_driver_early_probe(display);
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 9662bbfb257c..b69cd91c46d1 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -586,7 +586,6 @@ struct xe_device {
 	 * migrating to the right sub-structs
 	 */
 	struct intel_display display;
-	enum intel_pch pch_type;
 
 	struct dram_info {
 		bool wm_lv_0_adjust_needed;
-- 
2.39.5

