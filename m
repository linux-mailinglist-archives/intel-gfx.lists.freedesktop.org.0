Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7374807C91
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 00:53:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B7410E183;
	Wed,  6 Dec 2023 23:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4466210E091
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Dec 2023 23:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701906802; x=1733442802;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cX+rbIS7GKxird7g/oq5NlS5BH/D2Jo+ZTWYhJ4Cx7E=;
 b=KMLDyDGpwTAE1RKFVAYkBfeRDYiEvopd0yp1YEb+p1815Zv7lV9OqfRk
 n8p+99o2Xo9cRZog9ha/irhhPk0ztoTLNMBdiD4HYacTnzkV1NLLSpSk3
 PZX1Yq+XOSL1dZzozVrZMs0ME7jfXxWtSU/8w2eZHZl9bPu31LziFKzRk
 IbzmqSkQMpaKNw4Ld8sa4gkF14fHq+xJ+4V/UrJQ775lVrkQx0KiFuatq
 u8FmHlhl91lN+kWyFs2KigUw1x4+8O9X/irKBRL2dXNTG5Fn+07ThQrsZ
 8y/R5NL8yxY1LWGtj3HwwSYp5U/B+jUrdlFr17O+PyFrW01PWwq/mmELT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="396932570"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="396932570"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 15:53:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="800524674"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="800524674"
Received: from kialmah1-desk5.jf.intel.com ([10.23.15.170])
 by orsmga008.jf.intel.com with ESMTP; 06 Dec 2023 15:53:21 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Dec 2023 15:53:17 -0800
Message-Id: <20231206235319.3205232-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy
 test pattern names
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

Starting from DP2.0 specs, DPCD 248h is renamed
LINK_QUAL_PATTERN_SELECT and it has the same values of registers
DPCD 10Bh-10Eh.
Use the PHY pattern names defined for DPCD 10Bh-10Eh in order to add
CP2520 Pattern 3 (TPS4) phy pattern support in the next
patch of this series and DP2.1 PHY patterns for future series.

v2: rebase

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3b2482bf683f..a1e63ab5761b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4683,27 +4683,27 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 	u32 pattern_val;
 
 	switch (data->phy_pattern) {
-	case DP_PHY_TEST_PATTERN_NONE:
+	case DP_LINK_QUAL_PATTERN_DISABLE:
 		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
 		break;
-	case DP_PHY_TEST_PATTERN_D10_2:
+	case DP_LINK_QUAL_PATTERN_D10_2:
 		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_D10_2);
 		break;
-	case DP_PHY_TEST_PATTERN_ERROR_COUNT:
+	case DP_LINK_QUAL_PATTERN_ERROR_RATE:
 		drm_dbg_kms(&dev_priv->drm, "Set Error Count Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE |
 			       DDI_DP_COMP_CTL_SCRAMBLED_0);
 		break;
-	case DP_PHY_TEST_PATTERN_PRBS7:
+	case DP_LINK_QUAL_PATTERN_PRBS7:
 		drm_dbg_kms(&dev_priv->drm, "Set PRBS7 Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_PRBS7);
 		break;
-	case DP_PHY_TEST_PATTERN_80BIT_CUSTOM:
+	case DP_LINK_QUAL_PATTERN_80BIT_CUSTOM:
 		/*
 		 * FIXME: Ideally pattern should come from DPCD 0x250. As
 		 * current firmware of DPR-100 could not set it, so hardcoding
@@ -4721,7 +4721,7 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 			       DDI_DP_COMP_CTL_ENABLE |
 			       DDI_DP_COMP_CTL_CUSTOM80);
 		break;
-	case DP_PHY_TEST_PATTERN_CP2520:
+	case DP_LINK_QUAL_PATTERN_CP2520_PAT_1:
 		/*
 		 * FIXME: Ideally pattern should come from DPCD 0x24A. As
 		 * current firmware of DPR-100 could not set it, so hardcoding
-- 
2.34.1

