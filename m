Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A7F8FFD97
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 09:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADEC510EB7F;
	Fri,  7 Jun 2024 07:55:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFptQPFF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A992610EB7F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 07:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717746903; x=1749282903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kH0r45k8B51+TbwVnBv8qKn48wqRefKtnYuMpwy4mdY=;
 b=VFptQPFFpwkiq/g81H3dj+4GhcXYguwxt0LTSFw0Ns35HLlty56px56g
 z1ohynIhYK04iFqsPLI32c53EWcFEBKBPfIGhDPxlDT9wop0O1BEVmhd3
 0qUfut1V4WOiVLMdGUTCT6HsdS1qGLyK8Sv6ZyTkVmloKC0w6Tetmm/3t
 1oYpRsE+LIbAphZn8emEeghUziSOjROENZA3AvqxlDGQ5U1BR9plB3Dfi
 9ttDFXDOrHVPYxVAfPDkrWRY3lWLcKbzIC3VyukJ0vj4TP4oky5Eu+LKe
 DXmaYJeY2YJvOu4C89hzad0RtJC+oIc3+1G3bEb0tfdnQyoX9lz1cqBcr g==;
X-CSE-ConnectionGUID: hb+JvYAZTY+vgOfJ4rcm6Q==
X-CSE-MsgGUID: 67hVMe6ISMKvbYyXXZo7BQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18283398"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="18283398"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 00:55:03 -0700
X-CSE-ConnectionGUID: zD3opBMvQsGX9l+Qwj+v5g==
X-CSE-MsgGUID: 8YxWEg93TTaomtXSlHv8sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="38683662"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa006.jf.intel.com with ESMTP; 07 Jun 2024 00:55:00 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 1/3] drm/i915: Rename all bigjoiner to joiner
Date: Fri,  7 Jun 2024 10:54:57 +0300
Message-Id: <20240607075457.15700-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240603112551.6481-2-stanislav.lisovskiy@intel.com>
References: <20240603112551.6481-2-stanislav.lisovskiy@intel.com>
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

Lets unify both bigjoiner and ultrajoiner under simple "joiner" name,
because in future we might have multiple configurations, involving
multiple bigjoiners, ultrajoiner, however it is possible to use
same api for handling both.

v2: - Renamed back some bigjoiner specific parts for now(Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |   4 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   4 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 204 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +-
 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  46 ++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  18 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   6 +-
 .../drm/i915/display/intel_modeset_setup.c    |  38 ++--
 drivers/gpu/drm/i915/display/intel_psr.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |   4 +-
 19 files changed, 192 insertions(+), 192 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 980c5dc70763..8903bca2e6ab 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -336,7 +336,7 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
 	intel_plane_clear_hw_state(plane_state);
 
 	/*
-	 * For the bigjoiner slave uapi.crtc will point at
+	 * For the joiner slave uapi.crtc will point at
 	 * the master crtc. So we explicitly assign the right
 	 * slave crtc to hw.crtc. uapi.crtc!=NULL simply indicates
 	 * the plane is logically enabled on the uapi level.
@@ -721,7 +721,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (new_crtc_state && intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
+	if (new_crtc_state && intel_crtc_is_joiner_slave(new_crtc_state)) {
 		struct intel_crtc *master_crtc =
 			intel_master_crtc(new_crtc_state);
 		struct intel_plane *master_plane =
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7ef8dcb1601a..632978830aa5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2732,7 +2732,7 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	min_cdclk = max_t(int, min_cdclk,
 			  DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances));
 
-	if (crtc_state->bigjoiner_pipes) {
+	if (crtc_state->joiner_pipes) {
 		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
 
 		/*
@@ -2744,7 +2744,7 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 		 *
 		 * => CDCLK >= compressed_bpp * Pixel clock / (PPC * Bigjoiner Interface bits)
 		 *
-		 * Since PPC = 2 with bigjoiner
+		 * Since PPC = 2 with joiner
 		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
 		 */
 		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index bddcc9edeab4..5d35c5537eaa 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -222,10 +222,10 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   transcoder_name(pipe_config->master_transcoder),
 		   pipe_config->sync_mode_slaves_mask);
 
-	drm_printf(&p, "bigjoiner: %s, pipes: 0x%x\n",
-		   intel_crtc_is_bigjoiner_slave(pipe_config) ? "slave" :
-		   intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no",
-		   pipe_config->bigjoiner_pipes);
+	drm_printf(&p, "joiner: %s, pipes: 0x%x\n",
+		   intel_crtc_is_joiner_slave(pipe_config) ? "slave" :
+		   intel_crtc_is_joiner_master(pipe_config) ? "master" : "no",
+		   pipe_config->joiner_pipes);
 
 	drm_printf(&p, "splitter: %s, link count %d, overlap %d\n",
 		   str_enabled_disabled(pipe_config->splitter.enable),
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index cea0cfed569d..7f7fc710350c 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -761,12 +761,12 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 * PSR2 plane and transcoder registers can only be updated during
 	 * vblank.
 	 *
-	 * FIXME bigjoiner fastpath would be good
+	 * FIXME joiner fastpath would be good
 	 */
 	if (!crtc_state->hw.active ||
 	    intel_crtc_needs_modeset(crtc_state) ||
 	    intel_crtc_needs_fastset(crtc_state) ||
-	    crtc_state->bigjoiner_pipes)
+	    crtc_state->joiner_pipes)
 		goto slow;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c76bbd13bb27..1377ed6b8281 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4264,10 +4264,10 @@ static bool crtcs_port_sync_compatible(const struct intel_crtc_state *crtc_state
 {
 	/*
 	 * FIXME the modeset sequence is currently wrong and
-	 * can't deal with bigjoiner + port sync at the same time.
+	 * can't deal with joiner + port sync at the same time.
 	 */
 	return crtc_state1->hw.active && crtc_state2->hw.active &&
-		!crtc_state1->bigjoiner_pipes && !crtc_state2->bigjoiner_pipes &&
+		!crtc_state1->joiner_pipes && !crtc_state2->joiner_pipes &&
 		crtc_state1->output_types == crtc_state2->output_types &&
 		crtc_state1->output_format == crtc_state2->output_format &&
 		crtc_state1->lane_count == crtc_state2->lane_count &&
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7370acdd6b8b..f06c1c0b5f42 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -246,53 +246,53 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
-static enum pipe bigjoiner_master_pipe(const struct intel_crtc_state *crtc_state)
+static enum pipe joiner_master_pipe(const struct intel_crtc_state *crtc_state)
 {
-	return ffs(crtc_state->bigjoiner_pipes) - 1;
+	return ffs(crtc_state->joiner_pipes) - 1;
 }
 
-u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state)
+u8 intel_crtc_joiner_slave_pipes(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->bigjoiner_pipes)
-		return crtc_state->bigjoiner_pipes & ~BIT(bigjoiner_master_pipe(crtc_state));
+	if (crtc_state->joiner_pipes)
+		return crtc_state->joiner_pipes & ~BIT(joiner_master_pipe(crtc_state));
 	else
 		return 0;
 }
 
-bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
+bool intel_crtc_is_joiner_slave(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	return crtc_state->bigjoiner_pipes &&
-		crtc->pipe != bigjoiner_master_pipe(crtc_state);
+	return crtc_state->joiner_pipes &&
+		crtc->pipe != joiner_master_pipe(crtc_state);
 }
 
-bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
+bool intel_crtc_is_joiner_master(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	return crtc_state->bigjoiner_pipes &&
-		crtc->pipe == bigjoiner_master_pipe(crtc_state);
+	return crtc_state->joiner_pipes &&
+		crtc->pipe == joiner_master_pipe(crtc_state);
 }
 
-static int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state)
+static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
 {
-	return hweight8(crtc_state->bigjoiner_pipes);
+	return hweight8(crtc_state->joiner_pipes);
 }
 
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	return BIT(crtc->pipe) | crtc_state->bigjoiner_pipes;
+	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
 }
 
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (intel_crtc_is_bigjoiner_slave(crtc_state))
-		return intel_crtc_for_pipe(i915, bigjoiner_master_pipe(crtc_state));
+	if (intel_crtc_is_joiner_slave(crtc_state))
+		return intel_crtc_for_pipe(i915, joiner_master_pipe(crtc_state));
 	else
 		return to_intel_crtc(crtc_state->uapi.crtc);
 }
@@ -2318,10 +2318,10 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 			ilk_pipe_pixel_rate(crtc_state);
 }
 
-static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
+static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 					   struct drm_display_mode *mode)
 {
-	int num_pipes = intel_bigjoiner_num_pipes(crtc_state);
+	int num_pipes = intel_joiner_num_pipes(crtc_state);
 
 	if (num_pipes < 2)
 		return;
@@ -2385,11 +2385,11 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	drm_mode_copy(mode, pipe_mode);
 	intel_mode_from_crtc_timings(mode, mode);
 	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
-		(intel_bigjoiner_num_pipes(crtc_state) ?: 1);
+		(intel_joiner_num_pipes(crtc_state) ?: 1);
 	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
 
-	/* Derive per-pipe timings in case bigjoiner is used */
-	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
+	/* Derive per-pipe timings in case joiner is used */
+	intel_joiner_adjust_timings(crtc_state, pipe_mode);
 	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 
 	intel_crtc_compute_pixel_rate(crtc_state);
@@ -2403,9 +2403,9 @@ void intel_encoder_get_config(struct intel_encoder *encoder,
 	intel_crtc_readout_derived_state(crtc_state);
 }
 
-static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
+static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
-	int num_pipes = intel_bigjoiner_num_pipes(crtc_state);
+	int num_pipes = intel_joiner_num_pipes(crtc_state);
 	int width, height;
 
 	if (num_pipes < 2)
@@ -2423,7 +2423,7 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	intel_bigjoiner_compute_pipe_src(crtc_state);
+	intel_joiner_compute_pipe_src(crtc_state);
 
 	/*
 	 * Pipe horizontal size must be even in:
@@ -2468,8 +2468,8 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	/* Expand MSO per-segment transcoder timings to full */
 	intel_splitter_adjust_timings(crtc_state, pipe_mode);
 
-	/* Derive per-pipe timings in case bigjoiner is used */
-	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
+	/* Derive per-pipe timings in case joiner is used */
+	intel_joiner_adjust_timings(crtc_state, pipe_mode);
 	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 
 	if (DISPLAY_VER(i915) < 4) {
@@ -2851,17 +2851,17 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 			intel_de_read(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder));
 }
 
-static void intel_bigjoiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
+static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int num_pipes = intel_bigjoiner_num_pipes(crtc_state);
+	int num_pipes = intel_joiner_num_pipes(crtc_state);
 	enum pipe master_pipe, pipe = crtc->pipe;
 	int width;
 
 	if (num_pipes < 2)
 		return;
 
-	master_pipe = bigjoiner_master_pipe(crtc_state);
+	master_pipe = joiner_master_pipe(crtc_state);
 	width = drm_rect_width(&crtc_state->pipe_src);
 
 	drm_rect_translate_to(&crtc_state->pipe_src,
@@ -2881,7 +2881,7 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 		      REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1,
 		      REG_FIELD_GET(PIPESRC_HEIGHT_MASK, tmp) + 1);
 
-	intel_bigjoiner_adjust_pipe_src(pipe_config);
+	intel_joiner_adjust_pipe_src(pipe_config);
 }
 
 void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
@@ -3465,7 +3465,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	return ret;
 }
 
-static u8 bigjoiner_pipes(struct drm_i915_private *i915)
+static u8 joiner_pipes(struct drm_i915_private *i915)
 {
 	u8 pipes;
 
@@ -3494,7 +3494,7 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
 
-static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
+static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				    u8 *master_pipes, u8 *slave_pipes)
 {
 	struct intel_crtc *crtc;
@@ -3503,7 +3503,7 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
 	*slave_pipes = 0;
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
-					 bigjoiner_pipes(dev_priv)) {
+					 joiner_pipes(dev_priv)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
 		intel_wakeref_t wakeref;
@@ -3541,7 +3541,7 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
 		 *master_pipes, *slave_pipes);
 }
 
-static enum pipe get_bigjoiner_master_pipe(enum pipe pipe, u8 master_pipes, u8 slave_pipes)
+static enum pipe get_joiner_master_pipe(enum pipe pipe, u8 master_pipes, u8 slave_pipes)
 {
 	if ((slave_pipes & BIT(pipe)) == 0)
 		return pipe;
@@ -3553,11 +3553,11 @@ static enum pipe get_bigjoiner_master_pipe(enum pipe pipe, u8 master_pipes, u8 s
 	return fls(master_pipes) - 1;
 }
 
-static u8 get_bigjoiner_slave_pipes(enum pipe pipe, u8 master_pipes, u8 slave_pipes)
+static u8 get_joiner_slave_pipes(enum pipe pipe, u8 master_pipes, u8 slave_pipes)
 {
 	enum pipe master_pipe, next_master_pipe;
 
-	master_pipe = get_bigjoiner_master_pipe(pipe, master_pipes, slave_pipes);
+	master_pipe = get_joiner_master_pipe(pipe, master_pipes, slave_pipes);
 
 	if ((master_pipes & BIT(master_pipe)) == 0)
 		return 0;
@@ -3634,16 +3634,16 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
 
-	/* single pipe or bigjoiner master */
+	/* single pipe or joiner master */
 	cpu_transcoder = (enum transcoder) crtc->pipe;
 	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 		enabled_transcoders |= BIT(cpu_transcoder);
 
-	/* bigjoiner slave -> consider the master pipe's transcoder as well */
-	enabled_bigjoiner_pipes(dev_priv, &master_pipes, &slave_pipes);
+	/* joiner slave -> consider the master pipe's transcoder as well */
+	enabled_joiner_pipes(dev_priv, &master_pipes, &slave_pipes);
 	if (slave_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder)
-			get_bigjoiner_master_pipe(crtc->pipe, master_pipes, slave_pipes);
+			get_joiner_master_pipe(crtc->pipe, master_pipes, slave_pipes);
 		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
@@ -3768,21 +3768,21 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 	return transcoder_is_dsi(pipe_config->cpu_transcoder);
 }
 
-static void intel_bigjoiner_get_config(struct intel_crtc_state *crtc_state)
+static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u8 master_pipes, slave_pipes;
 	enum pipe pipe = crtc->pipe;
 
-	enabled_bigjoiner_pipes(i915, &master_pipes, &slave_pipes);
+	enabled_joiner_pipes(i915, &master_pipes, &slave_pipes);
 
 	if (((master_pipes | slave_pipes) & BIT(pipe)) == 0)
 		return;
 
-	crtc_state->bigjoiner_pipes =
-		BIT(get_bigjoiner_master_pipe(pipe, master_pipes, slave_pipes)) |
-		get_bigjoiner_slave_pipes(pipe, master_pipes, slave_pipes);
+	crtc_state->joiner_pipes =
+		BIT(get_joiner_master_pipe(pipe, master_pipes, slave_pipes)) |
+		get_joiner_slave_pipes(pipe, master_pipes, slave_pipes);
 }
 
 static bool hsw_get_pipe_config(struct intel_crtc *crtc,
@@ -3809,7 +3809,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	if (!active)
 		goto out;
 
-	intel_bigjoiner_get_config(pipe_config);
+	intel_joiner_get_config(pipe_config);
 	intel_dsc_get_config(pipe_config);
 
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
@@ -4449,7 +4449,7 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	WARN_ON(intel_crtc_is_bigjoiner_slave(crtc_state));
+	WARN_ON(intel_crtc_is_joiner_slave(crtc_state));
 
 	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
 				  crtc_state->uapi.degamma_lut);
@@ -4466,7 +4466,7 @@ intel_crtc_copy_uapi_to_hw_state_modeset(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	WARN_ON(intel_crtc_is_bigjoiner_slave(crtc_state));
+	WARN_ON(intel_crtc_is_joiner_slave(crtc_state));
 
 	crtc_state->hw.enable = crtc_state->uapi.enable;
 	crtc_state->hw.active = crtc_state->uapi.active;
@@ -4480,7 +4480,7 @@ intel_crtc_copy_uapi_to_hw_state_modeset(struct intel_atomic_state *state,
 }
 
 static void
-copy_bigjoiner_crtc_state_nomodeset(struct intel_atomic_state *state,
+copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
 				    struct intel_crtc *slave_crtc)
 {
 	struct intel_crtc_state *slave_crtc_state =
@@ -4500,7 +4500,7 @@ copy_bigjoiner_crtc_state_nomodeset(struct intel_atomic_state *state,
 }
 
 static int
-copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
+copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
 				  struct intel_crtc *slave_crtc)
 {
 	struct intel_crtc_state *slave_crtc_state =
@@ -4510,8 +4510,8 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, master_crtc);
 	struct intel_crtc_state *saved_state;
 
-	WARN_ON(master_crtc_state->bigjoiner_pipes !=
-		slave_crtc_state->bigjoiner_pipes);
+	WARN_ON(master_crtc_state->joiner_pipes !=
+		slave_crtc_state->joiner_pipes);
 
 	saved_state = kmemdup(master_crtc_state, sizeof(*saved_state), GFP_KERNEL);
 	if (!saved_state)
@@ -4545,14 +4545,14 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 		drm_dp_tunnel_ref_get(master_crtc_state->dp_tunnel_ref.tunnel,
 				      &slave_crtc_state->dp_tunnel_ref);
 
-	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
+	copy_joiner_crtc_state_nomodeset(state, slave_crtc);
 
 	slave_crtc_state->uapi.mode_changed = master_crtc_state->uapi.mode_changed;
 	slave_crtc_state->uapi.connectors_changed = master_crtc_state->uapi.connectors_changed;
 	slave_crtc_state->uapi.active_changed = master_crtc_state->uapi.active_changed;
 
-	WARN_ON(master_crtc_state->bigjoiner_pipes !=
-		slave_crtc_state->bigjoiner_pipes);
+	WARN_ON(master_crtc_state->joiner_pipes !=
+		slave_crtc_state->joiner_pipes);
 
 	return 0;
 }
@@ -5382,7 +5382,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
-	PIPE_CONF_CHECK_X(bigjoiner_pipes);
+	PIPE_CONF_CHECK_X(joiner_pipes);
 
 	PIPE_CONF_CHECK_BOOL(dsc.config.block_pred_enable);
 	PIPE_CONF_CHECK_BOOL(dsc.config.convert_rgb);
@@ -5746,7 +5746,7 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
 		IS_IVYBRIDGE(dev_priv);
 }
 
-static int intel_crtc_add_bigjoiner_planes(struct intel_atomic_state *state,
+static int intel_crtc_add_joiner_planes(struct intel_atomic_state *state,
 					   struct intel_crtc *crtc,
 					   struct intel_crtc *other)
 {
@@ -5763,7 +5763,7 @@ static int intel_crtc_add_bigjoiner_planes(struct intel_atomic_state *state,
 	return intel_crtc_add_planes_to_state(state, other, plane_ids);
 }
 
-static int intel_bigjoiner_add_affected_planes(struct intel_atomic_state *state)
+static int intel_joiner_add_affected_planes(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *crtc_state;
@@ -5774,13 +5774,13 @@ static int intel_bigjoiner_add_affected_planes(struct intel_atomic_state *state)
 		struct intel_crtc *other;
 
 		for_each_intel_crtc_in_pipe_mask(&i915->drm, other,
-						 crtc_state->bigjoiner_pipes) {
+						 crtc_state->joiner_pipes) {
 			int ret;
 
 			if (crtc == other)
 				continue;
 
-			ret = intel_crtc_add_bigjoiner_planes(state, crtc, other);
+			ret = intel_crtc_add_joiner_planes(state, crtc, other);
 			if (ret)
 				return ret;
 		}
@@ -5802,7 +5802,7 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	ret = intel_bigjoiner_add_affected_planes(state);
+	ret = intel_joiner_add_affected_planes(state);
 	if (ret)
 		return ret;
 
@@ -5902,7 +5902,7 @@ static bool intel_pipes_need_modeset(struct intel_atomic_state *state,
 	return false;
 }
 
-static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
+static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 					struct intel_crtc *master_crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
@@ -5910,25 +5910,25 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, master_crtc);
 	struct intel_crtc *slave_crtc;
 
-	if (!master_crtc_state->bigjoiner_pipes)
+	if (!master_crtc_state->joiner_pipes)
 		return 0;
 
 	/* sanity check */
 	if (drm_WARN_ON(&i915->drm,
-			master_crtc->pipe != bigjoiner_master_pipe(master_crtc_state)))
+			master_crtc->pipe != joiner_master_pipe(master_crtc_state)))
 		return -EINVAL;
 
-	if (master_crtc_state->bigjoiner_pipes & ~bigjoiner_pipes(i915)) {
+	if (master_crtc_state->joiner_pipes & ~joiner_pipes(i915)) {
 		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] Cannot act as big joiner master "
 			    "(need 0x%x as pipes, only 0x%x possible)\n",
 			    master_crtc->base.base.id, master_crtc->base.name,
-			    master_crtc_state->bigjoiner_pipes, bigjoiner_pipes(i915));
+			    master_crtc_state->joiner_pipes, joiner_pipes(i915));
 		return -EINVAL;
 	}
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(master_crtc_state)) {
+					 intel_crtc_joiner_slave_pipes(master_crtc_state)) {
 		struct intel_crtc_state *slave_crtc_state;
 		int ret;
 
@@ -5940,7 +5940,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 		if (slave_crtc_state->uapi.enable) {
 			drm_dbg_kms(&i915->drm,
 				    "[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
-				    "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
+				    "[CRTC:%d:%s] claiming this CRTC for joiner.\n",
 				    slave_crtc->base.base.id, slave_crtc->base.name,
 				    master_crtc->base.base.id, master_crtc->base.name);
 			return -EINVAL;
@@ -5962,10 +5962,10 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 			    slave_crtc->base.base.id, slave_crtc->base.name,
 			    master_crtc->base.base.id, master_crtc->base.name);
 
-		slave_crtc_state->bigjoiner_pipes =
-			master_crtc_state->bigjoiner_pipes;
+		slave_crtc_state->joiner_pipes =
+			master_crtc_state->joiner_pipes;
 
-		ret = copy_bigjoiner_crtc_state_modeset(state, slave_crtc);
+		ret = copy_joiner_crtc_state_modeset(state, slave_crtc);
 		if (ret)
 			return ret;
 	}
@@ -5973,7 +5973,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void kill_bigjoiner_slave(struct intel_atomic_state *state,
+static void kill_joiner_slave(struct intel_atomic_state *state,
 				 struct intel_crtc *master_crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
@@ -5982,16 +5982,16 @@ static void kill_bigjoiner_slave(struct intel_atomic_state *state,
 	struct intel_crtc *slave_crtc;
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(master_crtc_state)) {
+					 intel_crtc_joiner_slave_pipes(master_crtc_state)) {
 		struct intel_crtc_state *slave_crtc_state =
 			intel_atomic_get_new_crtc_state(state, slave_crtc);
 
-		slave_crtc_state->bigjoiner_pipes = 0;
+		slave_crtc_state->joiner_pipes = 0;
 
 		intel_crtc_copy_uapi_to_hw_state_modeset(state, slave_crtc);
 	}
 
-	master_crtc_state->bigjoiner_pipes = 0;
+	master_crtc_state->joiner_pipes = 0;
 }
 
 /**
@@ -6044,9 +6044,9 @@ static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
 	 * FIXME: Bigjoiner+async flip is busted currently.
 	 * Remove this check once the issues are fixed.
 	 */
-	if (new_crtc_state->bigjoiner_pipes) {
+	if (new_crtc_state->joiner_pipes) {
 		drm_dbg_kms(&i915->drm,
-			    "[CRTC:%d:%s] async flip disallowed with bigjoiner\n",
+			    "[CRTC:%d:%s] async flip disallowed with joiner\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
@@ -6271,7 +6271,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 	return 0;
 }
 
-static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
+static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state;
@@ -6281,9 +6281,9 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 	int i;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		affected_pipes |= crtc_state->bigjoiner_pipes;
+		affected_pipes |= crtc_state->joiner_pipes;
 		if (intel_crtc_needs_modeset(crtc_state))
-			modeset_pipes |= crtc_state->bigjoiner_pipes;
+			modeset_pipes |= crtc_state->joiner_pipes;
 	}
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, affected_pipes) {
@@ -6309,10 +6309,10 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 	}
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		/* Kill old bigjoiner link, we may re-establish afterwards */
+		/* Kill old joiner link, we may re-establish afterwards */
 		if (intel_crtc_needs_modeset(crtc_state) &&
-		    intel_crtc_is_bigjoiner_master(crtc_state))
-			kill_bigjoiner_slave(state, crtc);
+		    intel_crtc_is_joiner_master(crtc_state))
+			kill_joiner_slave(state, crtc);
 	}
 
 	return 0;
@@ -6330,7 +6330,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 
 	*failed_pipe = INVALID_PIPE;
 
-	ret = intel_bigjoiner_add_affected_crtcs(state);
+	ret = intel_joiner_add_affected_crtcs(state);
 	if (ret)
 		return ret;
 
@@ -6340,14 +6340,14 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state)) {
-			if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
-				copy_bigjoiner_crtc_state_nomodeset(state, crtc);
+			if (intel_crtc_is_joiner_slave(new_crtc_state))
+				copy_joiner_crtc_state_nomodeset(state, crtc);
 			else
 				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
 			continue;
 		}
 
-		if (drm_WARN_ON(&i915->drm, intel_crtc_is_bigjoiner_slave(new_crtc_state)))
+		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_slave(new_crtc_state)))
 			continue;
 
 		ret = intel_crtc_prepare_cleared_state(state, crtc);
@@ -6366,7 +6366,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (drm_WARN_ON(&i915->drm, intel_crtc_is_bigjoiner_slave(new_crtc_state)))
+		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_slave(new_crtc_state)))
 			continue;
 
 		if (!new_crtc_state->hw.enable)
@@ -6477,12 +6477,12 @@ int intel_atomic_check(struct drm_device *dev,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
+		if (intel_crtc_is_joiner_slave(new_crtc_state)) {
 			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
 			continue;
 		}
 
-		ret = intel_atomic_check_bigjoiner(state, crtc);
+		ret = intel_atomic_check_joiner(state, crtc);
 		if (ret)
 			goto fail;
 	}
@@ -6492,7 +6492,7 @@ int intel_atomic_check(struct drm_device *dev,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		intel_bigjoiner_adjust_pipe_src(new_crtc_state);
+		intel_joiner_adjust_pipe_src(new_crtc_state);
 
 		intel_crtc_check_fastset(old_crtc_state, new_crtc_state);
 	}
@@ -6532,8 +6532,8 @@ int intel_atomic_check(struct drm_device *dev,
 				intel_crtc_flag_modeset(new_crtc_state);
 		}
 
-		if (new_crtc_state->bigjoiner_pipes) {
-			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes))
+		if (new_crtc_state->joiner_pipes) {
+			if (intel_pipes_need_modeset(state, new_crtc_state->joiner_pipes))
 				intel_crtc_flag_modeset(new_crtc_state);
 		}
 	}
@@ -6947,7 +6947,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
+		if (intel_crtc_is_joiner_slave(old_crtc_state))
 			continue;
 
 		/* In case of Transcoder port Sync master slave CRTCs can be
@@ -6969,7 +6969,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
+		if (intel_crtc_is_joiner_slave(old_crtc_state))
 			continue;
 
 		intel_old_crtc_state_disables(state, crtc);
@@ -7048,7 +7048,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 	while (update_pipes) {
 		/*
-		 * Commit in reverse order to make bigjoiner master
+		 * Commit in reverse order to make joiner master
 		 * send the uapi events after slaves are done.
 		 */
 		for_each_oldnew_intel_crtc_in_state_reverse(state, crtc, old_crtc_state,
@@ -7094,7 +7094,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
+		if (intel_crtc_is_joiner_slave(new_crtc_state))
 			continue;
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
@@ -7116,7 +7116,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
+		if (intel_crtc_is_joiner_slave(new_crtc_state))
 			continue;
 
 		modeset_pipes &= ~intel_crtc_joined_pipe_mask(new_crtc_state);
@@ -7137,7 +7137,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	}
 
 	/*
-	 * Commit in reverse order to make bigjoiner master
+	 * Commit in reverse order to make joiner master
 	 * send the uapi events after slaves are done.
 	 */
 	for_each_new_intel_crtc_in_state_reverse(state, crtc, new_crtc_state, i) {
@@ -7865,7 +7865,7 @@ static int max_dotclock(struct drm_i915_private *i915)
 {
 	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
 
-	/* icl+ might use bigjoiner */
+	/* icl+ might use joiner */
 	if (DISPLAY_VER(i915) >= 11)
 		max_dotclock *= 2;
 
@@ -7990,7 +7990,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
-				bool bigjoiner)
+				bool joiner)
 {
 	int plane_width_max, plane_height_max;
 
@@ -8007,7 +8007,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * too big for that.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 11) {
-		plane_width_max = 5120 << bigjoiner;
+		plane_width_max = 5120 << joiner;
 		plane_height_max = 4320;
 	} else {
 		plane_width_max = 5120;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 56d1c0e3e62c..a2ec5309113e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -415,7 +415,7 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
-				bool bigjoiner);
+				bool joiner);
 enum drm_mode_status
 intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
 				const struct drm_display_mode *mode);
@@ -423,9 +423,9 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
-bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
-bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
-u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_joiner_slave(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_joiner_master(const struct intel_crtc_state *crtc_state);
+u8 intel_crtc_joiner_slave_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 86d9900c40af..329bddd4e8f4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -575,10 +575,10 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 
 	intel_scaler_info(m, crtc);
 
-	if (crtc_state->bigjoiner_pipes)
+	if (crtc_state->joiner_pipes)
 		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
-			   crtc_state->bigjoiner_pipes,
-			   intel_crtc_is_bigjoiner_slave(crtc_state) ? "slave" : "master");
+			   crtc_state->joiner_pipes,
+			   intel_crtc_is_joiner_slave(crtc_state) ? "slave" : "master");
 
 	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
 				    crtc_state->uapi.encoder_mask)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 83d6a3d901fd..671b6f56d23f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1345,7 +1345,7 @@ struct intel_crtc_state {
 	bool wgc_enable;
 
 	/* big joiner pipe bitmask */
-	u8 bigjoiner_pipes;
+	u8 joiner_pipes;
 
 	/* Display Stream compression state */
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fd054e16850d..69bc2a168257 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -437,7 +437,7 @@ int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 	return max_rate;
 }
 
-bool intel_dp_has_bigjoiner(struct intel_dp *intel_dp)
+bool intel_dp_has_joiner(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &intel_dig_port->base;
@@ -804,9 +804,9 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 }
 
 static
-u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
-				       u32 mode_clock, u32 mode_hdisplay,
-				       bool bigjoiner)
+u32 get_max_compressed_bpp_with_bigjoiner(struct drm_i915_private *i915,
+					  u32 mode_clock, u32 mode_hdisplay,
+					  bool bigjoiner)
 {
 	u32 max_bpp_small_joiner_ram;
 
@@ -815,7 +815,7 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 
 	if (bigjoiner) {
 		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
-		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
+		/* With joiner multiple dsc engines are used in parallel so PPC is 2 */
 		int ppc = 2;
 		u32 max_bpp_bigjoiner =
 			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
@@ -837,7 +837,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 pipe_bpp,
 					u32 timeslots)
 {
-	u32 bits_per_pixel, joiner_max_bpp;
+	u32 bits_per_pixel, bigjoiner_max_bpp;
 
 	/*
 	 * Available Link Bandwidth(Kbits/sec) = (NumberOfLanes)*
@@ -877,9 +877,9 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 				(link_clock * lane_count * 8),
 				intel_dp_mode_to_fec_clock(mode_clock));
 
-	joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, mode_clock,
-							    mode_hdisplay, bigjoiner);
-	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
+	bigjoiner_max_bpp = get_max_compressed_bpp_with_bigjoiner(i915, mode_clock,
+								  mode_hdisplay, bigjoiner);
+	bits_per_pixel = min(bits_per_pixel, bigjoiner_max_bpp);
 
 	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
 
@@ -888,7 +888,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-				bool bigjoiner)
+				bool joiner)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u8 min_slice_count, i;
@@ -922,14 +922,14 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
+		u8 test_slice_count = valid_dsc_slicecount[i] << joiner;
 
 		if (test_slice_count >
 		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
 			break;
 
 		/* big joiner needs small joiner to be enabled */
-		if (bigjoiner && test_slice_count < 4)
+		if (joiner && test_slice_count < 4)
 			continue;
 
 		if (min_slice_count <= test_slice_count)
@@ -1214,7 +1214,7 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (!intel_dp_has_bigjoiner(intel_dp))
+	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
 	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
@@ -2004,7 +2004,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
-	int dsc_joiner_max_bpp;
+	int dsc_bigjoiner_max_bpp;
 
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
 	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
@@ -2017,10 +2017,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 								pipe_bpp / 3);
 	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 
-	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
-								adjusted_mode->hdisplay,
-								pipe_config->bigjoiner_pipes);
-	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
+	dsc_bigjoiner_max_bpp = get_max_compressed_bpp_with_bigjoiner(i915, adjusted_mode->clock,
+								      adjusted_mode->hdisplay,
+								      pipe_config->joiner_pipes);
+	dsc_max_bpp = min(dsc_max_bpp, dsc_bigjoiner_max_bpp);
 	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
 
 	if (DISPLAY_VER(i915) >= 13)
@@ -2253,7 +2253,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
-						     pipe_config->bigjoiner_pipes);
+						     pipe_config->joiner_pipes);
 		if (!dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Compressed Slice Count not supported\n");
@@ -2267,7 +2267,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * is greater than the maximum Cdclock and if slice count is even
 	 * then we need to use 2 VDSC instances.
 	 */
-	if (pipe_config->bigjoiner_pipes || pipe_config->dsc.slice_count > 1)
+	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
 		pipe_config->dsc.dsc_split = true;
 
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
@@ -2436,9 +2436,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	if (intel_dp_need_bigjoiner(intel_dp, connector,
 				    adjusted_mode->crtc_hdisplay,
 				    adjusted_mode->crtc_clock))
-		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
+		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
-	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->bigjoiner_pipes);
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
@@ -2758,7 +2758,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	 * FIXME all joined pipes share the same transcoder.
 	 * Need to account for that when updating M/N live.
 	 */
-	if (has_seamless_m_n(connector) && !pipe_config->bigjoiner_pipes)
+	if (has_seamless_m_n(connector) && !pipe_config->joiner_pipes)
 		pipe_config->update_m_n = true;
 
 	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index aad2223df2a3..f87d52d1fe11 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -121,7 +121,7 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 				int max_dprx_rate, int max_dprx_lanes);
 bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner);
-bool intel_dp_has_bigjoiner(struct intel_dp *intel_dp);
+bool intel_dp_has_joiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
 void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
@@ -139,7 +139,7 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
-					bool bigjoiner,
+					bool joiner,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
@@ -149,7 +149,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-				bool bigjoiner);
+				bool joiner);
 bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 			     struct intel_connector *connector,
 			     int hdisplay, int clock);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 715d2f59f565..9db92cf12902 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -105,7 +105,7 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
 							       adjusted_mode->clock,
 							       adjusted_mode->hdisplay,
-							       crtc_state->bigjoiner_pipes);
+							       crtc_state->joiner_pipes);
 	}
 
 	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
@@ -570,13 +570,13 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (intel_dp_need_bigjoiner(intel_dp, connector,
 				    adjusted_mode->crtc_hdisplay,
 				    adjusted_mode->crtc_clock))
-		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
+		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->bigjoiner_pipes);
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->joiner_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_mst_compute_config_limits(intel_dp,
@@ -1375,7 +1375,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int ret;
-	bool dsc = false, bigjoiner = false;
+	bool dsc = false, joiner = false;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
@@ -1420,7 +1420,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 */
 	if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
 				    mode->hdisplay, target_clock)) {
-		bigjoiner = true;
+		joiner = true;
 		max_dotclk *= 2;
 	}
 
@@ -1449,20 +1449,20 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 								    max_lanes,
 								    target_clock,
 								    mode->hdisplay,
-								    bigjoiner,
+								    joiner,
 								    INTEL_OUTPUT_FORMAT_RGB,
 								    pipe_bpp, 64);
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_connector,
 							     target_clock,
 							     mode->hdisplay,
-							     bigjoiner);
+							     joiner);
 		}
 
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	if (intel_dp_joiner_needs_dsc(dev_priv, bigjoiner) && !dsc) {
+	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
@@ -1472,7 +1472,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 597f8bd6aa1a..ccdf49b2aebb 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -135,7 +135,7 @@ static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *c
 	frontbuffer_bits = INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
-					 crtc_state->bigjoiner_pipes)
+					 crtc_state->joiner_pipes)
 		frontbuffer_bits |= INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
 
 	return frontbuffer_bits;
@@ -157,7 +157,7 @@ void intel_drrs_activate(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->hw.active)
 		return;
 
-	if (intel_crtc_is_bigjoiner_slave(crtc_state))
+	if (intel_crtc_is_joiner_slave(crtc_state))
 		return;
 
 	mutex_lock(&crtc->drrs.mutex);
@@ -189,7 +189,7 @@ void intel_drrs_deactivate(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->hw.active)
 		return;
 
-	if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
+	if (intel_crtc_is_joiner_slave(old_crtc_state))
 		return;
 
 	mutex_lock(&crtc->drrs.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index caeca3a8442c..2e4c006122e5 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -68,7 +68,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	/* Everything's already locked, -EDEADLK can't happen. */
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
 					 BIT(pipe) |
-					 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {
+					 intel_crtc_joiner_slave_pipes(crtc_state)) {
 		struct intel_crtc_state *temp_crtc_state =
 			intel_atomic_get_crtc_state(state, temp_crtc);
 		int ret;
@@ -189,7 +189,7 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 
 /*
  * Return all the pipes using a transcoder in @transcoder_mask.
- * For bigjoiner configs return only the bigjoiner master.
+ * For joiner configs return only the joiner master.
  */
 static u8 get_transcoder_pipes(struct drm_i915_private *i915,
 			       u8 transcoder_mask)
@@ -204,7 +204,7 @@ static u8 get_transcoder_pipes(struct drm_i915_private *i915,
 		if (temp_crtc_state->cpu_transcoder == INVALID_TRANSCODER)
 			continue;
 
-		if (intel_crtc_is_bigjoiner_slave(temp_crtc_state))
+		if (intel_crtc_is_joiner_slave(temp_crtc_state))
 			continue;
 
 		if (transcoder_mask & BIT(temp_crtc_state->cpu_transcoder))
@@ -216,7 +216,7 @@ static u8 get_transcoder_pipes(struct drm_i915_private *i915,
 
 /*
  * Return the port sync master and slave pipes linked to @crtc.
- * For bigjoiner configs return only the bigjoiner master pipes.
+ * For joiner configs return only the joiner master pipes.
  */
 static void get_portsync_pipes(struct intel_crtc *crtc,
 			       u8 *master_pipe_mask, u8 *slave_pipes_mask)
@@ -248,7 +248,7 @@ static void get_portsync_pipes(struct intel_crtc *crtc,
 	*slave_pipes_mask = get_transcoder_pipes(i915, master_crtc_state->sync_mode_slaves_mask);
 }
 
-static u8 get_bigjoiner_slave_pipes(struct drm_i915_private *i915, u8 master_pipes_mask)
+static u8 get_joiner_slave_pipes(struct drm_i915_private *i915, u8 master_pipes_mask)
 {
 	struct intel_crtc *master_crtc;
 	u8 pipes = 0;
@@ -257,7 +257,7 @@ static u8 get_bigjoiner_slave_pipes(struct drm_i915_private *i915, u8 master_pip
 		struct intel_crtc_state *master_crtc_state =
 			to_intel_crtc_state(master_crtc->base.state);
 
-		pipes |= intel_crtc_bigjoiner_slave_pipes(master_crtc_state);
+		pipes |= intel_crtc_joiner_slave_pipes(master_crtc_state);
 	}
 
 	return pipes;
@@ -269,21 +269,21 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u8 portsync_master_mask;
 	u8 portsync_slaves_mask;
-	u8 bigjoiner_slaves_mask;
+	u8 joiner_slaves_mask;
 	struct intel_crtc *temp_crtc;
 
 	/* TODO: Add support for MST */
 	get_portsync_pipes(crtc, &portsync_master_mask, &portsync_slaves_mask);
-	bigjoiner_slaves_mask = get_bigjoiner_slave_pipes(i915,
+	joiner_slaves_mask = get_joiner_slave_pipes(i915,
 							  portsync_master_mask |
 							  portsync_slaves_mask);
 
 	drm_WARN_ON(&i915->drm,
 		    portsync_master_mask & portsync_slaves_mask ||
-		    portsync_master_mask & bigjoiner_slaves_mask ||
-		    portsync_slaves_mask & bigjoiner_slaves_mask);
+		    portsync_master_mask & joiner_slaves_mask ||
+		    portsync_slaves_mask & joiner_slaves_mask);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, bigjoiner_slaves_mask)
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, joiner_slaves_mask)
 		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, portsync_slaves_mask)
@@ -293,7 +293,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
-					 bigjoiner_slaves_mask |
+					 joiner_slaves_mask |
 					 portsync_slaves_mask |
 					 portsync_master_mask)
 		intel_crtc_disable_noatomic_complete(temp_crtc);
@@ -326,7 +326,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 
 static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state)
 {
-	if (intel_crtc_is_bigjoiner_slave(crtc_state))
+	if (intel_crtc_is_joiner_slave(crtc_state))
 		return;
 
 	crtc_state->uapi.enable = crtc_state->hw.enable;
@@ -474,7 +474,7 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 	}
 
 	if (!crtc_state->hw.active ||
-	    intel_crtc_is_bigjoiner_slave(crtc_state))
+	    intel_crtc_is_joiner_slave(crtc_state))
 		return false;
 
 	needs_link_reset = intel_crtc_needs_link_reset(crtc);
@@ -728,15 +728,15 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			encoder->base.crtc = &crtc->base;
 			intel_encoder_get_config(encoder, crtc_state);
 
-			/* read out to slave crtc as well for bigjoiner */
-			if (crtc_state->bigjoiner_pipes) {
+			/* read out to slave crtc as well for joiner */
+			if (crtc_state->joiner_pipes) {
 				struct intel_crtc *slave_crtc;
 
-				/* encoder should read be linked to bigjoiner master */
-				WARN_ON(intel_crtc_is_bigjoiner_slave(crtc_state));
+				/* encoder should read be linked to joiner master */
+				WARN_ON(intel_crtc_is_joiner_slave(crtc_state));
 
 				for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-								 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {
+								 intel_crtc_joiner_slave_pipes(crtc_state)) {
 					struct intel_crtc_state *slave_crtc_state;
 
 					slave_crtc_state = to_intel_crtc_state(slave_crtc->base.state);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4a4124a92a0d..2a03ff6c41e5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1460,13 +1460,13 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	/*
-	 * FIXME figure out what is wrong with PSR+bigjoiner and
+	 * FIXME figure out what is wrong with PSR+joiner and
 	 * fix it. Presumably something related to the fact that
 	 * PSR is a transcoder level feature.
 	 */
-	if (crtc_state->bigjoiner_pipes) {
+	if (crtc_state->joiner_pipes) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "PSR disabled due to bigjoiner\n");
+			    "PSR disabled due to joiner\n");
 		return;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index d76e70846a8c..56827340982b 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -379,7 +379,7 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 {
 	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
 
-	if (crtc_state->bigjoiner_pipes)
+	if (crtc_state->joiner_pipes)
 		num_vdsc_instances *= 2;
 
 	return num_vdsc_instances;
@@ -760,8 +760,8 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dss_ctl1_val = 0;
 
-	if (crtc_state->bigjoiner_pipes && !crtc_state->dsc.compression_enable) {
-		if (intel_crtc_is_bigjoiner_slave(crtc_state))
+	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
+		if (intel_crtc_is_joiner_slave(crtc_state))
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_SLAVE;
 		else
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_MASTER;
@@ -788,9 +788,9 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
-	if (crtc_state->bigjoiner_pipes) {
+	if (crtc_state->joiner_pipes) {
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
-		if (!intel_crtc_is_bigjoiner_slave(crtc_state))
+		if (!intel_crtc_is_joiner_slave(crtc_state))
 			dss_ctl1_val |= MASTER_BIG_JOINER_ENABLE;
 	}
 	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
@@ -804,7 +804,7 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 
 	/* Disable only if either of them is enabled */
 	if (old_crtc_state->dsc.compression_enable ||
-	    old_crtc_state->bigjoiner_pipes) {
+	    old_crtc_state->joiner_pipes) {
 		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
 		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 2cc41ff08909..b12ed71c42c0 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -21,7 +21,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
 void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
 enum intel_display_power_domain
 intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
-struct intel_crtc *intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc);
+struct intel_crtc *intel_dsc_get_joiner_secondary(const struct intel_crtc *primary_crtc);
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state);
 void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5f3657aa8313..58531f02971b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -123,7 +123,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 * FIXME all joined pipes share the same transcoder.
 	 * Need to account for that during VRR toggle/push/etc.
 	 */
-	if (crtc_state->bigjoiner_pipes)
+	if (crtc_state->joiner_pipes)
 		return;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 1aa70fc35b9d..8a66b1002a74 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2558,9 +2558,9 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	drm_WARN_ON(dev, pipe != crtc->pipe);
 
-	if (crtc_state->bigjoiner_pipes) {
+	if (crtc_state->joiner_pipes) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "Unsupported bigjoiner configuration for initial FB\n");
+			    "Unsupported joiner configuration for initial FB\n");
 		return;
 	}
 
-- 
2.37.3

