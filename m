Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 539647FFD8B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 22:31:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51DA10E77D;
	Thu, 30 Nov 2023 21:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85BEC10E77B
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 21:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701379869; x=1732915869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6SnXCZvhZnJsmY1n5C4QzVxhQZ+y8NN9Yn/GFoNjw9o=;
 b=M5X/mfvMXk5JfjANBNOeH8FHSDOutkRTavS9RXwrxy+CO0tbT3vuo8+K
 eVfXr7dVNjXKXXMDclZ9nEtLYD3YXPf83+cncJBrKQPAvWVkRaBTo8C+E
 x8jdGpBIuxfRQrm+xeKi9KHACOILj56HzTXYYxhumuJMfJqLWrg3PVVVA
 neHJd53i+oMWGBQgOZqlNPmbwZSHBmnXflrARZlzg9tMeMnMEgZRrlVLJ
 /myVKvsHiA2Vjl7dAGPd0/MNk1+3a7SXfl4zfi0GKfd9CbzO2IC7dTOUD
 alNF31j5IDXezWaQ8zxGlmDCmsFXt3/WHr1xPZXqOi8jHNuwXp4Ddprz1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="392373"
X-IronPort-AV: E=Sophos;i="6.04,240,1695711600"; 
   d="scan'208";a="392373"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 13:31:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="892956382"
X-IronPort-AV: E=Sophos;i="6.04,240,1695711600"; d="scan'208";a="892956382"
Received: from kialmah1-mobl1.jf.intel.com ([10.24.12.142])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 13:31:09 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Nov 2023 13:31:03 -0800
Message-Id: <20231130213103.214915-2-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231130213103.214915-1-khaled.almahallawy@intel.com>
References: <20231130213103.214915-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/dp: Add TPS4 PHY test pattern
 support
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding support for TPS4 (CP2520 Pattern 3) PHY pattern source tests.

v2: rebase

Bspec: 50482, 50484
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
 drivers/gpu/drm/i915/i915_reg.h         |  4 ++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1e63ab5761b..8908221edfa9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4679,6 +4679,7 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 	struct drm_dp_phy_test_params *data =
 			&intel_dp->compliance.test_data.phytest;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	enum pipe pipe = crtc->pipe;
 	u32 pattern_val;
 
@@ -4686,6 +4687,9 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 	case DP_LINK_QUAL_PATTERN_DISABLE:
 		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			     DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
+			     DP_TP_CTL_LINK_TRAIN_NORMAL);
 		break;
 	case DP_LINK_QUAL_PATTERN_D10_2:
 		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test Pattern\n");
@@ -4733,6 +4737,13 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_HBR2 |
 			       pattern_val);
 		break;
+	case DP_LINK_QUAL_PATTERN_CP2520_PAT_3:
+		drm_dbg_kms(&dev_priv->drm, "Set TPS4 compliance Phy Test Pattern\n");
+		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
+			DP_TP_CTL_TRAIN_PAT4_SEL_TP4a | DP_TP_CTL_LINK_TRAIN_PAT4);
+		break;
 	default:
 		WARN(1, "Invalid Phy Test Pattern\n");
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 27dc903f0553..7feb1e1478ee 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5652,6 +5652,10 @@ enum skl_power_gate {
 #define  DP_TP_CTL_MODE_SST			(0 << 27)
 #define  DP_TP_CTL_MODE_MST			(1 << 27)
 #define  DP_TP_CTL_FORCE_ACT			(1 << 25)
+#define  DP_TP_CTL_TRAIN_PAT4_SEL_MASK		(3 << 19)
+#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4a		(0 << 19)
+#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4b		(1 << 19)
+#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4c		(2 << 19)
 #define  DP_TP_CTL_ENHANCED_FRAME_ENABLE	(1 << 18)
 #define  DP_TP_CTL_FDI_AUTOTRAIN		(1 << 15)
 #define  DP_TP_CTL_LINK_TRAIN_MASK		(7 << 8)
-- 
2.25.1

