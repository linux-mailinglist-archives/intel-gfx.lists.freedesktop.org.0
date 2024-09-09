Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 417B6971914
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D826910E45C;
	Mon,  9 Sep 2024 12:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kTyYKD0T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25DF110E43B;
 Mon,  9 Sep 2024 12:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884154; x=1757420154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ClgQJfzl3yLMLkQrsigw8ItmuKT+BDCOaJkCpEEN+Ec=;
 b=kTyYKD0TGSHr8UKxbVyEZEzi9sj9zZCKXVq6l+ZepDrgzfDMS64v3Bwz
 XOFyhpPyCvx2UW1KW09WIwg1dCptE6Rjv4HB6V83R5ucciKv2jk2OD9hP
 YupttviSx5NM32+G2NYmLyq32/kG98FpuVTOqfmn7DKqvxBkIzd0I+OaJ
 +DyJl6bJca9b7CA0v/tBfrPU5Eg6KjPz5zM0amTs07muIAfU5LltM6S9z
 l0odNT5wyQHQsvxhYtH+GeWDYCf6m8hJuc4erNCHrfq8NYVsgzd0usUGp
 niraKyFSSkvMpV0YHlzCN/JehKjJTYjHab0S8uRqyd0FSkw00FjbM3TAQ A==;
X-CSE-ConnectionGUID: Uc0q1WZISp6ChvqX+L0CXA==
X-CSE-MsgGUID: o2TSs/JiSV62jj2obHz3Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="27500866"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="27500866"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:15:54 -0700
X-CSE-ConnectionGUID: kK4JdOUFQ1CWZSqioBemrQ==
X-CSE-MsgGUID: Ra+M1J5qR/WFL9wUIG8oAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="67383643"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:15:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 1/8] drm/i915/pps: add vlv_ prefix to pps_pipe and
 active_pipe members
Date: Mon,  9 Sep 2024 15:15:36 +0300
Message-Id: <b7a5ae9a5245013f318e682b313ef4a8ae8e623d.1725883885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725883885.git.jani.nikula@intel.com>
References: <cover.1725883885.git.jani.nikula@intel.com>
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

The pps_pipe and active_pipe members of struct intel_pps are only
relevant on VLV/CHV. Prefix them with vlv_.

Note that there are still a few cases where they're accessed on
non-VLV/CHV paths. We'll fix them separately.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  4 +-
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  8 +-
 drivers/gpu/drm/i915/display/intel_pps.c      | 82 +++++++++----------
 4 files changed, 49 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 526c8c4d7b53..1699fbbb56c9 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -481,7 +481,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
 		intel_wakeref_t wakeref;
 
 		with_intel_pps_lock(intel_dp, wakeref)
-			intel_dp->pps.active_pipe = INVALID_PIPE;
+			intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
 	}
 }
 
@@ -1277,7 +1277,7 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
 		intel_wakeref_t wakeref;
 
 		with_intel_pps_lock(intel_dp, wakeref)
-			intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
+			intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
 	}
 
 	intel_pps_encoder_reset(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 733de5edcfdb..49d1699b26e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1539,7 +1539,7 @@ struct intel_pps {
 		 * Pipe whose power sequencer is currently locked into
 		 * this port. Only relevant on VLV/CHV.
 		 */
-		enum pipe pps_pipe;
+		enum pipe vlv_pps_pipe;
 
 		/*
 		 * Power sequencer index. Only relevant on BXT+.
@@ -1552,7 +1552,7 @@ struct intel_pps {
 	 * the use of the PPS for any pipe currentrly driving
 	 * external DP as that will mess things up on VLV.
 	 */
-	enum pipe active_pipe;
+	enum pipe vlv_active_pipe;
 	/*
 	 * Set if the sequencer may be reset due to a power transition,
 	 * requiring a reinitialization. Only relevant on BXT+.
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1fcedfd404b..bc1ec9440a4d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6614,7 +6614,7 @@ static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
 		pipe = vlv_active_pipe(intel_dp);
 
 		if (pipe != PIPE_A && pipe != PIPE_B)
-			pipe = intel_dp->pps.pps_pipe;
+			pipe = intel_dp->pps.vlv_pps_pipe;
 
 		if (pipe != PIPE_A && pipe != PIPE_B)
 			pipe = PIPE_A;
@@ -6843,8 +6843,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		return false;
 
 	intel_dp->reset_link_params = true;
-	intel_dp->pps.pps_pipe = INVALID_PIPE;
-	intel_dp->pps.active_pipe = INVALID_PIPE;
+	intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
+	intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
 
 	/* Preserve the current hw state. */
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
@@ -6872,7 +6872,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp_set_default_max_sink_lane_count(intel_dp);
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
+		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
 
 	intel_dp_aux_init(intel_dp);
 	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index cdbac9f5a14c..b7c73842ea16 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -33,7 +33,7 @@ static const char *pps_name(struct intel_dp *intel_dp)
 	struct intel_pps *pps = &intel_dp->pps;
 
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		switch (pps->pps_pipe) {
+		switch (pps->vlv_pps_pipe) {
 		case INVALID_PIPE:
 			/*
 			 * FIXME would be nice if we can guarantee
@@ -45,7 +45,7 @@ static const char *pps_name(struct intel_dp *intel_dp)
 		case PIPE_B:
 			return "PPS B";
 		default:
-			MISSING_CASE(pps->pps_pipe);
+			MISSING_CASE(pps->vlv_pps_pipe);
 			break;
 		}
 	} else {
@@ -96,7 +96,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	enum pipe pipe = intel_dp->pps.pps_pipe;
+	enum pipe pipe = intel_dp->pps.vlv_pps_pipe;
 	bool pll_enabled, release_cl_override = false;
 	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
@@ -182,18 +182,18 @@ static enum pipe vlv_find_free_pps(struct intel_display *display)
 
 		if (encoder->type == INTEL_OUTPUT_EDP) {
 			drm_WARN_ON(display->drm,
-				    intel_dp->pps.active_pipe != INVALID_PIPE &&
-				    intel_dp->pps.active_pipe !=
-				    intel_dp->pps.pps_pipe);
+				    intel_dp->pps.vlv_active_pipe != INVALID_PIPE &&
+				    intel_dp->pps.vlv_active_pipe !=
+				    intel_dp->pps.vlv_pps_pipe);
 
-			if (intel_dp->pps.pps_pipe != INVALID_PIPE)
-				pipes &= ~(1 << intel_dp->pps.pps_pipe);
+			if (intel_dp->pps.vlv_pps_pipe != INVALID_PIPE)
+				pipes &= ~(1 << intel_dp->pps.vlv_pps_pipe);
 		} else {
 			drm_WARN_ON(display->drm,
-				    intel_dp->pps.pps_pipe != INVALID_PIPE);
+				    intel_dp->pps.vlv_pps_pipe != INVALID_PIPE);
 
-			if (intel_dp->pps.active_pipe != INVALID_PIPE)
-				pipes &= ~(1 << intel_dp->pps.active_pipe);
+			if (intel_dp->pps.vlv_active_pipe != INVALID_PIPE)
+				pipes &= ~(1 << intel_dp->pps.vlv_active_pipe);
 		}
 	}
 
@@ -215,11 +215,11 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 	/* We should never land here with regular DP ports */
 	drm_WARN_ON(display->drm, !intel_dp_is_edp(intel_dp));
 
-	drm_WARN_ON(display->drm, intel_dp->pps.active_pipe != INVALID_PIPE &&
-		    intel_dp->pps.active_pipe != intel_dp->pps.pps_pipe);
+	drm_WARN_ON(display->drm, intel_dp->pps.vlv_active_pipe != INVALID_PIPE &&
+		    intel_dp->pps.vlv_active_pipe != intel_dp->pps.vlv_pps_pipe);
 
-	if (intel_dp->pps.pps_pipe != INVALID_PIPE)
-		return intel_dp->pps.pps_pipe;
+	if (intel_dp->pps.vlv_pps_pipe != INVALID_PIPE)
+		return intel_dp->pps.vlv_pps_pipe;
 
 	pipe = vlv_find_free_pps(display);
 
@@ -231,7 +231,7 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 		pipe = PIPE_A;
 
 	vlv_steal_power_sequencer(display, pipe);
-	intel_dp->pps.pps_pipe = pipe;
+	intel_dp->pps.vlv_pps_pipe = pipe;
 
 	drm_dbg_kms(display->drm,
 		    "picked %s for [ENCODER:%d:%s]\n",
@@ -248,7 +248,7 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 	 */
 	vlv_power_sequencer_kick(intel_dp);
 
-	return intel_dp->pps.pps_pipe;
+	return intel_dp->pps.vlv_pps_pipe;
 }
 
 static int
@@ -327,19 +327,19 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 
 	/* try to find a pipe with this port selected */
 	/* first pick one where the panel is on */
-	intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(display, port,
-						      pps_has_pp_on);
+	intel_dp->pps.vlv_pps_pipe = vlv_initial_pps_pipe(display, port,
+							  pps_has_pp_on);
 	/* didn't find one? pick one where vdd is on */
-	if (intel_dp->pps.pps_pipe == INVALID_PIPE)
-		intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(display, port,
-							      pps_has_vdd_on);
+	if (intel_dp->pps.vlv_pps_pipe == INVALID_PIPE)
+		intel_dp->pps.vlv_pps_pipe = vlv_initial_pps_pipe(display, port,
+								  pps_has_vdd_on);
 	/* didn't find one? pick one with just the correct port */
-	if (intel_dp->pps.pps_pipe == INVALID_PIPE)
-		intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(display, port,
-							      pps_any);
+	if (intel_dp->pps.vlv_pps_pipe == INVALID_PIPE)
+		intel_dp->pps.vlv_pps_pipe = vlv_initial_pps_pipe(display, port,
+								  pps_any);
 
 	/* didn't find one? just let vlv_power_sequencer_pipe() pick one when needed */
-	if (intel_dp->pps.pps_pipe == INVALID_PIPE) {
+	if (intel_dp->pps.vlv_pps_pipe == INVALID_PIPE) {
 		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] no initial power sequencer\n",
 			    dig_port->base.base.base.id, dig_port->base.base.name);
@@ -462,7 +462,7 @@ void intel_pps_reset_all(struct intel_display *display)
 	/*
 	 * We can't grab pps_mutex here due to deadlock with power_domain
 	 * mutex when power_domain functions are called while holding pps_mutex.
-	 * That also means that in order to use pps_pipe the code needs to
+	 * That also means that in order to use vlv_pps_pipe the code needs to
 	 * hold both a power domain reference and pps_mutex, and the power domain
 	 * reference get/put must be done while _not_ holding pps_mutex.
 	 * pps_{lock,unlock}() do these steps in the correct order, so one
@@ -473,7 +473,7 @@ void intel_pps_reset_all(struct intel_display *display)
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		drm_WARN_ON(display->drm,
-			    intel_dp->pps.active_pipe != INVALID_PIPE);
+			    intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
 
 		if (encoder->type != INTEL_OUTPUT_EDP)
 			continue;
@@ -481,7 +481,7 @@ void intel_pps_reset_all(struct intel_display *display)
 		if (DISPLAY_VER(display) >= 9)
 			intel_dp->pps.pps_reset = true;
 		else
-			intel_dp->pps.pps_pipe = INVALID_PIPE;
+			intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
 	}
 }
 
@@ -550,7 +550,7 @@ static bool edp_have_panel_power(struct intel_dp *intel_dp)
 	lockdep_assert_held(&display->pps.mutex);
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	    intel_dp->pps.pps_pipe == INVALID_PIPE)
+	    intel_dp->pps.vlv_pps_pipe == INVALID_PIPE)
 		return false;
 
 	return (intel_de_read(display, _pp_stat_reg(intel_dp)) & PP_ON) != 0;
@@ -564,7 +564,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
 	lockdep_assert_held(&display->pps.mutex);
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	    intel_dp->pps.pps_pipe == INVALID_PIPE)
+	    intel_dp->pps.vlv_pps_pipe == INVALID_PIPE)
 		return false;
 
 	return intel_de_read(display, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
@@ -1153,10 +1153,10 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	enum pipe pipe = intel_dp->pps.pps_pipe;
+	enum pipe pipe = intel_dp->pps.vlv_pps_pipe;
 	i915_reg_t pp_on_reg = PP_ON_DELAYS(display, pipe);
 
-	drm_WARN_ON(display->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
+	drm_WARN_ON(display->drm, intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
 
 	if (drm_WARN_ON(display->drm, pipe != PIPE_A && pipe != PIPE_B))
 		return;
@@ -1179,7 +1179,7 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 	intel_de_write(display, pp_on_reg, 0);
 	intel_de_posting_read(display, pp_on_reg);
 
-	intel_dp->pps.pps_pipe = INVALID_PIPE;
+	intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
 }
 
 static void vlv_steal_power_sequencer(struct intel_display *display,
@@ -1192,12 +1192,12 @@ static void vlv_steal_power_sequencer(struct intel_display *display,
 	for_each_intel_dp(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		drm_WARN(display->drm, intel_dp->pps.active_pipe == pipe,
+		drm_WARN(display->drm, intel_dp->pps.vlv_active_pipe == pipe,
 			 "stealing PPS %c from active [ENCODER:%d:%s]\n",
 			 pipe_name(pipe), encoder->base.base.id,
 			 encoder->base.name);
 
-		if (intel_dp->pps.pps_pipe != pipe)
+		if (intel_dp->pps.vlv_pps_pipe != pipe)
 			continue;
 
 		drm_dbg_kms(display->drm,
@@ -1219,10 +1219,10 @@ void vlv_pps_init(struct intel_encoder *encoder,
 
 	lockdep_assert_held(&display->pps.mutex);
 
-	drm_WARN_ON(display->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
+	drm_WARN_ON(display->drm, intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
 
-	if (intel_dp->pps.pps_pipe != INVALID_PIPE &&
-	    intel_dp->pps.pps_pipe != crtc->pipe) {
+	if (intel_dp->pps.vlv_pps_pipe != INVALID_PIPE &&
+	    intel_dp->pps.vlv_pps_pipe != crtc->pipe) {
 		/*
 		 * If another power sequencer was being used on this
 		 * port previously make sure to turn off vdd there while
@@ -1237,13 +1237,13 @@ void vlv_pps_init(struct intel_encoder *encoder,
 	 */
 	vlv_steal_power_sequencer(display, crtc->pipe);
 
-	intel_dp->pps.active_pipe = crtc->pipe;
+	intel_dp->pps.vlv_active_pipe = crtc->pipe;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
 	/* now it's all ours */
-	intel_dp->pps.pps_pipe = crtc->pipe;
+	intel_dp->pps.vlv_pps_pipe = crtc->pipe;
 
 	drm_dbg_kms(display->drm,
 		    "initializing %s for [ENCODER:%d:%s]\n",
-- 
2.39.2

