Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKXTFbRpxWl1+AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014C2338FFF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D64310EA6E;
	Thu, 26 Mar 2026 17:15:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQ+y36Am";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8337910EAB9;
 Thu, 26 Mar 2026 17:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774545329; x=1806081329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y9Ceb7oxDdzaslqk6Pgcxpe6qu3/kPCQiwrBu2Ql2eY=;
 b=WQ+y36AmIFlWwPUyKELhWp1+DMUuCjjTUYasaxmkScQ++7uLwu/fhTYa
 4GkmNit7SfkxNkzZa0bQ8dgVWZMksE91uLjm9GkNSugMb2YjS6PqULKsh
 TFxEHAnxwJFkxspx3UzZRHjaWoY9V0GIXXWjKsdeErPlbb6gF8DnTgqGH
 rCwchixOO+X+yUtETcK4/iUTFrDvKlcijEUDUyQ7ASJRZWNWsBHTfiOXS
 8yzZydU6UjpkX2j2cHmB9sDviyLLxZRHeM9B8/+8WD79V8w/DjI+klxiT
 Mkk2aO7Khzrp+Qw54YkxfOI5FPk4V1++mcanV5eM1R9tkT+10neMXOCJZ w==;
X-CSE-ConnectionGUID: ZNm/jCpHRtGflXYNwFp5FA==
X-CSE-MsgGUID: VQyhxStjQwaWU7H8h3Pmtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75630574"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75630574"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:29 -0700
X-CSE-ConnectionGUID: So/ruM+3Slqx0FiC5lzFWA==
X-CSE-MsgGUID: xyQ7tz07ThWotHxfsu0+mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="262975563"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:27 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: [PATCH 08/19] drm/i915/display: Add DC3CO eligibility computation
Date: Thu, 26 Mar 2026 22:45:46 +0530
Message-ID: <20260326171557.2065632-9-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 014C2338FFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Compute DC3CO eligibility during atomic_check based on
pipe/port constraints and runtime triggers, and propagate
the result via intel_atomic_state.

When DC3CO is allowed, request DC_STATE_EN_UPTO_DC3CO and
reduce the DC entry delay. Otherwise, retain the existing
delay and set default DC_STATE_EN_UPTO_DC6 .

BSpec: 75253
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 98 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
 .../drm/i915/display/intel_display_types.h    |  7 ++
 3 files changed, 101 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f20d5ebe06ed..df0eaf6ae76b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5943,6 +5943,81 @@ static bool intel_pipes_need_modeset(struct intel_atomic_state *state,
 	return false;
 }
 
+bool intel_dc3co_allowed(struct intel_atomic_state *state)
+{
+	return state && state->dc3co.allowed;
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
+	return num_pipes == 1 && pipe <= PIPE_B && port <= PORT_B;
+}
+
+static void intel_dc3co_compute_state(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+	int active_pipes = 0;
+	u32 trigger = 0;
+
+	/* disable unless all conditions are met */
+	state->dc3co.trigger = DC3CO_TRIGGER_NONE;
+	state->dc3co.allowed = false;
+
+	if (!HAS_DC3CO(display))
+		return;
+
+	if (state->modeset)
+		return;
+
+	for_each_intel_crtc(display->drm, crtc) {
+		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+		if (!crtc_state)
+			crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
+
+		if (!crtc_state || !crtc_state->hw.active)
+			continue;
+
+		active_pipes++;
+
+		if (active_pipes > 1)
+			return;
+
+		for_each_intel_encoder_mask(display->drm, encoder,
+					    crtc_state->uapi.encoder_mask) {
+			if (encoder->type != INTEL_OUTPUT_EDP)
+				return;
+
+			intel_dp = enc_to_intel_dp(encoder);
+
+			if (!intel_dc3co_port_pipe_compatible(intel_dp, crtc_state))
+				return;
+		}
+
+		if (crtc_state->has_lobf)
+			trigger |= DC3CO_TRIGGER_LOBF;
+		if (crtc_state->has_panel_replay)
+			trigger |= DC3CO_TRIGGER_PANEL_REPLAY;
+		if (crtc_state->has_sel_update)
+			trigger |= DC3CO_TRIGGER_PSR2;
+	}
+	if (trigger) {
+		state->dc3co.trigger = trigger;
+		state->dc3co.allowed = true;
+	}
+	drm_dbg_kms(display->drm, "DC3CO allowed=%d trigger=0x%x\n",
+		    state->dc3co.allowed, state->dc3co.trigger);
+}
+
 static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 				     struct intel_crtc *primary_crtc)
 {
@@ -6623,6 +6698,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	intel_dc3co_compute_state(state);
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		intel_color_assert_luts(new_crtc_state);
@@ -7505,6 +7581,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
 	struct ref_tracker *wakeref = NULL;
 	int i;
+	int power_async_delay;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
 		intel_atomic_dsb_prepare(state, crtc);
@@ -7711,11 +7788,22 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 */
 		intel_uncore_arm_unclaimed_mmio_detection(uncore);
 	}
-	/*
-	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
-	 * toggling overhead at and above 60 FPS.
-	 */
-	intel_display_power_put_async_delay(display, POWER_DOMAIN_DC_OFF, wakeref, 17);
+
+	if (intel_dc3co_allowed(state) &&
+	    intel_display_power_dc3co_supported(display)) {
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC3CO);
+		power_async_delay = 1;
+	} else {
+		/*
+		 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
+		 * toggling overhead at and above 60 FPS.
+		 */
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
+		power_async_delay = 17;
+	}
+	intel_display_power_put_async_delay(display,
+					    POWER_DOMAIN_DC_OFF, wakeref, power_async_delay);
+
 	intel_display_rpm_put(display, state->wakeref);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 552a59d19e0f..6eb84f9d8791 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -535,5 +535,5 @@ bool assert_port_valid(struct intel_display *display, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct intel_display *display);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
-
+bool intel_dc3co_allowed(struct intel_atomic_state *state);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6830f911d94d..6c7f5bbbc821 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -632,6 +632,11 @@ struct dpll {
 	int	p;
 };
 
+struct intel_dc3co_state {
+	bool allowed; /* DC3CO eligibility result */
+	u32 trigger; /* Bitmask of active DC3CO triggers */
+};
+
 struct intel_atomic_state {
 	struct drm_atomic_state base;
 
@@ -658,6 +663,8 @@ struct intel_atomic_state {
 	bool rps_interactive;
 
 	struct work_struct cleanup_work;
+
+	struct intel_dc3co_state dc3co;
 };
 
 struct intel_plane_state {
-- 
2.43.0

