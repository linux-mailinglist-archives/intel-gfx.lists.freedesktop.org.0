Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A75B12778A4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 20:45:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F3176EB43;
	Thu, 24 Sep 2020 18:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D3406E332
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 18:45:39 +0000 (UTC)
IronPort-SDR: krDKMj5hITmcdhXi9vIthXHsYWZP28E+yTs0/g4c2gtlSpaNyABYOS9KzuK3sFd27ma/8r4icP
 DV4xdZApNeSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="161378273"
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="161378273"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 11:45:38 -0700
IronPort-SDR: zngawHRlOtfjkQaSAkDS/9w8SxmtTfgDwlzpE0y9ZFyMKea0ugKFx2wxvhLjDsNRWfwTILXOuQ
 yWbkuJrxyfsQ==
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="347935801"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 24 Sep 2020 11:45:38 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Sep 2020 11:46:18 -0700
Message-Id: <20200924184624.20522-5-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200924184624.20522-1-manasi.d.navare@intel.com>
References: <20200924184624.20522-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 05/11] drm/i915: Try to make bigjoiner work
 in atomic check
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

 When the clock is higher than the dotclock, try with 2 pipes enabled.
 If we can enable 2, then we will go into big joiner mode, and steal
 the adjacent crtc.

 This only links the crtc's in software, no hardware or plane
 programming is done yet. Blobs are also copied from the master's
 crtc_state, so it doesn't depend at commit time on the other
 crtc_state.

v4:
* Fixes in intel_crtc_compute_config (Ville)
v3:
* Manual Rebase (Manasi)
 Changes since v1:
 - Rename pipe timings to transcoder timings, as they are now different.
  Changes since v2:
 - Rework bigjoiner checks; always disable slave when recalculating
   master. No need to have a separate bigjoiner pass any more.
 - Use pipe_mode instead of transcoder_mode, to clean up the code.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_atomic.h   |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 202 ++++++++++++++++--
 .../drm/i915/display/intel_display_types.h    |   9 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  22 +-
 5 files changed, 211 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 86be032bcf96..e243ce97b534 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -270,14 +270,15 @@ void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state)
 	intel_crtc_put_color_blobs(crtc_state);
 }
 
-void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state)
+void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
+				 const struct intel_crtc_state *from_crtc_state)
 {
 	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
-				  crtc_state->uapi.degamma_lut);
+				  from_crtc_state->uapi.degamma_lut);
 	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
-				  crtc_state->uapi.gamma_lut);
+				  from_crtc_state->uapi.gamma_lut);
 	drm_property_replace_blob(&crtc_state->hw.ctm,
-				  crtc_state->uapi.ctm);
+				  from_crtc_state->uapi.ctm);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/drm/i915/display/intel_atomic.h
index 285de07011dc..62a3365ed5e6 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic.h
@@ -43,7 +43,8 @@ struct drm_crtc_state *intel_crtc_duplicate_state(struct drm_crtc *crtc);
 void intel_crtc_destroy_state(struct drm_crtc *crtc,
 			       struct drm_crtc_state *state);
 void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state);
-void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state);
+void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
+				 const struct intel_crtc_state *from_crtc_state);
 struct drm_atomic_state *intel_atomic_state_alloc(struct drm_device *dev);
 void intel_atomic_state_free(struct drm_atomic_state *state);
 void intel_atomic_state_clear(struct drm_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ebe29f7f7791..02567deb6ec4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8070,9 +8070,24 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 				     struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct drm_display_mode *pipe_mode = &pipe_config->hw.pipe_mode;
+	struct drm_display_mode *pipe_mode = &pipe_config->hw.pipe_mode;
 	int clock_limit = dev_priv->max_dotclk_freq;
 
+	*pipe_mode = pipe_config->hw.adjusted_mode;
+
+	/* Adjust pipe_mode for bigjoiner, with half the horizontal mode */
+	if (pipe_config->bigjoiner) {
+		pipe_mode->crtc_clock /= 2;
+		pipe_mode->crtc_hdisplay /= 2;
+		pipe_mode->crtc_hblank_start /= 2;
+		pipe_mode->crtc_hblank_end /= 2;
+		pipe_mode->crtc_hsync_start /= 2;
+		pipe_mode->crtc_hsync_end /= 2;
+		pipe_mode->crtc_htotal /= 2;
+		pipe_mode->crtc_hskew /= 2;
+		pipe_config->pipe_src_w /= 2;
+	}
+
 	if (INTEL_GEN(dev_priv) < 4) {
 		clock_limit = dev_priv->max_cdclk_freq * 9 / 10;
 
@@ -8133,7 +8148,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
 	 */
 	if ((INTEL_GEN(dev_priv) > 4 || IS_G4X(dev_priv)) &&
-		pipe_mode->crtc_hsync_start == pipe_mode->crtc_hdisplay)
+	    pipe_mode->crtc_hsync_start == pipe_mode->crtc_hdisplay)
 		return -EINVAL;
 
 	intel_crtc_compute_pixel_rate(pipe_config);
@@ -12499,7 +12514,7 @@ static bool encoders_cloneable(const struct intel_encoder *a,
 			  b->cloneable & (1 << a->type));
 }
 
-static bool check_single_encoder_cloning(struct drm_atomic_state *state,
+static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 					 struct intel_crtc *crtc,
 					 struct intel_encoder *encoder)
 {
@@ -12508,7 +12523,7 @@ static bool check_single_encoder_cloning(struct drm_atomic_state *state,
 	struct drm_connector_state *connector_state;
 	int i;
 
-	for_each_new_connector_in_state(state, connector, connector_state, i) {
+	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		if (connector_state->crtc != &crtc->base)
 			continue;
 
@@ -12748,6 +12763,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 
 	if (mode_changed && crtc_state->hw.enable &&
 	    dev_priv->display.crtc_compute_clock &&
+	    !crtc_state->bigjoiner_slave &&
 	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
 		ret = dev_priv->display.crtc_compute_clock(crtc, crtc_state);
 		if (ret)
@@ -13275,19 +13291,32 @@ static bool check_digital_port_conflicts(struct intel_atomic_state *state)
 }
 
 static void
-intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_crtc_state *crtc_state)
+intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
+					   struct intel_crtc_state *crtc_state)
 {
-	intel_crtc_copy_color_blobs(crtc_state);
+	const struct intel_crtc_state *from_crtc_state = crtc_state;
+
+	if (crtc_state->bigjoiner_slave) {
+		from_crtc_state = intel_atomic_get_new_crtc_state(state,
+								  crtc_state->bigjoiner_linked_crtc);
+
+		/* No need to copy state if the master state is unchanged */
+		if (!from_crtc_state)
+			return;
+	}
+
+	intel_crtc_copy_color_blobs(crtc_state, from_crtc_state);
 }
 
 static void
-intel_crtc_copy_uapi_to_hw_state(struct intel_crtc_state *crtc_state)
+intel_crtc_copy_uapi_to_hw_state(struct intel_atomic_state *state,
+				 struct intel_crtc_state *crtc_state)
 {
 	crtc_state->hw.enable = crtc_state->uapi.enable;
 	crtc_state->hw.active = crtc_state->uapi.active;
 	crtc_state->hw.mode = crtc_state->uapi.mode;
 	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;
-	intel_crtc_copy_uapi_to_hw_state_nomodeset(crtc_state);
+	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc_state);
 }
 
 static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state)
@@ -13309,7 +13338,49 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 }
 
 static int
-intel_crtc_prepare_cleared_state(struct intel_crtc_state *crtc_state)
+copy_bigjoiner_crtc_state(struct intel_crtc_state *crtc_state,
+			  const struct intel_crtc_state *from_crtc_state)
+{
+	struct intel_crtc_state *saved_state;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	saved_state = kmemdup(from_crtc_state, sizeof(*saved_state), GFP_KERNEL);
+	if (!saved_state)
+		return -ENOMEM;
+
+	saved_state->uapi = crtc_state->uapi;
+	saved_state->scaler_state = crtc_state->scaler_state;
+	saved_state->shared_dpll = crtc_state->shared_dpll;
+	saved_state->dpll_hw_state = crtc_state->dpll_hw_state;
+	saved_state->crc_enabled = crtc_state->crc_enabled;
+
+	intel_crtc_free_hw_state(crtc_state);
+	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
+	kfree(saved_state);
+
+	/* Re-init hw state */
+	memset(&crtc_state->hw, 0, sizeof(saved_state->hw));
+	crtc_state->hw.enable = from_crtc_state->hw.enable;
+	crtc_state->hw.active = from_crtc_state->hw.active;
+	crtc_state->hw.pipe_mode = from_crtc_state->hw.pipe_mode;
+	crtc_state->hw.adjusted_mode = from_crtc_state->hw.adjusted_mode;
+
+	/* Some fixups */
+	crtc_state->uapi.mode_changed = from_crtc_state->uapi.mode_changed;
+	crtc_state->uapi.connectors_changed = from_crtc_state->uapi.connectors_changed;
+	crtc_state->uapi.active_changed = from_crtc_state->uapi.active_changed;
+	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;
+	crtc_state->bigjoiner_linked_crtc = to_intel_crtc(from_crtc_state->uapi.crtc);
+	crtc_state->bigjoiner_slave = true;
+	crtc_state->cpu_transcoder = (enum transcoder)crtc->pipe;
+	crtc_state->has_audio = false;
+
+	return 0;
+}
+
+static int
+intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
+				 struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -13341,16 +13412,16 @@ intel_crtc_prepare_cleared_state(struct intel_crtc_state *crtc_state)
 	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
 	kfree(saved_state);
 
-	intel_crtc_copy_uapi_to_hw_state(crtc_state);
+	intel_crtc_copy_uapi_to_hw_state(state, crtc_state);
 
 	return 0;
 }
 
 static int
-intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
+intel_modeset_pipe_config(struct intel_atomic_state *state,
+			  struct intel_crtc_state *pipe_config)
 {
 	struct drm_crtc *crtc = pipe_config->uapi.crtc;
-	struct drm_atomic_state *state = pipe_config->uapi.state;
 	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
@@ -13392,7 +13463,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 			       &pipe_config->pipe_src_w,
 			       &pipe_config->pipe_src_h);
 
-	for_each_new_connector_in_state(state, connector, connector_state, i) {
+	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		struct intel_encoder *encoder =
 			to_intel_encoder(connector_state->best_encoder);
 
@@ -13430,7 +13501,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 	 * adjust it according to limitations or connector properties, and also
 	 * a chance to reject the mode entirely.
 	 */
-	for_each_new_connector_in_state(state, connector, connector_state, i) {
+	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		struct intel_encoder *encoder =
 			to_intel_encoder(connector_state->best_encoder);
 
@@ -13482,9 +13553,6 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 		    "hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
 		    base_bpp, pipe_config->pipe_bpp, pipe_config->dither);
 
-	/* without bigjoiner, pipe_mode == adjusted_mode */
-	pipe_config->hw.pipe_mode = pipe_config->hw.adjusted_mode;
-
 	return 0;
 }
 
@@ -14875,6 +14943,75 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
 	return false;
 }
 
+static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
+					struct intel_crtc *crtc,
+					struct intel_crtc_state *old_crtc_state,
+					struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
+	struct intel_crtc *slave, *master;
+
+	/* slave being enabled, is master is still claiming this crtc? */
+	if (old_crtc_state->bigjoiner_slave) {
+		slave = crtc;
+		master = old_crtc_state->bigjoiner_linked_crtc;
+		master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
+		if (!master_crtc_state || !needs_modeset(master_crtc_state))
+			goto claimed;
+	}
+
+	if (!new_crtc_state->bigjoiner)
+		return 0;
+
+	if (1 + crtc->pipe >= INTEL_NUM_PIPES(dev_priv)) {
+		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
+			      "CRTC + 1 to be used, doesn't exist\n",
+			      crtc->base.base.id, crtc->base.name);
+		return -EINVAL;
+	}
+
+	slave = new_crtc_state->bigjoiner_linked_crtc =
+		intel_get_crtc_for_pipe(dev_priv, crtc->pipe + 1);
+	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave);
+	master = crtc;
+	if (IS_ERR(slave_crtc_state))
+		return PTR_ERR(slave_crtc_state);
+
+	/* master being enabled, slave was already configured? */
+	if (slave_crtc_state->uapi.enable)
+		goto claimed;
+
+	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
+		      slave->base.base.id, slave->base.name);
+
+	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
+
+claimed:
+	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
+		      "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
+		      slave->base.base.id, slave->base.name,
+		      master->base.base.id, master->base.name);
+	return -EINVAL;
+}
+
+static int kill_bigjoiner_slave(struct intel_atomic_state *state,
+				struct intel_crtc_state *master_crtc_state)
+{
+	struct intel_crtc_state *slave_crtc_state =
+			intel_atomic_get_crtc_state(&state->base,
+						    master_crtc_state->bigjoiner_linked_crtc);
+
+		if (IS_ERR(slave_crtc_state))
+			return PTR_ERR(slave_crtc_state);
+
+		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;
+		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;
+		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;
+		intel_crtc_copy_uapi_to_hw_state(state, slave_crtc_state);
+		return 0;
+}
+
 /**
  * intel_atomic_check - validate state object
  * @dev: drm device
@@ -14904,19 +15041,36 @@ static int intel_atomic_check(struct drm_device *dev,
 					    new_crtc_state, i) {
 		if (!needs_modeset(new_crtc_state)) {
 			/* Light copy */
-			intel_crtc_copy_uapi_to_hw_state_nomodeset(new_crtc_state);
+			intel_crtc_copy_uapi_to_hw_state_nomodeset(state, new_crtc_state);
+
+			continue;
+		}
 
+		/* Kill old bigjoiner link, we may re-establish afterwards */
+		if (old_crtc_state->bigjoiner && !old_crtc_state->bigjoiner_slave) {
+			ret = kill_bigjoiner_slave(state, new_crtc_state);
+			if (ret)
+				goto fail;
+		}
+
+		if (!new_crtc_state->uapi.enable) {
+			if (!new_crtc_state->bigjoiner_slave) {
+				intel_crtc_copy_uapi_to_hw_state(state, new_crtc_state);
+				any_ms = true;
+			}
 			continue;
 		}
 
-		ret = intel_crtc_prepare_cleared_state(new_crtc_state);
+		ret = intel_crtc_prepare_cleared_state(state, new_crtc_state);
 		if (ret)
 			goto fail;
 
-		if (!new_crtc_state->hw.enable)
-			continue;
+		ret = intel_modeset_pipe_config(state, new_crtc_state);
+		if (ret)
+			goto fail;
 
-		ret = intel_modeset_pipe_config(new_crtc_state);
+		ret = intel_atomic_check_bigjoiner(state, crtc, old_crtc_state,
+						   new_crtc_state);
 		if (ret)
 			goto fail;
 	}
@@ -15248,7 +15402,9 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	commit_pipe_config(state, crtc);
 
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (new_crtc_state->bigjoiner) {
+	/* Not supported yet */
+	} else if (INTEL_GEN(dev_priv) >= 9)
 		skl_update_planes_on_crtc(state, crtc);
 	else
 		i9xx_update_planes_on_crtc(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3562cefa12c2..5f7c7c38fe65 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1051,6 +1051,15 @@ struct intel_crtc_state {
 	/* enable pipe csc? */
 	bool csc_enable;
 
+	/* enable pipe big joiner? */
+	bool bigjoiner;
+
+	/* big joiner slave crtc? */
+	bool bigjoiner_slave;
+
+	/* linked crtc for bigjoiner, either slave or master */
+	struct intel_crtc *bigjoiner_linked_crtc;
+
 	/* Display Stream compression state */
 	struct {
 		bool compression_enable;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 05accd49993b..25937adcf572 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2342,6 +2342,15 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	pipe_config->port_clock = intel_dp->common_rates[limits->max_clock];
 	pipe_config->lane_count = limits->max_lane_count;
 
+	if (adjusted_mode->crtc_clock > intel_dp_max_dotclock(intel_dp, false)) {
+		if (adjusted_mode->crtc_clock > intel_dp_max_dotclock(intel_dp, true)) {
+			DRM_DEBUG_KMS("Clock rate too high for big joiner\n");
+			return -EINVAL;
+		}
+		pipe_config->bigjoiner = true;
+		DRM_DEBUG_KMS("Using bigjoiner configuration\n");
+	}
+
 	if (intel_dp_is_edp(intel_dp)) {
 		pipe_config->dsc.compressed_bpp =
 			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
@@ -2359,12 +2368,12 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 						    pipe_config->lane_count,
 						    adjusted_mode->crtc_clock,
 						    adjusted_mode->crtc_hdisplay,
-						    false);
+						    pipe_config->bigjoiner);
 		dsc_dp_slice_count =
 			intel_dp_dsc_get_slice_count(intel_dp,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
-						     false);
+						     pipe_config->bigjoiner);
 		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Compressed BPP/Slice Count not supported\n");
@@ -2380,14 +2389,15 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * is greater than the maximum Cdclock and if slice count is even
 	 * then we need to use 2 VDSC instances.
 	 */
-	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq) {
-		if (pipe_config->dsc.slice_count > 1) {
-			pipe_config->dsc.dsc_split = true;
-		} else {
+	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
+	    pipe_config->bigjoiner) {
+		if (pipe_config->dsc.slice_count < 2) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Cannot split stream to use 2 VDSC instances\n");
 			return -EINVAL;
 		}
+
+		pipe_config->dsc.dsc_split = true;
 	}
 
 	ret = intel_dp_dsc_compute_params(&dig_port->base, pipe_config);
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
