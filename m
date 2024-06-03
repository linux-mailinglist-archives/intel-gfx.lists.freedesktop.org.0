Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD198D8123
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 13:26:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C3E10E36A;
	Mon,  3 Jun 2024 11:26:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ChV4iLqk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F36610E362
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 11:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717413957; x=1748949957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DSQPdMzSafailTHjBZYg+5CQmQCIqF/lbtRY3mHEJqA=;
 b=ChV4iLqkJnYb+WZFo2F9EBRvdaA4DRS70zAvAQMBMg/j4vIG8rMSGiNY
 /GtItKl51XTT7y9eNyR1Spj9/7S6pm5Fj8PJvHhYfk4YwuNA5a5fT0IZ2
 krXbeU/vdMW0Nb+XrNtyo1ajZrYslFGWrqEZDyR7pojcX7Ye5+zABaBLX
 3YV/zSBkXwsqGpmFkAieuVl0qwsnCykMP74/uwQfQHYAT6emPPGuUJROH
 cvfprF+/7BSwZ6tLA4WpXglWXcKeS6QGPC6yKZBvGKttV7X2DYIn3ZAIx
 Cpvv2gvTX38Dg2yuN5l+Cbr9t0FTAQqE15S1RZze0BzOx/gyTfq7+ukGb g==;
X-CSE-ConnectionGUID: oxfdQE5zQWOIuBMBSMT6JA==
X-CSE-MsgGUID: Vi3jgzVBQR6wDkSYpr8e8A==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="39300248"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="39300248"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 04:25:57 -0700
X-CSE-ConnectionGUID: 2vzbiJKvTE+NUKf0b/87sg==
X-CSE-MsgGUID: LpgRMV53RAqew1aPih6kJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="74342213"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa001.jf.intel.com with ESMTP; 03 Jun 2024 04:25:55 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/3] drm/i915: Rename bigjoiner master/slave to bigjoiner
 primary/secondary
Date: Mon,  3 Jun 2024 14:25:50 +0300
Message-Id: <20240603112551.6481-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240603112551.6481-1-stanislav.lisovskiy@intel.com>
References: <20240603112551.6481-1-stanislav.lisovskiy@intel.com>
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

According to BSpec we now should call "master" pipes, "primary" pipes
and "slave" pipes, should be "secondary" pipes.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  20 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  18 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 302 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   4 +-
 .../drm/i915/display/intel_modeset_setup.c    |  66 ++--
 .../drm/i915/display/intel_modeset_verify.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   6 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   2 +-
 11 files changed, 220 insertions(+), 220 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 36798899222b..1a4ecf0d441a 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -713,27 +713,27 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 		intel_atomic_get_new_plane_state(state, plane);
 	const struct intel_plane_state *old_plane_state =
 		intel_atomic_get_old_plane_state(state, plane);
-	const struct intel_plane_state *new_master_plane_state;
+	const struct intel_plane_state *new_primary_plane_state;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, plane->pipe);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (new_crtc_state && intel_crtc_is_joiner_slave(new_crtc_state)) {
-		struct intel_crtc *master_crtc =
-			intel_master_crtc(new_crtc_state);
-		struct intel_plane *master_plane =
-			intel_crtc_get_plane(master_crtc, plane->id);
+	if (new_crtc_state && intel_crtc_is_joiner_secondary(new_crtc_state)) {
+		struct intel_crtc *primary_crtc =
+			intel_primary_crtc(new_crtc_state);
+		struct intel_plane *primary_plane =
+			intel_crtc_get_plane(primary_crtc, plane->id);
 
-		new_master_plane_state =
-			intel_atomic_get_new_plane_state(state, master_plane);
+		new_primary_plane_state =
+			intel_atomic_get_new_plane_state(state, primary_plane);
 	} else {
-		new_master_plane_state = new_plane_state;
+		new_primary_plane_state = new_plane_state;
 	}
 
 	intel_plane_copy_uapi_to_hw_state(new_plane_state,
-					  new_master_plane_state,
+					  new_primary_plane_state,
 					  crtc);
 
 	new_plane_state->uapi.visible = false;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 5d35c5537eaa..6df526e189b5 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -223,8 +223,8 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->sync_mode_slaves_mask);
 
 	drm_printf(&p, "joiner: %s, pipes: 0x%x\n",
-		   intel_crtc_is_joiner_slave(pipe_config) ? "slave" :
-		   intel_crtc_is_joiner_master(pipe_config) ? "master" : "no",
+		   intel_crtc_is_joiner_secondary(pipe_config) ? "secondary" :
+		   intel_crtc_is_joiner_primary(pipe_config) ? "primary" : "no",
 		   pipe_config->joiner_pipes);
 
 	drm_printf(&p, "splitter: %s, link count %d, overlap %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 81f644533504..52aec3b57e87 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3187,21 +3187,21 @@ static void trans_port_sync_stop_link_train(struct intel_atomic_state *state,
 	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
 		struct intel_encoder *slave_encoder =
 			to_intel_encoder(conn_state->best_encoder);
-		struct intel_crtc *slave_crtc = to_intel_crtc(conn_state->crtc);
-		const struct intel_crtc_state *slave_crtc_state;
+		struct intel_crtc *secondary_crtc = to_intel_crtc(conn_state->crtc);
+		const struct intel_crtc_state *secondary_crtc_state;
 
-		if (!slave_crtc)
+		if (!secondary_crtc)
 			continue;
 
-		slave_crtc_state =
-			intel_atomic_get_new_crtc_state(state, slave_crtc);
+		secondary_crtc_state =
+			intel_atomic_get_new_crtc_state(state, secondary_crtc);
 
-		if (slave_crtc_state->master_transcoder !=
+		if (secondary_crtc_state->master_transcoder !=
 		    crtc_state->cpu_transcoder)
 			continue;
 
 		intel_dp_stop_link_train(enc_to_intel_dp(slave_encoder),
-					 slave_crtc_state);
+					 secondary_crtc_state);
 	}
 
 	usleep_range(200, 400);
@@ -3506,11 +3506,11 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 	bool is_tc_port = intel_encoder_is_tc(encoder);
 
 	if (is_tc_port) {
-		struct intel_crtc *master_crtc =
+		struct intel_crtc *primary_crtc =
 			to_intel_crtc(crtc_state->uapi.crtc);
 
 		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
-		intel_ddi_update_active_dpll(state, encoder, master_crtc);
+		intel_ddi_update_active_dpll(state, encoder, primary_crtc);
 	}
 
 	main_link_aux_power_domain_get(dig_port, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f06c1c0b5f42..c7d2da57fbf8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -246,33 +246,33 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
-static enum pipe joiner_master_pipe(const struct intel_crtc_state *crtc_state)
+static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
 {
 	return ffs(crtc_state->joiner_pipes) - 1;
 }
 
-u8 intel_crtc_joiner_slave_pipes(const struct intel_crtc_state *crtc_state)
+u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
-		return crtc_state->joiner_pipes & ~BIT(joiner_master_pipe(crtc_state));
+		return crtc_state->joiner_pipes & ~BIT(joiner_primary_pipe(crtc_state));
 	else
 		return 0;
 }
 
-bool intel_crtc_is_joiner_slave(const struct intel_crtc_state *crtc_state)
+bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	return crtc_state->joiner_pipes &&
-		crtc->pipe != joiner_master_pipe(crtc_state);
+		crtc->pipe != joiner_primary_pipe(crtc_state);
 }
 
-bool intel_crtc_is_joiner_master(const struct intel_crtc_state *crtc_state)
+bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	return crtc_state->joiner_pipes &&
-		crtc->pipe == joiner_master_pipe(crtc_state);
+		crtc->pipe == joiner_primary_pipe(crtc_state);
 }
 
 static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
@@ -287,12 +287,12 @@ u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
 	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
 }
 
-struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
+struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (intel_crtc_is_joiner_slave(crtc_state))
-		return intel_crtc_for_pipe(i915, joiner_master_pipe(crtc_state));
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return intel_crtc_for_pipe(i915, joiner_primary_pipe(crtc_state));
 	else
 		return to_intel_crtc(crtc_state->uapi.crtc);
 }
@@ -802,14 +802,14 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 	const struct drm_connector_state *connector_state;
 	const struct drm_connector *connector;
 	struct intel_encoder *encoder = NULL;
-	struct intel_crtc *master_crtc;
+	struct intel_crtc *primary_crtc;
 	int num_encoders = 0;
 	int i;
 
-	master_crtc = intel_master_crtc(crtc_state);
+	primary_crtc = intel_primary_crtc(crtc_state);
 
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
-		if (connector_state->crtc != &master_crtc->base)
+		if (connector_state->crtc != &primary_crtc->base)
 			continue;
 
 		encoder = to_intel_encoder(connector_state->best_encoder);
@@ -818,7 +818,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 
 	drm_WARN(state->base.dev, num_encoders != 1,
 		 "%d encoders for pipe %c\n",
-		 num_encoders, pipe_name(master_crtc->pipe));
+		 num_encoders, pipe_name(primary_crtc->pipe));
 
 	return encoder;
 }
@@ -2855,17 +2855,17 @@ static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	int num_pipes = intel_joiner_num_pipes(crtc_state);
-	enum pipe master_pipe, pipe = crtc->pipe;
+	enum pipe primary_pipe, pipe = crtc->pipe;
 	int width;
 
 	if (num_pipes < 2)
 		return;
 
-	master_pipe = joiner_master_pipe(crtc_state);
+	primary_pipe = joiner_primary_pipe(crtc_state);
 	width = drm_rect_width(&crtc_state->pipe_src);
 
 	drm_rect_translate_to(&crtc_state->pipe_src,
-			      (pipe - master_pipe) * width, 0);
+			      (pipe - primary_pipe) * width, 0);
 }
 
 static void intel_get_pipe_src_size(struct intel_crtc *crtc,
@@ -3495,12 +3495,12 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 }
 
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
-				    u8 *master_pipes, u8 *slave_pipes)
+				    u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_crtc *crtc;
 
-	*master_pipes = 0;
-	*slave_pipes = 0;
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
 					 joiner_pipes(dev_priv)) {
@@ -3515,10 +3515,10 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 			if (!(tmp & BIG_JOINER_ENABLE))
 				continue;
 
-			if (tmp & MASTER_BIG_JOINER_ENABLE)
-				*master_pipes |= BIT(pipe);
+			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
+				*primary_pipes |= BIT(pipe);
 			else
-				*slave_pipes |= BIT(pipe);
+				*secondary_pipes |= BIT(pipe);
 		}
 
 		if (DISPLAY_VER(dev_priv) < 13)
@@ -3529,47 +3529,47 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (tmp & UNCOMPRESSED_JOINER_MASTER)
-				*master_pipes |= BIT(pipe);
+				*primary_pipes |= BIT(pipe);
 			if (tmp & UNCOMPRESSED_JOINER_SLAVE)
-				*slave_pipes |= BIT(pipe);
+				*secondary_pipes |= BIT(pipe);
 		}
 	}
 
 	/* Bigjoiner pipes should always be consecutive master and slave */
-	drm_WARN(&dev_priv->drm, *slave_pipes != *master_pipes << 1,
+	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
 		 "Bigjoiner misconfigured (master pipes 0x%x, slave pipes 0x%x)\n",
-		 *master_pipes, *slave_pipes);
+		 *primary_pipes, *secondary_pipes);
 }
 
-static enum pipe get_joiner_master_pipe(enum pipe pipe, u8 master_pipes, u8 slave_pipes)
+static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
 {
-	if ((slave_pipes & BIT(pipe)) == 0)
+	if ((secondary_pipes & BIT(pipe)) == 0)
 		return pipe;
 
 	/* ignore everything above our pipe */
-	master_pipes &= ~GENMASK(7, pipe);
+	primary_pipes &= ~GENMASK(7, pipe);
 
 	/* highest remaining bit should be our master pipe */
-	return fls(master_pipes) - 1;
+	return fls(primary_pipes) - 1;
 }
 
-static u8 get_joiner_slave_pipes(enum pipe pipe, u8 master_pipes, u8 slave_pipes)
+static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
 {
-	enum pipe master_pipe, next_master_pipe;
+	enum pipe primary_pipe, next_primary_pipe;
 
-	master_pipe = get_joiner_master_pipe(pipe, master_pipes, slave_pipes);
+	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes);
 
-	if ((master_pipes & BIT(master_pipe)) == 0)
+	if ((primary_pipes & BIT(primary_pipe)) == 0)
 		return 0;
 
 	/* ignore our master pipe and everything below it */
-	master_pipes &= ~GENMASK(master_pipe, 0);
+	primary_pipes &= ~GENMASK(primary_pipe, 0);
 	/* make sure a high bit is set for the ffs() */
-	master_pipes |= BIT(7);
+	primary_pipes |= BIT(7);
 	/* lowest remaining bit should be the next master pipe */
-	next_master_pipe = ffs(master_pipes) - 1;
+	next_primary_pipe = ffs(primary_pipes) - 1;
 
-	return slave_pipes & GENMASK(next_master_pipe - 1, master_pipe);
+	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
 }
 
 static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
@@ -3588,7 +3588,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
 	enum transcoder cpu_transcoder;
-	u8 master_pipes, slave_pipes;
+	u8 primary_pipes, secondary_pipes;
 	u8 enabled_transcoders = 0;
 
 	/*
@@ -3640,10 +3640,10 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 		enabled_transcoders |= BIT(cpu_transcoder);
 
 	/* joiner slave -> consider the master pipe's transcoder as well */
-	enabled_joiner_pipes(dev_priv, &master_pipes, &slave_pipes);
-	if (slave_pipes & BIT(crtc->pipe)) {
+	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
+	if (secondary_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder)
-			get_joiner_master_pipe(crtc->pipe, master_pipes, slave_pipes);
+			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
 		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
@@ -3772,17 +3772,17 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	u8 master_pipes, slave_pipes;
+	u8 primary_pipes, secondary_pipes;
 	enum pipe pipe = crtc->pipe;
 
-	enabled_joiner_pipes(i915, &master_pipes, &slave_pipes);
+	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
 
-	if (((master_pipes | slave_pipes) & BIT(pipe)) == 0)
+	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
 		return;
 
 	crtc_state->joiner_pipes =
-		BIT(get_joiner_master_pipe(pipe, master_pipes, slave_pipes)) |
-		get_joiner_slave_pipes(pipe, master_pipes, slave_pipes);
+		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
+		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
 }
 
 static bool hsw_get_pipe_config(struct intel_crtc *crtc,
@@ -4449,7 +4449,7 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	WARN_ON(intel_crtc_is_joiner_slave(crtc_state));
+	WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
 
 	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
 				  crtc_state->uapi.degamma_lut);
@@ -4466,7 +4466,7 @@ intel_crtc_copy_uapi_to_hw_state_modeset(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	WARN_ON(intel_crtc_is_joiner_slave(crtc_state));
+	WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
 
 	crtc_state->hw.enable = crtc_state->uapi.enable;
 	crtc_state->hw.active = crtc_state->uapi.active;
@@ -4481,78 +4481,78 @@ intel_crtc_copy_uapi_to_hw_state_modeset(struct intel_atomic_state *state,
 
 static void
 copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
-				    struct intel_crtc *slave_crtc)
+				    struct intel_crtc *secondary_crtc)
 {
-	struct intel_crtc_state *slave_crtc_state =
-		intel_atomic_get_new_crtc_state(state, slave_crtc);
-	struct intel_crtc *master_crtc = intel_master_crtc(slave_crtc_state);
-	const struct intel_crtc_state *master_crtc_state =
-		intel_atomic_get_new_crtc_state(state, master_crtc);
+	struct intel_crtc_state *secondary_crtc_state =
+		intel_atomic_get_new_crtc_state(state, secondary_crtc);
+	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
+	const struct intel_crtc_state *primary_crtc_state =
+		intel_atomic_get_new_crtc_state(state, primary_crtc);
 
-	drm_property_replace_blob(&slave_crtc_state->hw.degamma_lut,
-				  master_crtc_state->hw.degamma_lut);
-	drm_property_replace_blob(&slave_crtc_state->hw.gamma_lut,
-				  master_crtc_state->hw.gamma_lut);
-	drm_property_replace_blob(&slave_crtc_state->hw.ctm,
-				  master_crtc_state->hw.ctm);
+	drm_property_replace_blob(&secondary_crtc_state->hw.degamma_lut,
+				  primary_crtc_state->hw.degamma_lut);
+	drm_property_replace_blob(&secondary_crtc_state->hw.gamma_lut,
+				  primary_crtc_state->hw.gamma_lut);
+	drm_property_replace_blob(&secondary_crtc_state->hw.ctm,
+				  primary_crtc_state->hw.ctm);
 
-	slave_crtc_state->uapi.color_mgmt_changed = master_crtc_state->uapi.color_mgmt_changed;
+	secondary_crtc_state->uapi.color_mgmt_changed = primary_crtc_state->uapi.color_mgmt_changed;
 }
 
 static int
 copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
-				  struct intel_crtc *slave_crtc)
+				  struct intel_crtc *secondary_crtc)
 {
-	struct intel_crtc_state *slave_crtc_state =
-		intel_atomic_get_new_crtc_state(state, slave_crtc);
-	struct intel_crtc *master_crtc = intel_master_crtc(slave_crtc_state);
-	const struct intel_crtc_state *master_crtc_state =
-		intel_atomic_get_new_crtc_state(state, master_crtc);
+	struct intel_crtc_state *secondary_crtc_state =
+		intel_atomic_get_new_crtc_state(state, secondary_crtc);
+	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
+	const struct intel_crtc_state *primary_crtc_state =
+		intel_atomic_get_new_crtc_state(state, primary_crtc);
 	struct intel_crtc_state *saved_state;
 
-	WARN_ON(master_crtc_state->joiner_pipes !=
-		slave_crtc_state->joiner_pipes);
+	WARN_ON(primary_crtc_state->joiner_pipes !=
+		secondary_crtc_state->joiner_pipes);
 
-	saved_state = kmemdup(master_crtc_state, sizeof(*saved_state), GFP_KERNEL);
+	saved_state = kmemdup(primary_crtc_state, sizeof(*saved_state), GFP_KERNEL);
 	if (!saved_state)
 		return -ENOMEM;
 
 	/* preserve some things from the slave's original crtc state */
-	saved_state->uapi = slave_crtc_state->uapi;
-	saved_state->scaler_state = slave_crtc_state->scaler_state;
-	saved_state->shared_dpll = slave_crtc_state->shared_dpll;
-	saved_state->crc_enabled = slave_crtc_state->crc_enabled;
-
-	intel_crtc_free_hw_state(slave_crtc_state);
-	if (slave_crtc_state->dp_tunnel_ref.tunnel)
-		drm_dp_tunnel_ref_put(&slave_crtc_state->dp_tunnel_ref);
-	memcpy(slave_crtc_state, saved_state, sizeof(*slave_crtc_state));
+	saved_state->uapi = secondary_crtc_state->uapi;
+	saved_state->scaler_state = secondary_crtc_state->scaler_state;
+	saved_state->shared_dpll = secondary_crtc_state->shared_dpll;
+	saved_state->crc_enabled = secondary_crtc_state->crc_enabled;
+
+	intel_crtc_free_hw_state(secondary_crtc_state);
+	if (secondary_crtc_state->dp_tunnel_ref.tunnel)
+		drm_dp_tunnel_ref_put(&secondary_crtc_state->dp_tunnel_ref);
+	memcpy(secondary_crtc_state, saved_state, sizeof(*secondary_crtc_state));
 	kfree(saved_state);
 
 	/* Re-init hw state */
-	memset(&slave_crtc_state->hw, 0, sizeof(slave_crtc_state->hw));
-	slave_crtc_state->hw.enable = master_crtc_state->hw.enable;
-	slave_crtc_state->hw.active = master_crtc_state->hw.active;
-	drm_mode_copy(&slave_crtc_state->hw.mode,
-		      &master_crtc_state->hw.mode);
-	drm_mode_copy(&slave_crtc_state->hw.pipe_mode,
-		      &master_crtc_state->hw.pipe_mode);
-	drm_mode_copy(&slave_crtc_state->hw.adjusted_mode,
-		      &master_crtc_state->hw.adjusted_mode);
-	slave_crtc_state->hw.scaling_filter = master_crtc_state->hw.scaling_filter;
-
-	if (master_crtc_state->dp_tunnel_ref.tunnel)
-		drm_dp_tunnel_ref_get(master_crtc_state->dp_tunnel_ref.tunnel,
-				      &slave_crtc_state->dp_tunnel_ref);
-
-	copy_joiner_crtc_state_nomodeset(state, slave_crtc);
-
-	slave_crtc_state->uapi.mode_changed = master_crtc_state->uapi.mode_changed;
-	slave_crtc_state->uapi.connectors_changed = master_crtc_state->uapi.connectors_changed;
-	slave_crtc_state->uapi.active_changed = master_crtc_state->uapi.active_changed;
-
-	WARN_ON(master_crtc_state->joiner_pipes !=
-		slave_crtc_state->joiner_pipes);
+	memset(&secondary_crtc_state->hw, 0, sizeof(secondary_crtc_state->hw));
+	secondary_crtc_state->hw.enable = primary_crtc_state->hw.enable;
+	secondary_crtc_state->hw.active = primary_crtc_state->hw.active;
+	drm_mode_copy(&secondary_crtc_state->hw.mode,
+		      &primary_crtc_state->hw.mode);
+	drm_mode_copy(&secondary_crtc_state->hw.pipe_mode,
+		      &primary_crtc_state->hw.pipe_mode);
+	drm_mode_copy(&secondary_crtc_state->hw.adjusted_mode,
+		      &primary_crtc_state->hw.adjusted_mode);
+	secondary_crtc_state->hw.scaling_filter = primary_crtc_state->hw.scaling_filter;
+
+	if (primary_crtc_state->dp_tunnel_ref.tunnel)
+		drm_dp_tunnel_ref_get(primary_crtc_state->dp_tunnel_ref.tunnel,
+				      &secondary_crtc_state->dp_tunnel_ref);
+
+	copy_joiner_crtc_state_nomodeset(state, secondary_crtc);
+
+	secondary_crtc_state->uapi.mode_changed = primary_crtc_state->uapi.mode_changed;
+	secondary_crtc_state->uapi.connectors_changed = primary_crtc_state->uapi.connectors_changed;
+	secondary_crtc_state->uapi.active_changed = primary_crtc_state->uapi.active_changed;
+
+	WARN_ON(primary_crtc_state->joiner_pipes !=
+		secondary_crtc_state->joiner_pipes);
 
 	return 0;
 }
@@ -5903,46 +5903,46 @@ static bool intel_pipes_need_modeset(struct intel_atomic_state *state,
 }
 
 static int intel_atomic_check_joiner(struct intel_atomic_state *state,
-					struct intel_crtc *master_crtc)
+					struct intel_crtc *primary_crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	struct intel_crtc_state *master_crtc_state =
-		intel_atomic_get_new_crtc_state(state, master_crtc);
-	struct intel_crtc *slave_crtc;
+	struct intel_crtc_state *primary_crtc_state =
+		intel_atomic_get_new_crtc_state(state, primary_crtc);
+	struct intel_crtc *secondary_crtc;
 
-	if (!master_crtc_state->joiner_pipes)
+	if (!primary_crtc_state->joiner_pipes)
 		return 0;
 
 	/* sanity check */
 	if (drm_WARN_ON(&i915->drm,
-			master_crtc->pipe != joiner_master_pipe(master_crtc_state)))
+			primary_crtc->pipe != joiner_primary_pipe(primary_crtc_state)))
 		return -EINVAL;
 
-	if (master_crtc_state->joiner_pipes & ~joiner_pipes(i915)) {
+	if (primary_crtc_state->joiner_pipes & ~joiner_pipes(i915)) {
 		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] Cannot act as big joiner master "
 			    "(need 0x%x as pipes, only 0x%x possible)\n",
-			    master_crtc->base.base.id, master_crtc->base.name,
-			    master_crtc_state->joiner_pipes, joiner_pipes(i915));
+			    primary_crtc->base.base.id, primary_crtc->base.name,
+			    primary_crtc_state->joiner_pipes, joiner_pipes(i915));
 		return -EINVAL;
 	}
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-					 intel_crtc_joiner_slave_pipes(master_crtc_state)) {
-		struct intel_crtc_state *slave_crtc_state;
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
+					 intel_crtc_joiner_secondary_pipes(primary_crtc_state)) {
+		struct intel_crtc_state *secondary_crtc_state;
 		int ret;
 
-		slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave_crtc);
-		if (IS_ERR(slave_crtc_state))
-			return PTR_ERR(slave_crtc_state);
+		secondary_crtc_state = intel_atomic_get_crtc_state(&state->base, secondary_crtc);
+		if (IS_ERR(secondary_crtc_state))
+			return PTR_ERR(secondary_crtc_state);
 
 		/* master being enabled, slave was already configured? */
-		if (slave_crtc_state->uapi.enable) {
+		if (secondary_crtc_state->uapi.enable) {
 			drm_dbg_kms(&i915->drm,
 				    "[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
 				    "[CRTC:%d:%s] claiming this CRTC for joiner.\n",
-				    slave_crtc->base.base.id, slave_crtc->base.name,
-				    master_crtc->base.base.id, master_crtc->base.name);
+				    secondary_crtc->base.base.id, secondary_crtc->base.name,
+				    primary_crtc->base.base.id, primary_crtc->base.name);
 			return -EINVAL;
 		}
 
@@ -5953,19 +5953,19 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 		 * and the hardware requires master pipe < slave pipe as well.
 		 * Should that change we need to rethink the logic.
 		 */
-		if (WARN_ON(drm_crtc_index(&master_crtc->base) >
-			    drm_crtc_index(&slave_crtc->base)))
+		if (WARN_ON(drm_crtc_index(&primary_crtc->base) >
+			    drm_crtc_index(&secondary_crtc->base)))
 			return -EINVAL;
 
 		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] Used as slave for big joiner master [CRTC:%d:%s]\n",
-			    slave_crtc->base.base.id, slave_crtc->base.name,
-			    master_crtc->base.base.id, master_crtc->base.name);
+			    secondary_crtc->base.base.id, secondary_crtc->base.name,
+			    primary_crtc->base.base.id, primary_crtc->base.name);
 
-		slave_crtc_state->joiner_pipes =
-			master_crtc_state->joiner_pipes;
+		secondary_crtc_state->joiner_pipes =
+			primary_crtc_state->joiner_pipes;
 
-		ret = copy_joiner_crtc_state_modeset(state, slave_crtc);
+		ret = copy_joiner_crtc_state_modeset(state, secondary_crtc);
 		if (ret)
 			return ret;
 	}
@@ -5973,25 +5973,25 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void kill_joiner_slave(struct intel_atomic_state *state,
-				 struct intel_crtc *master_crtc)
+static void kill_joiner_secondary(struct intel_atomic_state *state,
+				 struct intel_crtc *primary_crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	struct intel_crtc_state *master_crtc_state =
-		intel_atomic_get_new_crtc_state(state, master_crtc);
-	struct intel_crtc *slave_crtc;
+	struct intel_crtc_state *primary_crtc_state =
+		intel_atomic_get_new_crtc_state(state, primary_crtc);
+	struct intel_crtc *secondary_crtc;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-					 intel_crtc_joiner_slave_pipes(master_crtc_state)) {
-		struct intel_crtc_state *slave_crtc_state =
-			intel_atomic_get_new_crtc_state(state, slave_crtc);
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
+					 intel_crtc_joiner_secondary_pipes(primary_crtc_state)) {
+		struct intel_crtc_state *secondary_crtc_state =
+			intel_atomic_get_new_crtc_state(state, secondary_crtc);
 
-		slave_crtc_state->joiner_pipes = 0;
+		secondary_crtc_state->joiner_pipes = 0;
 
-		intel_crtc_copy_uapi_to_hw_state_modeset(state, slave_crtc);
+		intel_crtc_copy_uapi_to_hw_state_modeset(state, secondary_crtc);
 	}
 
-	master_crtc_state->joiner_pipes = 0;
+	primary_crtc_state->joiner_pipes = 0;
 }
 
 /**
@@ -6311,8 +6311,8 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		/* Kill old joiner link, we may re-establish afterwards */
 		if (intel_crtc_needs_modeset(crtc_state) &&
-		    intel_crtc_is_joiner_master(crtc_state))
-			kill_joiner_slave(state, crtc);
+		    intel_crtc_is_joiner_primary(crtc_state))
+			kill_joiner_secondary(state, crtc);
 	}
 
 	return 0;
@@ -6340,14 +6340,14 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state)) {
-			if (intel_crtc_is_joiner_slave(new_crtc_state))
+			if (intel_crtc_is_joiner_secondary(new_crtc_state))
 				copy_joiner_crtc_state_nomodeset(state, crtc);
 			else
 				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
 			continue;
 		}
 
-		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_slave(new_crtc_state)))
+		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_secondary(new_crtc_state)))
 			continue;
 
 		ret = intel_crtc_prepare_cleared_state(state, crtc);
@@ -6366,7 +6366,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_slave(new_crtc_state)))
+		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_secondary(new_crtc_state)))
 			continue;
 
 		if (!new_crtc_state->hw.enable)
@@ -6477,7 +6477,7 @@ int intel_atomic_check(struct drm_device *dev,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (intel_crtc_is_joiner_slave(new_crtc_state)) {
+		if (intel_crtc_is_joiner_secondary(new_crtc_state)) {
 			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
 			continue;
 		}
@@ -6947,7 +6947,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_slave(old_crtc_state))
+		if (intel_crtc_is_joiner_secondary(old_crtc_state))
 			continue;
 
 		/* In case of Transcoder port Sync master slave CRTCs can be
@@ -6969,7 +6969,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_slave(old_crtc_state))
+		if (intel_crtc_is_joiner_secondary(old_crtc_state))
 			continue;
 
 		intel_old_crtc_state_disables(state, crtc);
@@ -7094,7 +7094,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_slave(new_crtc_state))
+		if (intel_crtc_is_joiner_secondary(new_crtc_state))
 			continue;
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
@@ -7116,7 +7116,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_slave(new_crtc_state))
+		if (intel_crtc_is_joiner_secondary(new_crtc_state))
 			continue;
 
 		modeset_pipes &= ~intel_crtc_joined_pipe_mask(new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index a2ec5309113e..48454cf21906 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -423,10 +423,10 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
-bool intel_crtc_is_joiner_slave(const struct intel_crtc_state *crtc_state);
-bool intel_crtc_is_joiner_master(const struct intel_crtc_state *crtc_state);
-u8 intel_crtc_joiner_slave_pipes(const struct intel_crtc_state *crtc_state);
-struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
+u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
+struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f681234d5b0b..605ee9f95121 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -578,7 +578,7 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 	if (crtc_state->joiner_pipes)
 		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
 			   crtc_state->joiner_pipes,
-			   intel_crtc_is_joiner_slave(crtc_state) ? "slave" : "master");
+			   intel_crtc_is_joiner_secondary(crtc_state) ? "slave" : "master");
 
 	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
 				    crtc_state->uapi.encoder_mask)
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index ccdf49b2aebb..9c0aec0b150d 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -157,7 +157,7 @@ void intel_drrs_activate(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->hw.active)
 		return;
 
-	if (intel_crtc_is_joiner_slave(crtc_state))
+	if (intel_crtc_is_joiner_secondary(crtc_state))
 		return;
 
 	mutex_lock(&crtc->drrs.mutex);
@@ -189,7 +189,7 @@ void intel_drrs_deactivate(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->hw.active)
 		return;
 
-	if (intel_crtc_is_joiner_slave(old_crtc_state))
+	if (intel_crtc_is_joiner_secondary(old_crtc_state))
 		return;
 
 	mutex_lock(&crtc->drrs.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 2e4c006122e5..e69008ea75f8 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -68,7 +68,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	/* Everything's already locked, -EDEADLK can't happen. */
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
 					 BIT(pipe) |
-					 intel_crtc_joiner_slave_pipes(crtc_state)) {
+					 intel_crtc_joiner_secondary_pipes(crtc_state)) {
 		struct intel_crtc_state *temp_crtc_state =
 			intel_atomic_get_crtc_state(state, temp_crtc);
 		int ret;
@@ -204,7 +204,7 @@ static u8 get_transcoder_pipes(struct drm_i915_private *i915,
 		if (temp_crtc_state->cpu_transcoder == INVALID_TRANSCODER)
 			continue;
 
-		if (intel_crtc_is_joiner_slave(temp_crtc_state))
+		if (intel_crtc_is_joiner_secondary(temp_crtc_state))
 			continue;
 
 		if (transcoder_mask & BIT(temp_crtc_state->cpu_transcoder))
@@ -219,18 +219,18 @@ static u8 get_transcoder_pipes(struct drm_i915_private *i915,
  * For joiner configs return only the joiner master pipes.
  */
 static void get_portsync_pipes(struct intel_crtc *crtc,
-			       u8 *master_pipe_mask, u8 *slave_pipes_mask)
+			       u8 *primary_pipe_mask, u8 *secondary_pipes_mask)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
-	struct intel_crtc *master_crtc;
-	struct intel_crtc_state *master_crtc_state;
+	struct intel_crtc *primary_crtc;
+	struct intel_crtc_state *primary_crtc_state;
 	enum transcoder master_transcoder;
 
 	if (!is_trans_port_sync_mode(crtc_state)) {
-		*master_pipe_mask = BIT(crtc->pipe);
-		*slave_pipes_mask = 0;
+		*primary_pipe_mask = BIT(crtc->pipe);
+		*secondary_pipes_mask = 0;
 
 		return;
 	}
@@ -240,24 +240,24 @@ static void get_portsync_pipes(struct intel_crtc *crtc,
 	else
 		master_transcoder = crtc_state->master_transcoder;
 
-	*master_pipe_mask = get_transcoder_pipes(i915, BIT(master_transcoder));
-	drm_WARN_ON(&i915->drm, !is_power_of_2(*master_pipe_mask));
+	*primary_pipe_mask = get_transcoder_pipes(i915, BIT(master_transcoder));
+	drm_WARN_ON(&i915->drm, !is_power_of_2(*primary_pipe_mask));
 
-	master_crtc = intel_crtc_for_pipe(i915, ffs(*master_pipe_mask) - 1);
-	master_crtc_state = to_intel_crtc_state(master_crtc->base.state);
-	*slave_pipes_mask = get_transcoder_pipes(i915, master_crtc_state->sync_mode_slaves_mask);
+	primary_crtc = intel_crtc_for_pipe(i915, ffs(*primary_pipe_mask) - 1);
+	primary_crtc_state = to_intel_crtc_state(primary_crtc->base.state);
+	*secondary_pipes_mask = get_transcoder_pipes(i915, primary_crtc_state->sync_mode_slaves_mask);
 }
 
-static u8 get_joiner_slave_pipes(struct drm_i915_private *i915, u8 master_pipes_mask)
+static u8 get_joiner_secondary_pipes(struct drm_i915_private *i915, u8 primary_pipes_mask)
 {
-	struct intel_crtc *master_crtc;
+	struct intel_crtc *primary_crtc;
 	u8 pipes = 0;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, master_crtc, master_pipes_mask) {
-		struct intel_crtc_state *master_crtc_state =
-			to_intel_crtc_state(master_crtc->base.state);
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, primary_crtc, primary_pipes_mask) {
+		struct intel_crtc_state *primary_crtc_state =
+			to_intel_crtc_state(primary_crtc->base.state);
 
-		pipes |= intel_crtc_joiner_slave_pipes(master_crtc_state);
+		pipes |= intel_crtc_joiner_secondary_pipes(primary_crtc_state);
 	}
 
 	return pipes;
@@ -269,21 +269,21 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u8 portsync_master_mask;
 	u8 portsync_slaves_mask;
-	u8 joiner_slaves_mask;
+	u8 joiner_secondarys_mask;
 	struct intel_crtc *temp_crtc;
 
 	/* TODO: Add support for MST */
 	get_portsync_pipes(crtc, &portsync_master_mask, &portsync_slaves_mask);
-	joiner_slaves_mask = get_joiner_slave_pipes(i915,
+	joiner_secondarys_mask = get_joiner_secondary_pipes(i915,
 							  portsync_master_mask |
 							  portsync_slaves_mask);
 
 	drm_WARN_ON(&i915->drm,
 		    portsync_master_mask & portsync_slaves_mask ||
-		    portsync_master_mask & joiner_slaves_mask ||
-		    portsync_slaves_mask & joiner_slaves_mask);
+		    portsync_master_mask & joiner_secondarys_mask ||
+		    portsync_slaves_mask & joiner_secondarys_mask);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, joiner_slaves_mask)
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, joiner_secondarys_mask)
 		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, portsync_slaves_mask)
@@ -293,7 +293,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
-					 joiner_slaves_mask |
+					 joiner_secondarys_mask |
 					 portsync_slaves_mask |
 					 portsync_master_mask)
 		intel_crtc_disable_noatomic_complete(temp_crtc);
@@ -326,7 +326,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 
 static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state)
 {
-	if (intel_crtc_is_joiner_slave(crtc_state))
+	if (intel_crtc_is_joiner_secondary(crtc_state))
 		return;
 
 	crtc_state->uapi.enable = crtc_state->hw.enable;
@@ -474,7 +474,7 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 	}
 
 	if (!crtc_state->hw.active ||
-	    intel_crtc_is_joiner_slave(crtc_state))
+	    intel_crtc_is_joiner_secondary(crtc_state))
 		return false;
 
 	needs_link_reset = intel_crtc_needs_link_reset(crtc);
@@ -730,17 +730,17 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 
 			/* read out to slave crtc as well for joiner */
 			if (crtc_state->joiner_pipes) {
-				struct intel_crtc *slave_crtc;
+				struct intel_crtc *secondary_crtc;
 
 				/* encoder should read be linked to joiner master */
-				WARN_ON(intel_crtc_is_joiner_slave(crtc_state));
+				WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
 
-				for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-								 intel_crtc_joiner_slave_pipes(crtc_state)) {
-					struct intel_crtc_state *slave_crtc_state;
+				for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
+								 intel_crtc_joiner_secondary_pipes(crtc_state)) {
+					struct intel_crtc_state *secondary_crtc_state;
 
-					slave_crtc_state = to_intel_crtc_state(slave_crtc->base.state);
-					intel_encoder_get_config(encoder, slave_crtc_state);
+					secondary_crtc_state = to_intel_crtc_state(secondary_crtc->base.state);
+					intel_encoder_get_config(encoder, secondary_crtc_state);
 				}
 			}
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 076298a8d405..3491db5cad31 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -166,7 +166,7 @@ verify_crtc_state(struct intel_atomic_state *state,
 	const struct intel_crtc_state *sw_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc_state *hw_crtc_state;
-	struct intel_crtc *master_crtc;
+	struct intel_crtc *primary_crtc;
 	struct intel_encoder *encoder;
 
 	hw_crtc_state = intel_crtc_state_alloc(crtc);
@@ -193,9 +193,9 @@ verify_crtc_state(struct intel_atomic_state *state,
 			"transitional active state does not match atomic hw state (expected %i, found %i)\n",
 			sw_crtc_state->hw.active, crtc->active);
 
-	master_crtc = intel_master_crtc(sw_crtc_state);
+	primary_crtc = intel_primary_crtc(sw_crtc_state);
 
-	for_each_encoder_on_crtc(dev, &master_crtc->base, encoder) {
+	for_each_encoder_on_crtc(dev, &primary_crtc->base, encoder) {
 		enum pipe pipe;
 		bool active;
 
@@ -205,7 +205,7 @@ verify_crtc_state(struct intel_atomic_state *state,
 				encoder->base.base.id, active,
 				sw_crtc_state->hw.active);
 
-		I915_STATE_WARN(i915, active && master_crtc->pipe != pipe,
+		I915_STATE_WARN(i915, active && primary_crtc->pipe != pipe,
 				"Encoder connected to wrong pipe %c\n",
 				pipe_name(pipe));
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 56827340982b..4880784fc60b 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -761,7 +761,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 	u32 dss_ctl1_val = 0;
 
 	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
-		if (intel_crtc_is_joiner_slave(crtc_state))
+		if (intel_crtc_is_joiner_secondary(crtc_state))
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_SLAVE;
 		else
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_MASTER;
@@ -790,8 +790,8 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 	}
 	if (crtc_state->joiner_pipes) {
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
-		if (!intel_crtc_is_joiner_slave(crtc_state))
-			dss_ctl1_val |= MASTER_BIG_JOINER_ENABLE;
+		if (!intel_crtc_is_joiner_secondary(crtc_state))
+			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
 	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
 	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index 8b21dc8e26d5..53038d26593e 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -32,7 +32,7 @@
 							   _ICL_PIPE_DSS_CTL1_PB, \
 							   _ICL_PIPE_DSS_CTL1_PC)
 #define  BIG_JOINER_ENABLE			(1 << 29)
-#define  MASTER_BIG_JOINER_ENABLE		(1 << 28)
+#define  PRIMARY_BIG_JOINER_ENABLE		(1 << 28)
 #define  VGA_CENTERING_ENABLE			(1 << 27)
 #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
 #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
-- 
2.37.3

