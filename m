Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C67E4638F1B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 18:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B537610E776;
	Fri, 25 Nov 2022 17:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26C9510E778
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Nov 2022 17:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669397532; x=1700933532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UKAfzq1i8t8l1pa6PlSX/jRDHTvprEUaBxD3Prdot6A=;
 b=nKOy13PyhkeMZ/vU60/KPuwohNGWbvOgkRwK/NahtgEjxrGefqSbhLkC
 GSsfp7CzItf0CohdZLgrLXw/QbAjZT6oX8ebSmnZnYqfOsBCmRPnCWgq9
 drIMgxfQdlAqjjP0EETAufD9d1rH+Zls31OrlHB3c3295RuaZAwilPWhA
 FYXa/wMN3CPd8fpl07ded+c5ABZ5qsH7P/czcNf/Tba586OHZ1hGpMWbL
 MKp0xnnUWJ0xZbsQ3wfUrrLAXOVUWINL50ilLdDuDRmPT1ZmuJMsgMeJn
 YwppWNwxAE5R28ilEBghq6nULe3BTuiGBp0gK5GQG5M4oy1NToJxDPCBX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="315674638"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="315674638"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 09:32:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="706124326"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="706124326"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 25 Nov 2022 09:32:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Nov 2022 19:32:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Nov 2022 19:31:51 +0200
Message-Id: <20221125173156.31689-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
References: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915: Try to use the correct power
 sequencer intiially on bxt/glk
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently on bxt/glk we just grab the power sequencer index from
the VBT data even though it may not have been parsed yet. That
could lead us to using the incorrect power sequencer during the
initial panel probe.

To avoid that let's try to read out the current state of the
power sequencer from the hardware. Unfortunately the power
sequencer no longer has anything in its registers to associate
it with the port, so the best we can do is just iterate through
the power sequencers and pick the first one. This should be
sufficient for single panel cases.

For the dual panel cases we probably need to go back to
parsing the VBT before the panel probe (and hope that
panel_type=0xff is never a thing in those cases). To that
end the code always prefers the VBT panel sequencer, if
available.

v2: Restructure a bit for upcoming icp+ dual PPS support

Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 22 +++--
 drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c      | 96 +++++++++++++++++--
 3 files changed, 102 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index cc64e787e401..32e8b2fc3cc6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -330,7 +330,7 @@ struct intel_vbt_panel_data {
 		bool present;
 		bool active_low_pwm;
 		u8 min_brightness;	/* min_brightness/255 of max */
-		u8 controller;		/* brightness controller number */
+		s8 controller;		/* brightness controller number */
 		enum intel_backlight_type type;
 	} backlight;
 
@@ -1570,11 +1570,19 @@ struct intel_pps {
 	ktime_t panel_power_off_time;
 	intel_wakeref_t vdd_wakeref;
 
-	/*
-	 * Pipe whose power sequencer is currently locked into
-	 * this port. Only relevant on VLV/CHV.
-	 */
-	enum pipe pps_pipe;
+	union {
+		/*
+		 * Pipe whose power sequencer is currently locked into
+		 * this port. Only relevant on VLV/CHV.
+		 */
+		enum pipe pps_pipe;
+
+		/*
+		 * Power sequencer index. Only relevant on BXT+.
+		 */
+		int pps_idx;
+	};
+
 	/*
 	 * Pipe currently driving the port. Used for preventing
 	 * the use of the PPS for any pipe currentrly driving
@@ -1583,7 +1591,7 @@ struct intel_pps {
 	enum pipe active_pipe;
 	/*
 	 * Set if the sequencer may be reset due to a power transition,
-	 * requiring a reinitialization. Only relevant on BXT.
+	 * requiring a reinitialization. Only relevant on BXT+.
 	 */
 	bool pps_reset;
 	struct edp_power_seq pps_delays;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 609fcdbd7d58..3b1004b019a8 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -666,6 +666,7 @@ void intel_panel_init_alloc(struct intel_connector *connector)
 	struct intel_panel *panel = &connector->panel;
 
 	connector->panel.vbt.panel_type = -1;
+	connector->panel.vbt.backlight.controller = -1;
 	INIT_LIST_HEAD(&panel->fixed_modes);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 41ab12fcce0e..d8d2f22f3e0c 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -212,8 +212,7 @@ static int
 bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_connector *connector = intel_dp->attached_connector;
-	int backlight_controller = connector->panel.vbt.backlight.controller;
+	int pps_idx = intel_dp->pps.pps_idx;
 
 	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
@@ -221,7 +220,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
 
 	if (!intel_dp->pps.pps_reset)
-		return backlight_controller;
+		return pps_idx;
 
 	intel_dp->pps.pps_reset = false;
 
@@ -231,7 +230,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	 */
 	pps_init_registers(intel_dp, false);
 
-	return backlight_controller;
+	return pps_idx;
 }
 
 typedef bool (*pps_check)(struct drm_i915_private *dev_priv, int pps_idx);
@@ -311,6 +310,64 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 		    pipe_name(intel_dp->pps.pps_pipe));
 }
 
+static int
+bxt_initial_pps_idx(struct drm_i915_private *i915, pps_check check)
+{
+	int pps_idx, pps_num = 2;
+
+	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
+		if (check(i915, pps_idx))
+			return pps_idx;
+	}
+
+	return -1;
+}
+
+static void
+pps_initial_setup(struct intel_dp *intel_dp)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	lockdep_assert_held(&i915->display.pps.mutex);
+
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		vlv_initial_power_sequencer_setup(intel_dp);
+		return;
+	}
+
+	if (!IS_GEMINILAKE(i915) && !IS_BROXTON(i915))
+		return;
+
+	/* first ask the VBT */
+	intel_dp->pps.pps_idx = connector->panel.vbt.backlight.controller;
+	if (drm_WARN_ON(&i915->drm, intel_dp->pps.pps_idx >= 2))
+		intel_dp->pps.pps_idx = -1;
+
+	/* VBT wasn't parsed yet? pick one where the panel is on */
+	if (intel_dp->pps.pps_idx < 0)
+		intel_dp->pps.pps_idx = bxt_initial_pps_idx(i915, pps_has_pp_on);
+	/* didn't find one? pick one where vdd is on */
+	if (intel_dp->pps.pps_idx < 0)
+		intel_dp->pps.pps_idx = bxt_initial_pps_idx(i915, pps_has_vdd_on);
+	/* didn't find one? pick any */
+	if (intel_dp->pps.pps_idx < 0) {
+		intel_dp->pps.pps_idx = bxt_initial_pps_idx(i915, pps_any);
+
+		drm_dbg_kms(&i915->drm,
+			    "[ENCODER:%d:%s] no initial power sequencer, assuming %d\n",
+			    encoder->base.base.id, encoder->base.name,
+			    intel_dp->pps.pps_idx);
+		return;
+	}
+
+	drm_dbg_kms(&i915->drm,
+		    "[ENCODER:%d:%s] initial power sequencer: %d\n",
+		    encoder->base.base.id, encoder->base.name,
+		    intel_dp->pps.pps_idx);
+}
+
 void intel_pps_reset_all(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
@@ -363,10 +420,10 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 
 	memset(regs, 0, sizeof(*regs));
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		pps_idx = bxt_power_sequencer_idx(intel_dp);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		pps_idx = vlv_power_sequencer_pipe(intel_dp);
+	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+		pps_idx = bxt_power_sequencer_idx(intel_dp);
 
 	regs->pp_ctrl = PP_CONTROL(pps_idx);
 	regs->pp_stat = PP_STATUS(pps_idx);
@@ -1429,7 +1486,6 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 
 void intel_pps_init(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	intel_wakeref_t wakeref;
 
 	intel_dp->pps.initializing = true;
@@ -1438,8 +1494,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	pps_init_timestamps(intel_dp);
 
 	with_intel_pps_lock(intel_dp, wakeref) {
-		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
-			vlv_initial_power_sequencer_setup(intel_dp);
+		pps_initial_setup(intel_dp);
 
 		pps_init_delays(intel_dp);
 		pps_init_registers(intel_dp, false);
@@ -1447,12 +1502,33 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	}
 }
 
+static void pps_init_late(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_connector *connector = intel_dp->attached_connector;
+
+	if (!IS_GEMINILAKE(i915) && !IS_BROXTON(i915))
+		return;
+
+	drm_WARN(&i915->drm, connector->panel.vbt.backlight.controller >= 0 &&
+		 intel_dp->pps.pps_idx != connector->panel.vbt.backlight.controller,
+		 "[ENCODER:%d:%s] power sequencer mismatch: %d (initial) vs. %d (VBT)\n",
+		 encoder->base.base.id, encoder->base.name,
+		 intel_dp->pps.pps_idx, connector->panel.vbt.backlight.controller);
+
+	if (connector->panel.vbt.backlight.controller >= 0)
+		intel_dp->pps.pps_idx = connector->panel.vbt.backlight.controller;
+}
+
 void intel_pps_init_late(struct intel_dp *intel_dp)
 {
 	intel_wakeref_t wakeref;
 
 	with_intel_pps_lock(intel_dp, wakeref) {
 		/* Reinit delays after per-panel info has been parsed from VBT */
+		pps_init_late(intel_dp);
+
 		memset(&intel_dp->pps.pps_delays, 0, sizeof(intel_dp->pps.pps_delays));
 		pps_init_delays(intel_dp);
 		pps_init_registers(intel_dp, false);
-- 
2.37.4

