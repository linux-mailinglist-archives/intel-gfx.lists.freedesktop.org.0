Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 848E46F8A53
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 22:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575D310E677;
	Fri,  5 May 2023 20:45:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82FD10E678
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 20:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683319549; x=1714855549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NVtMKOLI/9AwHOVnfoFzYIaX94Dxhd5YEpjWjyFLAwI=;
 b=IcJXVvX1atmMVOM31nVEAVGawEGkF2KfYz1oSVhUDWuz8kZUNzPhSCZP
 ZV8CAK0orXlOem8Mu1BxPeFXmcDrornRH7CWZm2DDUrl4piBrsvsAyFn9
 yreyP3sJf73yAvn0MVg0LHkORDWqjyluMEWHWH7tnnSsS8CKAHRjwrItO
 mR8ThjOldM4f2EG9q263q3zrKK1xSMAywxOkTeRRWuPaKPDflY8E8CYOH
 HMDHPonni/qJtpD1wzP558N92u7BFLu/0o4bqu+S7vszzYCaC3aW+wIFG
 gJMcOyGlTs69NcgGQbfz5v0K2XOZSBo5AgCrB/nOR7tIoJo9VNF7VHMLn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="346763348"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="346763348"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="821860271"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="821860271"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 13:45:38 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 23:46:07 +0300
Message-Id: <20230505204611.682946-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-7-imre.deak@intel.com>
References: <20230503231048.432368-7-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/12] drm/i915: Add support for disabling
 any CRTCs during HW readout/sanitization
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

During HW readout/sanitization CRTCs can be disabled only if they don't
have an attached encoder (and so the encoder disable hooks don't need to
be called). An upcoming patch will need to disable CRTCs also with an
attached an encoder, so add support for this.

For bigjoiner configs the encoder disabling hooks require the slave CRTC
states, so add these too to the atomic state. Since the connector atomic
state is already up-to-date when the CRTC is disabled the connector
state needs to be updated (reset) after the CRTC is disabled, make this
so. Follow the proper order of disabling first all bigjoiner slaves,
then any port synced CRTC slaves followed by the CRTC originally
requested to be disabled.

v2:
- Fix calculating the bigjoiner_masters mask in a port sync config,
  (Ville)
- Keep _noatomic suffix in intel_crtc_disable_noatomic(). (Ville)
- Rebase on full CRTC state reset in this patchset, not requiring
  resetting the bigjoiner state separately and (instead) resetting
  the full atomic CRTC and related global state after all linked
  pipes got disabled.
- Disable portsync slaves before a portsync master.
- Disable a portsync master if a linked portsync slave is disabled.

v3: (Ville)
- Use s/u32/u8 for transcoder and pipe masks.
- Use is_power_of_2() instead of hweight()==1.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   1 +
 .../drm/i915/display/intel_modeset_setup.c    | 160 ++++++++++++++++--
 3 files changed, 152 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 116fa52290b84..3bf67dfa66f2b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -225,7 +225,7 @@ is_trans_port_sync_slave(const struct intel_crtc_state *crtc_state)
 	return crtc_state->master_transcoder != INVALID_TRANSCODER;
 }
 
-static bool
+bool
 is_trans_port_sync_master(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->sync_mode_slaves_mask != 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index ac95961f68ba7..3ecc5649a73ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -407,6 +407,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				bool bigjoiner);
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
+bool is_trans_port_sync_master(const struct intel_crtc_state *state);
 bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 6f59654ea0261..75b4dea1e442b 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -38,8 +38,8 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_plane *plane;
 	struct drm_atomic_state *state;
-	struct intel_crtc_state *temp_crtc_state;
-	int ret;
+	struct intel_crtc *temp_crtc;
+	enum pipe pipe = crtc->pipe;
 
 	if (!crtc_state->hw.active)
 		return;
@@ -64,10 +64,17 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	to_intel_atomic_state(state)->internal = true;
 
 	/* Everything's already locked, -EDEADLK can't happen. */
-	temp_crtc_state = intel_atomic_get_crtc_state(state, crtc);
-	ret = drm_atomic_add_affected_connectors(state, &crtc->base);
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
+					 BIT(pipe) |
+					 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {
+		struct intel_crtc_state *temp_crtc_state =
+			intel_atomic_get_crtc_state(state, temp_crtc);
+		int ret;
+
+		ret = drm_atomic_add_affected_connectors(state, &temp_crtc->base);
 
-	drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
+		drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
+	}
 
 	i915->display.funcs.display->crtc_disable(to_intel_atomic_state(state), crtc);
 
@@ -104,9 +111,38 @@ static void set_encoder_for_connector(struct intel_connector *connector,
 	}
 }
 
-static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
+static void reset_encoder_connector_state(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		if (connector->base.encoder != &encoder->base)
+			continue;
+
+		set_encoder_for_connector(connector, NULL);
+
+		connector->base.dpms = DRM_MODE_DPMS_OFF;
+		connector->base.encoder = NULL;
+	}
+	drm_connector_list_iter_end(&conn_iter);
+}
+
+static void reset_crtc_encoder_state(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_encoder *encoder;
+
+	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder) {
+		reset_encoder_connector_state(encoder);
+		encoder->base.crtc = NULL;
+	}
+}
+
+static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
+{
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_bw_state *bw_state =
 		to_intel_bw_state(i915->display.bw.obj.state);
@@ -122,8 +158,7 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 	intel_crtc_free_hw_state(crtc_state);
 	intel_crtc_state_reset(crtc_state, crtc);
 
-	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
-		encoder->base.crtc = NULL;
+	reset_crtc_encoder_state(crtc);
 
 	intel_fbc_disable(crtc);
 	intel_update_watermarks(i915);
@@ -140,11 +175,116 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 	bw_state->num_active_planes[pipe] = 0;
 }
 
+/*
+ * Return all the pipes using a transcoder in @transcoder_mask.
+ * For bigjoiner configs return only the bigjoiner master.
+ */
+static u8 get_transcoder_pipes(struct drm_i915_private *i915,
+			       u8 transcoder_mask)
+{
+	struct intel_crtc *temp_crtc;
+	u8 pipes = 0;
+
+	for_each_intel_crtc(&i915->drm, temp_crtc) {
+		struct intel_crtc_state *temp_crtc_state =
+			to_intel_crtc_state(temp_crtc->base.state);
+
+		if (temp_crtc_state->cpu_transcoder == INVALID_TRANSCODER)
+			continue;
+
+		if (intel_crtc_is_bigjoiner_slave(temp_crtc_state))
+			continue;
+
+		if (transcoder_mask & BIT(temp_crtc_state->cpu_transcoder))
+			pipes |= BIT(temp_crtc->pipe);
+	}
+
+	return pipes;
+}
+
+/*
+ * Return the port sync master and slave pipes linked to @crtc.
+ * For bigjoiner configs return only the bigjoiner master pipes.
+ */
+static void get_portsync_pipes(struct intel_crtc *crtc,
+			       u8 *master_pipe_mask, u8 *slave_pipes_mask)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc->base.state);
+	struct intel_crtc *master_crtc;
+	struct intel_crtc_state *master_crtc_state;
+	enum transcoder master_transcoder;
+
+	if (!is_trans_port_sync_mode(crtc_state)) {
+		*master_pipe_mask = BIT(crtc->pipe);
+		*slave_pipes_mask = 0;
+
+		return;
+	}
+
+	if (is_trans_port_sync_master(crtc_state))
+		master_transcoder = crtc_state->cpu_transcoder;
+	else
+		master_transcoder = crtc_state->master_transcoder;
+
+	*master_pipe_mask = get_transcoder_pipes(i915, BIT(master_transcoder));
+	drm_WARN_ON(&i915->drm, !is_power_of_2(*master_pipe_mask));
+
+	master_crtc = intel_crtc_for_pipe(i915, ffs(*master_pipe_mask) - 1);
+	master_crtc_state = to_intel_crtc_state(master_crtc->base.state);
+	*slave_pipes_mask = get_transcoder_pipes(i915, master_crtc_state->sync_mode_slaves_mask);
+}
+
+static u8 get_bigjoiner_slave_pipes(struct drm_i915_private *i915, u8 master_pipes_mask)
+{
+	struct intel_crtc *master_crtc;
+	u8 pipes = 0;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, master_crtc, master_pipes_mask) {
+		struct intel_crtc_state *master_crtc_state =
+			to_intel_crtc_state(master_crtc->base.state);
+
+		pipes |= intel_crtc_bigjoiner_slave_pipes(master_crtc_state);
+	}
+
+	return pipes;
+}
+
 static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 					struct drm_modeset_acquire_ctx *ctx)
 {
-	intel_crtc_disable_noatomic_begin(crtc, ctx);
-	intel_crtc_disable_noatomic_complete(crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	u8 portsync_master_mask;
+	u8 portsync_slaves_mask;
+	u8 bigjoiner_slaves_mask;
+	struct intel_crtc *temp_crtc;
+
+	/* TODO: Add support for MST */
+	get_portsync_pipes(crtc, &portsync_master_mask, &portsync_slaves_mask);
+	bigjoiner_slaves_mask = get_bigjoiner_slave_pipes(i915,
+							  portsync_master_mask |
+							  portsync_slaves_mask);
+
+	drm_WARN_ON(&i915->drm,
+		    portsync_master_mask & portsync_slaves_mask ||
+		    portsync_master_mask & bigjoiner_slaves_mask ||
+		    portsync_slaves_mask & bigjoiner_slaves_mask);
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, bigjoiner_slaves_mask)
+		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, portsync_slaves_mask)
+		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, portsync_master_mask)
+		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
+					 bigjoiner_slaves_mask |
+					 portsync_slaves_mask |
+					 portsync_master_mask)
+		intel_crtc_disable_noatomic_complete(temp_crtc);
 }
 
 static void intel_modeset_update_connector_atomic_state(struct drm_i915_private *i915)
-- 
2.37.2

