Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0E36E4D62
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 17:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6643810E1B1;
	Mon, 17 Apr 2023 15:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B6D10E1B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 15:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681745867; x=1713281867;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K5C+MPwnOG9lWCOU82BBVr0eeGzO6oFUGCy101v4KqY=;
 b=NGFW1irrKOBLHIJ+J3ZTw783Q62levLaAWOKyY2HzaNWqNxbVnHIZOM9
 R3lrnvZbegmq+xaynobOPo9+rCV0Vdu3tkHj6HDtjXKQ+CXecZXC0SqE2
 rjOKmOmhi5Ky6uNfy5O6q2MjfYDyWn5+OImXHCkS9JlO+V0jOQcP1iU1z
 i1Ee/UyErxZYa3mX3KG2iWzcUeEBYSze0KtGSghWxJxkNplcXCUeSk5iM
 mqitK31uAxPj+9/9gD7L6q5stWx1tKo7T3IpKqAmtUl4T1YYXzZrxHE+l
 kyIfWyRQEsbcXwe/xECnE1o8CthmVVEtSh0Yt9tR3wTMf8ehGMXvuyi4J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="431212239"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="431212239"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 08:37:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="690710820"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="690710820"
Received: from habramov-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.252.47.83])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 08:37:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 18:37:40 +0300
Message-Id: <20230417153741.1074692-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: split out load detect to
 a separate file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Load detect is shared between tv and crt but otherwise isolated in
intel_display.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 215 ----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   7 -
 .../drm/i915/display/intel_display_types.h    |   4 -
 .../gpu/drm/i915/display/intel_load_detect.c  | 229 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_load_detect.h  |  24 ++
 drivers/gpu/drm/i915/display/intel_tv.c       |   5 +-
 8 files changed, 260 insertions(+), 230 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_load_detect.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_load_detect.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 154986359169..9af76e376ca9 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -261,6 +261,7 @@ i915-y += \
 	display/intel_hdcp_gsc.o \
 	display/intel_hotplug.o \
 	display/intel_hti.o \
+	display/intel_load_detect.o \
 	display/intel_lpe_audio.o \
 	display/intel_modeset_verify.o \
 	display/intel_modeset_setup.o \
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 38e9c61c2344..96acdf98a0c0 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -48,6 +48,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
+#include "intel_load_detect.h"
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
 
@@ -881,7 +882,7 @@ intel_crt_detect(struct drm_connector *connector,
 	}
 
 	/* for pre-945g platforms use load detect */
-	ret = intel_get_load_detect_pipe(connector, &tmp, ctx);
+	ret = intel_load_detect_get_pipe(connector, &tmp, ctx);
 	if (ret > 0) {
 		if (intel_crt_detect_ddc(connector))
 			status = connector_status_connected;
@@ -892,7 +893,7 @@ intel_crt_detect(struct drm_connector *connector,
 			status = connector_status_disconnected;
 		else
 			status = connector_status_unknown;
-		intel_release_load_detect_pipe(connector, &tmp, ctx);
+		intel_load_detect_release_pipe(connector, &tmp, ctx);
 	} else if (ret == 0) {
 		status = connector_status_unknown;
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1c264c17b6e4..2d4a6936ab2b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3821,221 +3821,6 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-/* VESA 640x480x72Hz mode to set on the pipe */
-static const struct drm_display_mode load_detect_mode = {
-	DRM_MODE("640x480", DRM_MODE_TYPE_DEFAULT, 31500, 640, 664,
-		 704, 832, 0, 480, 489, 491, 520, 0, DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC),
-};
-
-static int intel_modeset_disable_planes(struct drm_atomic_state *state,
-					struct drm_crtc *crtc)
-{
-	struct drm_plane *plane;
-	struct drm_plane_state *plane_state;
-	int ret, i;
-
-	ret = drm_atomic_add_affected_planes(state, crtc);
-	if (ret)
-		return ret;
-
-	for_each_new_plane_in_state(state, plane, plane_state, i) {
-		if (plane_state->crtc != crtc)
-			continue;
-
-		ret = drm_atomic_set_crtc_for_plane(plane_state, NULL);
-		if (ret)
-			return ret;
-
-		drm_atomic_set_fb_for_plane(plane_state, NULL);
-	}
-
-	return 0;
-}
-
-int intel_get_load_detect_pipe(struct drm_connector *connector,
-			       struct intel_load_detect_pipe *old,
-			       struct drm_modeset_acquire_ctx *ctx)
-{
-	struct intel_encoder *encoder =
-		intel_attached_encoder(to_intel_connector(connector));
-	struct intel_crtc *possible_crtc;
-	struct intel_crtc *crtc = NULL;
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct drm_mode_config *config = &dev->mode_config;
-	struct drm_atomic_state *state = NULL, *restore_state = NULL;
-	struct drm_connector_state *connector_state;
-	struct intel_crtc_state *crtc_state;
-	int ret;
-
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
-		    connector->base.id, connector->name,
-		    encoder->base.base.id, encoder->base.name);
-
-	old->restore_state = NULL;
-
-	drm_WARN_ON(dev, !drm_modeset_is_locked(&config->connection_mutex));
-
-	/*
-	 * Algorithm gets a little messy:
-	 *
-	 *   - if the connector already has an assigned crtc, use it (but make
-	 *     sure it's on first)
-	 *
-	 *   - try to find the first unused crtc that can drive this connector,
-	 *     and use that if we find one
-	 */
-
-	/* See if we already have a CRTC for this connector */
-	if (connector->state->crtc) {
-		crtc = to_intel_crtc(connector->state->crtc);
-
-		ret = drm_modeset_lock(&crtc->base.mutex, ctx);
-		if (ret)
-			goto fail;
-
-		/* Make sure the crtc and connector are running */
-		goto found;
-	}
-
-	/* Find an unused one (if possible) */
-	for_each_intel_crtc(dev, possible_crtc) {
-		if (!(encoder->base.possible_crtcs &
-		      drm_crtc_mask(&possible_crtc->base)))
-			continue;
-
-		ret = drm_modeset_lock(&possible_crtc->base.mutex, ctx);
-		if (ret)
-			goto fail;
-
-		if (possible_crtc->base.state->enable) {
-			drm_modeset_unlock(&possible_crtc->base.mutex);
-			continue;
-		}
-
-		crtc = possible_crtc;
-		break;
-	}
-
-	/*
-	 * If we didn't find an unused CRTC, don't use any.
-	 */
-	if (!crtc) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "no pipe available for load-detect\n");
-		ret = -ENODEV;
-		goto fail;
-	}
-
-found:
-	state = drm_atomic_state_alloc(dev);
-	restore_state = drm_atomic_state_alloc(dev);
-	if (!state || !restore_state) {
-		ret = -ENOMEM;
-		goto fail;
-	}
-
-	state->acquire_ctx = ctx;
-	to_intel_atomic_state(state)->internal = true;
-
-	restore_state->acquire_ctx = ctx;
-	to_intel_atomic_state(restore_state)->internal = true;
-
-	connector_state = drm_atomic_get_connector_state(state, connector);
-	if (IS_ERR(connector_state)) {
-		ret = PTR_ERR(connector_state);
-		goto fail;
-	}
-
-	ret = drm_atomic_set_crtc_for_connector(connector_state, &crtc->base);
-	if (ret)
-		goto fail;
-
-	crtc_state = intel_atomic_get_crtc_state(state, crtc);
-	if (IS_ERR(crtc_state)) {
-		ret = PTR_ERR(crtc_state);
-		goto fail;
-	}
-
-	crtc_state->uapi.active = true;
-
-	ret = drm_atomic_set_mode_for_crtc(&crtc_state->uapi,
-					   &load_detect_mode);
-	if (ret)
-		goto fail;
-
-	ret = intel_modeset_disable_planes(state, &crtc->base);
-	if (ret)
-		goto fail;
-
-	ret = PTR_ERR_OR_ZERO(drm_atomic_get_connector_state(restore_state, connector));
-	if (!ret)
-		ret = PTR_ERR_OR_ZERO(drm_atomic_get_crtc_state(restore_state, &crtc->base));
-	if (!ret)
-		ret = drm_atomic_add_affected_planes(restore_state, &crtc->base);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Failed to create a copy of old state to restore: %i\n",
-			    ret);
-		goto fail;
-	}
-
-	ret = drm_atomic_commit(state);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "failed to set mode on load-detect pipe\n");
-		goto fail;
-	}
-
-	old->restore_state = restore_state;
-	drm_atomic_state_put(state);
-
-	/* let the connector get through one full cycle before testing */
-	intel_crtc_wait_for_next_vblank(crtc);
-
-	return true;
-
-fail:
-	if (state) {
-		drm_atomic_state_put(state);
-		state = NULL;
-	}
-	if (restore_state) {
-		drm_atomic_state_put(restore_state);
-		restore_state = NULL;
-	}
-
-	if (ret == -EDEADLK)
-		return ret;
-
-	return false;
-}
-
-void intel_release_load_detect_pipe(struct drm_connector *connector,
-				    struct intel_load_detect_pipe *old,
-				    struct drm_modeset_acquire_ctx *ctx)
-{
-	struct intel_encoder *intel_encoder =
-		intel_attached_encoder(to_intel_connector(connector));
-	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
-	struct drm_encoder *encoder = &intel_encoder->base;
-	struct drm_atomic_state *state = old->restore_state;
-	int ret;
-
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
-		    connector->base.id, connector->name,
-		    encoder->base.id, encoder->name);
-
-	if (!state)
-		return;
-
-	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
-	if (ret)
-		drm_dbg_kms(&i915->drm,
-			    "Couldn't release load detect pipe: %i\n", ret);
-	drm_atomic_state_put(state);
-}
-
 static int i9xx_pll_refclk(struct drm_device *dev,
 			   const struct intel_crtc_state *pipe_config)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index fefad8cfc8a2..ac95961f68ba 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -56,7 +56,6 @@ struct intel_dp;
 struct intel_encoder;
 struct intel_initial_plane_config;
 struct intel_link_m_n;
-struct intel_load_detect_pipe;
 struct intel_plane;
 struct intel_plane_state;
 struct intel_power_domain_mask;
@@ -455,12 +454,6 @@ int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
 void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 			 struct intel_digital_port *dig_port,
 			 unsigned int expected_mask);
-int intel_get_load_detect_pipe(struct drm_connector *connector,
-			       struct intel_load_detect_pipe *old,
-			       struct drm_modeset_acquire_ctx *ctx);
-void intel_release_load_detect_pipe(struct drm_connector *connector,
-				    struct intel_load_detect_pipe *old,
-				    struct drm_modeset_acquire_ctx *ctx);
 struct drm_framebuffer *
 intel_framebuffer_create(struct drm_i915_gem_object *obj,
 			 struct drm_mode_fb_cmd2 *mode_cmd);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 64b6a5ec4b81..35c260bd1461 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1838,10 +1838,6 @@ struct intel_dp_mst_encoder {
 	struct intel_connector *connector;
 };
 
-struct intel_load_detect_pipe {
-	struct drm_atomic_state *restore_state;
-};
-
 static inline struct intel_encoder *
 intel_attached_encoder(struct intel_connector *connector)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
new file mode 100644
index 000000000000..5d6bb6d712bc
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
@@ -0,0 +1,229 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_atomic_uapi.h>
+
+#include "i915_drv.h"
+#include "intel_atomic.h"
+#include "intel_crtc.h"
+#include "intel_display_types.h"
+#include "intel_load_detect.h"
+
+/* VESA 640x480x72Hz mode to set on the pipe */
+static const struct drm_display_mode load_detect_mode = {
+	DRM_MODE("640x480", DRM_MODE_TYPE_DEFAULT, 31500, 640, 664,
+		 704, 832, 0, 480, 489, 491, 520, 0, DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC),
+};
+
+static int intel_modeset_disable_planes(struct drm_atomic_state *state,
+					struct drm_crtc *crtc)
+{
+	struct drm_plane *plane;
+	struct drm_plane_state *plane_state;
+	int ret, i;
+
+	ret = drm_atomic_add_affected_planes(state, crtc);
+	if (ret)
+		return ret;
+
+	for_each_new_plane_in_state(state, plane, plane_state, i) {
+		if (plane_state->crtc != crtc)
+			continue;
+
+		ret = drm_atomic_set_crtc_for_plane(plane_state, NULL);
+		if (ret)
+			return ret;
+
+		drm_atomic_set_fb_for_plane(plane_state, NULL);
+	}
+
+	return 0;
+}
+
+int intel_load_detect_get_pipe(struct drm_connector *connector,
+			       struct intel_load_detect_pipe *old,
+			       struct drm_modeset_acquire_ctx *ctx)
+{
+	struct intel_encoder *encoder =
+		intel_attached_encoder(to_intel_connector(connector));
+	struct intel_crtc *possible_crtc;
+	struct intel_crtc *crtc = NULL;
+	struct drm_device *dev = encoder->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_mode_config *config = &dev->mode_config;
+	struct drm_atomic_state *state = NULL, *restore_state = NULL;
+	struct drm_connector_state *connector_state;
+	struct intel_crtc_state *crtc_state;
+	int ret;
+
+	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
+		    connector->base.id, connector->name,
+		    encoder->base.base.id, encoder->base.name);
+
+	old->restore_state = NULL;
+
+	drm_WARN_ON(dev, !drm_modeset_is_locked(&config->connection_mutex));
+
+	/*
+	 * Algorithm gets a little messy:
+	 *
+	 *   - if the connector already has an assigned crtc, use it (but make
+	 *     sure it's on first)
+	 *
+	 *   - try to find the first unused crtc that can drive this connector,
+	 *     and use that if we find one
+	 */
+
+	/* See if we already have a CRTC for this connector */
+	if (connector->state->crtc) {
+		crtc = to_intel_crtc(connector->state->crtc);
+
+		ret = drm_modeset_lock(&crtc->base.mutex, ctx);
+		if (ret)
+			goto fail;
+
+		/* Make sure the crtc and connector are running */
+		goto found;
+	}
+
+	/* Find an unused one (if possible) */
+	for_each_intel_crtc(dev, possible_crtc) {
+		if (!(encoder->base.possible_crtcs &
+		      drm_crtc_mask(&possible_crtc->base)))
+			continue;
+
+		ret = drm_modeset_lock(&possible_crtc->base.mutex, ctx);
+		if (ret)
+			goto fail;
+
+		if (possible_crtc->base.state->enable) {
+			drm_modeset_unlock(&possible_crtc->base.mutex);
+			continue;
+		}
+
+		crtc = possible_crtc;
+		break;
+	}
+
+	/*
+	 * If we didn't find an unused CRTC, don't use any.
+	 */
+	if (!crtc) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "no pipe available for load-detect\n");
+		ret = -ENODEV;
+		goto fail;
+	}
+
+found:
+	state = drm_atomic_state_alloc(dev);
+	restore_state = drm_atomic_state_alloc(dev);
+	if (!state || !restore_state) {
+		ret = -ENOMEM;
+		goto fail;
+	}
+
+	state->acquire_ctx = ctx;
+	to_intel_atomic_state(state)->internal = true;
+
+	restore_state->acquire_ctx = ctx;
+	to_intel_atomic_state(restore_state)->internal = true;
+
+	connector_state = drm_atomic_get_connector_state(state, connector);
+	if (IS_ERR(connector_state)) {
+		ret = PTR_ERR(connector_state);
+		goto fail;
+	}
+
+	ret = drm_atomic_set_crtc_for_connector(connector_state, &crtc->base);
+	if (ret)
+		goto fail;
+
+	crtc_state = intel_atomic_get_crtc_state(state, crtc);
+	if (IS_ERR(crtc_state)) {
+		ret = PTR_ERR(crtc_state);
+		goto fail;
+	}
+
+	crtc_state->uapi.active = true;
+
+	ret = drm_atomic_set_mode_for_crtc(&crtc_state->uapi,
+					   &load_detect_mode);
+	if (ret)
+		goto fail;
+
+	ret = intel_modeset_disable_planes(state, &crtc->base);
+	if (ret)
+		goto fail;
+
+	ret = PTR_ERR_OR_ZERO(drm_atomic_get_connector_state(restore_state, connector));
+	if (!ret)
+		ret = PTR_ERR_OR_ZERO(drm_atomic_get_crtc_state(restore_state, &crtc->base));
+	if (!ret)
+		ret = drm_atomic_add_affected_planes(restore_state, &crtc->base);
+	if (ret) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Failed to create a copy of old state to restore: %i\n",
+			    ret);
+		goto fail;
+	}
+
+	ret = drm_atomic_commit(state);
+	if (ret) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "failed to set mode on load-detect pipe\n");
+		goto fail;
+	}
+
+	old->restore_state = restore_state;
+	drm_atomic_state_put(state);
+
+	/* let the connector get through one full cycle before testing */
+	intel_crtc_wait_for_next_vblank(crtc);
+
+	return true;
+
+fail:
+	if (state) {
+		drm_atomic_state_put(state);
+		state = NULL;
+	}
+	if (restore_state) {
+		drm_atomic_state_put(restore_state);
+		restore_state = NULL;
+	}
+
+	if (ret == -EDEADLK)
+		return ret;
+
+	return false;
+}
+
+void intel_load_detect_release_pipe(struct drm_connector *connector,
+				    struct intel_load_detect_pipe *old,
+				    struct drm_modeset_acquire_ctx *ctx)
+{
+	struct intel_encoder *intel_encoder =
+		intel_attached_encoder(to_intel_connector(connector));
+	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
+	struct drm_encoder *encoder = &intel_encoder->base;
+	struct drm_atomic_state *state = old->restore_state;
+	int ret;
+
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
+		    connector->base.id, connector->name,
+		    encoder->base.id, encoder->name);
+
+	if (!state)
+		return;
+
+	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
+	if (ret)
+		drm_dbg_kms(&i915->drm,
+			    "Couldn't release load detect pipe: %i\n", ret);
+	drm_atomic_state_put(state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.h b/drivers/gpu/drm/i915/display/intel_load_detect.h
new file mode 100644
index 000000000000..9b69da1867a5
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_load_detect.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_LOAD_DETECT_H__
+#define __INTEL_LOAD_DETECT_H__
+
+struct drm_atomic_state;
+struct drm_connector;
+struct drm_modeset_acquire_ctx;
+
+struct intel_load_detect_pipe {
+	struct drm_atomic_state *restore_state;
+};
+
+int intel_load_detect_get_pipe(struct drm_connector *connector,
+			       struct intel_load_detect_pipe *old,
+			       struct drm_modeset_acquire_ctx *ctx);
+void intel_load_detect_release_pipe(struct drm_connector *connector,
+				    struct intel_load_detect_pipe *old,
+				    struct drm_modeset_acquire_ctx *ctx);
+
+#endif /* __INTEL_LOAD_DETECT_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 557ec5b62afa..07e7f7cdd961 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -43,6 +43,7 @@
 #include "intel_display_types.h"
 #include "intel_dpll.h"
 #include "intel_hotplug.h"
+#include "intel_load_detect.h"
 #include "intel_tv.h"
 #include "intel_tv_regs.h"
 
@@ -1725,13 +1726,13 @@ intel_tv_detect(struct drm_connector *connector,
 		struct intel_load_detect_pipe tmp;
 		int ret;
 
-		ret = intel_get_load_detect_pipe(connector, &tmp, ctx);
+		ret = intel_load_detect_get_pipe(connector, &tmp, ctx);
 		if (ret < 0)
 			return ret;
 
 		if (ret > 0) {
 			type = intel_tv_detect_type(intel_tv, connector);
-			intel_release_load_detect_pipe(connector, &tmp, ctx);
+			intel_load_detect_release_pipe(connector, &tmp, ctx);
 			status = type < 0 ?
 				connector_status_disconnected :
 				connector_status_connected;
-- 
2.39.2

