Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 015CB54DE69
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 11:48:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D095112EE7;
	Thu, 16 Jun 2022 09:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F665112EE7
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 09:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655372928; x=1686908928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iqcTiWiTGYAR+maZBYWv1EGQYJhgKToTRQd1Z17qmUM=;
 b=AuAsKI2LuGEvGkl7MrGFLJSdy/P1Pmio3eLjzw1pvp/V2JLl0raYhNEM
 fgy4uzgcwsX8oFpEVslJwPWgND8r9oSbtGHpV1JuvrAuCjb7WqBVue2Xv
 NCpgYl2QdRwy05N6pR+h3fV7ZiEXjUMKnbuFePDPuLIz81QyqF/QWQUBp
 DNMfDqFZ6yLzZNRNrtsUX1/4629HUE28y4JbghN6BhZyNNj9IHTwaCzRY
 hPxDPf3OSojkA4l/J02JGmGOixhUDlhQMjeWoP5BeAY5HhI1316d19dd3
 AqrkMNWuzx5Yg7rU40mYF+CxTPChXlPKKtTwxwarCv/BVnTqGberUbyM0 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="259674870"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="259674870"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="912090047"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 12:48:15 +0300
Message-Id: <b9b47c14316a9edb772a8b8f934eabe7e928dd76.1655372759.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
References: <cover.1655372759.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/11] drm/i915/display: split out modeset
 verification code
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

Add new file intel_modeset_verify.c for high level modeset verification
code to declutter intel_display.h. The new file is supposed to be about
crtc/encoder/connector verification; the state verification for very
specific functionality such as plls or wm should be placed next to the
code it verifies.

Fix some minor checkpatch issues while at it.

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 243 +----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   9 +
 .../drm/i915/display/intel_modeset_verify.c   | 245 ++++++++++++++++++
 .../drm/i915/display/intel_modeset_verify.h   |  21 ++
 5 files changed, 284 insertions(+), 235 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index d2b18f03a33c..e4f008e9ace9 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -242,6 +242,7 @@ i915-y += \
 	display/intel_hdcp.o \
 	display/intel_hotplug.o \
 	display/intel_lpe_audio.o \
+	display/intel_modeset_verify.o \
 	display/intel_overlay.o \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 487c3ee4159b..be91a9afdf36 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -99,6 +99,7 @@
 #include "intel_frontbuffer.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
+#include "intel_modeset_verify.h"
 #include "intel_overlay.h"
 #include "intel_panel.h"
 #include "intel_pch_display.h"
@@ -2529,45 +2530,6 @@ void intel_encoder_destroy(struct drm_encoder *encoder)
 	kfree(intel_encoder);
 }
 
-/* Cross check the actual hw state with our own modeset state tracking (and it's
- * internal consistency). */
-static void intel_connector_verify_state(struct intel_crtc_state *crtc_state,
-					 struct drm_connector_state *conn_state)
-{
-	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
-		    connector->base.base.id, connector->base.name);
-
-	if (connector->get_hw_state(connector)) {
-		struct intel_encoder *encoder = intel_attached_encoder(connector);
-
-		I915_STATE_WARN(!crtc_state,
-			 "connector enabled without attached crtc\n");
-
-		if (!crtc_state)
-			return;
-
-		I915_STATE_WARN(!crtc_state->hw.active,
-				"connector is active, but attached crtc isn't\n");
-
-		if (!encoder || encoder->type == INTEL_OUTPUT_DP_MST)
-			return;
-
-		I915_STATE_WARN(conn_state->best_encoder != &encoder->base,
-			"atomic encoder doesn't match attached encoder\n");
-
-		I915_STATE_WARN(conn_state->crtc != encoder->base.crtc,
-			"attached encoder crtc differs from connector crtc\n");
-	} else {
-		I915_STATE_WARN(crtc_state && crtc_state->hw.active,
-				"attached crtc is active, but connector isn't\n");
-		I915_STATE_WARN(!crtc_state && conn_state->best_encoder,
-			"best encoder set without crtc!\n");
-	}
-}
-
 static bool intel_crtc_supports_double_wide(const struct intel_crtc *crtc)
 {
 	const struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -2709,8 +2671,8 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	intel_crtc_compute_pixel_rate(crtc_state);
 }
 
-static void intel_encoder_get_config(struct intel_encoder *encoder,
-				     struct intel_crtc_state *crtc_state)
+void intel_encoder_get_config(struct intel_encoder *encoder,
+			      struct intel_crtc_state *crtc_state)
 {
 	encoder->get_config(encoder, crtc_state);
 
@@ -4251,7 +4213,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	return active;
 }
 
-static bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
+bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -5230,9 +5192,9 @@ static void intel_dump_plane_state(const struct intel_plane_state *plane_state)
 			    DRM_RECT_ARG(&plane_state->uapi.dst));
 }
 
-static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
-				   struct intel_atomic_state *state,
-				   const char *context)
+void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
+			    struct intel_atomic_state *state,
+			    const char *context)
 {
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -5982,7 +5944,7 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 	return false;
 }
 
-static bool
+bool
 intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			  const struct intel_crtc_state *pipe_config,
 			  bool fastset)
@@ -6405,170 +6367,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	return ret;
 }
 
-static void intel_pipe_config_sanity_check(struct drm_i915_private *dev_priv,
-					   const struct intel_crtc_state *pipe_config)
-{
-	if (pipe_config->has_pch_encoder) {
-		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, pipe_config),
-							    &pipe_config->fdi_m_n);
-		int dotclock = pipe_config->hw.adjusted_mode.crtc_clock;
-
-		/*
-		 * FDI already provided one idea for the dotclock.
-		 * Yell if the encoder disagrees.
-		 */
-		drm_WARN(&dev_priv->drm,
-			 !intel_fuzzy_clock_check(fdi_dotclock, dotclock),
-			 "FDI dotclock and encoder dotclock mismatch, fdi: %i, encoder: %i\n",
-			 fdi_dotclock, dotclock);
-	}
-}
-
-static void
-verify_connector_state(struct intel_atomic_state *state,
-		       struct intel_crtc *crtc)
-{
-	struct drm_connector *connector;
-	struct drm_connector_state *new_conn_state;
-	int i;
-
-	for_each_new_connector_in_state(&state->base, connector, new_conn_state, i) {
-		struct drm_encoder *encoder = connector->encoder;
-		struct intel_crtc_state *crtc_state = NULL;
-
-		if (new_conn_state->crtc != &crtc->base)
-			continue;
-
-		if (crtc)
-			crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
-
-		intel_connector_verify_state(crtc_state, new_conn_state);
-
-		I915_STATE_WARN(new_conn_state->best_encoder != encoder,
-		     "connector's atomic encoder doesn't match legacy encoder\n");
-	}
-}
-
-static void
-verify_encoder_state(struct drm_i915_private *dev_priv, struct intel_atomic_state *state)
-{
-	struct intel_encoder *encoder;
-	struct drm_connector *connector;
-	struct drm_connector_state *old_conn_state, *new_conn_state;
-	int i;
-
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
-		bool enabled = false, found = false;
-		enum pipe pipe;
-
-		drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s]\n",
-			    encoder->base.base.id,
-			    encoder->base.name);
-
-		for_each_oldnew_connector_in_state(&state->base, connector, old_conn_state,
-						   new_conn_state, i) {
-			if (old_conn_state->best_encoder == &encoder->base)
-				found = true;
-
-			if (new_conn_state->best_encoder != &encoder->base)
-				continue;
-			found = enabled = true;
-
-			I915_STATE_WARN(new_conn_state->crtc !=
-					encoder->base.crtc,
-			     "connector's crtc doesn't match encoder crtc\n");
-		}
-
-		if (!found)
-			continue;
-
-		I915_STATE_WARN(!!encoder->base.crtc != enabled,
-		     "encoder's enabled state mismatch "
-		     "(expected %i, found %i)\n",
-		     !!encoder->base.crtc, enabled);
-
-		if (!encoder->base.crtc) {
-			bool active;
-
-			active = encoder->get_hw_state(encoder, &pipe);
-			I915_STATE_WARN(active,
-			     "encoder detached but still enabled on pipe %c.\n",
-			     pipe_name(pipe));
-		}
-	}
-}
-
-static void
-verify_crtc_state(struct intel_crtc *crtc,
-		  struct intel_crtc_state *old_crtc_state,
-		  struct intel_crtc_state *new_crtc_state)
-{
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_encoder *encoder;
-	struct intel_crtc_state *pipe_config = old_crtc_state;
-	struct drm_atomic_state *state = old_crtc_state->uapi.state;
-	struct intel_crtc *master_crtc;
-
-	__drm_atomic_helper_crtc_destroy_state(&old_crtc_state->uapi);
-	intel_crtc_free_hw_state(old_crtc_state);
-	intel_crtc_state_reset(old_crtc_state, crtc);
-	old_crtc_state->uapi.state = state;
-
-	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s]\n", crtc->base.base.id,
-		    crtc->base.name);
-
-	pipe_config->hw.enable = new_crtc_state->hw.enable;
-
-	intel_crtc_get_pipe_config(pipe_config);
-
-	/* we keep both pipes enabled on 830 */
-	if (IS_I830(dev_priv) && pipe_config->hw.active)
-		pipe_config->hw.active = new_crtc_state->hw.active;
-
-	I915_STATE_WARN(new_crtc_state->hw.active != pipe_config->hw.active,
-			"crtc active state doesn't match with hw state "
-			"(expected %i, found %i)\n",
-			new_crtc_state->hw.active, pipe_config->hw.active);
-
-	I915_STATE_WARN(crtc->active != new_crtc_state->hw.active,
-			"transitional active state does not match atomic hw state "
-			"(expected %i, found %i)\n",
-			new_crtc_state->hw.active, crtc->active);
-
-	master_crtc = intel_master_crtc(new_crtc_state);
-
-	for_each_encoder_on_crtc(dev, &master_crtc->base, encoder) {
-		enum pipe pipe;
-		bool active;
-
-		active = encoder->get_hw_state(encoder, &pipe);
-		I915_STATE_WARN(active != new_crtc_state->hw.active,
-				"[ENCODER:%i] active %i with crtc active %i\n",
-				encoder->base.base.id, active,
-				new_crtc_state->hw.active);
-
-		I915_STATE_WARN(active && master_crtc->pipe != pipe,
-				"Encoder connected to wrong pipe %c\n",
-				pipe_name(pipe));
-
-		if (active)
-			intel_encoder_get_config(encoder, pipe_config);
-	}
-
-	if (!new_crtc_state->hw.active)
-		return;
-
-	intel_pipe_config_sanity_check(dev_priv, pipe_config);
-
-	if (!intel_pipe_config_compare(new_crtc_state,
-				       pipe_config, false)) {
-		I915_STATE_WARN(1, "pipe state doesn't match!\n");
-		intel_dump_pipe_config(pipe_config, NULL, "[hw state]");
-		intel_dump_pipe_config(new_crtc_state, NULL, "[sw state]");
-	}
-}
-
 static void
 intel_verify_planes(struct intel_atomic_state *state)
 {
@@ -6582,31 +6380,6 @@ intel_verify_planes(struct intel_atomic_state *state)
 			     plane_state->uapi.visible);
 }
 
-static void
-intel_modeset_verify_crtc(struct intel_crtc *crtc,
-			  struct intel_atomic_state *state,
-			  struct intel_crtc_state *old_crtc_state,
-			  struct intel_crtc_state *new_crtc_state)
-{
-	if (!intel_crtc_needs_modeset(new_crtc_state) && !new_crtc_state->update_pipe)
-		return;
-
-	intel_wm_state_verify(crtc, new_crtc_state);
-	verify_connector_state(state, crtc);
-	verify_crtc_state(crtc, old_crtc_state, new_crtc_state);
-	intel_shared_dpll_state_verify(crtc, old_crtc_state, new_crtc_state);
-	intel_mpllb_state_verify(state, new_crtc_state);
-}
-
-static void
-intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
-			      struct intel_atomic_state *state)
-{
-	verify_encoder_state(dev_priv, state);
-	verify_connector_state(state, NULL);
-	intel_shared_dpll_verify_disabled(dev_priv);
-}
-
 int intel_modeset_all_pipes(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 7af6b5a413dc..70410eeb19c8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -559,6 +559,13 @@ bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
+bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
+			       const struct intel_crtc_state *pipe_config,
+			       bool fastset);
+void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
+			    struct intel_atomic_state *state,
+			    const char *context);
 
 void intel_plane_destroy(struct drm_plane *plane);
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
@@ -583,6 +590,8 @@ int intel_display_suspend(struct drm_device *dev);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder);
+void intel_encoder_get_config(struct intel_encoder *encoder,
+			      struct intel_crtc_state *crtc_state);
 bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy);
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy);
 bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
new file mode 100644
index 000000000000..1655c903e2f0
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -0,0 +1,245 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ *
+ * High level crtc/connector/encoder modeset state verification.
+ */
+
+#include <drm/drm_atomic_state_helper.h>
+
+#include "i915_drv.h"
+#include "intel_atomic.h"
+#include "intel_crtc.h"
+#include "intel_display.h"
+#include "intel_display_types.h"
+#include "intel_fdi.h"
+#include "intel_modeset_verify.h"
+#include "intel_pm.h"
+#include "intel_snps_phy.h"
+
+/*
+ * Cross check the actual hw state with our own modeset state tracking (and its
+ * internal consistency).
+ */
+static void intel_connector_verify_state(struct intel_crtc_state *crtc_state,
+					 struct drm_connector_state *conn_state)
+{
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
+		    connector->base.base.id, connector->base.name);
+
+	if (connector->get_hw_state(connector)) {
+		struct intel_encoder *encoder = intel_attached_encoder(connector);
+
+		I915_STATE_WARN(!crtc_state,
+				"connector enabled without attached crtc\n");
+
+		if (!crtc_state)
+			return;
+
+		I915_STATE_WARN(!crtc_state->hw.active,
+				"connector is active, but attached crtc isn't\n");
+
+		if (!encoder || encoder->type == INTEL_OUTPUT_DP_MST)
+			return;
+
+		I915_STATE_WARN(conn_state->best_encoder != &encoder->base,
+				"atomic encoder doesn't match attached encoder\n");
+
+		I915_STATE_WARN(conn_state->crtc != encoder->base.crtc,
+				"attached encoder crtc differs from connector crtc\n");
+	} else {
+		I915_STATE_WARN(crtc_state && crtc_state->hw.active,
+				"attached crtc is active, but connector isn't\n");
+		I915_STATE_WARN(!crtc_state && conn_state->best_encoder,
+				"best encoder set without crtc!\n");
+	}
+}
+
+static void
+verify_connector_state(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc)
+{
+	struct drm_connector *connector;
+	struct drm_connector_state *new_conn_state;
+	int i;
+
+	for_each_new_connector_in_state(&state->base, connector, new_conn_state, i) {
+		struct drm_encoder *encoder = connector->encoder;
+		struct intel_crtc_state *crtc_state = NULL;
+
+		if (new_conn_state->crtc != &crtc->base)
+			continue;
+
+		if (crtc)
+			crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+
+		intel_connector_verify_state(crtc_state, new_conn_state);
+
+		I915_STATE_WARN(new_conn_state->best_encoder != encoder,
+				"connector's atomic encoder doesn't match legacy encoder\n");
+	}
+}
+
+static void intel_pipe_config_sanity_check(struct drm_i915_private *dev_priv,
+					   const struct intel_crtc_state *pipe_config)
+{
+	if (pipe_config->has_pch_encoder) {
+		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, pipe_config),
+							    &pipe_config->fdi_m_n);
+		int dotclock = pipe_config->hw.adjusted_mode.crtc_clock;
+
+		/*
+		 * FDI already provided one idea for the dotclock.
+		 * Yell if the encoder disagrees.
+		 */
+		drm_WARN(&dev_priv->drm,
+			 !intel_fuzzy_clock_check(fdi_dotclock, dotclock),
+			 "FDI dotclock and encoder dotclock mismatch, fdi: %i, encoder: %i\n",
+			 fdi_dotclock, dotclock);
+	}
+}
+
+static void
+verify_encoder_state(struct drm_i915_private *dev_priv, struct intel_atomic_state *state)
+{
+	struct intel_encoder *encoder;
+	struct drm_connector *connector;
+	struct drm_connector_state *old_conn_state, *new_conn_state;
+	int i;
+
+	for_each_intel_encoder(&dev_priv->drm, encoder) {
+		bool enabled = false, found = false;
+		enum pipe pipe;
+
+		drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s]\n",
+			    encoder->base.base.id,
+			    encoder->base.name);
+
+		for_each_oldnew_connector_in_state(&state->base, connector, old_conn_state,
+						   new_conn_state, i) {
+			if (old_conn_state->best_encoder == &encoder->base)
+				found = true;
+
+			if (new_conn_state->best_encoder != &encoder->base)
+				continue;
+
+			found = true;
+			enabled = true;
+
+			I915_STATE_WARN(new_conn_state->crtc !=
+					encoder->base.crtc,
+					"connector's crtc doesn't match encoder crtc\n");
+		}
+
+		if (!found)
+			continue;
+
+		I915_STATE_WARN(!!encoder->base.crtc != enabled,
+				"encoder's enabled state mismatch (expected %i, found %i)\n",
+				!!encoder->base.crtc, enabled);
+
+		if (!encoder->base.crtc) {
+			bool active;
+
+			active = encoder->get_hw_state(encoder, &pipe);
+			I915_STATE_WARN(active,
+					"encoder detached but still enabled on pipe %c.\n",
+					pipe_name(pipe));
+		}
+	}
+}
+
+static void
+verify_crtc_state(struct intel_crtc *crtc,
+		  struct intel_crtc_state *old_crtc_state,
+		  struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_encoder *encoder;
+	struct intel_crtc_state *pipe_config = old_crtc_state;
+	struct drm_atomic_state *state = old_crtc_state->uapi.state;
+	struct intel_crtc *master_crtc;
+
+	__drm_atomic_helper_crtc_destroy_state(&old_crtc_state->uapi);
+	intel_crtc_free_hw_state(old_crtc_state);
+	intel_crtc_state_reset(old_crtc_state, crtc);
+	old_crtc_state->uapi.state = state;
+
+	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s]\n", crtc->base.base.id,
+		    crtc->base.name);
+
+	pipe_config->hw.enable = new_crtc_state->hw.enable;
+
+	intel_crtc_get_pipe_config(pipe_config);
+
+	/* we keep both pipes enabled on 830 */
+	if (IS_I830(dev_priv) && pipe_config->hw.active)
+		pipe_config->hw.active = new_crtc_state->hw.active;
+
+	I915_STATE_WARN(new_crtc_state->hw.active != pipe_config->hw.active,
+			"crtc active state doesn't match with hw state (expected %i, found %i)\n",
+			new_crtc_state->hw.active, pipe_config->hw.active);
+
+	I915_STATE_WARN(crtc->active != new_crtc_state->hw.active,
+			"transitional active state does not match atomic hw state (expected %i, found %i)\n",
+			new_crtc_state->hw.active, crtc->active);
+
+	master_crtc = intel_master_crtc(new_crtc_state);
+
+	for_each_encoder_on_crtc(dev, &master_crtc->base, encoder) {
+		enum pipe pipe;
+		bool active;
+
+		active = encoder->get_hw_state(encoder, &pipe);
+		I915_STATE_WARN(active != new_crtc_state->hw.active,
+				"[ENCODER:%i] active %i with crtc active %i\n",
+				encoder->base.base.id, active,
+				new_crtc_state->hw.active);
+
+		I915_STATE_WARN(active && master_crtc->pipe != pipe,
+				"Encoder connected to wrong pipe %c\n",
+				pipe_name(pipe));
+
+		if (active)
+			intel_encoder_get_config(encoder, pipe_config);
+	}
+
+	if (!new_crtc_state->hw.active)
+		return;
+
+	intel_pipe_config_sanity_check(dev_priv, pipe_config);
+
+	if (!intel_pipe_config_compare(new_crtc_state,
+				       pipe_config, false)) {
+		I915_STATE_WARN(1, "pipe state doesn't match!\n");
+		intel_dump_pipe_config(pipe_config, NULL, "[hw state]");
+		intel_dump_pipe_config(new_crtc_state, NULL, "[sw state]");
+	}
+}
+
+void intel_modeset_verify_crtc(struct intel_crtc *crtc,
+			       struct intel_atomic_state *state,
+			       struct intel_crtc_state *old_crtc_state,
+			       struct intel_crtc_state *new_crtc_state)
+{
+	if (!intel_crtc_needs_modeset(new_crtc_state) && !new_crtc_state->update_pipe)
+		return;
+
+	intel_wm_state_verify(crtc, new_crtc_state);
+	verify_connector_state(state, crtc);
+	verify_crtc_state(crtc, old_crtc_state, new_crtc_state);
+	intel_shared_dpll_state_verify(crtc, old_crtc_state, new_crtc_state);
+	intel_mpllb_state_verify(state, new_crtc_state);
+}
+
+void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
+				   struct intel_atomic_state *state)
+{
+	verify_encoder_state(dev_priv, state);
+	verify_connector_state(state, NULL);
+	intel_shared_dpll_verify_disabled(dev_priv);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.h b/drivers/gpu/drm/i915/display/intel_modeset_verify.h
new file mode 100644
index 000000000000..2d6fbe4f7846
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_MODESET_VERIFY_H__
+#define __INTEL_MODESET_VERIFY_H__
+
+struct drm_i915_private;
+struct intel_atomic_state;
+struct intel_crtc;
+struct intel_crtc_state;
+
+void intel_modeset_verify_crtc(struct intel_crtc *crtc,
+			       struct intel_atomic_state *state,
+			       struct intel_crtc_state *old_crtc_state,
+			       struct intel_crtc_state *new_crtc_state);
+void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
+				   struct intel_atomic_state *state);
+
+#endif /* __INTEL_MODESET_VERIFY_H__ */
-- 
2.30.2

