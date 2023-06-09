Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA10728F69
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 07:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4511910E0E2;
	Fri,  9 Jun 2023 05:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06EC10E0DD
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 05:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686289761; x=1717825761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nlSul1ua+Jig8MbHKcrs7Bg/r2vZ3vY2DNHOYOGFpy4=;
 b=Bci8nuKcWB5hfVaefeQ++9D+Na2uscUce6BjU2EHv9V0IeyElsgF8lda
 0Zgs/7q/SEQNOadtH/N1hFd+QS+Tv4iiE1uYGjQQu0/6MnG/9d2ZHxxPN
 enbR+BmrtMOzmcbuVOhQwSHUdDCM7O9dcCl3AiW01sLAnVD0qS8BGXjD9
 6k6IC+qulPqgGqqM4z10eGYOMlq9sw6I1rA6EIdA8QUiQN77A/by20Wpx
 MF9IFAeQoL+4R0xQsFh2E/tIG4eW/c3IlxIVFwSFxZ3BshRetD0sGA+sV
 o1Ul/nrak/ncC+uaUmIn8AEcfDX0ceRzsaoZsHv2hofGjJ017uU+OX9z/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="337878743"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="337878743"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 22:49:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="687628122"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="687628122"
Received: from kialmah1-desk5.jf.intel.com ([10.23.15.170])
 by orsmga006.jf.intel.com with ESMTP; 08 Jun 2023 22:49:21 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 22:49:17 -0700
Message-Id: <20230609054917.3920819-2-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230609054917.3920819-1-khaled.almahallawy@intel.com>
References: <20230609054917.3920819-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Add TPS4 PHY test pattern
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

Bspec: 50482, 50484

CC: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
 drivers/gpu/drm/i915/i915_reg.h         |  4 ++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 08b607288a6a..5c6601a71f4a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3878,6 +3878,7 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 	struct drm_dp_phy_test_params *data =
 			&intel_dp->compliance.test_data.phytest;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	enum pipe pipe = crtc->pipe;
 	u32 pattern_val;
 
@@ -3885,6 +3886,9 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 	case DP_LINK_QUAL_PATTERN_DISABLE:
 		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			     DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
+			     DP_TP_CTL_LINK_TRAIN_NORMAL);
 		break;
 	case DP_LINK_QUAL_PATTERN_D10_2:
 		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test Pattern\n");
@@ -3932,6 +3936,13 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_HBR2 |
 			       pattern_val);
 		break;
+	case DP_LINK_QUAL_PATTERN_CP2520_PAT_3:
+		drm_dbg_kms(&dev_priv->drm, "Set TPS4 compliance Phy Test Pattern\n");
+		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			     DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
+		             DP_TP_CTL_TRAIN_PAT4_SEL_TP4a | DP_TP_CTL_LINK_TRAIN_PAT4);
+		break;
 	default:
 		WARN(1, "Invalid Phy Test Pattern\n");
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2a9ab8de8421..64cdf9b31ca8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5676,6 +5676,10 @@ enum skl_power_gate {
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
2.34.1

