Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 971493EF6ED
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 02:37:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C2E26E2BC;
	Wed, 18 Aug 2021 00:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CE636E2B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 00:37:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="279966461"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="279966461"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 17:37:32 -0700
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="676844444"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 17:37:31 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 17 Aug 2021 17:42:11 -0700
Message-Id: <20210818004216.220279-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210818004216.220279-1-jose.souza@intel.com>
References: <20210818004216.220279-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/display: Move DRRS code its own
 file
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

intel_dp.c is a 5k lines monster, so moving DRRS out of it to reduce
some lines from it.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 Documentation/gpu/i915.rst                    |  14 +-
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 .../drm/i915/display/intel_display_debugfs.c  |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 467 +----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  11 -
 drivers/gpu/drm/i915/display/intel_drrs.c     | 477 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_drrs.h     |  32 ++
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   1 +
 9 files changed, 521 insertions(+), 484 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_drrs.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_drrs.h

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 204ebdaadb45a..03021dfa0dd81 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -183,25 +183,25 @@ Frame Buffer Compression (FBC)
 Display Refresh Rate Switching (DRRS)
 -------------------------------------
 
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
    :doc: Display Refresh Rate Switching (DRRS)
 
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
    :functions: intel_dp_set_drrs_state
 
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
    :functions: intel_edp_drrs_enable
 
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
    :functions: intel_edp_drrs_disable
 
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
    :functions: intel_edp_drrs_invalidate
 
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
    :functions: intel_edp_drrs_flush
 
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
    :functions: intel_dp_drrs_init
 
 DPIO
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 642a5b5a1b81c..c7cf4dfdc6379 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -212,6 +212,7 @@ i915-y += \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
 	display/intel_dpll_mgr.o \
+	display/intel_drrs.o \
 	display/intel_dsb.o \
 	display/intel_fb.o \
 	display/intel_fbc.o \
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1ef7a65feb660..828df570a4809 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -40,6 +40,7 @@
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dpio_phy.h"
+#include "intel_drrs.h"
 #include "intel_dsi.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 8fdacb252bb19..b136a0fc0963b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -13,6 +13,7 @@
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
+#include "intel_drrs.h"
 #include "intel_fbc.h"
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 75d4ebc669411..10583b0aa489e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -55,6 +55,7 @@
 #include "intel_dp_mst.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
+#include "intel_drrs.h"
 #include "intel_fifo_underrun.h"
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
@@ -1603,46 +1604,6 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
-static void
-intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
-			     struct intel_crtc_state *pipe_config,
-			     int output_bpp, bool constant_n)
-{
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	int pixel_clock;
-
-	if (pipe_config->vrr.enable)
-		return;
-
-	/*
-	 * DRRS and PSR can't be enable together, so giving preference to PSR
-	 * as it allows more power-savings by complete shutting down display,
-	 * so to guarantee this, intel_dp_drrs_compute_config() must be called
-	 * after intel_psr_compute_config().
-	 */
-	if (pipe_config->has_psr)
-		return;
-
-	if (!intel_connector->panel.downclock_mode ||
-	    dev_priv->drrs.type != SEAMLESS_DRRS_SUPPORT)
-		return;
-
-	pipe_config->has_drrs = true;
-
-	pixel_clock = intel_connector->panel.downclock_mode->clock;
-	if (pipe_config->splitter.enable)
-		pixel_clock /= pipe_config->splitter.link_count;
-
-	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
-			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
-			       constant_n, pipe_config->fec_enable);
-
-	/* FIXME: abstract this better */
-	if (pipe_config->splitter.enable)
-		pipe_config->dp_m2_n2.gmch_m *= pipe_config->splitter.link_count;
-}
-
 int
 intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
@@ -4715,432 +4676,6 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		drm_connector_attach_vrr_capable_property(connector);
 }
 
-/**
- * intel_dp_set_drrs_state - program registers for RR switch to take effect
- * @dev_priv: i915 device
- * @crtc_state: a pointer to the active intel_crtc_state
- * @refresh_rate: RR to be programmed
- *
- * This function gets called when refresh rate (RR) has to be changed from
- * one frequency to another. Switches can be between high and low RR
- * supported by the panel or to any other RR based on media playback (in
- * this case, RR value needs to be passed from user space).
- *
- * The caller of this function needs to take a lock on dev_priv->drrs.
- */
-static void intel_dp_set_drrs_state(struct drm_i915_private *dev_priv,
-				    const struct intel_crtc_state *crtc_state,
-				    int refresh_rate)
-{
-	struct intel_dp *intel_dp = dev_priv->drrs.dp;
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum drrs_refresh_rate_type index = DRRS_HIGH_RR;
-
-	if (refresh_rate <= 0) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Refresh rate should be positive non-zero.\n");
-		return;
-	}
-
-	if (intel_dp == NULL) {
-		drm_dbg_kms(&dev_priv->drm, "DRRS not supported.\n");
-		return;
-	}
-
-	if (!crtc) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "DRRS: intel_crtc not initialized\n");
-		return;
-	}
-
-	if (dev_priv->drrs.type < SEAMLESS_DRRS_SUPPORT) {
-		drm_dbg_kms(&dev_priv->drm, "Only Seamless DRRS supported.\n");
-		return;
-	}
-
-	if (drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode) ==
-			refresh_rate)
-		index = DRRS_LOW_RR;
-
-	if (index == dev_priv->drrs.refresh_rate_type) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "DRRS requested for previously set RR...ignoring\n");
-		return;
-	}
-
-	if (!crtc_state->hw.active) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "eDP encoder disabled. CRTC not Active\n");
-		return;
-	}
-
-	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv)) {
-		switch (index) {
-		case DRRS_HIGH_RR:
-			intel_dp_set_m_n(crtc_state, M1_N1);
-			break;
-		case DRRS_LOW_RR:
-			intel_dp_set_m_n(crtc_state, M2_N2);
-			break;
-		case DRRS_MAX_RR:
-		default:
-			drm_err(&dev_priv->drm,
-				"Unsupported refreshrate type\n");
-		}
-	} else if (DISPLAY_VER(dev_priv) > 6) {
-		i915_reg_t reg = PIPECONF(crtc_state->cpu_transcoder);
-		u32 val;
-
-		val = intel_de_read(dev_priv, reg);
-		if (index > DRRS_HIGH_RR) {
-			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-				val |= PIPECONF_EDP_RR_MODE_SWITCH_VLV;
-			else
-				val |= PIPECONF_EDP_RR_MODE_SWITCH;
-		} else {
-			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-				val &= ~PIPECONF_EDP_RR_MODE_SWITCH_VLV;
-			else
-				val &= ~PIPECONF_EDP_RR_MODE_SWITCH;
-		}
-		intel_de_write(dev_priv, reg, val);
-	}
-
-	dev_priv->drrs.refresh_rate_type = index;
-
-	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %dHz\n",
-		    refresh_rate);
-}
-
-static void
-intel_edp_drrs_enable_locked(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	dev_priv->drrs.busy_frontbuffer_bits = 0;
-	dev_priv->drrs.dp = intel_dp;
-}
-
-/**
- * intel_edp_drrs_enable - init drrs struct if supported
- * @intel_dp: DP struct
- * @crtc_state: A pointer to the active crtc state.
- *
- * Initializes frontbuffer_bits and drrs.dp
- */
-void intel_edp_drrs_enable(struct intel_dp *intel_dp,
-			   const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	if (!crtc_state->has_drrs)
-		return;
-
-	drm_dbg_kms(&dev_priv->drm, "Enabling DRRS\n");
-
-	mutex_lock(&dev_priv->drrs.mutex);
-
-	if (dev_priv->drrs.dp) {
-		drm_warn(&dev_priv->drm, "DRRS already enabled\n");
-		goto unlock;
-	}
-
-	intel_edp_drrs_enable_locked(intel_dp);
-
-unlock:
-	mutex_unlock(&dev_priv->drrs.mutex);
-}
-
-static void
-intel_edp_drrs_disable_locked(struct intel_dp *intel_dp,
-			      const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	if (dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR) {
-		int refresh;
-
-		refresh = drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode);
-		intel_dp_set_drrs_state(dev_priv, crtc_state, refresh);
-	}
-
-	dev_priv->drrs.dp = NULL;
-}
-
-/**
- * intel_edp_drrs_disable - Disable DRRS
- * @intel_dp: DP struct
- * @old_crtc_state: Pointer to old crtc_state.
- *
- */
-void intel_edp_drrs_disable(struct intel_dp *intel_dp,
-			    const struct intel_crtc_state *old_crtc_state)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	if (!old_crtc_state->has_drrs)
-		return;
-
-	mutex_lock(&dev_priv->drrs.mutex);
-	if (!dev_priv->drrs.dp) {
-		mutex_unlock(&dev_priv->drrs.mutex);
-		return;
-	}
-
-	intel_edp_drrs_disable_locked(intel_dp, old_crtc_state);
-	mutex_unlock(&dev_priv->drrs.mutex);
-
-	cancel_delayed_work_sync(&dev_priv->drrs.work);
-}
-
-/**
- * intel_edp_drrs_update - Update DRRS state
- * @intel_dp: Intel DP
- * @crtc_state: new CRTC state
- *
- * This function will update DRRS states, disabling or enabling DRRS when
- * executing fastsets. For full modeset, intel_edp_drrs_disable() and
- * intel_edp_drrs_enable() should be called instead.
- */
-void
-intel_edp_drrs_update(struct intel_dp *intel_dp,
-		      const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	if (dev_priv->drrs.type != SEAMLESS_DRRS_SUPPORT)
-		return;
-
-	mutex_lock(&dev_priv->drrs.mutex);
-
-	/* New state matches current one? */
-	if (crtc_state->has_drrs == !!dev_priv->drrs.dp)
-		goto unlock;
-
-	if (crtc_state->has_drrs)
-		intel_edp_drrs_enable_locked(intel_dp);
-	else
-		intel_edp_drrs_disable_locked(intel_dp, crtc_state);
-
-unlock:
-	mutex_unlock(&dev_priv->drrs.mutex);
-}
-
-static void intel_edp_drrs_downclock_work(struct work_struct *work)
-{
-	struct drm_i915_private *dev_priv =
-		container_of(work, typeof(*dev_priv), drrs.work.work);
-	struct intel_dp *intel_dp;
-
-	mutex_lock(&dev_priv->drrs.mutex);
-
-	intel_dp = dev_priv->drrs.dp;
-
-	if (!intel_dp)
-		goto unlock;
-
-	/*
-	 * The delayed work can race with an invalidate hence we need to
-	 * recheck.
-	 */
-
-	if (dev_priv->drrs.busy_frontbuffer_bits)
-		goto unlock;
-
-	if (dev_priv->drrs.refresh_rate_type != DRRS_LOW_RR) {
-		struct drm_crtc *crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
-
-		intel_dp_set_drrs_state(dev_priv, to_intel_crtc(crtc)->config,
-			drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode));
-	}
-
-unlock:
-	mutex_unlock(&dev_priv->drrs.mutex);
-}
-
-/**
- * intel_edp_drrs_invalidate - Disable Idleness DRRS
- * @dev_priv: i915 device
- * @frontbuffer_bits: frontbuffer plane tracking bits
- *
- * This function gets called everytime rendering on the given planes start.
- * Hence DRRS needs to be Upclocked, i.e. (LOW_RR -> HIGH_RR).
- *
- * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
- */
-void intel_edp_drrs_invalidate(struct drm_i915_private *dev_priv,
-			       unsigned int frontbuffer_bits)
-{
-	struct intel_dp *intel_dp;
-	struct drm_crtc *crtc;
-	enum pipe pipe;
-
-	if (dev_priv->drrs.type == DRRS_NOT_SUPPORTED)
-		return;
-
-	cancel_delayed_work(&dev_priv->drrs.work);
-
-	mutex_lock(&dev_priv->drrs.mutex);
-
-	intel_dp = dev_priv->drrs.dp;
-	if (!intel_dp) {
-		mutex_unlock(&dev_priv->drrs.mutex);
-		return;
-	}
-
-	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
-	pipe = to_intel_crtc(crtc)->pipe;
-
-	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
-	dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
-
-	/* invalidate means busy screen hence upclock */
-	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
-		intel_dp_set_drrs_state(dev_priv, to_intel_crtc(crtc)->config,
-					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
-
-	mutex_unlock(&dev_priv->drrs.mutex);
-}
-
-/**
- * intel_edp_drrs_flush - Restart Idleness DRRS
- * @dev_priv: i915 device
- * @frontbuffer_bits: frontbuffer plane tracking bits
- *
- * This function gets called every time rendering on the given planes has
- * completed or flip on a crtc is completed. So DRRS should be upclocked
- * (LOW_RR -> HIGH_RR). And also Idleness detection should be started again,
- * if no other planes are dirty.
- *
- * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
- */
-void intel_edp_drrs_flush(struct drm_i915_private *dev_priv,
-			  unsigned int frontbuffer_bits)
-{
-	struct intel_dp *intel_dp;
-	struct drm_crtc *crtc;
-	enum pipe pipe;
-
-	if (dev_priv->drrs.type == DRRS_NOT_SUPPORTED)
-		return;
-
-	cancel_delayed_work(&dev_priv->drrs.work);
-
-	mutex_lock(&dev_priv->drrs.mutex);
-
-	intel_dp = dev_priv->drrs.dp;
-	if (!intel_dp) {
-		mutex_unlock(&dev_priv->drrs.mutex);
-		return;
-	}
-
-	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
-	pipe = to_intel_crtc(crtc)->pipe;
-
-	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
-	dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
-
-	/* flush means busy screen hence upclock */
-	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
-		intel_dp_set_drrs_state(dev_priv, to_intel_crtc(crtc)->config,
-					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
-
-	/*
-	 * flush also means no more activity hence schedule downclock, if all
-	 * other fbs are quiescent too
-	 */
-	if (!dev_priv->drrs.busy_frontbuffer_bits)
-		schedule_delayed_work(&dev_priv->drrs.work,
-				msecs_to_jiffies(1000));
-	mutex_unlock(&dev_priv->drrs.mutex);
-}
-
-/**
- * DOC: Display Refresh Rate Switching (DRRS)
- *
- * Display Refresh Rate Switching (DRRS) is a power conservation feature
- * which enables swtching between low and high refresh rates,
- * dynamically, based on the usage scenario. This feature is applicable
- * for internal panels.
- *
- * Indication that the panel supports DRRS is given by the panel EDID, which
- * would list multiple refresh rates for one resolution.
- *
- * DRRS is of 2 types - static and seamless.
- * Static DRRS involves changing refresh rate (RR) by doing a full modeset
- * (may appear as a blink on screen) and is used in dock-undock scenario.
- * Seamless DRRS involves changing RR without any visual effect to the user
- * and can be used during normal system usage. This is done by programming
- * certain registers.
- *
- * Support for static/seamless DRRS may be indicated in the VBT based on
- * inputs from the panel spec.
- *
- * DRRS saves power by switching to low RR based on usage scenarios.
- *
- * The implementation is based on frontbuffer tracking implementation.  When
- * there is a disturbance on the screen triggered by user activity or a periodic
- * system activity, DRRS is disabled (RR is changed to high RR).  When there is
- * no movement on screen, after a timeout of 1 second, a switch to low RR is
- * made.
- *
- * For integration with frontbuffer tracking code, intel_edp_drrs_invalidate()
- * and intel_edp_drrs_flush() are called.
- *
- * DRRS can be further extended to support other internal panels and also
- * the scenario of video playback wherein RR is set based on the rate
- * requested by userspace.
- */
-
-/**
- * intel_dp_drrs_init - Init basic DRRS work and mutex.
- * @connector: eDP connector
- * @fixed_mode: preferred mode of panel
- *
- * This function is  called only once at driver load to initialize basic
- * DRRS stuff.
- *
- * Returns:
- * Downclock mode if panel supports it, else return NULL.
- * DRRS support is determined by the presence of downclock mode (apart
- * from VBT setting).
- */
-static struct drm_display_mode *
-intel_dp_drrs_init(struct intel_connector *connector,
-		   struct drm_display_mode *fixed_mode)
-{
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct drm_display_mode *downclock_mode = NULL;
-
-	INIT_DELAYED_WORK(&dev_priv->drrs.work, intel_edp_drrs_downclock_work);
-	mutex_init(&dev_priv->drrs.mutex);
-
-	if (DISPLAY_VER(dev_priv) <= 6) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "DRRS supported for Gen7 and above\n");
-		return NULL;
-	}
-
-	if (dev_priv->vbt.drrs_type != SEAMLESS_DRRS_SUPPORT) {
-		drm_dbg_kms(&dev_priv->drm, "VBT doesn't support DRRS\n");
-		return NULL;
-	}
-
-	downclock_mode = intel_panel_edid_downclock_mode(connector, fixed_mode);
-	if (!downclock_mode) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Downclock mode is not found. DRRS not supported\n");
-		return NULL;
-	}
-
-	dev_priv->drrs.type = dev_priv->vbt.drrs_type;
-
-	dev_priv->drrs.refresh_rate_type = DRRS_HIGH_RR;
-	drm_dbg_kms(&dev_priv->drm,
-		    "seamless DRRS supported for eDP panel.\n");
-	return downclock_mode;
-}
-
 static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 				     struct intel_connector *intel_connector)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 680631b5b4378..38ff0e4f65504 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -70,17 +70,6 @@ int intel_dp_max_link_rate(struct intel_dp *intel_dp);
 int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
 
-void intel_edp_drrs_enable(struct intel_dp *intel_dp,
-			   const struct intel_crtc_state *crtc_state);
-void intel_edp_drrs_disable(struct intel_dp *intel_dp,
-			    const struct intel_crtc_state *crtc_state);
-void intel_edp_drrs_update(struct intel_dp *intel_dp,
-			   const struct intel_crtc_state *crtc_state);
-void intel_edp_drrs_invalidate(struct drm_i915_private *dev_priv,
-			       unsigned int frontbuffer_bits);
-void intel_edp_drrs_flush(struct drm_i915_private *dev_priv,
-			  unsigned int frontbuffer_bits);
-
 void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 			   u8 *link_bw, u8 *rate_select);
 bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
new file mode 100644
index 0000000000000..be9b6d4482f04
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -0,0 +1,477 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "intel_atomic.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_drrs.h"
+#include "intel_panel.h"
+
+/**
+ * DOC: Display Refresh Rate Switching (DRRS)
+ *
+ * Display Refresh Rate Switching (DRRS) is a power conservation feature
+ * which enables swtching between low and high refresh rates,
+ * dynamically, based on the usage scenario. This feature is applicable
+ * for internal panels.
+ *
+ * Indication that the panel supports DRRS is given by the panel EDID, which
+ * would list multiple refresh rates for one resolution.
+ *
+ * DRRS is of 2 types - static and seamless.
+ * Static DRRS involves changing refresh rate (RR) by doing a full modeset
+ * (may appear as a blink on screen) and is used in dock-undock scenario.
+ * Seamless DRRS involves changing RR without any visual effect to the user
+ * and can be used during normal system usage. This is done by programming
+ * certain registers.
+ *
+ * Support for static/seamless DRRS may be indicated in the VBT based on
+ * inputs from the panel spec.
+ *
+ * DRRS saves power by switching to low RR based on usage scenarios.
+ *
+ * The implementation is based on frontbuffer tracking implementation.  When
+ * there is a disturbance on the screen triggered by user activity or a periodic
+ * system activity, DRRS is disabled (RR is changed to high RR).  When there is
+ * no movement on screen, after a timeout of 1 second, a switch to low RR is
+ * made.
+ *
+ * For integration with frontbuffer tracking code, intel_edp_drrs_invalidate()
+ * and intel_edp_drrs_flush() are called.
+ *
+ * DRRS can be further extended to support other internal panels and also
+ * the scenario of video playback wherein RR is set based on the rate
+ * requested by userspace.
+ */
+
+void
+intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
+			     struct intel_crtc_state *pipe_config,
+			     int output_bpp, bool constant_n)
+{
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	int pixel_clock;
+
+	if (pipe_config->vrr.enable)
+		return;
+
+	/*
+	 * DRRS and PSR can't be enable together, so giving preference to PSR
+	 * as it allows more power-savings by complete shutting down display,
+	 * so to guarantee this, intel_dp_drrs_compute_config() must be called
+	 * after intel_psr_compute_config().
+	 */
+	if (pipe_config->has_psr)
+		return;
+
+	if (!intel_connector->panel.downclock_mode ||
+	    dev_priv->drrs.type != SEAMLESS_DRRS_SUPPORT)
+		return;
+
+	pipe_config->has_drrs = true;
+
+	pixel_clock = intel_connector->panel.downclock_mode->clock;
+	if (pipe_config->splitter.enable)
+		pixel_clock /= pipe_config->splitter.link_count;
+
+	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
+			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
+			       constant_n, pipe_config->fec_enable);
+
+	/* FIXME: abstract this better */
+	if (pipe_config->splitter.enable)
+		pipe_config->dp_m2_n2.gmch_m *= pipe_config->splitter.link_count;
+}
+
+/**
+ * intel_dp_set_drrs_state - program registers for RR switch to take effect
+ * @dev_priv: i915 device
+ * @crtc_state: a pointer to the active intel_crtc_state
+ * @refresh_rate: RR to be programmed
+ *
+ * This function gets called when refresh rate (RR) has to be changed from
+ * one frequency to another. Switches can be between high and low RR
+ * supported by the panel or to any other RR based on media playback (in
+ * this case, RR value needs to be passed from user space).
+ *
+ * The caller of this function needs to take a lock on dev_priv->drrs.
+ */
+static void intel_dp_set_drrs_state(struct drm_i915_private *dev_priv,
+				    const struct intel_crtc_state *crtc_state,
+				    int refresh_rate)
+{
+	struct intel_dp *intel_dp = dev_priv->drrs.dp;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum drrs_refresh_rate_type index = DRRS_HIGH_RR;
+
+	if (refresh_rate <= 0) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Refresh rate should be positive non-zero.\n");
+		return;
+	}
+
+	if (intel_dp == NULL) {
+		drm_dbg_kms(&dev_priv->drm, "DRRS not supported.\n");
+		return;
+	}
+
+	if (!crtc) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "DRRS: intel_crtc not initialized\n");
+		return;
+	}
+
+	if (dev_priv->drrs.type < SEAMLESS_DRRS_SUPPORT) {
+		drm_dbg_kms(&dev_priv->drm, "Only Seamless DRRS supported.\n");
+		return;
+	}
+
+	if (drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode) ==
+			refresh_rate)
+		index = DRRS_LOW_RR;
+
+	if (index == dev_priv->drrs.refresh_rate_type) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "DRRS requested for previously set RR...ignoring\n");
+		return;
+	}
+
+	if (!crtc_state->hw.active) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "eDP encoder disabled. CRTC not Active\n");
+		return;
+	}
+
+	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv)) {
+		switch (index) {
+		case DRRS_HIGH_RR:
+			intel_dp_set_m_n(crtc_state, M1_N1);
+			break;
+		case DRRS_LOW_RR:
+			intel_dp_set_m_n(crtc_state, M2_N2);
+			break;
+		case DRRS_MAX_RR:
+		default:
+			drm_err(&dev_priv->drm,
+				"Unsupported refreshrate type\n");
+		}
+	} else if (DISPLAY_VER(dev_priv) > 6) {
+		i915_reg_t reg = PIPECONF(crtc_state->cpu_transcoder);
+		u32 val;
+
+		val = intel_de_read(dev_priv, reg);
+		if (index > DRRS_HIGH_RR) {
+			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+				val |= PIPECONF_EDP_RR_MODE_SWITCH_VLV;
+			else
+				val |= PIPECONF_EDP_RR_MODE_SWITCH;
+		} else {
+			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+				val &= ~PIPECONF_EDP_RR_MODE_SWITCH_VLV;
+			else
+				val &= ~PIPECONF_EDP_RR_MODE_SWITCH;
+		}
+		intel_de_write(dev_priv, reg, val);
+	}
+
+	dev_priv->drrs.refresh_rate_type = index;
+
+	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %dHz\n",
+		    refresh_rate);
+}
+
+static void
+intel_edp_drrs_enable_locked(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	dev_priv->drrs.busy_frontbuffer_bits = 0;
+	dev_priv->drrs.dp = intel_dp;
+}
+
+/**
+ * intel_edp_drrs_enable - init drrs struct if supported
+ * @intel_dp: DP struct
+ * @crtc_state: A pointer to the active crtc state.
+ *
+ * Initializes frontbuffer_bits and drrs.dp
+ */
+void intel_edp_drrs_enable(struct intel_dp *intel_dp,
+			   const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (!crtc_state->has_drrs)
+		return;
+
+	drm_dbg_kms(&dev_priv->drm, "Enabling DRRS\n");
+
+	mutex_lock(&dev_priv->drrs.mutex);
+
+	if (dev_priv->drrs.dp) {
+		drm_warn(&dev_priv->drm, "DRRS already enabled\n");
+		goto unlock;
+	}
+
+	intel_edp_drrs_enable_locked(intel_dp);
+
+unlock:
+	mutex_unlock(&dev_priv->drrs.mutex);
+}
+
+static void
+intel_edp_drrs_disable_locked(struct intel_dp *intel_dp,
+			      const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR) {
+		int refresh;
+
+		refresh = drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode);
+		intel_dp_set_drrs_state(dev_priv, crtc_state, refresh);
+	}
+
+	dev_priv->drrs.dp = NULL;
+}
+
+/**
+ * intel_edp_drrs_disable - Disable DRRS
+ * @intel_dp: DP struct
+ * @old_crtc_state: Pointer to old crtc_state.
+ *
+ */
+void intel_edp_drrs_disable(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *old_crtc_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (!old_crtc_state->has_drrs)
+		return;
+
+	mutex_lock(&dev_priv->drrs.mutex);
+	if (!dev_priv->drrs.dp) {
+		mutex_unlock(&dev_priv->drrs.mutex);
+		return;
+	}
+
+	intel_edp_drrs_disable_locked(intel_dp, old_crtc_state);
+	mutex_unlock(&dev_priv->drrs.mutex);
+
+	cancel_delayed_work_sync(&dev_priv->drrs.work);
+}
+
+/**
+ * intel_edp_drrs_update - Update DRRS state
+ * @intel_dp: Intel DP
+ * @crtc_state: new CRTC state
+ *
+ * This function will update DRRS states, disabling or enabling DRRS when
+ * executing fastsets. For full modeset, intel_edp_drrs_disable() and
+ * intel_edp_drrs_enable() should be called instead.
+ */
+void
+intel_edp_drrs_update(struct intel_dp *intel_dp,
+		      const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (dev_priv->drrs.type != SEAMLESS_DRRS_SUPPORT)
+		return;
+
+	mutex_lock(&dev_priv->drrs.mutex);
+
+	/* New state matches current one? */
+	if (crtc_state->has_drrs == !!dev_priv->drrs.dp)
+		goto unlock;
+
+	if (crtc_state->has_drrs)
+		intel_edp_drrs_enable_locked(intel_dp);
+	else
+		intel_edp_drrs_disable_locked(intel_dp, crtc_state);
+
+unlock:
+	mutex_unlock(&dev_priv->drrs.mutex);
+}
+
+static void intel_edp_drrs_downclock_work(struct work_struct *work)
+{
+	struct drm_i915_private *dev_priv =
+		container_of(work, typeof(*dev_priv), drrs.work.work);
+	struct intel_dp *intel_dp;
+
+	mutex_lock(&dev_priv->drrs.mutex);
+
+	intel_dp = dev_priv->drrs.dp;
+
+	if (!intel_dp)
+		goto unlock;
+
+	/*
+	 * The delayed work can race with an invalidate hence we need to
+	 * recheck.
+	 */
+
+	if (dev_priv->drrs.busy_frontbuffer_bits)
+		goto unlock;
+
+	if (dev_priv->drrs.refresh_rate_type != DRRS_LOW_RR) {
+		struct drm_crtc *crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
+
+		intel_dp_set_drrs_state(dev_priv, to_intel_crtc(crtc)->config,
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode));
+	}
+
+unlock:
+	mutex_unlock(&dev_priv->drrs.mutex);
+}
+
+/**
+ * intel_edp_drrs_invalidate - Disable Idleness DRRS
+ * @dev_priv: i915 device
+ * @frontbuffer_bits: frontbuffer plane tracking bits
+ *
+ * This function gets called everytime rendering on the given planes start.
+ * Hence DRRS needs to be Upclocked, i.e. (LOW_RR -> HIGH_RR).
+ *
+ * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
+ */
+void intel_edp_drrs_invalidate(struct drm_i915_private *dev_priv,
+			       unsigned int frontbuffer_bits)
+{
+	struct intel_dp *intel_dp;
+	struct drm_crtc *crtc;
+	enum pipe pipe;
+
+	if (dev_priv->drrs.type == DRRS_NOT_SUPPORTED)
+		return;
+
+	cancel_delayed_work(&dev_priv->drrs.work);
+
+	mutex_lock(&dev_priv->drrs.mutex);
+
+	intel_dp = dev_priv->drrs.dp;
+	if (!intel_dp) {
+		mutex_unlock(&dev_priv->drrs.mutex);
+		return;
+	}
+
+	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
+	pipe = to_intel_crtc(crtc)->pipe;
+
+	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
+	dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
+
+	/* invalidate means busy screen hence upclock */
+	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
+		intel_dp_set_drrs_state(dev_priv, to_intel_crtc(crtc)->config,
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
+
+	mutex_unlock(&dev_priv->drrs.mutex);
+}
+
+/**
+ * intel_edp_drrs_flush - Restart Idleness DRRS
+ * @dev_priv: i915 device
+ * @frontbuffer_bits: frontbuffer plane tracking bits
+ *
+ * This function gets called every time rendering on the given planes has
+ * completed or flip on a crtc is completed. So DRRS should be upclocked
+ * (LOW_RR -> HIGH_RR). And also Idleness detection should be started again,
+ * if no other planes are dirty.
+ *
+ * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
+ */
+void intel_edp_drrs_flush(struct drm_i915_private *dev_priv,
+			  unsigned int frontbuffer_bits)
+{
+	struct intel_dp *intel_dp;
+	struct drm_crtc *crtc;
+	enum pipe pipe;
+
+	if (dev_priv->drrs.type == DRRS_NOT_SUPPORTED)
+		return;
+
+	cancel_delayed_work(&dev_priv->drrs.work);
+
+	mutex_lock(&dev_priv->drrs.mutex);
+
+	intel_dp = dev_priv->drrs.dp;
+	if (!intel_dp) {
+		mutex_unlock(&dev_priv->drrs.mutex);
+		return;
+	}
+
+	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
+	pipe = to_intel_crtc(crtc)->pipe;
+
+	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
+	dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
+
+	/* flush means busy screen hence upclock */
+	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
+		intel_dp_set_drrs_state(dev_priv, to_intel_crtc(crtc)->config,
+					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
+
+	/*
+	 * flush also means no more activity hence schedule downclock, if all
+	 * other fbs are quiescent too
+	 */
+	if (!dev_priv->drrs.busy_frontbuffer_bits)
+		schedule_delayed_work(&dev_priv->drrs.work,
+				      msecs_to_jiffies(1000));
+	mutex_unlock(&dev_priv->drrs.mutex);
+}
+
+/**
+ * intel_dp_drrs_init - Init basic DRRS work and mutex.
+ * @connector: eDP connector
+ * @fixed_mode: preferred mode of panel
+ *
+ * This function is  called only once at driver load to initialize basic
+ * DRRS stuff.
+ *
+ * Returns:
+ * Downclock mode if panel supports it, else return NULL.
+ * DRRS support is determined by the presence of downclock mode (apart
+ * from VBT setting).
+ */
+struct drm_display_mode *
+intel_dp_drrs_init(struct intel_connector *connector,
+		   struct drm_display_mode *fixed_mode)
+{
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_display_mode *downclock_mode = NULL;
+
+	INIT_DELAYED_WORK(&dev_priv->drrs.work, intel_edp_drrs_downclock_work);
+	mutex_init(&dev_priv->drrs.mutex);
+
+	if (DISPLAY_VER(dev_priv) <= 6) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "DRRS supported for Gen7 and above\n");
+		return NULL;
+	}
+
+	if (dev_priv->vbt.drrs_type != SEAMLESS_DRRS_SUPPORT) {
+		drm_dbg_kms(&dev_priv->drm, "VBT doesn't support DRRS\n");
+		return NULL;
+	}
+
+	downclock_mode = intel_panel_edid_downclock_mode(connector, fixed_mode);
+	if (!downclock_mode) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Downclock mode is not found. DRRS not supported\n");
+		return NULL;
+	}
+
+	dev_priv->drrs.type = dev_priv->vbt.drrs_type;
+
+	dev_priv->drrs.refresh_rate_type = DRRS_HIGH_RR;
+	drm_dbg_kms(&dev_priv->drm,
+		    "seamless DRRS supported for eDP panel.\n");
+	return downclock_mode;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
new file mode 100644
index 0000000000000..ffa175b4cf4f4
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __INTEL_DRRS_H__
+#define __INTEL_DRRS_H__
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+struct intel_crtc_state;
+struct intel_connector;
+struct intel_dp;
+
+void intel_edp_drrs_enable(struct intel_dp *intel_dp,
+			   const struct intel_crtc_state *crtc_state);
+void intel_edp_drrs_disable(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *crtc_state);
+void intel_edp_drrs_update(struct intel_dp *intel_dp,
+			   const struct intel_crtc_state *crtc_state);
+void intel_edp_drrs_invalidate(struct drm_i915_private *dev_priv,
+			       unsigned int frontbuffer_bits);
+void intel_edp_drrs_flush(struct drm_i915_private *dev_priv,
+			  unsigned int frontbuffer_bits);
+void intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
+				  struct intel_crtc_state *pipe_config,
+				  int output_bpp, bool constant_n);
+struct drm_display_mode *intel_dp_drrs_init(struct intel_connector *connector,
+					    struct drm_display_mode *fixed_mode);
+
+#endif /* __INTEL_DRRS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 8e75debcce1a9..e4834d84ce5e3 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -62,6 +62,7 @@
 #include "intel_display_types.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
+#include "intel_drrs.h"
 #include "intel_psr.h"
 
 /**
-- 
2.32.0

