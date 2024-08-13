Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87716950A7C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 18:41:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2758710E394;
	Tue, 13 Aug 2024 16:41:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l9HnoVBv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5306310E393;
 Tue, 13 Aug 2024 16:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723567303; x=1755103303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T5r0cQvnA7PuqPWBilw3jQOQx1uWbAWWdbgAMq2MHQo=;
 b=l9HnoVBvvwzkp9Xou0ZZoeEWSF3gGI0T/jAO3zZNvRoN7/EVBVPEu5G+
 e4T777sNKY7IsCo8f2jqE57kG6J1d+2EJCK8Uqoz0pbWdLAsZUB/v10H0
 X+YbTJ635RsPOhBMFDIladq16oZJdYhs/TVgTnsQoJ1anlMt+eqX/ci6j
 SyQAgmfXfXDoJy2/cGVDHKYpBmMCYTCWkJpbCUn8fMjo9TUY3qh33RlZK
 jiuLfFDfg7uBnQs9j1kLvYghZH0fgnUv1y2FWHwSESezfVg+bqrOjniBH
 cUqY7FKWgTowzZAGyXn8YHlgSR80qVzYbidzM4tvTokcrWUfLNlUKMsLa Q==;
X-CSE-ConnectionGUID: Xf/2+njxSyqMdDtw5SFYUg==
X-CSE-MsgGUID: LJUIzlfmQUmFeM7FmJuElg==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21714824"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="21714824"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:43 -0700
X-CSE-ConnectionGUID: RAh7TidrSpqPVjSmzT5Buw==
X-CSE-MsgGUID: uyJkJ5aERjK40zkM0uLoVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="58611807"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/7] drm/i915/alpm: convert to struct intel_display
Date: Tue, 13 Aug 2024 19:41:20 +0300
Message-Id: <20240813164123.2674462-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813164123.2674462-1-jani.nikula@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_alpm.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 54 +++++++++++------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index f4f05a859379..82ee778b2efe 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -139,7 +139,7 @@ static int
 _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 				  const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int aux_less_wake_time, aux_less_wake_lines, silence_period,
 		lfps_half_cycle;
 
@@ -158,7 +158,7 @@ _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	    lfps_half_cycle > PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK)
 		return false;
 
-	if (i915->display.params.psr_safest_params)
+	if (display->params.psr_safest_params)
 		aux_less_wake_lines = ALPM_CTL_AUX_LESS_WAKE_TIME_MASK;
 
 	intel_dp->alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
@@ -171,10 +171,10 @@ _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int check_entry_lines;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (DISPLAY_VER(display) < 20)
 		return true;
 
 	/* ALPM Entry Check = 2 + CEILING( 5us /tline ) */
@@ -187,7 +187,7 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	if (!_lnl_compute_aux_less_alpm_params(intel_dp, crtc_state))
 		return false;
 
-	if (i915->display.params.psr_safest_params)
+	if (display->params.psr_safest_params)
 		check_entry_lines = 15;
 
 	intel_dp->alpm_parameters.check_entry_lines = check_entry_lines;
@@ -212,9 +212,9 @@ static int tgl_io_buffer_wake_time(void)
 
 static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		return tgl_io_buffer_wake_time();
 	else
 		return skl_io_buffer_wake_time();
@@ -223,7 +223,7 @@ static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
 	int tfw_exit_latency = 20; /* eDP spec */
 	int phy_wake = 4;	   /* eDP spec */
@@ -236,9 +236,9 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 	fast_wake_time = precharge + preamble + phy_wake +
 		tfw_exit_latency;
 
-	if (DISPLAY_VER(i915) >= 20)
+	if (DISPLAY_VER(display) >= 20)
 		max_wake_lines = 68;
-	else if (DISPLAY_VER(i915) >= 12)
+	else if (DISPLAY_VER(display) >= 12)
 		max_wake_lines = 12;
 	else
 		max_wake_lines = 8;
@@ -255,7 +255,7 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 	if (!_lnl_compute_alpm_params(intel_dp, crtc_state))
 		return false;
 
-	if (i915->display.params.psr_safest_params)
+	if (display->params.psr_safest_params)
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
 	/* According to Bspec lower limit should be set as 7 lines. */
@@ -269,7 +269,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state,
 				    struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int waketime_in_lines, first_sdp_position;
 	int context_latency, guardband;
@@ -277,7 +277,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (DISPLAY_VER(display) < 20)
 		return;
 
 	if (!intel_dp->as_sdp_supported)
@@ -309,13 +309,13 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	u32 alpm_ctl;
 
-	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.sel_update_enabled &&
-					   !intel_dp_is_edp(intel_dp)))
+	if (DISPLAY_VER(display) < 20 ||
+	    (!intel_dp->psr.sel_update_enabled && !intel_dp_is_edp(intel_dp)))
 		return;
 
 	/*
@@ -329,16 +329,16 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
 			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
 
-		intel_de_write(dev_priv,
-			       PORT_ALPM_CTL(dev_priv, port),
+		intel_de_write(display,
+			       PORT_ALPM_CTL(display, port),
 			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
 			       PORT_ALPM_CTL_SILENCE_PERIOD(
 				       intel_dp->alpm_parameters.silence_period_sym_clocks));
 
-		intel_de_write(dev_priv,
-			       PORT_ALPM_LFPS_CTL(dev_priv, port),
+		intel_de_write(display,
+			       PORT_ALPM_LFPS_CTL(display, port),
 			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
 			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
 				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
@@ -356,7 +356,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
 
-	intel_de_write(dev_priv, ALPM_CTL(dev_priv, cpu_transcoder), alpm_ctl);
+	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
 }
 
 void intel_alpm_configure(struct intel_dp *intel_dp,
@@ -368,14 +368,14 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
 	enum transcoder cpu_transcoder;
 	u32 alpm_ctl;
 	int ret;
 
-	ret = drm_modeset_lock_single_interruptible(&dev_priv->drm.mode_config.connection_mutex);
+	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (ret)
 		return ret;
 
@@ -387,14 +387,14 @@ static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
 
 	crtc_state = to_intel_crtc_state(crtc->state);
 	cpu_transcoder = crtc_state->cpu_transcoder;
-	alpm_ctl = intel_de_read(dev_priv, ALPM_CTL(dev_priv, cpu_transcoder));
+	alpm_ctl = intel_de_read(display, ALPM_CTL(display, cpu_transcoder));
 	seq_printf(m, "LOBF status: %s\n", str_enabled_disabled(alpm_ctl & ALPM_CTL_LOBF_ENABLE));
 	seq_printf(m, "Aux-wake alpm status: %s\n",
 		   str_enabled_disabled(!(alpm_ctl & ALPM_CTL_ALPM_AUX_LESS_ENABLE)));
 	seq_printf(m, "Aux-less alpm status: %s\n",
 		   str_enabled_disabled(alpm_ctl & ALPM_CTL_ALPM_AUX_LESS_ENABLE));
 out:
-	drm_modeset_unlock(&dev_priv->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	return ret;
 }
@@ -403,10 +403,10 @@ DEFINE_SHOW_ATTRIBUTE(i915_edp_lobf_info);
 
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct dentry *root = connector->base.debugfs_entry;
 
-	if (DISPLAY_VER(i915) < 20 ||
+	if (DISPLAY_VER(display) < 20 ||
 	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
 		return;
 
-- 
2.39.2

