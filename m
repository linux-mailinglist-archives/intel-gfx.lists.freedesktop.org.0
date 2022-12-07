Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4CB645FF7
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:18:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A3610E40F;
	Wed,  7 Dec 2022 17:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5532A89CAD
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670433504; x=1701969504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gz0FOhUKGs1gVtBRjgbh8J/0dUSrPF2FePFinpvCiQM=;
 b=Qhi3Q34TjJl4L0FQu5EWnDKCqqOpm2AAOpNRI/nwjuclTTLD1QWkswYA
 /eysulHDUZUamKgAV8Cd79fw4s2NWEhLGaNiEOyLCMIkx5lCIMGzRnHXh
 2vLiG9onWbAnuecWyuTnwH7vEKTxpQ6mpCJtNCHB7EktjXNJfJgXQ/A1z
 eSvlqy/wqLbpmljA4Z9JuuavJ61KxM0P4rtyWlwgXFy/GoxsImQTD58P7
 xELi921pSutkIZ5ReSX7kgEqfVeZxAs+k+D4N4+h+LvxDdqyHl+pwnsYF
 UBwSri1KFMiHQrmYIJJhpQtYGYV7yP2g9w2Kc/HKq7WaYgSAhsbNvIF04 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="318087601"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="318087601"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:18:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="715260950"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="715260950"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:18:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 19:17:27 +0200
Message-Id: <4992661d93f8d5744e19408dc60ae49a5f2d597a.1670433372.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670433372.git.jani.nikula@intel.com>
References: <cover.1670433372.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/11] drm/i915/snps: switch to intel_de_*
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

