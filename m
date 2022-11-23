Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C955D636C43
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:20:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A18B10E641;
	Wed, 23 Nov 2022 21:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9210D10E638
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238352; x=1700774352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gz0FOhUKGs1gVtBRjgbh8J/0dUSrPF2FePFinpvCiQM=;
 b=kmfSVinPcy5h9cAdeIHXMc4OZ/SzYzqNsOeCrAT/tOM7r0o1iWfU5h2u
 amW/XqiFOzp3jdDyEPMPjRJnNPCDKy0vkTo5oMNJCyKtIrRJqe88CYfib
 LRj6U9oF8huOPD9BMxjMy/9eaFLe+AF4gDlsagMRmK+fH+23SF+EMdX2Y
 WgdFmOJWc4KOkOXoJSHyRVjEfp9zysZajQJoSabFMEBCwEjlahZxVPNap
 bKLogEP45e90U6+ELtZitATX+YHuZGY5EDuUxikUZLB4HKOM2y91ibkNn
 ON4YSTjNTPJgvg0shozfTIDlXWKLnlUZTgER0s+8VTTVxY5XZTecsxoGe w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293866726"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293866726"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:19:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="641985377"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="641985377"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:19:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:23 +0200
Message-Id: <ab026ed98cb822fd5d273eba297f80daa35cbe5f.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/12] drm/i915/snps: switch to intel_de_*
 register accessors in display code
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid direct uncore use in display code.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index c799e891f8b5..9494cfd45519 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -44,18 +44,18 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
 	}
 }
 
-void intel_snps_phy_update_psr_power_state(struct drm_i915_private *dev_priv,
+void intel_snps_phy_update_psr_power_state(struct drm_i915_private *i915,
 					   enum phy phy, bool enable)
 {
 	u32 val;
 
-	if (!intel_phy_is_snps(dev_priv, phy))
+	if (!intel_phy_is_snps(i915, phy))
 		return;
 
 	val = REG_FIELD_PREP(SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR,
 			     enable ? 2 : 3);
-	intel_uncore_rmw(&dev_priv->uncore, SNPS_PHY_TX_REQ(phy),
-			 SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
+	intel_de_rmw(i915, SNPS_PHY_TX_REQ(phy),
+		     SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
 }
 
 void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
@@ -1785,7 +1785,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 	 */
 
 	/* 5. Software sets DPLL_ENABLE [PLL Enable] to "1". */
-	intel_uncore_rmw(&dev_priv->uncore, enable_reg, 0, PLL_ENABLE);
+	intel_de_rmw(dev_priv, enable_reg, 0, PLL_ENABLE);
 
 	/*
 	 * 9. Software sets SNPS_PHY_MPLLB_DIV dp_mpllb_force_en to "1". This
@@ -1830,14 +1830,13 @@ void intel_mpllb_disable(struct intel_encoder *encoder)
 	 */
 
 	/* 2. Software programs DPLL_ENABLE [PLL Enable] to "0" */
-	intel_uncore_rmw(&i915->uncore, enable_reg, PLL_ENABLE, 0);
+	intel_de_rmw(i915, enable_reg, PLL_ENABLE, 0);
 
 	/*
 	 * 4. Software programs SNPS_PHY_MPLLB_DIV dp_mpllb_force_en to "0".
 	 * This will allow the PLL to stop running.
 	 */
-	intel_uncore_rmw(&i915->uncore, SNPS_PHY_MPLLB_DIV(phy),
-			 SNPS_PHY_MPLLB_FORCE_EN, 0);
+	intel_de_rmw(i915, SNPS_PHY_MPLLB_DIV(phy), SNPS_PHY_MPLLB_FORCE_EN, 0);
 
 	/*
 	 * 5. Software polls DPLL_ENABLE [PLL Lock] for PHY acknowledgment
-- 
2.34.1

