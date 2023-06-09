Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F299F728F68
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 07:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 827EB10E0DD;
	Fri,  9 Jun 2023 05:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1345610E0DD
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 05:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686289761; x=1717825761;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=47T2Uho7L2tBQp7rr4SJDvRKzKOKqBH5Kojib3erAXQ=;
 b=BzN4dOQa/YGbuZsLjP/WEHjlPp7KB+Aby2wObTfkTr5nKhhWNVRYz4rQ
 RB5FeE5Ll5rm4xsg9vRAIS56Ufda/Xz9QzhO+Txkmx40G8vLkDhK2nOXp
 Q0Hd/6H3YLzxsFagA/6Xd6IEiDPHhbZR0aoRlphlSP1QYJHhqSIQK1Ly3
 A5HcjCGXpepHVawxk+KT+a6YieX8DscN8UQAYNs4BMbaZensbpjzlXA1t
 pN6gQyVYUSw+9wpqOayBVH4Do6GqJ5h92lRsNkIzkd4Ob9iQkr8V+Ht94
 ICmBGEOoy0Nk1OXMGtmKvaDjaNHp6TlbjyTUoGYFP0Y42bIE6jxJRVx9Q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="337878739"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="337878739"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 22:49:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="687628115"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="687628115"
Received: from kialmah1-desk5.jf.intel.com ([10.23.15.170])
 by orsmga006.jf.intel.com with ESMTP; 08 Jun 2023 22:49:20 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 22:49:16 -0700
Message-Id: <20230609054917.3920819-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy
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

CC: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0cc57681dc4d..08b607288a6a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3882,27 +3882,27 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
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
@@ -3920,7 +3920,7 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
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

