Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA48997BE3D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5590A10E5D2;
	Wed, 18 Sep 2024 14:50:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fqLT3Fr1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C812E10E5D2;
 Wed, 18 Sep 2024 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726671054; x=1758207054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nxtUSAilqt610FlTdSbHUvcaxE++4IxwzkdBgud2H8I=;
 b=fqLT3Fr1fWieTprMYauWkCCAYkIU3Ozmmbp5/R3BZ32p+yrdWGNh1cAZ
 Uo8q3r7QBflYPC3MzkETEdOResWiaB/waTuLd8KR5OHd6fTlGto0mOAr7
 jy8oYWeqSWRQMr3C0TT6M0qJv7bIFwbQmTNMSRpwfroYt6lJ79zA1EdTl
 p3Qg4lXL//aUia+OCyxLzVh4M2etBH8dB7tEiyEHt2wAIB4/u2GsKtCmJ
 MSTfaTkEURTw4sCPMxzrPWt9cWJYiJGsJBiJVlkdTJpMWv2u1+bcLYvNX
 8nucO+Hr4njNUbaR9u3fxoWCEuY+tRPplo+0RuTpdl//tUQ9pefnROkcW w==;
X-CSE-ConnectionGUID: NdoTZp6qSIid2AjGXNq92w==
X-CSE-MsgGUID: jB9zHwk7QFejkQ0zlMuTRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29330600"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29330600"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:50:53 -0700
X-CSE-ConnectionGUID: Ax/A/SLHRU6FYVZgNlkScQ==
X-CSE-MsgGUID: ThBmuCVrREa8Hk8e40LM+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="74148694"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:50:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/soc: stop using IS_GEN9_LP() and IS_GEN9_BC()
Date: Wed, 18 Sep 2024 17:50:42 +0300
Message-Id: <20240918145042.1447857-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240918145042.1447857-1-jani.nikula@intel.com>
References: <20240918145042.1447857-1-jani.nikula@intel.com>
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

Replace IS_GEN9_LP() and IS_GEN9_BC() with direct platform checks. This
lets us remove their compat counterparts, as neither soc/ nor /display
now no longer needs them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c             | 4 ++--
 drivers/gpu/drm/i915/soc/intel_pch.c              | 9 ++++++---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 3 ---
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 4aba47bccc63..9e310f4099f4 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -714,7 +714,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	 * Assume level 0 watermark latency adjustment is needed until proven
 	 * otherwise, this w/a is not needed by bxt/glk.
 	 */
-	dram_info->wm_lv_0_adjust_needed = !IS_GEN9_LP(i915);
+	dram_info->wm_lv_0_adjust_needed = !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);
 
 	if (DISPLAY_VER(i915) >= 14)
 		ret = xelpdp_get_dram_info(i915);
@@ -722,7 +722,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
 		ret = gen12_get_dram_info(i915);
 	else if (GRAPHICS_VER(i915) >= 11)
 		ret = gen11_get_dram_info(i915);
-	else if (IS_GEN9_LP(i915))
+	else if (IS_BROXTON(i915) || IS_GEMINILAKE(i915))
 		ret = bxt_get_dram_info(i915);
 	else
 		ret = skl_get_dram_info(i915);
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 542eea50093c..f7e3745bb1dc 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -122,9 +122,12 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
 	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_TIGERLAKE(dev_priv) &&
-			    !IS_ROCKETLAKE(dev_priv) &&
-			    !IS_GEN9_BC(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !(IS_TIGERLAKE(dev_priv) ||
+					      IS_ROCKETLAKE(dev_priv) ||
+					      IS_SKYLAKE(dev_priv) ||
+					      IS_KABYLAKE(dev_priv) ||
+					      IS_COFFEELAKE(dev_priv) ||
+					      IS_COMETLAKE(dev_priv)));
 		return PCH_TGP;
 	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index c43673bcecde..684e7a25e3ef 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -75,9 +75,6 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 
 #define IS_MOBILE(xe) (xe && 0)
 
-#define IS_GEN9_LP(xe) ((xe) && 0)
-#define IS_GEN9_BC(xe) ((xe) && 0)
-
 #define IS_TIGERLAKE_UY(xe) (xe && 0)
 #define IS_COMETLAKE_ULX(xe) (xe && 0)
 #define IS_COFFEELAKE_ULX(xe) (xe && 0)
-- 
2.39.2

