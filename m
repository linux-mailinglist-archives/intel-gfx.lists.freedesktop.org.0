Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B88B5B99886
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:05:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AF6C10E702;
	Wed, 24 Sep 2025 11:05:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fArQOoAl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07F9C10E6EF;
 Wed, 24 Sep 2025 11:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758711936; x=1790247936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gv4u9THQ5wdcI2ZOg2who5sq5YI30udN15QSrWcPdp8=;
 b=fArQOoAlE7WaaoFfgDWqeEU0d15AYqzBaCUyG8CYmRZY7fU1otiLwdli
 krQ3014/WiQgVdFtDcB0kkq/y24Grf2pGMTPRTZjkOvpTfzJTo1HC1yCF
 ytjCDv+/DXwz0+FCH2IZlGSdYuZQr6qIcYziW5B1UkP253CNcjajoAq1B
 Hh2ybzKR5D/PDAlRy607QQpz0pdsRLIkMtp/SaN/ps3etLroUBDsZMi8R
 VsBfRD+HP1VBSvjz2yNhz7W7WRP/Wu0Fdocs/07RX5/ARifoW7taTxdfe
 +75w5/5hqVNzDh+qUPEzHTysB/pjxH3W7P9T77psgsshue1nx+JLiqo0k w==;
X-CSE-ConnectionGUID: DX55BKItTo6/VKobj6pAmg==
X-CSE-MsgGUID: x5PyM6C2SyOap0mnMtLBSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71247828"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71247828"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:04:54 -0700
X-CSE-ConnectionGUID: Pk3q/mXDQ7OaHLohiTa5WQ==
X-CSE-MsgGUID: 0afLBud1THKO16QykBRNHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176944083"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:04:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/9] drm/i915/display: Add set_context_latency to crtc_state
Date: Wed, 24 Sep 2025 16:21:22 +0530
Message-ID: <20250924105129.2771196-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

'Set context latency' (SCL, Window W2) is defined as the number of lines
before the double buffering point, which are required to complete
programming of the registers, typically when DSB is used to program the
display registers.

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

To make way for this optimization of guardband, formally introduce the
'set context latency' or SCL and track it as a new member
`set_context_latency` of the structure intel_crtc_state.

Eventually, all references of vblank delay where we mean to use set
context latency will be replaced by this new `set_context_latency`
member.

Note: for TGL the TRANS_SET_CONTEXT_LATENCY doesn't exist to account for
the SCL. However, the VBLANK_START-VACTIVE difference plays an identical
role here ie. it can be used to create the SCL window ahead of the
undelayed vblank.

While readback since there is no specific register to read out the SCL, use
the difference between vblank start and vactive to populate the new member
for TGL.

v2:
- Use u16 for set_context_latency. (Ville)
- s/vblank_delay/set_context_latency. (Ville)
- Meld the changes for TGL with this change. (Ville)

v3:
- Update comment to clarify the TGL case. (Ville)
- Fix typo in commit message.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 56 +++++++++++++------
 .../drm/i915/display/intel_display_types.h    |  3 +
 3 files changed, 44 insertions(+), 20 deletions(-)

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
index 679c2a9baaee..050b6849dedc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2361,39 +2361,44 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
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
 
-static int intel_crtc_compute_vblank_delay(struct intel_atomic_state *state,
-					   struct intel_crtc *crtc)
+static int intel_crtc_compute_set_context_latency(struct intel_atomic_state *state,
+						  struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	int vblank_delay, max_vblank_delay;
+	int set_context_latency, max_vblank_delay;
+
+	set_context_latency = intel_crtc_set_context_latency(crtc_state);
 
-	vblank_delay = intel_crtc_vblank_delay(crtc_state);
 	max_vblank_delay = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start - 1;
 
-	if (vblank_delay > max_vblank_delay) {
-		drm_dbg_kms(display->drm, "[CRTC:%d:%s] vblank delay (%d) exceeds max (%d)\n",
-			    crtc->base.base.id, crtc->base.name, vblank_delay, max_vblank_delay);
+	if (set_context_latency > max_vblank_delay) {
+		drm_dbg_kms(display->drm, "[CRTC:%d:%s] set context latency (%d) exceeds max (%d)\n",
+			    crtc->base.base.id, crtc->base.name,
+			    set_context_latency,
+			    max_vblank_delay);
 		return -EINVAL;
 	}
 
-	adjusted_mode->crtc_vblank_start += vblank_delay;
+	crtc_state->set_context_latency = set_context_latency;
+	adjusted_mode->crtc_vblank_start += set_context_latency;
 
 	return 0;
 }
@@ -2405,7 +2410,7 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
-	ret = intel_crtc_compute_vblank_delay(state, crtc);
+	ret = intel_crtc_compute_set_context_latency(state, crtc);
 	if (ret)
 		return ret;
 
@@ -2617,7 +2622,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
 			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
-			       crtc_vblank_start - crtc_vdisplay);
+			       crtc_state->set_context_latency);
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
@@ -2707,7 +2712,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
 			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
-			       crtc_vblank_start - crtc_vdisplay);
+			       crtc_state->set_context_latency);
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
@@ -2820,11 +2825,24 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
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
+	} else if (DISPLAY_VER(display) == 12) {
+		/*
+		 * TGL doesn't have a dedicated register for SCL.
+		 * Instead, the hardware derives SCL from the difference between
+		 * TRANS_VBLANK.vblank_start and TRANS_VTOTAL.vactive.
+		 * To reflect the HW behaviour, readout the value for SCL as
+		 * Vblank start - Vactive.
+		 */
+		pipe_config->set_context_latency =
+			adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
+	}
 
 	if (DISPLAY_VER(display) >= 30)
 		pipe_config->min_hblank = intel_de_read(display,
@@ -5387,6 +5405,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.guardband);
 	}
 
+	PIPE_CONF_CHECK_I(set_context_latency);
+
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
 #undef PIPE_CONF_CHECK_LLI
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 358ab922d7a7..029c47743f8b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1341,6 +1341,9 @@ struct intel_crtc_state {
 
 	/* LOBF flag */
 	bool has_lobf;
+
+	/* W2 window or 'set context latency' lines */
+	u16 set_context_latency;
 };
 
 enum intel_pipe_crc_source {
-- 
2.45.2

