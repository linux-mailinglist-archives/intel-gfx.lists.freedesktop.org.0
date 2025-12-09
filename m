Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E89CAFC5F
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C1E10E4FC;
	Tue,  9 Dec 2025 11:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JalxjGlI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A4710E524;
 Tue,  9 Dec 2025 11:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765279858; x=1796815858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Xvl3y+kBAuzzcLPzRqDcbvZMT+dmg15OZgYSukMzLM=;
 b=JalxjGlIQT7EDHHfDcl7cUrhkxtPSbFzxeQ+hAQsxkGcXeZELAzpuJ7s
 FNHiJXFZWmju3NS8pE5mWKzumKRpGz5cxALnSx9YZ/VNMTRtBwstc8NcK
 RdVfoUmnNa2AnAGgXYaYjX5nwuHBZro7m942RfMEiPpH6qCqQNet+zkHD
 wmU7pTTIsKZprLYfql0KbTZSgX9e5PnfB2nSMiHb47NLt0kBAY0W48mJy
 +K1lVkxnKkSS86XUPMBjxzKovUKEBIWE9GqmUULmr8DuwU0uNSC0330rw
 Eg/Ujbl7Ah1sWOQJni8jb9Blaf36zlg1lll3s2Fn5ue5jfkBXqB2uOmNC w==;
X-CSE-ConnectionGUID: yfR7gDeTRAqa+3ZvIflZ1w==
X-CSE-MsgGUID: QXAcMUfhStCquRSDQ3t7pQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78699635"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78699635"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:30:57 -0800
X-CSE-ConnectionGUID: dtqSsn1KQhyEA+vofKQ0qg==
X-CSE-MsgGUID: 3ItNVo/iRxqx8jTIQdxIkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196213334"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:30:55 -0800
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH 4/9] drm/i915/display: Add DC3CO eligibility logic
Date: Tue,  9 Dec 2025 17:03:27 +0530
Message-ID: <20251209113332.2770263-5-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
MIME-Version: 1.0
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

Introduce dc3co_allow in struct intel_display and determine DC3CO
eligibility during atomic_check(). DC3CO is permitted only when:

  - the active pipe drives eDP,
  - the pipe is single-pipe (no joiner),
  - the pipe/port combination supports DC3CO.

When eligible, intel_atomic_commit_tail() programs the target DC state
as DC_STATE_EN_UPTO_DC3CO; otherwise we fall back to DC6. Update the
PSR vblank enable/disable path to follow the same policy.

Also extend get_allowed_dc_mask() to expose DC3CO support on
DISPLAY_VER >= 35.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 75 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h  |  1 +
 .../gpu/drm/i915/display/intel_display_core.h |  3 +
 .../drm/i915/display/intel_display_power.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 13 ++--
 5 files changed, 87 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9c6d3ecdb589..205f55a87736 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6295,6 +6295,75 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 	return 0;
 }
 
+bool intel_dc3co_allowed(struct intel_display *display)
+{
+	return display->power.dc3co_allow;
+}
+
+static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
+					     const struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
+	enum port port = dig_port->base.port;
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
+
+	if (num_pipes != 1)
+		return false;
+
+	if (!(pipe <= PIPE_B && port <= PORT_B))
+		return false;
+
+	return true;
+}
+
+static void intel_dc3co_allow_check(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+	int i;
+	struct i915_power_domains *power_domains = &display->power.domains;
+	bool any_active = false;
+	bool allow = true;
+
+	display->power.dc3co_allow = 0;
+
+	if ((power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
+		return;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!new_crtc_state->hw.active)
+			continue;
+
+		any_active = true;
+
+		for_each_intel_encoder_mask(display->drm, encoder,
+					    new_crtc_state->uapi.encoder_mask) {
+			/* If any active pipe not eDP disable*/
+			if (!intel_encoder_is_dp(encoder) ||
+			    encoder->type != INTEL_OUTPUT_EDP) {
+				allow = false;
+				goto out;
+			}
+			intel_dp = enc_to_intel_dp(encoder);
+			/* Port, joiner, pipe placement checks */
+			if (!intel_dc3co_port_pipe_compatible(intel_dp, new_crtc_state)) {
+				allow = false;
+				goto out;
+			}
+		}
+	}
+
+	if (!any_active)
+		allow = false;
+
+out:
+	display->power.dc3co_allow = allow;
+}
+
 static int intel_atomic_check_config(struct intel_atomic_state *state,
 				     struct intel_link_bw_limits *limits,
 				     enum pipe *failed_pipe)
@@ -6565,6 +6634,8 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	intel_dc3co_allow_check(state);
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		intel_color_assert_luts(new_crtc_state);
@@ -7601,6 +7672,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 */
 		intel_uncore_arm_unclaimed_mmio_detection(&dev_priv->uncore);
 	}
+	if (intel_dc3co_allowed(display))
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC3CO);
+	else
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
 	/*
 	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
 	 * toggling overhead at and above 60 FPS.
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f8e6e4e82722..97987f082560 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -560,5 +560,6 @@ bool assert_port_valid(struct intel_display *display, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct intel_display *display);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
+bool intel_dc3co_allowed(struct intel_display *display);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index d708d322aa85..fa567c95029c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -538,6 +538,9 @@ struct intel_display {
 
 		/* perform PHY state sanity checks? */
 		bool chv_phy_assert[2];
+
+		/* mark dc3co entry is allowed*/
+		bool dc3co_allow;
 	} power;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 0961b194554c..e99552f18756 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -956,7 +956,9 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
 	if (!HAS_DISPLAY(display))
 		return 0;
 
-	if (DISPLAY_VER(display) >= 20)
+	if (DISPLAY_VER(display) >= 35)
+		max_dc = 3;
+	else if (DISPLAY_VER(display) >= 20)
 		max_dc = 2;
 	else if (display->platform.dg2)
 		max_dc = 1;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 753359069044..9c616f449ad6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3903,14 +3903,11 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
 		return;
 	}
 
-	/*
-	 * NOTE: intel_display_power_set_target_dc_state is used
-	 * only by PSR * code for DC3CO handling. DC3CO target
-	 * state is currently disabled in * PSR code. If DC3CO
-	 * is taken into use we need take that into account here
-	 * as well.
-	 */
-	intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
+	if (intel_dc3co_allowed(display))
+		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
+						DC_STATE_EN_UPTO_DC3CO);
+	else
+		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
 						DC_STATE_EN_UPTO_DC6);
 }
 
-- 
2.43.0

