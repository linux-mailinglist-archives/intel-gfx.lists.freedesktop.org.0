Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA222E0C0C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 15:51:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A226E406;
	Tue, 22 Dec 2020 14:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F4AF6E400
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 14:51:44 +0000 (UTC)
IronPort-SDR: UgLCEcz5bxrgTZgv11vJL/a2JnhkLFo6GturcUL2XKMdftbVIuQQ+oUAAgobvjubCTWUM8YKlx
 wtVdDUfZhscA==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="162931304"
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="162931304"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:51:44 -0800
IronPort-SDR: nzNalEPKcGnUZIaOBGGKp9pRDop+36itSznpJmXpMChB2qazZ7Eg2ff9CzG24e08RAjBk9K1Uu
 bSUyoFJ43hhQ==
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="344236651"
Received: from sauterhx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.229])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 16:49:45 +0200
Message-Id: <4fc39e47c1f66a8cfc4a4bb6b8f15b9156cad05f.1608648128.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1608648128.git.jani.nikula@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/pps: rename edp_panel_* to
 intel_pps_*_unlocked
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

Follow the usual naming pattern for functions, both for the prefix and
the _unlocked suffix for functions that expect the lock to be held when
calling.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 16 +++++++--------
 drivers/gpu/drm/i915/display/intel_pps.c | 26 ++++++++++++------------
 drivers/gpu/drm/i915/display/intel_pps.h | 10 ++++-----
 3 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2052ee228077..f2794cc4292a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1038,7 +1038,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
 	 * ourselves.
 	 */
-	vdd = edp_panel_vdd_on(intel_dp);
+	vdd = intel_pps_vdd_on_unlocked(intel_dp);
 
 	/* dp aux is extremely sensitive to irq latency, hence request the
 	 * lowest possible wakeup latency and so prevent the cpu from going into
@@ -1180,7 +1180,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	cpu_latency_qos_update_request(&i915->pm_qos, PM_QOS_DEFAULT_VALUE);
 
 	if (vdd)
-		edp_panel_vdd_off(intel_dp, false);
+		intel_pps_vdd_off_unlocked(intel_dp, false);
 
 	intel_pps_unlock(intel_dp, pps_wakeref);
 	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
@@ -3159,9 +3159,9 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 
 		intel_dp_enable_port(intel_dp, pipe_config);
 
-		edp_panel_vdd_on(intel_dp);
-		edp_panel_on(intel_dp);
-		edp_panel_vdd_off(intel_dp, true);
+		intel_pps_vdd_on_unlocked(intel_dp);
+		intel_pps_on_unlocked(intel_dp);
+		intel_pps_vdd_off_unlocked(intel_dp, true);
 	}
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
@@ -5818,7 +5818,7 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
 		 * Make sure vdd is actually turned off here.
 		 */
 		with_intel_pps_lock(intel_dp, wakeref)
-			edp_panel_vdd_off_sync(intel_dp);
+			intel_pps_vdd_off_sync_unlocked(intel_dp);
 	}
 
 	intel_dp_aux_fini(intel_dp);
@@ -5846,7 +5846,7 @@ void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
 	 */
 	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
 	with_intel_pps_lock(intel_dp, wakeref)
-		edp_panel_vdd_off_sync(intel_dp);
+		intel_pps_vdd_off_sync_unlocked(intel_dp);
 }
 
 void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
@@ -6706,7 +6706,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	 * Make sure vdd is actually turned off here.
 	 */
 	with_intel_pps_lock(intel_dp, wakeref)
-		edp_panel_vdd_off_sync(intel_dp);
+		intel_pps_vdd_off_sync_unlocked(intel_dp);
 
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 1f8ea3c41440..01c9e69f4e3a 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -559,11 +559,11 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
 }
 
 /*
- * Must be paired with edp_panel_vdd_off().
+ * Must be paired with intel_pps_vdd_off_unlocked().
  * Must hold pps_mutex around the whole on/off sequence.
  * Can be nested with intel_pps_vdd_{on,off}() calls.
  */
-bool edp_panel_vdd_on(struct intel_dp *intel_dp)
+bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -635,13 +635,13 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
 
 	vdd = false;
 	with_intel_pps_lock(intel_dp, wakeref)
-		vdd = edp_panel_vdd_on(intel_dp);
+		vdd = intel_pps_vdd_on_unlocked(intel_dp);
 	I915_STATE_WARN(!vdd, "[ENCODER:%d:%s] VDD already requested on\n",
 			dp_to_dig_port(intel_dp)->base.base.base.id,
 			dp_to_dig_port(intel_dp)->base.base.name);
 }
 
-void edp_panel_vdd_off_sync(struct intel_dp *intel_dp)
+void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port =
@@ -691,7 +691,7 @@ void edp_panel_vdd_work(struct work_struct *__work)
 
 	with_intel_pps_lock(intel_dp, wakeref) {
 		if (!intel_dp->want_panel_vdd)
-			edp_panel_vdd_off_sync(intel_dp);
+			intel_pps_vdd_off_sync_unlocked(intel_dp);
 	}
 }
 
@@ -713,7 +713,7 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
  * Must hold pps_mutex around the whole on/off sequence.
  * Can be nested with intel_pps_vdd_{on,off}() calls.
  */
-void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync)
+void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -729,12 +729,12 @@ void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync)
 	intel_dp->want_panel_vdd = false;
 
 	if (sync)
-		edp_panel_vdd_off_sync(intel_dp);
+		intel_pps_vdd_off_sync_unlocked(intel_dp);
 	else
 		edp_panel_vdd_schedule_off(intel_dp);
 }
 
-void edp_panel_on(struct intel_dp *intel_dp)
+void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 pp;
@@ -791,10 +791,10 @@ void intel_pps_on(struct intel_dp *intel_dp)
 		return;
 
 	with_intel_pps_lock(intel_dp, wakeref)
-		edp_panel_on(intel_dp);
+		intel_pps_on_unlocked(intel_dp);
 }
 
-void edp_panel_off(struct intel_dp *intel_dp)
+void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -843,7 +843,7 @@ void intel_pps_off(struct intel_dp *intel_dp)
 		return;
 
 	with_intel_pps_lock(intel_dp, wakeref)
-		edp_panel_off(intel_dp);
+		intel_pps_off_unlocked(intel_dp);
 }
 
 /* Enable backlight in the panel power control. */
@@ -934,7 +934,7 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 	if (drm_WARN_ON(&dev_priv->drm, pipe != PIPE_A && pipe != PIPE_B))
 		return;
 
-	edp_panel_vdd_off_sync(intel_dp);
+	intel_pps_vdd_off_sync_unlocked(intel_dp);
 
 	/*
 	 * VLV seems to get confused when multiple power sequencers
@@ -1249,7 +1249,7 @@ intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
 	 * hooked up to any port. This would mess up the
 	 * power domain tracking the first time we pick
 	 * one of these power sequencers for use since
-	 * edp_panel_vdd_on() would notice that the VDD was
+	 * intel_pps_vdd_on_unlocked() would notice that the VDD was
 	 * already on and therefore wouldn't grab the power
 	 * domain reference. Disable VDD first to avoid this.
 	 * This also avoids spuriously turning the VDD on as
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 69f670678d0e..e7f0473be9a7 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -27,11 +27,11 @@ void intel_pps_backlight_on(struct intel_dp *intel_dp);
 void intel_pps_backlight_off(struct intel_dp *intel_dp);
 void intel_pps_backlight_power(struct intel_connector *connector, bool enable);
 
-bool edp_panel_vdd_on(struct intel_dp *intel_dp);
-void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync);
-void edp_panel_vdd_off_sync(struct intel_dp *intel_dp);
-void edp_panel_on(struct intel_dp *intel_dp);
-void edp_panel_off(struct intel_dp *intel_dp);
+bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
+void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
+void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp);
+void intel_pps_on_unlocked(struct intel_dp *intel_dp);
+void intel_pps_off_unlocked(struct intel_dp *intel_dp);
 void edp_panel_vdd_work(struct work_struct *__work);
 
 void intel_pps_vdd_sanitize(struct intel_dp *intel_dp);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
