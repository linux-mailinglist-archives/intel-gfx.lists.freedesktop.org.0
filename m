Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B26B8D4FE
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 06:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7047D10E332;
	Sun, 21 Sep 2025 04:49:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V7NmkeeK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D45F310E332;
 Sun, 21 Sep 2025 04:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758430143; x=1789966143;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2JebDCLeT8+3x6MlYSavcxTQLE1zEKo0bh93VDF3t1w=;
 b=V7NmkeeKkidy30Sft4rFWp2kD5++rKQWfxZ5DBkZpoLwVv7oMFogKuK2
 XljGlV2oD/Butci8/UPgWzscm/+lFyD0Hc3WhNvNHqBTK47qEKXLIQP3r
 6QPd0gLMWCfuGTuo0+bOS2NlPurHnQ8FgkAsKkviMRM4Mq07ePxjQOR24
 J+pIw8IEQXNZOwe+KR4iOGgjIP78A0P19/tjkbDk0Fkh9U/aslAyM/MOp
 UFYQDKoy4QBRUN0M1JJ77zvngNgpvR+wi7jPHtROORqScpMtGwxDNoMm3
 mjyj4IfdiLWH987x4HVlGovQT6I52GXjP/4VVsJLzz5+nc/Os3XSuCdGC w==;
X-CSE-ConnectionGUID: cSyefWt5QnCe75jZMRJdyw==
X-CSE-MsgGUID: MLrdoK12THqtcHL5DavsmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="72154729"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="72154729"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:03 -0700
X-CSE-ConnectionGUID: sxtmdZtATN2XJ3ox7ggDZw==
X-CSE-MsgGUID: 7gNwrgwRTaqKL3yGq6lUHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176097699"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/9] drm/i915/display: Add set_context_latency to
 crtc_state->vrr
Date: Sun, 21 Sep 2025 10:05:28 +0530
Message-ID: <20250921043535.2012978-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
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

'Set context latency' (Window W2) is defined as the number of lines before
the double buffering point, which are required to complete programming of
the registers, typically when DSB is used to program the display
registers.

Since we are not using this window for programming the registers, this
is mostly set to 0, unless there is a requirement for few cases related
to PSR/PR where the 'set context latency' should be at least 1.

Currently we are using the 'set context latency' (if required) implicitly
by moving the vblank start by the required amount and then measuring the
delay i.e. the difference between undelayed vblank start and delayed vblank
start.

Since our guardband matches the vblank length, this was not a problem as
the difference between the undelayed vblank and delayed vblank was at
the most equal to the 'set context latency' lines.

However, if we want to optimize the guardband, the difference between the
undelayed and the delayed vblank will be large and we cannot use this
difference as the 'set context latency' lines.

To make way for this optimization of guardband, we formally introduce
the 'set context latency' and track it as a new member
`set_context_latency` of the intel_crtc_state.

Eventually, all references of vblank delay where we mean to use set
context latency will be replaced by this new `set_context_latency`
member.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  5 ++--
 drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
 .../drm/i915/display/intel_display_types.h    |  3 ++
 3 files changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 0c7f91046996..a14bcda4446c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -289,10 +289,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "scanline offset: %d\n",
 		   intel_crtc_scanline_offset(pipe_config));
 
-	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d\n",
+	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d set context latency: %d\n",
 		   pipe_config->hw.adjusted_mode.crtc_vblank_start -
 		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
-		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
+		   pipe_config->framestart_delay, pipe_config->msa_timing_delay,
+		   pipe_config->set_context_latency);
 
 	drm_printf(&p, "vrr: %s, fixed rr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
 		   str_yes_no(pipe_config->vrr.enable),
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 679c2a9baaee..5a7794387ea2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2361,17 +2361,18 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
+static int intel_crtc_set_context_latency(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	int vblank_delay = 0;
+	int set_context_latency = 0;
 
 	if (!HAS_DSB(display))
 		return 0;
 
-	vblank_delay = max(vblank_delay, intel_psr_min_set_context_latency(crtc_state));
+	set_context_latency = max(set_context_latency,
+				  intel_psr_min_set_context_latency(crtc_state));
 
-	return vblank_delay;
+	return set_context_latency;
 }
 
 static int intel_crtc_compute_vblank_delay(struct intel_atomic_state *state,
@@ -2382,9 +2383,10 @@ static int intel_crtc_compute_vblank_delay(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	int vblank_delay, max_vblank_delay;
+	int vblank_delay = 0, max_vblank_delay;
 
-	vblank_delay = intel_crtc_vblank_delay(crtc_state);
+	crtc_state->set_context_latency = intel_crtc_set_context_latency(crtc_state);
+	vblank_delay += crtc_state->set_context_latency;
 	max_vblank_delay = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start - 1;
 
 	if (vblank_delay > max_vblank_delay) {
@@ -2617,7 +2619,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
 			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
-			       crtc_vblank_start - crtc_vdisplay);
+			       crtc_state->set_context_latency);
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
@@ -2707,7 +2709,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
 			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
-			       crtc_vblank_start - crtc_vdisplay);
+			       crtc_state->set_context_latency);
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
@@ -2820,11 +2822,14 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 		adjusted_mode->crtc_vblank_end += 1;
 	}
 
-	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder))
-		adjusted_mode->crtc_vblank_start =
-			adjusted_mode->crtc_vdisplay +
+	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder)) {
+		pipe_config->set_context_latency =
 			intel_de_read(display,
 				      TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder));
+		adjusted_mode->crtc_vblank_start =
+			adjusted_mode->crtc_vdisplay +
+			pipe_config->set_context_latency;
+	}
 
 	if (DISPLAY_VER(display) >= 30)
 		pipe_config->min_hblank = intel_de_read(display,
@@ -5387,6 +5392,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.guardband);
 	}
 
+	PIPE_CONF_CHECK_I(set_context_latency);
+
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
 #undef PIPE_CONF_CHECK_LLI
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 358ab922d7a7..a22fe77fcca1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1341,6 +1341,9 @@ struct intel_crtc_state {
 
 	/* LOBF flag */
 	bool has_lobf;
+
+	/* W2 window or 'set context latency' lines */
+	int set_context_latency;
 };
 
 enum intel_pipe_crc_source {
-- 
2.45.2

