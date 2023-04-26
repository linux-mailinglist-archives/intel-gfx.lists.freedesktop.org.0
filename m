Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA4D6EF8C7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A76E710E95D;
	Wed, 26 Apr 2023 16:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 214C910E8BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682527996; x=1714063996;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qdx+5roFxIlInv2UqseRRd3jOJq5Q8l61MVzS+6jHY8=;
 b=AwbQhUqwuK+ywhmx1p7XRJS6wrfsSS8GW8TxMilkbwWpzb++1KhMPUa8
 6TNiDjz4vJlbHvvuiWgRNB4tMFTbcJrwNtmuw9fE5nNMyd+oO6RMMVwFZ
 Km2emuu3c4UwBjy8JBJKRlsclQTlNFMVoZg3T7UVgsauxIyaLYUAtyHKe
 nRsXhv6zIfUBh4yXCbixkheWE1dSO4z2KHVFCdXpwaTjdP1pjanF4q82b
 JIfd1hxQ8tVN4XVBYd5jp+pDDdi7Q0V6j1rV+B1lFU6UszJwwfWCrwxR/
 f/idgjqz5oFhAwJvbcIAxYFrvcftMxZBWnjeNm+iXEqjiUV8PSNDy72SF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327493488"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327493488"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671402746"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671402746"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:14 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 19:52:59 +0300
Message-Id: <20230426165305.2049341-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230426165305.2049341-1-imre.deak@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] drm/i915: Add support for disabling any
 CRTCs during HW readout/sanitization
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_modeset_setup.c    | 124 ++++++++++++++++--
 1 file changed, 115 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index a66085cf82bab..f613c074187a2 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -50,10 +50,39 @@ static void set_encoder_for_connector(struct intel_connector *connector,
 	}
 }
 
+static void reset_encoder_connector_state(struct intel_encoder *encoder)
+{
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
+	struct intel_encoder *encoder;
+
+	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder) {
+		reset_encoder_connector_state(encoder);
+		encoder->base.crtc = NULL;
+	}
+}
+
 static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 					struct drm_modeset_acquire_ctx *ctx)
 {
-	struct intel_encoder *encoder;
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_bw_state *bw_state =
 		to_intel_bw_state(i915->display.bw.obj.state);
@@ -65,9 +94,8 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_plane *plane;
 	struct drm_atomic_state *state;
-	struct intel_crtc_state *temp_crtc_state;
+	struct intel_crtc *temp_crtc;
 	enum pipe pipe = crtc->pipe;
-	int ret;
 
 	if (!crtc_state->hw.active)
 		return;
@@ -92,10 +120,17 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
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
 
-	drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
+		ret = drm_atomic_add_affected_connectors(state, &temp_crtc->base);
+
+		drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
+	}
 
 	i915->display.funcs.display->crtc_disable(to_intel_atomic_state(state), crtc);
 
@@ -120,8 +155,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	drm_WARN_ON(&i915->drm,
 		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
 
-	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
-		encoder->base.crtc = NULL;
+	reset_crtc_encoder_state(crtc);
 
 	intel_fbc_disable(crtc);
 	intel_update_watermarks(i915);
@@ -272,6 +306,77 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
 					   !HAS_GMCH(i915));
 }
 
+static u32 get_transcoder_pipes(struct drm_i915_private *i915, u32 transcoder_mask)
+{
+	struct intel_crtc *slave_crtc;
+	u32 pipes = 0;
+
+	for_each_intel_crtc(&i915->drm, slave_crtc) {
+		struct intel_crtc_state *slave_crtc_state =
+			to_intel_crtc_state(slave_crtc->base.state);
+
+		if (slave_crtc_state->cpu_transcoder == INVALID_TRANSCODER)
+			continue;
+
+		if (transcoder_mask & BIT(slave_crtc_state->cpu_transcoder))
+			pipes |= BIT(slave_crtc->pipe);
+	}
+
+	return pipes;
+}
+
+static u32 get_bigjoiner_slave_pipes(struct drm_i915_private *i915, u32 master_pipes)
+{
+	struct intel_crtc *master_crtc;
+	u32 pipes = 0;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, master_crtc, master_pipes) {
+		struct intel_crtc_state *master_crtc_state =
+			to_intel_crtc_state(master_crtc->base.state);
+
+		pipes |= intel_crtc_bigjoiner_slave_pipes(master_crtc_state);
+	}
+
+	return pipes;
+}
+
+static void kill_bigjoiner_slave_noatomic(struct intel_crtc *master_crtc)
+{
+	struct drm_i915_private *i915 = to_i915(master_crtc->base.dev);
+	struct intel_crtc_state *master_crtc_state =
+		to_intel_crtc_state(master_crtc->base.state);
+	struct intel_crtc *slave_crtc;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
+					 intel_crtc_bigjoiner_slave_pipes(master_crtc_state)) {
+		struct intel_crtc_state *slave_crtc_state =
+			to_intel_crtc_state(slave_crtc->base.state);
+
+		slave_crtc_state->bigjoiner_pipes = 0;
+	}
+
+	master_crtc_state->bigjoiner_pipes = 0;
+}
+
+static void disable_crtc_with_slaves(struct intel_crtc *crtc,
+				     struct drm_modeset_acquire_ctx *ctx)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
+	u32 bigjoiner_masters = BIT(crtc->pipe) |
+				get_transcoder_pipes(i915, crtc_state->sync_mode_slaves_mask);
+	u32 bigjoiner_slaves = get_bigjoiner_slave_pipes(i915, bigjoiner_masters);
+	struct intel_crtc *temp_crtc;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, bigjoiner_slaves)
+		intel_crtc_disable_noatomic(temp_crtc, ctx);
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, bigjoiner_masters) {
+		intel_crtc_disable_noatomic(temp_crtc, ctx);
+		kill_bigjoiner_slave_noatomic(temp_crtc);
+	}
+}
+
 static void intel_sanitize_crtc(struct intel_crtc *crtc,
 				struct drm_modeset_acquire_ctx *ctx)
 {
@@ -299,10 +404,11 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 	/*
 	 * Adjust the state of the output pipe according to whether we have
 	 * active connectors/encoders.
+	 * TODO: Add support for MST
 	 */
 	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
 	    !intel_crtc_is_bigjoiner_slave(crtc_state))
-		intel_crtc_disable_noatomic(crtc, ctx);
+		disable_crtc_with_slaves(crtc, ctx);
 }
 
 static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
-- 
2.37.2

