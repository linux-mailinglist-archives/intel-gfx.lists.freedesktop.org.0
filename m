Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3E57FFD8A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 22:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40D9B10E77B;
	Thu, 30 Nov 2023 21:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9954510E77B
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 21:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701379868; x=1732915868;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IKUDCPZLNvV9XjBYqwOJoA6rSOV5igAKs9aWoYuoLQI=;
 b=ggED0shyq1/xOjbFdDmkoaW2SdvHE9c93rk3nkXnlcUYKGbsneY+pOIW
 Ts4HaIovzOBPk1XNRf4oiqorORjufGOUgQ9JQmnUSAisicfFoRBuDfg4h
 FS70YDg7LM3U6uXCuirjPHYi+zxddxdEMJDEE14xy8xrLhLpWOk6TpuYa
 fpoGkO1+kuUsIwv1pIsdejm+0GnJh8bqtgRv1pkPEdf70AnO2t2h7wmcY
 Q0YdSndRblo655zQv/rEliYSUdVLfYs1AfSEkwT26L7BWwAZ6J6VFHJGc
 XvTUdEr/QmtRoE/SpFXNBkS0adnlywrLyyoMKZOgrxUw6bsXi2TMUBrmV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="392369"
X-IronPort-AV: E=Sophos;i="6.04,240,1695711600"; 
   d="scan'208";a="392369"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 13:31:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="892956376"
X-IronPort-AV: E=Sophos;i="6.04,240,1695711600"; d="scan'208";a="892956376"
Received: from kialmah1-mobl1.jf.intel.com ([10.24.12.142])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 13:31:07 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Nov 2023 13:31:02 -0800
Message-Id: <20231130213103.214915-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy
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
2.25.1

