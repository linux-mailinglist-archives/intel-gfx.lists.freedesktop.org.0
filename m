Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D03FE2EF6B6
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D4C06E857;
	Fri,  8 Jan 2021 17:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0A056E85B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:45:18 +0000 (UTC)
IronPort-SDR: JuWdW+sAbWWkEf2BDkMr7nSdbaP/5nYaXmMkcI1DWH/Xm5w9UC0uKfX+6ka1Ppq1H/fAaM7CWT
 ETYiUVe6+weg==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="164709029"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="164709029"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:16 -0800
IronPort-SDR: Uf7Tyt9km9hKh1gvVx/yiDgJ2x8e35H6HL7LBYi5RMHDyNSjmhFTvFcd6vJVSJ/j0KPJfQFOSs
 26XbU3zm762w==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="403414701"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:16 +0200
Message-Id: <84a50f2700b19c6719cd3e1e931c64f1e2027551.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/17] drm/i915/pps: abstract
 intel_pps_encoder_reset()
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

Add an "encoder reset" call to hide some more pps functions, and clean
up the callers. A minor functional change is not holding the pps lock
across the whole operation in intel_dp_encoder_reset, but instead doing
it in two steps.

v2: rename intel_pps_reinit to intel_pps_encoder_reset for clarity

Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 20 +++++---------------
 drivers/gpu/drm/i915/display/intel_pps.c | 21 +++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_pps.h |  3 +--
 3 files changed, 25 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 31c5474f85d6..cfaadeaf9f00 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6299,30 +6299,20 @@ void intel_dp_encoder_reset(struct drm_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
-	intel_wakeref_t wakeref;
 
 	if (!HAS_DDI(dev_priv))
 		intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
 
 	intel_dp->reset_link_params = true;
 
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
-	    !intel_dp_is_edp(intel_dp))
-		return;
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+		intel_wakeref_t wakeref;
 
-	with_intel_pps_lock(intel_dp, wakeref) {
-		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		with_intel_pps_lock(intel_dp, wakeref)
 			intel_dp->active_pipe = vlv_active_pipe(intel_dp);
-
-		if (intel_dp_is_edp(intel_dp)) {
-			/*
-			 * Reinit the power sequencer, in case BIOS did
-			 * something nasty with it.
-			 */
-			intel_dp_pps_init(intel_dp);
-			intel_pps_vdd_sanitize(intel_dp);
-		}
 	}
+
+	intel_pps_encoder_reset(intel_dp);
 }
 
 static int intel_modeset_tile_group(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 799190fafa4f..3b962be4f4c0 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1040,7 +1040,7 @@ void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
 	intel_dp_init_panel_power_sequencer_registers(intel_dp, true);
 }
 
-void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
+static void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -1337,7 +1337,7 @@ intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
 		    (intel_de_read(dev_priv, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
 }
 
-void intel_dp_pps_init(struct intel_dp *intel_dp)
+static void intel_dp_pps_init(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -1349,6 +1349,23 @@ void intel_dp_pps_init(struct intel_dp *intel_dp)
 	}
 }
 
+void intel_pps_encoder_reset(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+
+	if (!intel_dp_is_edp(intel_dp))
+		return;
+
+	with_intel_pps_lock(intel_dp, wakeref) {
+		/*
+		 * Reinit the power sequencer, in case BIOS did something nasty
+		 * with it.
+		 */
+		intel_dp_pps_init(intel_dp);
+		intel_pps_vdd_sanitize(intel_dp);
+	}
+}
+
 void intel_pps_init(struct intel_dp *intel_dp)
 {
 	intel_wakeref_t wakeref;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 53c0fafd1440..7c3b5ea4f47b 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -32,7 +32,6 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
 void intel_pps_on_unlocked(struct intel_dp *intel_dp);
 void intel_pps_off_unlocked(struct intel_dp *intel_dp);
 
-void intel_pps_vdd_sanitize(struct intel_dp *intel_dp);
 void intel_pps_vdd_on(struct intel_dp *intel_dp);
 void intel_pps_on(struct intel_dp *intel_dp);
 void intel_pps_off(struct intel_dp *intel_dp);
@@ -42,7 +41,7 @@ bool intel_pps_have_power(struct intel_dp *intel_dp);
 void wait_panel_power_cycle(struct intel_dp *intel_dp);
 
 void intel_pps_init(struct intel_dp *intel_dp);
-void intel_dp_pps_init(struct intel_dp *intel_dp);
+void intel_pps_encoder_reset(struct intel_dp *intel_dp);
 void intel_power_sequencer_reset(struct drm_i915_private *i915);
 
 void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
