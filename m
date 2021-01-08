Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5B22EF6AC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:44:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F31846E858;
	Fri,  8 Jan 2021 17:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC1716E858
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:44:46 +0000 (UTC)
IronPort-SDR: ra73sevogeRTl0ywVKL1esbHmHuXF3N2vjvR6sC1LSIgixPCdDMFh6i4g6JGehgjo4pxug1aNB
 HID5tchhJwwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="165316718"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="165316718"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:44:45 -0800
IronPort-SDR: AdC6re9OXKBFSFK/KjK2s92cg7qpx+xfYTieBwTKbUYxjOxpjtrUekWyaThYrbgC+JWP2vEqHA
 HehAVifi6djA==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="423014810"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:44:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:10 +0200
Message-Id: <e37623750c592c08720f3b340cf85862d0f0ca12.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/17] drm/i915/pps: rename pps_{,
 un}lock -> intel_pps_{, un}lock
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

Start following the usual naming pattern for functions. No functional
changes.

Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 20 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_pps.c | 21 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_pps.h |  8 ++++----
 3 files changed, 25 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 07279b10812e..6e9b114171be 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1053,7 +1053,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	aux_domain = intel_aux_power_domain(dig_port);
 
 	aux_wakeref = intel_display_power_get(i915, aux_domain);
-	pps_wakeref = pps_lock(intel_dp);
+	pps_wakeref = intel_pps_lock(intel_dp);
 
 	/*
 	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
@@ -1205,7 +1205,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	if (vdd)
 		edp_panel_vdd_off(intel_dp, false);
 
-	pps_unlock(intel_dp, pps_wakeref);
+	intel_pps_unlock(intel_dp, pps_wakeref);
 	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
 
 	if (is_tc_port)
@@ -3514,7 +3514,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 	if (drm_WARN_ON(&dev_priv->drm, dp_reg & DP_PORT_EN))
 		return;
 
-	with_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp, wakeref) {
 		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 			vlv_init_panel_power_sequencer(encoder, pipe_config);
 
@@ -4082,7 +4082,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		intel_wakeref_t wakeref;
 
-		with_pps_lock(intel_dp, wakeref)
+		with_intel_pps_lock(intel_dp, wakeref)
 			intel_dp->active_pipe = INVALID_PIPE;
 	}
 }
@@ -6257,7 +6257,7 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
 		 * vdd might still be enabled do to the delayed vdd off.
 		 * Make sure vdd is actually turned off here.
 		 */
-		with_pps_lock(intel_dp, wakeref)
+		with_intel_pps_lock(intel_dp, wakeref)
 			edp_panel_vdd_off_sync(intel_dp);
 	}
 
@@ -6285,7 +6285,7 @@ void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
 	 * Make sure vdd is actually turned off here.
 	 */
 	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
-	with_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp, wakeref)
 		edp_panel_vdd_off_sync(intel_dp);
 }
 
@@ -6297,7 +6297,7 @@ void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	with_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp, wakeref)
 		wait_panel_power_cycle(intel_dp);
 }
 
@@ -6329,7 +6329,7 @@ void intel_dp_encoder_reset(struct drm_encoder *encoder)
 	    !intel_dp_is_edp(intel_dp))
 		return;
 
-	with_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp, wakeref) {
 		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 			intel_dp->active_pipe = vlv_active_pipe(intel_dp);
 
@@ -7068,7 +7068,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	with_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp, wakeref) {
 		intel_dp_init_panel_power_timestamps(intel_dp);
 		intel_dp_pps_init(intel_dp);
 		intel_edp_panel_vdd_sanitize(intel_dp);
@@ -7145,7 +7145,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	 * vdd might still be enabled do to the delayed vdd off.
 	 * Make sure vdd is actually turned off here.
 	 */
-	with_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp, wakeref)
 		edp_panel_vdd_off_sync(intel_dp);
 
 	return false;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 83bd83b3e3c4..1a05f2c7f690 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -16,7 +16,7 @@ static void
 intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
 					      bool force_disable_vdd);
 
-intel_wakeref_t pps_lock(struct intel_dp *intel_dp)
+intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	intel_wakeref_t wakeref;
@@ -31,7 +31,8 @@ intel_wakeref_t pps_lock(struct intel_dp *intel_dp)
 	return wakeref;
 }
 
-intel_wakeref_t pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
+intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
+				 intel_wakeref_t wakeref)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -630,7 +631,7 @@ void intel_edp_panel_vdd_on(struct intel_dp *intel_dp)
 		return;
 
 	vdd = false;
-	with_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp, wakeref)
 		vdd = edp_panel_vdd_on(intel_dp);
 	I915_STATE_WARN(!vdd, "[ENCODER:%d:%s] VDD already requested on\n",
 			dp_to_dig_port(intel_dp)->base.base.base.id,
@@ -685,7 +686,7 @@ void edp_panel_vdd_work(struct work_struct *__work)
 			     struct intel_dp, panel_vdd_work);
 	intel_wakeref_t wakeref;
 
-	with_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp, wakeref) {
 		if (!intel_dp->want_panel_vdd)
 			edp_panel_vdd_off_sync(intel_dp);
 	}
@@ -786,7 +787,7 @@ void intel_edp_panel_on(struct intel_dp *intel_dp)
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	with_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp, wakeref)
 		edp_panel_on(intel_dp);
 }
 
@@ -838,7 +839,7 @@ void intel_edp_panel_off(struct intel_dp *intel_dp)
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	with_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp, wakeref)
 		edp_panel_off(intel_dp);
 }
 
@@ -856,7 +857,7 @@ void _intel_edp_backlight_on(struct intel_dp *intel_dp)
 	 */
 	wait_backlight_on(intel_dp);
 
-	with_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp, wakeref) {
 		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 		u32 pp;
 
@@ -877,7 +878,7 @@ void _intel_edp_backlight_off(struct intel_dp *intel_dp)
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	with_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp, wakeref) {
 		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 		u32 pp;
 
@@ -904,7 +905,7 @@ void intel_edp_backlight_power(struct intel_connector *connector, bool enable)
 	bool is_enabled;
 
 	is_enabled = false;
-	with_pps_lock(intel_dp, wakeref)
+	with_intel_pps_lock(intel_dp, wakeref)
 		is_enabled = ilk_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
 	if (is_enabled == enable)
 		return;
@@ -1054,7 +1055,7 @@ bool intel_edp_have_power(struct intel_dp *intel_dp)
 	intel_wakeref_t wakeref;
 	bool have_power = false;
 
-	with_pps_lock(intel_dp, wakeref) {
+	with_intel_pps_lock(intel_dp, wakeref) {
 		have_power = edp_have_panel_power(intel_dp) &&
 						  edp_have_panel_vdd(intel_dp);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 76d5cc565501..f44e6ce9e8c1 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -16,11 +16,11 @@ struct intel_crtc_state;
 struct intel_dp;
 struct intel_encoder;
 
-intel_wakeref_t pps_lock(struct intel_dp *intel_dp);
-intel_wakeref_t pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref);
+intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp);
+intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref);
 
-#define with_pps_lock(dp, wf)						\
-	for ((wf) = pps_lock(dp); (wf); (wf) = pps_unlock((dp), (wf)))
+#define with_intel_pps_lock(dp, wf)						\
+	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
 
 void intel_dp_check_edp(struct intel_dp *intel_dp);
 void _intel_edp_backlight_on(struct intel_dp *intel_dp);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
