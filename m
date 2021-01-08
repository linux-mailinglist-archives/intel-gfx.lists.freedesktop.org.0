Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 198F32EF6B0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 274EF6E83C;
	Fri,  8 Jan 2021 17:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 537F46E843
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:44:57 +0000 (UTC)
IronPort-SDR: d54IfxT5qizTYoPBzz4XjnigJRaeCY77qlQEHWa8VGXftgg8RsFiNRdpktcbE1kSqad+BDjB+4
 B71g3+h3JO1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="175050343"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="175050343"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:44:56 -0800
IronPort-SDR: LUESPJWFOlrXmUwOzkCKUGDOKr+Ref/EbAE1I4cQB57Jg34lGaFXkWQRfx4jDKklumZCnKvmOU
 yGXN7pcXm5YA==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="347417452"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:44:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:12 +0200
Message-Id: <b858271bd4d9c4a2ce15a13301d7bd9f7d121eb5.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/17] drm/i915/pps: rename intel_edp_panel_*
 to intel_pps_*
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

Follow the usual naming pattern for functions. We don't need to repeat
"panel" here. No functional changes.

v2: Fix comment (Anshuman)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  8 ++++----
 drivers/gpu/drm/i915/display/intel_dp.c  | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_pps.c | 17 ++++++++---------
 drivers/gpu/drm/i915/display/intel_pps.h | 11 +++++------
 4 files changed, 22 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f09a597bf730..243ab635aa34 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3592,7 +3592,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 */
 
 	/* 2. Enable Panel Power if PPS is required */
-	intel_edp_panel_on(intel_dp);
+	intel_pps_on(intel_dp);
 
 	/*
 	 * 3. For non-TBT Type-C ports, set FIA lane count
@@ -3735,7 +3735,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				 crtc_state->port_clock,
 				 crtc_state->lane_count);
 
-	intel_edp_panel_on(intel_dp);
+	intel_pps_on(intel_dp);
 
 	intel_ddi_clk_select(encoder, crtc_state);
 
@@ -3977,8 +3977,8 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	if (INTEL_GEN(dev_priv) >= 12)
 		intel_ddi_disable_pipe_clock(old_crtc_state);
 
-	intel_edp_panel_vdd_on(intel_dp);
-	intel_edp_panel_off(intel_dp);
+	intel_pps_vdd_on(intel_dp);
+	intel_pps_off(intel_dp);
 
 	if (!intel_phy_is_tc(dev_priv, phy) ||
 	    dig_port->tc_mode != TC_PORT_TBT_ALT)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 421e68bb436f..eac674ad91c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3001,10 +3001,10 @@ static void intel_disable_dp(struct intel_atomic_state *state,
 
 	/* Make sure the panel is off before trying to change the mode. But also
 	 * ensure that we have vdd while we switch off the panel. */
-	intel_edp_panel_vdd_on(intel_dp);
+	intel_pps_vdd_on(intel_dp);
 	intel_edp_backlight_off(old_conn_state);
 	intel_dp_set_power(intel_dp, DP_SET_POWER_D3);
-	intel_edp_panel_off(intel_dp);
+	intel_pps_off(intel_dp);
 	intel_dp->frl.is_trained = false;
 	intel_dp->frl.trained_rate_gbps = 0;
 }
@@ -6339,7 +6339,7 @@ void intel_dp_encoder_reset(struct drm_encoder *encoder)
 			 * something nasty with it.
 			 */
 			intel_dp_pps_init(intel_dp);
-			intel_edp_panel_vdd_sanitize(intel_dp);
+			intel_pps_vdd_sanitize(intel_dp);
 		}
 	}
 }
@@ -6513,7 +6513,7 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 	struct intel_dp *intel_dp = &dig_port->dp;
 
 	if (dig_port->base.type == INTEL_OUTPUT_EDP &&
-	    (long_hpd || !intel_edp_have_power(intel_dp))) {
+	    (long_hpd || !intel_pps_have_power(intel_dp))) {
 		/*
 		 * vdd off can generate a long/short pulse on eDP which
 		 * would require vdd on to handle it, and thus we
@@ -7071,7 +7071,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	with_intel_pps_lock(intel_dp, wakeref) {
 		intel_dp_init_panel_power_timestamps(intel_dp);
 		intel_dp_pps_init(intel_dp);
-		intel_edp_panel_vdd_sanitize(intel_dp);
+		intel_pps_vdd_sanitize(intel_dp);
 	}
 
 	/* Cache DPCD and EDID for edp. */
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 36d8782d8df1..59215cfd7d97 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -558,7 +558,7 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
 /*
  * Must be paired with edp_panel_vdd_off().
  * Must hold pps_mutex around the whole on/off sequence.
- * Can be nested with intel_edp_panel_vdd_{on,off}() calls.
+ * Can be nested with intel_pps_vdd_{on,off}() calls.
  */
 bool edp_panel_vdd_on(struct intel_dp *intel_dp)
 {
@@ -616,13 +616,12 @@ bool edp_panel_vdd_on(struct intel_dp *intel_dp)
 }
 
 /*
- * Must be paired with intel_edp_panel_vdd_off() or
- * intel_edp_panel_off().
+ * Must be paired with intel_pps_off().
  * Nested calls to these functions are not allowed since
  * we drop the lock. Caller must use some higher level
  * locking to prevent nested calls from other threads.
  */
-void intel_edp_panel_vdd_on(struct intel_dp *intel_dp)
+void intel_pps_vdd_on(struct intel_dp *intel_dp)
 {
 	intel_wakeref_t wakeref;
 	bool vdd;
@@ -708,7 +707,7 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
 /*
  * Must be paired with edp_panel_vdd_on().
  * Must hold pps_mutex around the whole on/off sequence.
- * Can be nested with intel_edp_panel_vdd_{on,off}() calls.
+ * Can be nested with intel_pps_vdd_{on,off}() calls.
  */
 void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync)
 {
@@ -780,7 +779,7 @@ void edp_panel_on(struct intel_dp *intel_dp)
 	}
 }
 
-void intel_edp_panel_on(struct intel_dp *intel_dp)
+void intel_pps_on(struct intel_dp *intel_dp)
 {
 	intel_wakeref_t wakeref;
 
@@ -832,7 +831,7 @@ void edp_panel_off(struct intel_dp *intel_dp)
 				fetch_and_zero(&intel_dp->vdd_wakeref));
 }
 
-void intel_edp_panel_off(struct intel_dp *intel_dp)
+void intel_pps_off(struct intel_dp *intel_dp)
 {
 	intel_wakeref_t wakeref;
 
@@ -1025,7 +1024,7 @@ void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
 	intel_dp_init_panel_power_sequencer_registers(intel_dp, true);
 }
 
-void intel_edp_panel_vdd_sanitize(struct intel_dp *intel_dp)
+void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -1050,7 +1049,7 @@ void intel_edp_panel_vdd_sanitize(struct intel_dp *intel_dp)
 	edp_panel_vdd_schedule_off(intel_dp);
 }
 
-bool intel_edp_have_power(struct intel_dp *intel_dp)
+bool intel_pps_have_power(struct intel_dp *intel_dp)
 {
 	intel_wakeref_t wakeref;
 	bool have_power = false;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 81e4e9fc3cf5..69f670678d0e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -34,12 +34,11 @@ void edp_panel_on(struct intel_dp *intel_dp);
 void edp_panel_off(struct intel_dp *intel_dp);
 void edp_panel_vdd_work(struct work_struct *__work);
 
-void intel_edp_panel_vdd_on(struct intel_dp *intel_dp);
-void intel_edp_panel_on(struct intel_dp *intel_dp);
-void intel_edp_panel_off(struct intel_dp *intel_dp);
-bool intel_edp_have_power(struct intel_dp *intel_dp);
-
-void intel_edp_panel_vdd_sanitize(struct intel_dp *intel_dp);
+void intel_pps_vdd_sanitize(struct intel_dp *intel_dp);
+void intel_pps_vdd_on(struct intel_dp *intel_dp);
+void intel_pps_on(struct intel_dp *intel_dp);
+void intel_pps_off(struct intel_dp *intel_dp);
+bool intel_pps_have_power(struct intel_dp *intel_dp);
 
 void wait_panel_power_cycle(struct intel_dp *intel_dp);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
