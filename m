Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4172A499D3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 13:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B99510ECA0;
	Fri, 28 Feb 2025 12:49:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QO/bgQaL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A956910EC94;
 Fri, 28 Feb 2025 12:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740746985; x=1772282985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wbdYtV5Xiz1O3hvTzcUddycDDyYQxnsjSdQXEaj4hcw=;
 b=QO/bgQaLayovPUK/8vMzwHs9FGgsT9svz6EQgANsTqe/xr1y5eso6O8A
 gb4wsIKCQmorKPGwe66iqGP63uK98qJcoMspp4jUU+4L9j0sVIvbF8U5h
 4RO519Ck16xwOR7U19UCToDyNk73Qeq2fG/eutcF9dbsgS3bakZN271DX
 KMJYmiTMINTSGJx4BaEoxo93MFyt++IivbT6Y142khU9+ZECp5UrAfc8i
 F/okCF+C603DDP6ziQT6FkoHB8cO+Ypp2r+N2F5hogxS1Q1X23yTU05Aq
 PnyL5sOzP0i7PjFX3Ly5OAnY6aN/qvc+iLjdrahhj+p8ynqd38SHlSlgH w==;
X-CSE-ConnectionGUID: oFK0sYj7Stq16gFhrsZAog==
X-CSE-MsgGUID: XvMlsOEBRkS2fSbdEMGWpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="40915065"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="40915065"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 04:49:45 -0800
X-CSE-ConnectionGUID: e6OyF9cBR1uLg2Dq+QF6pQ==
X-CSE-MsgGUID: Y6StXkYFQUqKhWLPYP79kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148252113"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.24])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 04:49:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 2/3] drm/i915/mst: add mst sub-struct to struct intel_connector
Date: Fri, 28 Feb 2025 14:49:30 +0200
Message-Id: <e2afaf4595ae8e3241aaca1c1bb4d6356b07e44a.1740746939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740746939.git.jani.nikula@intel.com>
References: <cover.1740746939.git.jani.nikula@intel.com>
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

Move port and mst_port members of struct intel_connector under an mst
sub-struct to group mst related things together.

Rename the latter dp for clarity.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    |  4 +-
 .../drm/i915/display/intel_display_debugfs.c  |  4 +-
 .../drm/i915/display/intel_display_types.h    | 13 ++--
 drivers/gpu/drm/i915/display/intel_dp.c       | 12 ++--
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  6 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 72 +++++++++----------
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  8 +--
 7 files changed, 60 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 358965fc7f55..e42357bd9e80 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -145,8 +145,8 @@ void intel_connector_destroy(struct drm_connector *connector)
 
 	drm_connector_cleanup(connector);
 
-	if (intel_connector->port)
-		drm_dp_mst_put_port_malloc(intel_connector->port);
+	if (intel_connector->mst.port)
+		drm_dp_mst_put_port_malloc(intel_connector->mst.port);
 
 	kfree(connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 408f80194334..510c15a6271f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -261,7 +261,7 @@ static void intel_connector_info(struct seq_file *m,
 	switch (connector->connector_type) {
 	case DRM_MODE_CONNECTOR_DisplayPort:
 	case DRM_MODE_CONNECTOR_eDP:
-		if (intel_connector->mst_port)
+		if (intel_connector->mst.dp)
 			intel_dp_mst_info(m, intel_connector);
 		else
 			intel_dp_info(m, intel_connector);
@@ -1341,7 +1341,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	intel_dp_link_training_debugfs_add(connector);
 
 	if (DISPLAY_VER(display) >= 11 &&
-	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst_port) ||
+	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
 		debugfs_create_file("i915_dsc_fec_support", 0644, root,
 				    connector, &i915_dsc_fec_support_fops);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2aa8f6264708..b52fca816591 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -534,10 +534,6 @@ struct intel_connector {
 	   state of connector->polled in case hotplug storm detection changes it */
 	u8 polled;
 
-	struct drm_dp_mst_port *port;
-
-	struct intel_dp *mst_port;
-
 	int force_joined_pipes;
 
 	struct {
@@ -549,6 +545,11 @@ struct intel_connector {
 		u8 dsc_decompression_enabled:1;
 	} dp;
 
+	struct {
+		struct drm_dp_mst_port *port;
+		struct intel_dp *dp;
+	} mst;
+
 	/* Work struct to schedule a uevent on link train failure */
 	struct work_struct modeset_retry_work;
 
@@ -1956,8 +1957,8 @@ static inline struct intel_dp *enc_to_intel_dp(struct intel_encoder *encoder)
 
 static inline struct intel_dp *intel_attached_dp(struct intel_connector *connector)
 {
-	if (connector->mst_port)
-		return connector->mst_port;
+	if (connector->mst.dp)
+		return connector->mst.dp;
 	else
 		return enc_to_intel_dp(intel_attached_encoder(connector));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5e84103c8d54..205ec315b413 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1376,7 +1376,7 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	if (!HAS_DSC(display))
 		return false;
 
-	if (connector->mst_port && !HAS_DSC_MST(display))
+	if (connector->mst.dp && !HAS_DSC_MST(display))
 		return false;
 
 	if (connector->base.connector_type == DRM_MODE_CONNECTOR_eDP &&
@@ -3080,7 +3080,7 @@ intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 		if (!conn_state->base.crtc)
 			continue;
 
-		if (connector->mst_port == intel_dp)
+		if (connector->mst.dp == intel_dp)
 			intel_connector_queue_modeset_retry_work(connector);
 	}
 }
@@ -3302,8 +3302,8 @@ intel_dp_sink_set_dsc_passthrough(const struct intel_connector *connector,
 				  bool enable)
 {
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_dp_aux *aux = connector->port ?
-				 connector->port->passthrough_aux : NULL;
+	struct drm_dp_aux *aux = connector->mst.port ?
+				 connector->mst.port->passthrough_aux : NULL;
 
 	if (!aux)
 		return;
@@ -3330,7 +3330,7 @@ static int intel_dp_dsc_aux_ref_count(struct intel_atomic_state *state,
 	 * On SST the decompression AUX device won't be shared, each connector
 	 * uses for this its own AUX targeting the sink device.
 	 */
-	if (!connector->mst_port)
+	if (!connector->mst.dp)
 		return connector->dp.dsc_decompression_enabled ? 1 : 0;
 
 	for_each_oldnew_connector_in_state(&state->base, _connector_iter,
@@ -3338,7 +3338,7 @@ static int intel_dp_dsc_aux_ref_count(struct intel_atomic_state *state,
 		const struct intel_connector *
 			connector_iter = to_intel_connector(_connector_iter);
 
-		if (connector_iter->mst_port != connector->mst_port)
+		if (connector_iter->mst.dp != connector->mst.dp)
 			continue;
 
 		if (!connector_iter->dp.dsc_decompression_enabled)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 00c493cc8a4b..4c9481124c90 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -705,10 +705,10 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 
 	*hdcp_capable = false;
 	*hdcp2_capable = false;
-	if (!connector->mst_port)
+	if (!connector->mst.dp)
 		return -EINVAL;
 
-	aux = &connector->port->aux;
+	aux = &connector->mst.port->aux;
 	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
 	if (ret)
 		drm_dbg_kms(display->drm,
@@ -883,7 +883,7 @@ int intel_dp_hdcp_init(struct intel_digital_port *dig_port,
 	if (!is_hdcp_supported(display, port))
 		return 0;
 
-	if (intel_connector->mst_port)
+	if (intel_connector->mst.dp)
 		return intel_hdcp_init(intel_connector, dig_port,
 				       &intel_dp_mst_hdcp_shim);
 	else if (!intel_dp_is_edp(intel_dp))
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e96236fbe407..02f95108c637 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -356,7 +356,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 			crtc_state->dp_m_n.tu = remote_tu;
 
 			slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst.mgr,
-							      connector->port,
+							      connector->mst.port,
 							      dfixed_trunc(pbn));
 		} else {
 			/* Same as above for remote_tu */
@@ -509,8 +509,8 @@ hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	bool is_uhbr_sink = connector->mst_port &&
-			    drm_dp_128b132b_supported(connector->mst_port->dpcd);
+	bool is_uhbr_sink = connector->mst.dp &&
+			    drm_dp_128b132b_supported(connector->mst.dp->dpcd);
 	int hblank_limit = is_uhbr_sink ? 500 : 300;
 
 	if (!connector->dp.dsc_hblank_expansion_quirk)
@@ -741,7 +741,7 @@ intel_dp_mst_transcoder_mask(struct intel_atomic_state *state,
 		const struct intel_crtc_state *crtc_state;
 		struct intel_crtc *crtc;
 
-		if (connector->mst_port != mst_port || !conn_state->base.crtc)
+		if (connector->mst.dp != mst_port || !conn_state->base.crtc)
 			continue;
 
 		crtc = to_intel_crtc(conn_state->base.crtc);
@@ -769,12 +769,12 @@ static u8 get_pipes_downstream_of_mst_port(struct intel_atomic_state *state,
 		if (!conn_state->base.crtc)
 			continue;
 
-		if (&connector->mst_port->mst.mgr != mst_mgr)
+		if (&connector->mst.dp->mst.mgr != mst_mgr)
 			continue;
 
-		if (connector->port != parent_port &&
+		if (connector->mst.port != parent_port &&
 		    !drm_dp_mst_port_downstream_of_parent(mst_mgr,
-							  connector->port,
+							  connector->mst.port,
 							  parent_port))
 			continue;
 
@@ -925,7 +925,7 @@ mst_connector_atomic_topology_check(struct intel_connector *connector,
 		struct intel_crtc_state *crtc_state;
 		struct intel_crtc *crtc;
 
-		if (connector_iter->mst_port != connector->mst_port ||
+		if (connector_iter->mst.dp != connector->mst.dp ||
 		    connector_iter == connector)
 			continue;
 
@@ -974,15 +974,15 @@ mst_connector_atomic_check(struct drm_connector *_connector,
 
 	if (intel_connector_needs_modeset(state, &connector->base)) {
 		ret = intel_dp_tunnel_atomic_check_state(state,
-							 connector->mst_port,
+							 connector->mst.dp,
 							 connector);
 		if (ret)
 			return ret;
 	}
 
 	return drm_dp_atomic_release_time_slots(&state->base,
-						&connector->mst_port->mst.mgr,
-						connector->port);
+						&connector->mst.dp->mst.mgr,
+						connector->mst.port);
 }
 
 static void mst_stream_disable(struct intel_atomic_state *state,
@@ -1027,9 +1027,9 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
 	struct drm_dp_mst_topology_state *new_mst_state =
 		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst.mgr);
 	const struct drm_dp_mst_atomic_payload *old_payload =
-		drm_atomic_get_mst_payload_state(old_mst_state, connector->port);
+		drm_atomic_get_mst_payload_state(old_mst_state, connector->mst.port);
 	struct drm_dp_mst_atomic_payload *new_payload =
-		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
+		drm_atomic_get_mst_payload_state(new_mst_state, connector->mst.port);
 	struct intel_crtc *pipe_crtc;
 	bool last_mst_stream;
 	int i;
@@ -1080,7 +1080,7 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
 	 * Power down mst path before disabling the port, otherwise we end
 	 * up getting interrupts from the sink upon detecting link loss.
 	 */
-	drm_dp_send_power_updown_phy(&intel_dp->mst.mgr, connector->port,
+	drm_dp_send_power_updown_phy(&intel_dp->mst.mgr, connector->mst.port,
 				     false);
 
 	/*
@@ -1199,7 +1199,7 @@ static void mst_stream_pre_enable(struct intel_atomic_state *state,
 	if (first_mst_stream)
 		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
 
-	drm_dp_send_power_updown_phy(&intel_dp->mst.mgr, connector->port, true);
+	drm_dp_send_power_updown_phy(&intel_dp->mst.mgr, connector->mst.port, true);
 
 	intel_dp_sink_enable_decompression(state, connector, pipe_config);
 
@@ -1213,7 +1213,7 @@ static void mst_stream_pre_enable(struct intel_atomic_state *state,
 	intel_dp->mst.active_links++;
 
 	ret = drm_dp_add_payload_part1(&intel_dp->mst.mgr, mst_state,
-				       drm_atomic_get_mst_payload_state(mst_state, connector->port));
+				       drm_atomic_get_mst_payload_state(mst_state, connector->mst.port));
 	if (ret < 0)
 		intel_dp_queue_modeset_retry_for_link(state, primary_encoder, pipe_config);
 
@@ -1339,7 +1339,7 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 
 	ret = drm_dp_add_payload_part2(&intel_dp->mst.mgr,
 				       drm_atomic_get_mst_payload_state(mst_state,
-									connector->port));
+									connector->mst.port));
 	if (ret < 0)
 		intel_dp_queue_modeset_retry_for_link(state, primary_encoder, pipe_config);
 
@@ -1392,7 +1392,7 @@ static int mst_connector_get_ddc_modes(struct drm_connector *_connector)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = connector->mst_port;
+	struct intel_dp *intel_dp = connector->mst.dp;
 	const struct drm_edid *drm_edid;
 	int ret;
 
@@ -1402,7 +1402,7 @@ static int mst_connector_get_ddc_modes(struct drm_connector *_connector)
 	if (!intel_display_driver_check_access(display))
 		return drm_edid_connector_add_modes(&connector->base);
 
-	drm_edid = drm_dp_mst_edid_read(&connector->base, &intel_dp->mst.mgr, connector->port);
+	drm_edid = drm_dp_mst_edid_read(&connector->base, &intel_dp->mst.mgr, connector->mst.port);
 
 	ret = intel_connector_update_modes(&connector->base, drm_edid);
 
@@ -1417,13 +1417,13 @@ mst_connector_late_register(struct drm_connector *_connector)
 	struct intel_connector *connector = to_intel_connector(_connector);
 	int ret;
 
-	ret = drm_dp_mst_connector_late_register(&connector->base, connector->port);
+	ret = drm_dp_mst_connector_late_register(&connector->base, connector->mst.port);
 	if (ret < 0)
 		return ret;
 
 	ret = intel_connector_register(&connector->base);
 	if (ret < 0)
-		drm_dp_mst_connector_early_unregister(&connector->base, connector->port);
+		drm_dp_mst_connector_early_unregister(&connector->base, connector->mst.port);
 
 	return ret;
 }
@@ -1434,7 +1434,7 @@ mst_connector_early_unregister(struct drm_connector *_connector)
 	struct intel_connector *connector = to_intel_connector(_connector);
 
 	intel_connector_unregister(&connector->base);
-	drm_dp_mst_connector_early_unregister(&connector->base, connector->port);
+	drm_dp_mst_connector_early_unregister(&connector->base, connector->mst.port);
 }
 
 static const struct drm_connector_funcs mst_connector_funcs = {
@@ -1463,9 +1463,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = connector->mst_port;
+	struct intel_dp *intel_dp = connector->mst.dp;
 	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
-	struct drm_dp_mst_port *port = connector->port;
+	struct drm_dp_mst_port *port = connector->mst.port;
 	const int min_bpp = 18;
 	int max_dotclk = display->cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
@@ -1576,7 +1576,7 @@ mst_connector_atomic_best_encoder(struct drm_connector *_connector,
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct drm_connector_state *connector_state =
 		drm_atomic_get_new_connector_state(state, &connector->base);
-	struct intel_dp *intel_dp = connector->mst_port;
+	struct intel_dp *intel_dp = connector->mst.dp;
 	struct intel_crtc *crtc = to_intel_crtc(connector_state->crtc);
 
 	return &intel_dp->mst.stream_encoders[crtc->pipe]->base.base;
@@ -1588,7 +1588,7 @@ mst_connector_detect_ctx(struct drm_connector *_connector,
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = connector->mst_port;
+	struct intel_dp *intel_dp = connector->mst.dp;
 
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
@@ -1602,7 +1602,7 @@ mst_connector_detect_ctx(struct drm_connector *_connector,
 	intel_dp_flush_connector_commits(connector);
 
 	return drm_dp_mst_detect_port(&connector->base, ctx, &intel_dp->mst.mgr,
-				      connector->port);
+				      connector->mst.port);
 }
 
 static const struct drm_connector_helper_funcs mst_connector_helper_funcs = {
@@ -1693,10 +1693,10 @@ static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *conn
 	 * A logical port's OUI (at least for affected sinks) is all 0, so
 	 * instead of that the parent port's OUI is used for identification.
 	 */
-	if (drm_dp_mst_port_is_logical(connector->port)) {
-		aux = drm_dp_mst_aux_for_parent(connector->port);
+	if (drm_dp_mst_port_is_logical(connector->mst.port)) {
+		aux = drm_dp_mst_aux_for_parent(connector->mst.port);
 		if (!aux)
-			aux = &connector->mst_port->aux;
+			aux = &connector->mst.dp->aux;
 	}
 
 	if (drm_dp_read_dpcd_caps(aux, dpcd) < 0)
@@ -1744,8 +1744,8 @@ mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
 
 	connector->get_hw_state = mst_connector_get_hw_state;
 	connector->sync_state = intel_dp_connector_sync_state;
-	connector->mst_port = intel_dp;
-	connector->port = port;
+	connector->mst.dp = intel_dp;
+	connector->mst.port = port;
 	drm_dp_mst_get_port_malloc(port);
 
 	ret = drm_connector_dynamic_init(display->drm, &connector->base, &mst_connector_funcs,
@@ -1954,11 +1954,11 @@ intel_dp_mst_add_topology_state_for_connector(struct intel_atomic_state *state,
 {
 	struct drm_dp_mst_topology_state *mst_state;
 
-	if (!connector->mst_port)
+	if (!connector->mst.dp)
 		return 0;
 
 	mst_state = drm_atomic_get_mst_topology_state(&state->base,
-						      &connector->mst_port->mst.mgr);
+						      &connector->mst.dp->mst.mgr);
 	if (IS_ERR(mst_state))
 		return PTR_ERR(mst_state);
 
@@ -2056,7 +2056,7 @@ bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
 		const struct intel_crtc_state *old_crtc_state;
 		struct intel_crtc *crtc_iter;
 
-		if (connector->mst_port != crtc_connector->mst_port ||
+		if (connector->mst.dp != crtc_connector->mst.dp ||
 		    !conn_state->crtc)
 			continue;
 
@@ -2079,7 +2079,7 @@ bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
 		 * case.
 		 */
 		if (connector->dp.dsc_decompression_aux ==
-		    &connector->mst_port->aux)
+		    &connector->mst.dp->aux)
 			return true;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 100f3fb1c1a0..46f53ade432e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -70,13 +70,13 @@ static int intel_conn_to_vcpi(struct intel_atomic_state *state,
 	int vcpi = 0;
 
 	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
-	if (!connector->port)
+	if (!connector->mst.port)
 		return 0;
-	mgr = connector->port->mgr;
+	mgr = connector->mst.port->mgr;
 
 	drm_modeset_lock(&mgr->base.lock, state->base.acquire_ctx);
 	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
-	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
+	payload = drm_atomic_get_mst_payload_state(mst_state, connector->mst.port);
 	if (drm_WARN_ON(mgr->dev, !payload))
 		goto out;
 
@@ -2775,7 +2775,7 @@ static void __intel_hdcp_info(struct seq_file *m, struct intel_connector *connec
 void intel_hdcp_info(struct seq_file *m, struct intel_connector *connector)
 {
 	seq_puts(m, "\tHDCP version: ");
-	if (connector->mst_port) {
+	if (connector->mst.dp) {
 		__intel_hdcp_info(m, connector, true);
 		seq_puts(m, "\tMST Hub HDCP version: ");
 	}
-- 
2.39.5

