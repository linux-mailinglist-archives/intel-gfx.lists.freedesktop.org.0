Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 938EB6EF8CB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A9810E250;
	Wed, 26 Apr 2023 16:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC2D210E90A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682528003; x=1714064003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FF6cm1WBg7t2G7r0/SSmQT1U1VxXRXTDo72teiszQlE=;
 b=gb83VS7qwc0qwVQK/Un7b2pqaspYDxsZnv+g2HbZKWUzP0fC1CmNWPEM
 IfBb0ztpvKr92fTk6Z9R4kRD6Gn6JqL6XETIleVG0/6kZBgow0vES8MBZ
 fJ9xlBIsT4B+kMOU7BU5gDDRmgYaTsyUaiLANNDjG/OucBixaAz3ssVs8
 cp6RiwOhQZnA2f3wFGbDB7ZCX6nejL511eHHnGJRg7uB9JUVkkkKpMW5J
 gRErnXoyhhPMa6zSjB6FXdh8tsKT+Jsn2k9bkVWcLNzTre5qzz6bHt0v/
 6U7telcz3065Af/SDzA6thUwmKQzGUCn4yWGK/OYtErzToA9a1sT+tdeV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327493527"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327493527"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671402822"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671402822"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:22 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 19:53:05 +0300
Message-Id: <20230426165305.2049341-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230426165305.2049341-1-imre.deak@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915/tc: Reset TypeC PHYs left
 enabled in DP-alt mode after the sink disconnects
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
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the output on a DP-alt link is kept enabled for too long (about 20
sec), then some IOM/TCSS firmware timeout will cause havoc on the PCI
bus, at least for other GFX devices on it which will stop powering up.
Since user space is not guaranteed to do a disabling modeset in time,
switch such disconnected but active links to TBT mode - which is without
such shortcomings - with a 2 second delay.

If the above condition is detected already during the driver load/system
resume sanitization step disable the output instead, as at that point no
user space or kernel client depends on a consistent output state yet and
because subsequent atomic modeset on such connectors - without the
actual sink capabilities available - can fail.

To account for a race condition during driver loading where the sink is
disconnected after the above sanitization step and the HPD interrupts
getting enabled, do an explicit check/link reset if needed from the
encoder's late_register hook, which is called after the HPD interrupts
are enabled already.

Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
Tested-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5860
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 53 +++++++++++++++++--
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 49 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |  2 +
 .../drm/i915/display/intel_modeset_setup.c    | 34 +++++++-----
 drivers/gpu/drm/i915/display/intel_tc.c       | 21 ++++++++
 drivers/gpu/drm/i915/display/intel_tc.h       |  1 +
 7 files changed, 145 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0c8bc32f293b0..a3aaedc97d3eb 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3312,6 +3312,8 @@ static void intel_disable_ddi(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
 {
+	cancel_delayed_work(&enc_to_dig_port(encoder)->reset_link_work);
+
 	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
 
 	if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
@@ -4220,9 +4222,29 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
 		intel_tc_port_init_mode(dig_port);
 }
 
+static bool intel_ddi_tc_port_reset_link(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (!intel_tc_port_link_needs_reset(dig_port))
+		return false;
+
+	queue_delayed_work(system_unbound_wq, &dig_port->reset_link_work, msecs_to_jiffies(2000));
+
+	return true;
+}
+
+static int intel_ddi_encoder_late_register(struct drm_encoder *_encoder)
+{
+	intel_ddi_tc_port_reset_link(to_intel_encoder(_encoder));
+
+	return 0;
+}
+
 static const struct drm_encoder_funcs intel_ddi_funcs = {
 	.reset = intel_ddi_encoder_reset,
 	.destroy = intel_ddi_encoder_destroy,
+	.late_register = intel_ddi_encoder_late_register,
 };
 
 static struct intel_connector *
@@ -4397,6 +4419,25 @@ static void call_with_modeset_ctx(int (*fn)(struct intel_encoder *encoder,
 		 "Acquiring modeset locks failed with %i\n", ret);
 }
 
+static void intel_ddi_tc_link_reset_work(struct work_struct *work)
+{
+	struct intel_digital_port *dig_port =
+		container_of(work, struct intel_digital_port, reset_link_work.work);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_encoder *encoder = &dig_port->base;
+
+	mutex_lock(&i915->drm.mode_config.mutex);
+
+	if (intel_tc_port_link_needs_reset(dig_port)) {
+		drm_dbg_kms(&i915->drm,
+			    "[ENCODER:%d:%s] TypeC DP-alt sink disconnected, resetting link\n",
+			    encoder->base.base.id, encoder->base.name);
+		call_with_modeset_ctx(intel_dp_reset_link, &dig_port->base);
+	}
+
+	mutex_unlock(&i915->drm.mode_config.mutex);
+}
+
 static enum intel_hotplug_state
 intel_ddi_hotplug(struct intel_encoder *encoder,
 		  struct intel_connector *connector)
@@ -4417,10 +4458,12 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 
 	state = intel_encoder_hotplug(encoder, connector);
 
-	if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
-		call_with_modeset_ctx(intel_hdmi_reset_link, encoder);
-	else
-		call_with_modeset_ctx(intel_dp_retrain_link, encoder);
+	if (!intel_ddi_tc_port_reset_link(encoder)) {
+		if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
+			call_with_modeset_ctx(intel_hdmi_reset_link, encoder);
+		else
+			call_with_modeset_ctx(intel_dp_retrain_link, encoder);
+	}
 
 	/*
 	 * Unpowered type-c dongles can take some time to boot and be
@@ -4956,6 +4999,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			encoder->pipe_mask = intel_ddi_splitter_pipe_mask(dev_priv);
 	}
 
+	INIT_DELAYED_WORK(&dig_port->reset_link_work, intel_ddi_tc_link_reset_work);
+
 	/*
 	 * In theory we don't need the encoder->type check,
 	 * but leave it just in case we have some really bad VBTs...
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 35c260bd14618..c026940dbeae0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1803,6 +1803,8 @@ struct intel_digital_port {
 
 	struct intel_tc_port *tc;
 
+	struct delayed_work reset_link_work;
+
 	/* protects num_hdcp_streams reference count, hdcp_port_data and hdcp_auth_status */
 	struct mutex hdcp_mutex;
 	/* the number of pipes using HDCP signalling out of this port */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1e91175506f5d..24d0b15d0e925 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4250,6 +4250,55 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	return 0;
 }
 
+int intel_dp_reset_link(struct intel_encoder *encoder,
+			struct drm_modeset_acquire_ctx *ctx)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct drm_atomic_state *_state;
+	struct intel_atomic_state *state;
+	struct intel_crtc *crtc;
+	u8 pipe_mask;
+	int ret = 0;
+
+	ret = drm_modeset_lock(&i915->drm.mode_config.connection_mutex,
+			       ctx);
+	if (ret)
+		return ret;
+
+	ret = intel_dp_get_active_pipes(enc_to_intel_dp(encoder), ctx, &pipe_mask);
+	if (ret)
+		return ret;
+
+	if (!pipe_mask)
+		return 0;
+
+	_state = drm_atomic_state_alloc(&i915->drm);
+	if (!_state)
+		return -ENOMEM;
+	state = to_intel_atomic_state(_state);
+
+	state->base.acquire_ctx = ctx;
+	state->internal = true;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
+		struct intel_crtc_state *crtc_state;
+
+		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
+		if (IS_ERR(crtc_state)) {
+			ret = PTR_ERR(crtc_state);
+			break;
+		}
+
+		crtc_state->uapi.connectors_changed = true;
+	}
+
+	ret = drm_atomic_commit(&state->base);
+
+	drm_atomic_state_put(&state->base);
+
+	return ret;
+}
+
 static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
 				  struct drm_modeset_acquire_ctx *ctx,
 				  u8 *pipe_mask)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ca12a1733df6f..02fe28544e775 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -45,6 +45,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 bool intel_dp_is_connected(struct intel_dp *intel_dp);
 int intel_dp_retrain_link(struct intel_encoder *encoder,
 			  struct drm_modeset_acquire_ctx *ctx);
+int intel_dp_reset_link(struct intel_encoder *encoder,
+			struct drm_modeset_acquire_ctx *ctx);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
 void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index f613c074187a2..16120011437f6 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -26,6 +26,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_modeset_setup.h"
 #include "intel_pch_display.h"
+#include "intel_tc.h"
 #include "intel_vblank.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
@@ -253,17 +254,6 @@ intel_sanitize_plane_mapping(struct drm_i915_private *i915)
 	}
 }
 
-static bool intel_crtc_has_encoders(struct intel_crtc *crtc)
-{
-	struct drm_device *dev = crtc->base.dev;
-	struct intel_encoder *encoder;
-
-	for_each_encoder_on_crtc(dev, &crtc->base, encoder)
-		return true;
-
-	return false;
-}
-
 static struct intel_connector *intel_encoder_find_connector(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
@@ -382,6 +372,9 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
+	struct intel_encoder *encoder;
+	bool needs_link_reset = false;
+	bool has_encoder = false;
 
 	if (crtc_state->hw.active) {
 		struct intel_plane *plane;
@@ -401,13 +394,28 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 		intel_color_commit_arm(crtc_state);
 	}
 
+	if (!crtc_state->hw.active ||
+	    intel_crtc_is_bigjoiner_slave(crtc_state))
+		return;
+
+	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder) {
+		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+		has_encoder = true;
+
+		if (!dig_port || !intel_tc_port_link_needs_reset(dig_port))
+			continue;
+
+		needs_link_reset = true;
+		break;
+	}
+
 	/*
 	 * Adjust the state of the output pipe according to whether we have
 	 * active connectors/encoders.
 	 * TODO: Add support for MST
 	 */
-	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
-	    !intel_crtc_is_bigjoiner_slave(crtc_state))
+	if (!has_encoder || needs_link_reset)
 		disable_crtc_with_slaves(crtc, ctx);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 3b60995e9dfb3..358058c7bb464 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1335,6 +1335,27 @@ bool intel_tc_port_connected(struct intel_encoder *encoder)
 	return is_connected;
 }
 
+bool intel_tc_port_link_needs_reset(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+	bool ret;
+
+	if (!intel_phy_is_tc(i915, phy))
+		return false;
+
+	mutex_lock(&tc->lock);
+
+	ret = tc->link_refcount &&
+	      intel_tc_port_in_dp_alt_mode(dig_port) &&
+	      intel_tc_port_needs_reset(tc);
+
+	mutex_unlock(&tc->lock);
+
+	return ret;
+}
+
 static void __intel_tc_port_lock(struct intel_tc_port *tc,
 				 int required_lanes)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index dd0810f9ea95e..c4cf1eac54a1c 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -34,6 +34,7 @@ void intel_tc_port_flush_work(struct intel_digital_port *dig_port);
 void intel_tc_port_get_link(struct intel_digital_port *dig_port,
 			    int required_lanes);
 void intel_tc_port_put_link(struct intel_digital_port *dig_port);
+bool intel_tc_port_link_needs_reset(struct intel_digital_port *dig_port);
 bool intel_tc_port_ref_held(struct intel_digital_port *dig_port);
 
 int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy);
-- 
2.37.2

