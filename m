Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D15DA879632
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 15:29:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB2C10F465;
	Tue, 12 Mar 2024 14:29:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="idwBGgkF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6D5A10F465
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 14:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710253762; x=1741789762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BAzQ5xM1YZnp1jPYMxrl4eMvvmeOI6APsTO1eciBFxk=;
 b=idwBGgkFxT9nQOPA4Tpa7DmwMAqdfDBdmz1VsQNzcFs8XSgnij3XKm/u
 /RHrHzjrNRXxGPxVKruffrPhdqrhmQe+baL/yH6jGFzMslxF9NCWafUO5
 I4osU5RrVtrPSl47w7Fw1gFXAYqNCiv3PYLcyi7+v8TDwr5tebNvPENC6
 qYakH0AqT2RGz6fMVeswWPZHGki5wdq7JTvTGWnQArp81sbF3vQIqWPYe
 LYfsge7+AG2oUJ108yQCioTodDviJczXLp2Uon1MbZFtXPSQA4oGCpPAr
 DGVgQLRqRM2xl+87wp4uJUcGB4Qpw2invitCkoP7WgntEaZzKu8FggYCQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="5089782"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="5089782"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16124885"
Received: from rfreedx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.35.216])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [RFC 3/7] drm/i915/snps: pass encoder to
 intel_snps_phy_update_psr_power_state()
Date: Tue, 12 Mar 2024 16:28:58 +0200
Message-Id: <83687d5e5c999d22577d8cd0d898aa4f00e1e0f2.1710253533.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1710253533.git.jani.nikula@intel.com>
References: <cover.1710253533.git.jani.nikula@intel.com>
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

Pass encoder to intel_snps_phy_update_psr_power_state().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 7 ++-----
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 6 ++++--
 drivers/gpu/drm/i915/display/intel_snps_phy.h | 4 ++--
 3 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6927785fd6ff..9d28ca0c630c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1700,7 +1700,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
 	u32 val;
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
@@ -1728,7 +1727,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.psr2_enabled ? "2" : "1");
 
-	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
+	intel_snps_phy_update_psr_power_state(&dig_port->base, true);
 	intel_psr_enable_sink(intel_dp);
 	intel_psr_enable_source(intel_dp, crtc_state);
 	intel_dp->psr.enabled = true;
@@ -1799,8 +1798,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
-	enum phy phy = intel_port_to_phy(dev_priv,
-					 dp_to_dig_port(intel_dp)->base.port);
 
 	lockdep_assert_held(&intel_dp->psr.lock);
 
@@ -1835,7 +1832,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
 	}
 
-	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
+	intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)->base, false);
 
 	/* Disable PSR on Sink */
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index bc61e736f9b3..7fc002268482 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -44,9 +44,11 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
 	}
 }
 
-void intel_snps_phy_update_psr_power_state(struct drm_i915_private *i915,
-					   enum phy phy, bool enable)
+void intel_snps_phy_update_psr_power_state(struct intel_encoder *encoder,
+					   bool enable)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	u32 val;
 
 	if (!intel_phy_is_snps(i915, phy))
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index 515abf7c5902..bc08b92a7cd9 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -17,8 +17,8 @@ struct intel_mpllb_state;
 enum phy;
 
 void intel_snps_phy_wait_for_calibration(struct drm_i915_private *dev_priv);
-void intel_snps_phy_update_psr_power_state(struct drm_i915_private *dev_priv,
-					   enum phy phy, bool enable);
+void intel_snps_phy_update_psr_power_state(struct intel_encoder *encoder,
+					   bool enable);
 
 int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder);
-- 
2.39.2

