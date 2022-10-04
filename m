Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFDE5F45C6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 16:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6DF210E5E9;
	Tue,  4 Oct 2022 14:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC1210E03C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 14:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664894448; x=1696430448;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1A0Hm6xNPGmoUOBiGjkxko9tOFEU1eQ3MDW80CNVTsY=;
 b=j2kMRXjPMWYOZ4WWOgOm0sdTGVsBYbAf03A1Va97LDAILNBOqhN3BtHx
 Lv8nLfZRPAG9sJZ0WoFj0CFZux92MgxMAXVQGGOK/jFFdJSFBSL+lHS8/
 eRTtjZwmSt/1NwBiuV0sx6Qe3f9a+y6qaz/gOHihzH9ymT9EZffISpJzQ
 W7vi51BTl1YHLjOkNs8qfnPMnoku6rH7qtrSgfXUXtwz8kpqYD4sNwaXl
 2htT8P4vO+rGlBbDA+GwFS37wTHiYMMy/Ev9qRnZRPc7OMPOh1OBc6Iy4
 urTjaZR1G8UkheMEuZz9UD5o13qcW8Hb8wBLIaFjs4bpR+Z/lIZ6vEFV/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="282637846"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="282637846"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 07:40:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="869023210"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="869023210"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga006.fm.intel.com with SMTP; 04 Oct 2022 07:40:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Oct 2022 17:40:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 17:40:14 +0300
Message-Id: <20221004144014.6199-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221004144014.6199-1-ville.syrjala@linux.intel.com>
References: <20221004144014.6199-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Try to use the correct power
 sequencer initially on bxt/glk
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
the power sequencers and pick the most likely looking candidate.
This should be sufficient for single panel cases.

For the dual panel cases we probably need to go back to
parsing the VBT before the panel probe (and hope that
panel_type=0xff is never a thing in those cases). To that
end the code always prefers the VBT panel sequencer, if
available.

TODO: Deal with all the modern platforms too
      Maybe add checks to make sure the same power
      sequencer doesn't get assigned to multiple ports?

Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    |  3 +
 .../drm/i915/display/intel_display_types.h    |  8 +-
 drivers/gpu/drm/i915/display/intel_pps.c      | 78 +++++++++++++++++--
 3 files changed, 82 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 6205ddd3ded0..e8e56bc7bfa2 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -56,6 +56,9 @@ int intel_connector_init(struct intel_connector *connector)
 
 	INIT_LIST_HEAD(&connector->panel.fixed_modes);
 
+	/* FIXME not the best place */
+	connector->panel.vbt.backlight.controller = -1;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2b853e9e51d..b3a88143a2cb 100644
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
 
@@ -1567,9 +1567,13 @@ struct intel_pps {
 	enum pipe active_pipe;
 	/*
 	 * Set if the sequencer may be reset due to a power transition,
-	 * requiring a reinitialization. Only relevant on BXT.
+	 * requiring a reinitialization. Only relevant on BXT+.
 	 */
 	bool pps_reset;
+	/*
+	 * Power sequencer index. Only relevant on BXT+.
+	 */
+	s8 pps_idx;
 	struct edp_power_seq pps_delays;
 	struct edp_power_seq bios_pps_delays;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 66f1c867ba8a..3fce190ad198 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -210,8 +210,7 @@ static int
 bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_connector *connector = intel_dp->attached_connector;
-	int backlight_controller = connector->panel.vbt.backlight.controller;
+	int pps_idx = intel_dp->pps.pps_idx;
 
 	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
@@ -219,7 +218,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
 
 	if (!intel_dp->pps.pps_reset)
-		return backlight_controller;
+		return pps_idx;
 
 	intel_dp->pps.pps_reset = false;
 
@@ -229,7 +228,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	 */
 	pps_init_registers(intel_dp, false);
 
-	return backlight_controller;
+	return pps_idx;
 }
 
 typedef bool (*pps_check)(struct drm_i915_private *dev_priv, int pps_idx);
@@ -309,6 +308,54 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
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
+};
+
+static void
+bxt_initial_power_sequencer_setup(struct intel_dp *intel_dp)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	lockdep_assert_held(&i915->display.pps.mutex);
+
+	/* first ask the VBT */
+	intel_dp->pps.pps_idx = connector->panel.vbt.backlight.controller;
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
@@ -1430,7 +1477,9 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	pps_init_timestamps(intel_dp);
 
 	with_intel_pps_lock(intel_dp, wakeref) {
-		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+			bxt_initial_power_sequencer_setup(intel_dp);
+		else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 			vlv_initial_power_sequencer_setup(intel_dp);
 
 		pps_init_delays(intel_dp);
@@ -1439,12 +1488,31 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	}
 }
 
+static void bxt_pps_init_late(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_connector *connector = intel_dp->attached_connector;
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
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	intel_wakeref_t wakeref;
 
 	with_intel_pps_lock(intel_dp, wakeref) {
 		/* Reinit delays after per-panel info has been parsed from VBT */
+		if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+			bxt_pps_init_late(intel_dp);
 		memset(&intel_dp->pps.pps_delays, 0, sizeof(intel_dp->pps.pps_delays));
 		pps_init_delays(intel_dp);
 		pps_init_registers(intel_dp, false);
-- 
2.35.1

