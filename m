Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6D88814DC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:48:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB0AE10FC70;
	Wed, 20 Mar 2024 15:48:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gF+b/pmT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0099B10E451
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710949705; x=1742485705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JRaunn2aYzF09MqeyHIi1vEO/4dn1q4+KlBG+O3cfxI=;
 b=gF+b/pmTL5nvg9G7prAyAzj843B5J1paQ9UNZU9ZO0f8bZIPUjP58t8e
 +rizfr5Qh7yEEsA9XzCEK+X0l3K0nu9MVkPoXUp3wKvmFbcqqX0qvGqeJ
 14fVO3Tfq/gWZ6neGFIfpN6NJRakvkCra0f9QFo3j3iHqyztvs4bvCtOD
 AO6MmZxgJF8TcEPO/iSd0kWUW53OWsl9C+nyGzD41KVVg/wsZ10YzXj++
 0Z/1lCPCCQeiEnDVdKETeU+sYahi2tLuzQVZHiVDPvI7FjwqIFdGq/vtd
 YKAcUp32OZk+jY/9xlA1+qtugKnVJLVKA8CDCsEcYQ0B7jBDjQ6IiAStM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5728601"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="5728601"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="37308484"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [CI 3/7] drm/i915/snps: pass encoder to
 intel_snps_phy_update_psr_power_state()
Date: Wed, 20 Mar 2024 17:48:00 +0200
Message-Id: <4711919a9834cf4a49fd665009ba9d44b4b42bc4.1710949619.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1710949619.git.jani.nikula@intel.com>
References: <cover.1710949619.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Pass encoder to intel_snps_phy_update_psr_power_state(). The encoder
will be more helpful than just port in the subsequent changes.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 7 ++-----
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 6 ++++--
 drivers/gpu/drm/i915/display/intel_snps_phy.h | 4 ++--
 3 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 747761efa4be..3f35572354ba 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1724,7 +1724,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
 	u32 val;
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
@@ -1752,7 +1751,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.psr2_enabled ? "2" : "1");
 
-	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
+	intel_snps_phy_update_psr_power_state(&dig_port->base, true);
 	intel_psr_enable_sink(intel_dp);
 	intel_psr_enable_source(intel_dp, crtc_state);
 	intel_dp->psr.enabled = true;
@@ -1823,8 +1822,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
-	enum phy phy = intel_port_to_phy(dev_priv,
-					 dp_to_dig_port(intel_dp)->base.port);
 
 	lockdep_assert_held(&intel_dp->psr.lock);
 
@@ -1859,7 +1856,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
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

