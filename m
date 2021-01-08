Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C0A2EF6BE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF8F86E860;
	Fri,  8 Jan 2021 17:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 645B96E860
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:45:47 +0000 (UTC)
IronPort-SDR: 4u2e2TUXQr7OElNbizzFsYpPnzJYAXvMErao/Przg0lvTuLthyVtqTa3XOYnJ0OJ1KLyECwBMc
 45Yioqiivvug==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="177727550"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="177727550"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:47 -0800
IronPort-SDR: spTkB+Qh4tV2O8g+DhbpUFQHRf9TCyWfYUXScYvgHH7wu+PStvSHBW0Q3SiPOzjIlVG/cnR19s
 miFfLNGKiTeg==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="388247023"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:21 +0200
Message-Id: <15260c28060f3f90276ab395da4d3999ccdb641f.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/17] drm/i915/pps: rename
 intel_dp_init_panel_power_sequencer* functions
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

There are a number of functions that "init" pps in various ways. Try to
find some more consistency in the naming.

Rename:
 - intel_dp_init_panel_power_sequencer -> pps_init_delays
 - intel_dp_init_panel_power_sequencer_registers -> pps_init_registers
 - intel_dp_init_panel_power_timestamps -> pps_init_timestamps

as this is what the functions do. Skip the intel_ prefix here to
emphasize these are static and not exported.

No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 37 ++++++++++--------------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 8925df55e22e..58eff6289d12 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -10,11 +10,9 @@
 
 static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 				      enum pipe pipe);
-static void
-intel_dp_init_panel_power_sequencer(struct intel_dp *intel_dp);
-static void
-intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
-					      bool force_disable_vdd);
+
+static void pps_init_delays(struct intel_dp *intel_dp);
+static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd);
 
 intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 {
@@ -190,8 +188,8 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 		    dig_port->base.base.name);
 
 	/* init power sequencer on this pipe and port */
-	intel_dp_init_panel_power_sequencer(intel_dp);
-	intel_dp_init_panel_power_sequencer_registers(intel_dp, true);
+	pps_init_delays(intel_dp);
+	pps_init_registers(intel_dp, true);
 
 	/*
 	 * Even vdd force doesn't work until we've made
@@ -222,7 +220,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	 * Only the HW needs to be reprogrammed, the SW state is fixed and
 	 * has been setup during connector init.
 	 */
-	intel_dp_init_panel_power_sequencer_registers(intel_dp, false);
+	pps_init_registers(intel_dp, false);
 
 	return backlight_controller;
 }
@@ -308,8 +306,8 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 		    dig_port->base.base.name,
 		    pipe_name(intel_dp->pps_pipe));
 
-	intel_dp_init_panel_power_sequencer(intel_dp);
-	intel_dp_init_panel_power_sequencer_registers(intel_dp, false);
+	pps_init_delays(intel_dp);
+	pps_init_registers(intel_dp, false);
 }
 
 void intel_pps_reset_all(struct drm_i915_private *dev_priv)
@@ -1046,8 +1044,8 @@ void vlv_pps_init(struct intel_encoder *encoder,
 		    encoder->base.name);
 
 	/* init power sequencer on this pipe and port */
-	intel_dp_init_panel_power_sequencer(intel_dp);
-	intel_dp_init_panel_power_sequencer_registers(intel_dp, true);
+	pps_init_delays(intel_dp);
+	pps_init_registers(intel_dp, true);
 }
 
 static void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
@@ -1088,7 +1086,7 @@ bool intel_pps_have_power(struct intel_dp *intel_dp)
 	return have_power;
 }
 
-static void intel_dp_init_panel_power_timestamps(struct intel_dp *intel_dp)
+static void pps_init_timestamps(struct intel_dp *intel_dp)
 {
 	intel_dp->panel_power_off_time = ktime_get_boottime();
 	intel_dp->last_power_on = jiffies;
@@ -1154,8 +1152,7 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
 	}
 }
 
-static void
-intel_dp_init_panel_power_sequencer(struct intel_dp *intel_dp)
+static void pps_init_delays(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct edp_power_seq cur, vbt, spec,
@@ -1250,9 +1247,7 @@ intel_dp_init_panel_power_sequencer(struct intel_dp *intel_dp)
 	final->t11_t12 = roundup(final->t11_t12, 100 * 10);
 }
 
-static void
-intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
-					      bool force_disable_vdd)
+static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 pp_on, pp_off, port_sel = 0;
@@ -1354,8 +1349,8 @@ static void intel_dp_pps_init(struct intel_dp *intel_dp)
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		vlv_initial_power_sequencer_setup(intel_dp);
 	} else {
-		intel_dp_init_panel_power_sequencer(intel_dp);
-		intel_dp_init_panel_power_sequencer_registers(intel_dp, false);
+		pps_init_delays(intel_dp);
+		pps_init_registers(intel_dp, false);
 	}
 }
 
@@ -1383,7 +1378,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work, edp_panel_vdd_work);
 
 	with_intel_pps_lock(intel_dp, wakeref) {
-		intel_dp_init_panel_power_timestamps(intel_dp);
+		pps_init_timestamps(intel_dp);
 		intel_dp_pps_init(intel_dp);
 		intel_pps_vdd_sanitize(intel_dp);
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
