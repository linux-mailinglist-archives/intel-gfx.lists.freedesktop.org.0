Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72ECA81207E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 22:15:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B946910E853;
	Wed, 13 Dec 2023 21:15:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F86110E856
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 21:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702502152; x=1734038152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1u8urQY5/Vhvc0H6BOzM/S+M65DU9TVhZe/ByEiQal4=;
 b=FLzq3JqPZI1FVIEK1Gt07n0CMAMomEfP39pxK8BixsfPnXwQdLq6zzjX
 IwCoVyuSJZIaoHjdPSB2wit4Wm/MaQnLs2sw982I8mDtMiMpzZxCPVWfC
 cZ1e7xcx6Pa8oaziIaMZNvgCIsHWgeyLXEGclpdh66lSmX/4AF7wZdQUo
 J7q8QIJ8bQwwdzLe5JbdGZ/e4uvNHLtQjQKWMv2cc40XZoZRFhVUQt8NN
 JKTD4o335l7ivOrs6dpkiVY78wwb4vjsp46RZzgeNqlXKF8+nPBQy8DXU
 bR4ZIJtTi7M75moJDyOyRb6U9I1D6MzxqNRYSOAYOIqv7E75+G1QVU5sz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="13724263"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="13724263"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 13:15:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="864758185"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="864758185"
Received: from kialmah1-desk5.jf.intel.com ([10.23.15.170])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Dec 2023 13:15:50 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v4 2/3] drm/i915/dp: Add TPS4 PHY test pattern support
Date: Wed, 13 Dec 2023 13:15:41 -0800
Message-Id: <20231213211542.3585105-2-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231213211542.3585105-1-khaled.almahallawy@intel.com>
References: <20231213211542.3585105-1-khaled.almahallawy@intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding support for TPS4 (CP2520 Pattern 3) PHY pattern source tests.

v2: rebase
v3:
  - Enable TPS4 only for supported platforms (Jani)
  - Uppercase in macro names (Jani)
  - Fix indentation (Jani)
  - Use drm_warn instead of WARN
v4: Disable TPS4 pattern on supported platforms only

Bspec: 50482, 50484, 7557
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h         |  4 ++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1e63ab5761b..2c51737e3f4d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4679,6 +4679,7 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 	struct drm_dp_phy_test_params *data =
 			&intel_dp->compliance.test_data.phytest;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	enum pipe pipe = crtc->pipe;
 	u32 pattern_val;
 
@@ -4686,6 +4687,10 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 	case DP_LINK_QUAL_PATTERN_DISABLE:
 		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
+		if (DISPLAY_VER(dev_priv) >= 10)
+			intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+				DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
+				DP_TP_CTL_LINK_TRAIN_NORMAL);
 		break;
 	case DP_LINK_QUAL_PATTERN_D10_2:
 		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test Pattern\n");
@@ -4733,8 +4738,19 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_HBR2 |
 			       pattern_val);
 		break;
+	case DP_LINK_QUAL_PATTERN_CP2520_PAT_3:
+		if (DISPLAY_VER(dev_priv) < 10)  {
+			drm_warn(&dev_priv->drm, "Platform does not support TPS4\n");
+			break;
+		}
+		drm_dbg_kms(&dev_priv->drm, "Set TPS4 compliance Phy Test Pattern\n");
+		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			    DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
+			    DP_TP_CTL_TRAIN_PAT4_SEL_TP4A | DP_TP_CTL_LINK_TRAIN_PAT4);
+		break;
 	default:
-		WARN(1, "Invalid Phy Test Pattern\n");
+		drm_warn(&dev_priv->drm, "Invalid Phy Test Pattern\n");
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 27dc903f0553..220fcd9f8f1d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5652,6 +5652,10 @@ enum skl_power_gate {
 #define  DP_TP_CTL_MODE_SST			(0 << 27)
 #define  DP_TP_CTL_MODE_MST			(1 << 27)
 #define  DP_TP_CTL_FORCE_ACT			(1 << 25)
+#define  DP_TP_CTL_TRAIN_PAT4_SEL_MASK		(3 << 19)
+#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4A		(0 << 19)
+#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4B		(1 << 19)
+#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4C		(2 << 19)
 #define  DP_TP_CTL_ENHANCED_FRAME_ENABLE	(1 << 18)
 #define  DP_TP_CTL_FDI_AUTOTRAIN		(1 << 15)
 #define  DP_TP_CTL_LINK_TRAIN_MASK		(7 << 8)
-- 
2.34.1

