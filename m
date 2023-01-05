Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F8065EC8A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:11:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 745FF10E71A;
	Thu,  5 Jan 2023 13:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B551310E71A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672924283; x=1704460283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6zZJbJVpO9qth281MvkZUwl+ZPeZ53HWXd0kTno/+f0=;
 b=PwDD6+e+MzastGvoA7mFljixw4KF66vma43trQuMcBvqAfqKvko5eJJK
 pWQdQTUPnVKCE2yyGIQ1uvilJQ2Qi3ekewYpQ2mKZ5UyPpzCAmCZFlX5h
 lgs7w2C1xUNKJhRFFiw26X2aXED3r35xIysPz5duNyX6mEUX928hNBTqP
 ZwqOkpYS65NRACuRmbhqV46ew/j/BrFzu83HadnZINa/xpBN6SG+6cifE
 c9yNcGZidrbpHWyRr+sWYUYyAspkGGJAt9NcPvqnIYAKOMQaRqOqHd7iJ
 iB5wQdr0FwCse7pcwxKDa4/bN4j5McAnVElh6L0kSp3KKMP2EHAdw27F4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="323429774"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="323429774"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="633129081"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="633129081"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:20 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:10:41 +0100
Message-Id: <20230105131046.2173431-4-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915/display/phys: use intel_de_rmw
 if possible
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 .../gpu/drm/i915/display/intel_combo_phy.c    | 43 +++++-----------
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 51 ++++++-------------
 2 files changed, 29 insertions(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 8b870b2dd4f9d9..27e98eabb0060a 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -78,14 +78,11 @@ static void icl_set_procmon_ref_values(struct drm_i915_private *dev_priv,
 				       enum phy phy)
 {
 	const struct icl_procmon *procmon;
-	u32 val;
 
 	procmon = icl_get_procmon_ref_values(dev_priv, phy);
 
-	val = intel_de_read(dev_priv, ICL_PORT_COMP_DW1(phy));
-	val &= ~((0xff << 16) | 0xff);
-	val |= procmon->dw1;
-	intel_de_write(dev_priv, ICL_PORT_COMP_DW1(phy), val);
+	intel_de_rmw(dev_priv, ICL_PORT_COMP_DW1(phy),
+		     (0xff << 16) | 0xff, procmon->dw1);
 
 	intel_de_write(dev_priv, ICL_PORT_COMP_DW9(phy), procmon->dw9);
 	intel_de_write(dev_priv, ICL_PORT_COMP_DW10(phy), procmon->dw10);
@@ -267,7 +264,6 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
 				    int lane_count, bool lane_reversal)
 {
 	u8 lane_mask;
-	u32 val;
 
 	if (is_dsi) {
 		drm_WARN_ON(&dev_priv->drm, lane_reversal);
@@ -308,10 +304,8 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
 		}
 	}
 
-	val = intel_de_read(dev_priv, ICL_PORT_CL_DW10(phy));
-	val &= ~PWR_DOWN_LN_MASK;
-	val |= lane_mask;
-	intel_de_write(dev_priv, ICL_PORT_CL_DW10(phy), val);
+	intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy),
+		     PWR_DOWN_LN_MASK, lane_mask);
 }
 
 static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
@@ -366,19 +360,13 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 
 		icl_set_procmon_ref_values(dev_priv, phy);
 
-		if (phy_is_master(dev_priv, phy)) {
-			val = intel_de_read(dev_priv, ICL_PORT_COMP_DW8(phy));
-			val |= IREFGEN;
-			intel_de_write(dev_priv, ICL_PORT_COMP_DW8(phy), val);
-		}
-
-		val = intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy));
-		val |= COMP_INIT;
-		intel_de_write(dev_priv, ICL_PORT_COMP_DW0(phy), val);
+		if (phy_is_master(dev_priv, phy))
+			intel_de_rmw(dev_priv, ICL_PORT_COMP_DW8(phy),
+				     0, IREFGEN);
 
-		val = intel_de_read(dev_priv, ICL_PORT_CL_DW5(phy));
-		val |= CL_POWER_DOWN_ENABLE;
-		intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), val);
+		intel_de_rmw(dev_priv, ICL_PORT_COMP_DW0(phy), 0, COMP_INIT);
+		intel_de_rmw(dev_priv, ICL_PORT_CL_DW5(phy),
+			     0, CL_POWER_DOWN_ENABLE);
 	}
 }
 
@@ -387,8 +375,6 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 	enum phy phy;
 
 	for_each_combo_phy_reverse(dev_priv, phy) {
-		u32 val;
-
 		if (phy == PHY_A &&
 		    !icl_combo_phy_verify_state(dev_priv, phy)) {
 			if (IS_TIGERLAKE(dev_priv) || IS_DG1(dev_priv)) {
@@ -410,14 +396,11 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 		if (!has_phy_misc(dev_priv, phy))
 			goto skip_phy_misc;
 
-		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
-		val |= ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN;
-		intel_de_write(dev_priv, ICL_PHY_MISC(phy), val);
+		intel_de_rmw(dev_priv, ICL_PHY_MISC(phy), 0,
+			     ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN);
 
 skip_phy_misc:
-		val = intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy));
-		val &= ~COMP_INIT;
-		intel_de_write(dev_priv, ICL_PORT_COMP_DW0(phy), val);
+		intel_de_rmw(dev_priv, ICL_PORT_COMP_DW0(phy), COMP_INIT, 0);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 7eb7440b31803f..9d825fdaa29055 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -389,9 +389,7 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 			"force reprogramming it\n", phy);
 	}
 
-	val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
-	val |= phy_info->pwron_mask;
-	intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON, val);
+	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, 0, phy_info->pwron_mask);
 
 	/*
 	 * The PHY registers start out inaccessible and respond to reads with
@@ -410,27 +408,19 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 			phy);
 
 	/* Program PLL Rcomp code offset */
-	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW9(phy));
-	val &= ~IREF0RC_OFFSET_MASK;
-	val |= 0xE4 << IREF0RC_OFFSET_SHIFT;
-	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW9(phy), val);
+	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW9(phy), IREF0RC_OFFSET_MASK,
+		     0xE4 << IREF0RC_OFFSET_SHIFT);
 
-	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW10(phy));
-	val &= ~IREF1RC_OFFSET_MASK;
-	val |= 0xE4 << IREF1RC_OFFSET_SHIFT;
-	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW10(phy), val);
+	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW10(phy), IREF1RC_OFFSET_MASK,
+		     0xE4 << IREF1RC_OFFSET_SHIFT);
 
 	/* Program power gating */
-	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW28(phy));
-	val |= OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN |
-		SUS_CLK_CONFIG;
-	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW28(phy), val);
-
-	if (phy_info->dual_channel) {
-		val = intel_de_read(dev_priv, BXT_PORT_CL2CM_DW6(phy));
-		val |= DW6_OLDO_DYN_PWR_DOWN_EN;
-		intel_de_write(dev_priv, BXT_PORT_CL2CM_DW6(phy), val);
-	}
+	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW28(phy), 0,
+		     OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN | SUS_CLK_CONFIG);
+
+	if (phy_info->dual_channel)
+		intel_de_rmw(dev_priv, BXT_PORT_CL2CM_DW6(phy), 0,
+			     DW6_OLDO_DYN_PWR_DOWN_EN);
 
 	if (phy_info->rcomp_phy != -1) {
 		u32 grc_code;
@@ -448,34 +438,25 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 			   val << GRC_CODE_SLOW_SHIFT |
 			   val;
 		intel_de_write(dev_priv, BXT_PORT_REF_DW6(phy), grc_code);
-
-		val = intel_de_read(dev_priv, BXT_PORT_REF_DW8(phy));
-		val |= GRC_DIS | GRC_RDY_OVRD;
-		intel_de_write(dev_priv, BXT_PORT_REF_DW8(phy), val);
+		intel_de_rmw(dev_priv, BXT_PORT_REF_DW8(phy),
+			     0, GRC_DIS | GRC_RDY_OVRD);
 	}
 
 	if (phy_info->reset_delay)
 		udelay(phy_info->reset_delay);
 
-	val = intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy));
-	val |= COMMON_RESET_DIS;
-	intel_de_write(dev_priv, BXT_PHY_CTL_FAMILY(phy), val);
+	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), 0, COMMON_RESET_DIS);
 }
 
 void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 {
 	const struct bxt_ddi_phy_info *phy_info;
-	u32 val;
 
 	phy_info = bxt_get_phy_info(dev_priv, phy);
 
-	val = intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy));
-	val &= ~COMMON_RESET_DIS;
-	intel_de_write(dev_priv, BXT_PHY_CTL_FAMILY(phy), val);
+	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), COMMON_RESET_DIS, 0);
 
-	val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
-	val &= ~phy_info->pwron_mask;
-	intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON, val);
+	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, phy_info->pwron_mask, 0);
 }
 
 void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
-- 
2.34.1

