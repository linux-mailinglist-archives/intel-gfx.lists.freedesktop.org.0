Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5312EF6B9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E3A96E85D;
	Fri,  8 Jan 2021 17:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EF226E867
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:45:29 +0000 (UTC)
IronPort-SDR: 6he3YTanBCHeWh4RCuNT5bBktn5yTS3A6Vc6VfbxN7XUyJBeQIsqNS1+XEYng7r/YcGNDfdzxQ
 xsh2o0djg99g==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="239178785"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="239178785"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:28 -0800
IronPort-SDR: tYEW3q2ijv2RelYHxYHraSvo4NSn0vUznsJC4yo9on52Sqip6jfc1UvtSDaz0rmWUqlbQ2O640
 P2vAGL9dMqqw==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="566532505"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:18 +0200
Message-Id: <b10013e2c976ca140b1ad62669e18a2e9f1e8c35.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/17] drm/i915/pps: rename
 intel_power_sequencer_reset to intel_pps_reset_all
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the usual naming pattern for functions. "reset all" because it
iterates over all DP encoders. No functional changes.

Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c           | 5 ++---
 drivers/gpu/drm/i915/display/intel_pps.h           | 2 +-
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index a11bd8213df4..c11c37c65d86 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -936,7 +936,7 @@ static void bxt_enable_dc9(struct drm_i915_private *dev_priv)
 	 * because PPS registers are always on.
 	 */
 	if (!HAS_PCH_SPLIT(dev_priv))
-		intel_power_sequencer_reset(dev_priv);
+		intel_pps_reset_all(dev_priv);
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_DC9);
 }
 
@@ -1446,7 +1446,7 @@ static void vlv_display_power_well_deinit(struct drm_i915_private *dev_priv)
 	/* make sure we're done processing display irqs */
 	intel_synchronize_irq(dev_priv);
 
-	intel_power_sequencer_reset(dev_priv);
+	intel_pps_reset_all(dev_priv);
 
 	/* Prevent us from re-enabling polling on accident in late suspend */
 	if (!dev_priv->drm.dev->power.is_suspended)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9e5744578b26..d396ee5f6f69 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -22,8 +22,7 @@ intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 	intel_wakeref_t wakeref;
 
 	/*
-	 * See intel_power_sequencer_reset() why we need
-	 * a power domain reference here.
+	 * See intel_pps_reset_all() why we need a power domain reference here.
 	 */
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
 	mutex_lock(&dev_priv->pps_mutex);
@@ -313,7 +312,7 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 	intel_dp_init_panel_power_sequencer_registers(intel_dp, false);
 }
 
-void intel_power_sequencer_reset(struct drm_i915_private *dev_priv)
+void intel_pps_reset_all(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index e0391c9c8383..ecd9ea2a095c 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -42,7 +42,7 @@ void wait_panel_power_cycle(struct intel_dp *intel_dp);
 
 void intel_pps_init(struct intel_dp *intel_dp);
 void intel_pps_encoder_reset(struct intel_dp *intel_dp);
-void intel_power_sequencer_reset(struct drm_i915_private *i915);
+void intel_pps_reset_all(struct drm_i915_private *i915);
 
 void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
