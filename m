Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E238E4D3E6A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E480E10E5CA;
	Thu, 10 Mar 2022 00:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD27610E5F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873311; x=1678409311;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jK4sVmplsqwUZqRy6HT/PcQYnhedbfTFYlaQ8nP2h7A=;
 b=aRkHPQILmzVCu+nySqKvC50K7q2CJh6oHGTjTCw/CAna4z7lziAOTI7U
 0lDdBHpUBhXtgSMn+Jv5SGcMdN4REO2p23MNUfCOFdzWXtE8YbWBGR7rB
 WEgXQkm8oqxpcivXW0my8z/y/bIRwqntalnwFuPP/WOwhQNPwQay56pZc
 +B7RO5VL3EhLjQY+QtovN/i26gp2N9SZEC5d0PQmqT+z4jbmOmfXcneFW
 VS+BDnxPlo81XUC8MhRXWgsF5WqXrDXPKzVTSo+V5nPBfbKg+5Mll3wwt
 v1ZuSmiiEwrrsMw8PkFF0lA4DlIy7ujGH3mRr5X2V7XgmOWR4Q2gD3ipf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="341555705"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="341555705"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="538236824"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 09 Mar 2022 16:48:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:58 +0200
Message-Id: <20220310004802.16310-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/13] drm/i915: Stash DRRS state under
 intel_crtc
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Get rid of the ugly intel_dp dependency, and one more crtc->config
usage by storing the DRRS state under intel_crtc. intel_drrs_enable()
copies what it needs from the crtc state, after which DRRS can be
blissfully ignorant of anything going on around it.

This also lets multiple pipes do DRRS simultanously and entirely
independently.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |  97 ++----
 .../drm/i915/display/intel_display_types.h    |  14 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     | 300 +++++++-----------
 drivers/gpu/drm/i915/display/intel_drrs.h     |  20 +-
 drivers/gpu/drm/i915/i915_drv.h               |  15 -
 9 files changed, 171 insertions(+), 291 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 65827481c1b1..f655c1622877 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -24,6 +24,7 @@
 #include "intel_display_debugfs.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
+#include "intel_drrs.h"
 #include "intel_dsi.h"
 #include "intel_pipe_crc.h"
 #include "intel_psr.h"
@@ -367,6 +368,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	intel_color_init(crtc);
 
+	intel_crtc_drrs_init(crtc);
 	intel_crtc_crc_init(crtc);
 
 	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3e6d86a54850..a3bf4e876fb4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2820,7 +2820,7 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
 		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 
-	intel_drrs_enable(intel_dp, crtc_state);
+	intel_drrs_enable(crtc_state);
 
 	if (crtc_state->has_audio)
 		intel_audio_codec_enable(encoder, crtc_state, conn_state);
@@ -2963,7 +2963,7 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
 		intel_audio_codec_disable(encoder,
 					  old_crtc_state, old_conn_state);
 
-	intel_drrs_disable(intel_dp, old_crtc_state);
+	intel_drrs_disable(old_crtc_state);
 	intel_psr_disable(intel_dp, old_crtc_state);
 	intel_edp_backlight_off(old_conn_state);
 	/* Disable the decompression in DP Sink */
@@ -3013,12 +3013,12 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 				     const struct intel_crtc_state *crtc_state,
 				     const struct drm_connector_state *conn_state)
 {
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	intel_ddi_set_dp_msa(crtc_state, conn_state);
 
 	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
-	intel_drrs_update(intel_dp, crtc_state);
+	intel_drrs_update(state, crtc);
 
 	intel_backlight_update(state, encoder, crtc_state, conn_state);
 	drm_connector_update_privacy_screen(conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b7c418677372..4c7c74665819 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1229,7 +1229,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 
 	hsw_ips_post_update(state, crtc);
 	intel_fbc_post_update(state, crtc);
-	intel_drrs_page_flip(state, crtc);
+	intel_drrs_page_flip(crtc);
 
 	if (needs_async_flip_vtd_wa(old_crtc_state) &&
 	    !needs_async_flip_vtd_wa(new_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 798bf233a60f..bbf6ebd18414 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1143,87 +1143,44 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static void drrs_status_per_crtc(struct seq_file *m,
-				 struct drm_device *dev,
-				 struct intel_crtc *crtc)
+static int i915_drrs_status(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct i915_drrs *drrs = &dev_priv->drrs;
-	struct drm_connector *connector;
+	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct drm_connector_list_iter conn_iter;
+	struct intel_connector *connector;
+	struct intel_crtc *crtc;
 
-	drm_connector_list_iter_begin(dev, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
-		bool supported = false;
+	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		seq_printf(m, "[CONNECTOR:%d:%s]:\n",
+			   connector->base.base.id, connector->base.name);
 
-		if (connector->state->crtc != &crtc->base)
-			continue;
-
-		seq_printf(m, "%s:\n", connector->name);
-
-		if (connector->connector_type == DRM_MODE_CONNECTOR_eDP &&
-		    drrs->type == DRRS_TYPE_SEAMLESS)
-			supported = true;
-
-		seq_printf(m, "\tDRRS Supported: %s\n", str_yes_no(supported));
+		seq_printf(m, "\tDRRS Supported: %s\n",
+			   str_yes_no(connector->panel.downclock_mode));
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
 	seq_puts(m, "\n");
 
-	if (to_intel_crtc_state(crtc->base.state)->has_drrs) {
-		struct intel_panel *panel;
+	for_each_intel_crtc(&dev_priv->drm, crtc) {
+		seq_printf(m, "[CRTC:%d:%s]:\n",
+			   crtc->base.base.id, crtc->base.name);
+
+		mutex_lock(&crtc->drrs.mutex);
 
-		mutex_lock(&drrs->mutex);
 		/* DRRS Supported */
-		seq_puts(m, "\tDRRS Enabled: Yes\n");
+		seq_printf(m, "\tDRRS Enabled: %s\n",
+			   str_yes_no(intel_drrs_is_enabled(crtc)));
 
-		/* disable_drrs() will make drrs->dp NULL */
-		if (!drrs->dp) {
-			seq_puts(m, "Idleness DRRS: Disabled\n");
-			mutex_unlock(&drrs->mutex);
-			return;
-		}
-
-		panel = &drrs->dp->attached_connector->panel;
-		seq_printf(m, "\t\tBusy_frontbuffer_bits: 0x%X",
-					drrs->busy_frontbuffer_bits);
-
-		seq_puts(m, "\n\t\t");
+		seq_printf(m, "\tBusy_frontbuffer_bits: 0x%X",
+			   crtc->drrs.busy_frontbuffer_bits);
 
 		seq_printf(m, "DRRS refresh rate: %s\n",
-			   drrs->refresh_rate == DRRS_REFRESH_RATE_LOW ?
+			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
 			   "low" : "high");
-		seq_puts(m, "\n\t\t");
 
-		mutex_unlock(&drrs->mutex);
-	} else {
-		/* DRRS not supported. Print the VBT parameter*/
-		seq_puts(m, "\tDRRS Enabled : No");
+		mutex_unlock(&crtc->drrs.mutex);
 	}
-	seq_puts(m, "\n");
-}
-
-static int i915_drrs_status(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct drm_device *dev = &dev_priv->drm;
-	struct intel_crtc *crtc;
-	int active_crtc_cnt = 0;
-
-	drm_modeset_lock_all(dev);
-	for_each_intel_crtc(dev, crtc) {
-		if (crtc->base.state->active) {
-			active_crtc_cnt++;
-			seq_printf(m, "\nCRTC %d:  ", active_crtc_cnt);
-
-			drrs_status_per_crtc(m, dev, crtc);
-		}
-	}
-	drm_modeset_unlock_all(dev);
-
-	if (!active_crtc_cnt)
-		seq_puts(m, "No active crtc found\n");
 
 	return 0;
 }
@@ -1917,26 +1874,18 @@ static int i915_drrs_ctl_set(void *data, u64 val)
 
 		drm_connector_list_iter_begin(dev, &conn_iter);
 		drm_for_each_connector_iter(connector, &conn_iter) {
-			struct intel_encoder *encoder;
-			struct intel_dp *intel_dp;
-
 			if (!(crtc_state->uapi.connector_mask &
 			      drm_connector_mask(connector)))
 				continue;
 
-			encoder = intel_attached_encoder(to_intel_connector(connector));
-			if (encoder->type != INTEL_OUTPUT_EDP)
-				continue;
-
 			drm_dbg(&dev_priv->drm,
 				"Manually %sabling DRRS. %llu\n",
 				val ? "en" : "dis", val);
 
-			intel_dp = enc_to_intel_dp(encoder);
 			if (val)
-				intel_drrs_enable(intel_dp, crtc_state);
+				intel_drrs_enable(crtc_state);
 			else
-				intel_drrs_disable(intel_dp, crtc_state);
+				intel_drrs_disable(crtc_state);
 		}
 		drm_connector_list_iter_end(&conn_iter);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 86b2fa675124..e34800ab6924 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1252,6 +1252,11 @@ enum intel_pipe_crc_source {
 	INTEL_PIPE_CRC_SOURCE_MAX,
 };
 
+enum drrs_refresh_rate {
+	DRRS_REFRESH_RATE_HIGH,
+	DRRS_REFRESH_RATE_LOW,
+};
+
 #define INTEL_PIPE_CRC_ENTRIES_NR	128
 struct intel_pipe_crc {
 	spinlock_t lock;
@@ -1294,6 +1299,15 @@ struct intel_crtc {
 		} active;
 	} wm;
 
+	struct {
+		struct mutex mutex;
+		struct delayed_work work;
+		enum drrs_refresh_rate refresh_rate;
+		unsigned int busy_frontbuffer_bits;
+		enum transcoder cpu_transcoder;
+		struct intel_link_m_n m_n, m2_n2;
+	} drrs;
+
 	int scanline_offset;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 619546441eae..725c3350c923 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1895,8 +1895,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
-	intel_drrs_compute_config(intel_dp, pipe_config, output_bpp,
-				  constant_n);
+	intel_drrs_compute_config(pipe_config, intel_connector,
+				  output_bpp, constant_n);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index c97b5dee8cae..246dd0c71194 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -65,15 +65,14 @@ static bool can_enable_drrs(struct intel_connector *connector,
 		return false;
 
 	return connector->panel.downclock_mode &&
-		i915->drrs.type == DRRS_TYPE_SEAMLESS;
+		i915->vbt.drrs_type == DRRS_TYPE_SEAMLESS;
 }
 
 void
-intel_drrs_compute_config(struct intel_dp *intel_dp,
-			  struct intel_crtc_state *pipe_config,
+intel_drrs_compute_config(struct intel_crtc_state *pipe_config,
+			  struct intel_connector *connector,
 			  int output_bpp, bool constant_n)
 {
-	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int pixel_clock;
 
@@ -102,12 +101,11 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 }
 
 static void
-intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc_state,
+intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
 				     enum drrs_refresh_rate refresh_rate)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	enum transcoder cpu_transcoder = crtc->drrs.cpu_transcoder;
 	u32 val, bit;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
@@ -126,240 +124,166 @@ intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc_state,
 }
 
 static void
-intel_drrs_set_refresh_rate_m_n(const struct intel_crtc_state *crtc_state,
+intel_drrs_set_refresh_rate_m_n(struct intel_crtc *crtc,
 				enum drrs_refresh_rate refresh_rate)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
-	intel_cpu_transcoder_set_m1_n1(crtc, crtc_state->cpu_transcoder,
+	intel_cpu_transcoder_set_m1_n1(crtc, crtc->drrs.cpu_transcoder,
 				       refresh_rate == DRRS_REFRESH_RATE_LOW ?
-				       &crtc_state->dp_m2_n2 : &crtc_state->dp_m_n);
+				       &crtc->drrs.m2_n2 : &crtc->drrs.m_n);
 }
 
-static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
-				 const struct intel_crtc_state *crtc_state,
+bool intel_drrs_is_enabled(struct intel_crtc *crtc)
+{
+	return crtc->drrs.cpu_transcoder != INVALID_TRANSCODER;
+}
+
+static void intel_drrs_set_state(struct intel_crtc *crtc,
 				 enum drrs_refresh_rate refresh_rate)
 {
-	struct intel_dp *intel_dp = dev_priv->drrs.dp;
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!intel_dp) {
-		drm_dbg_kms(&dev_priv->drm, "DRRS not supported.\n");
+	if (refresh_rate == crtc->drrs.refresh_rate)
 		return;
-	}
-
-	if (!crtc) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "DRRS: intel_crtc not initialized\n");
-		return;
-	}
-
-	if (dev_priv->drrs.type != DRRS_TYPE_SEAMLESS) {
-		drm_dbg_kms(&dev_priv->drm, "Only Seamless DRRS supported.\n");
-		return;
-	}
-
-	if (refresh_rate == dev_priv->drrs.refresh_rate)
-		return;
-
-	if (!crtc_state->hw.active) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "eDP encoder disabled. CRTC not Active\n");
-		return;
-	}
 
 	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv))
-		intel_drrs_set_refresh_rate_m_n(crtc_state, refresh_rate);
+		intel_drrs_set_refresh_rate_m_n(crtc, refresh_rate);
 	else if (DISPLAY_VER(dev_priv) > 6)
-		intel_drrs_set_refresh_rate_pipeconf(crtc_state, refresh_rate);
+		intel_drrs_set_refresh_rate_pipeconf(crtc, refresh_rate);
 
-	dev_priv->drrs.refresh_rate = refresh_rate;
-
-	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %s\n",
-		    refresh_rate == DRRS_REFRESH_RATE_LOW ? "low" : "high");
-}
-
-static void
-intel_drrs_enable_locked(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	dev_priv->drrs.busy_frontbuffer_bits = 0;
-	dev_priv->drrs.dp = intel_dp;
+	crtc->drrs.refresh_rate = refresh_rate;
 }
 
 /**
  * intel_drrs_enable - init drrs struct if supported
- * @intel_dp: DP struct
  * @crtc_state: A pointer to the active crtc state.
  *
  * Initializes frontbuffer_bits and drrs.dp
  */
-void intel_drrs_enable(struct intel_dp *intel_dp,
-		       const struct intel_crtc_state *crtc_state)
+void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	if (!crtc_state->has_drrs)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "Enabling DRRS\n");
+	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Enabling DRRS\n",
+		    crtc->base.base.id, crtc->base.name);
 
-	mutex_lock(&dev_priv->drrs.mutex);
+	mutex_lock(&crtc->drrs.mutex);
 
-	if (dev_priv->drrs.dp) {
-		drm_warn(&dev_priv->drm, "DRRS already enabled\n");
-		goto unlock;
-	}
+	crtc->drrs.cpu_transcoder = crtc_state->cpu_transcoder;
+	crtc->drrs.m_n = crtc_state->dp_m_n;
+	crtc->drrs.m2_n2 = crtc_state->dp_m2_n2;
+	crtc->drrs.busy_frontbuffer_bits = 0;
 
-	intel_drrs_enable_locked(intel_dp);
-
-unlock:
-	mutex_unlock(&dev_priv->drrs.mutex);
-}
-
-static void
-intel_drrs_disable_locked(struct intel_dp *intel_dp,
-			  const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	intel_drrs_set_state(dev_priv, crtc_state, DRRS_REFRESH_RATE_HIGH);
-	dev_priv->drrs.dp = NULL;
+	mutex_unlock(&crtc->drrs.mutex);
 }
 
 /**
  * intel_drrs_disable - Disable DRRS
- * @intel_dp: DP struct
- * @old_crtc_state: Pointer to old crtc_state.
+ * @old_crtc_state: old crtc_state.
  *
  */
-void intel_drrs_disable(struct intel_dp *intel_dp,
-			const struct intel_crtc_state *old_crtc_state)
+void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	if (!old_crtc_state->has_drrs)
 		return;
 
-	mutex_lock(&dev_priv->drrs.mutex);
-	if (!dev_priv->drrs.dp) {
-		mutex_unlock(&dev_priv->drrs.mutex);
-		return;
-	}
+	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Disabling DRRS\n",
+		    crtc->base.base.id, crtc->base.name);
 
-	intel_drrs_disable_locked(intel_dp, old_crtc_state);
-	mutex_unlock(&dev_priv->drrs.mutex);
+	mutex_lock(&crtc->drrs.mutex);
 
-	cancel_delayed_work_sync(&dev_priv->drrs.work);
+	if (intel_drrs_is_enabled(crtc))
+		intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_HIGH);
+
+	crtc->drrs.cpu_transcoder = INVALID_TRANSCODER;
+	crtc->drrs.busy_frontbuffer_bits = 0;
+
+	mutex_unlock(&crtc->drrs.mutex);
+
+	cancel_delayed_work_sync(&crtc->drrs.work);
 }
 
 /**
- * intel_drrs_update - Update DRRS state
- * @intel_dp: Intel DP
- * @crtc_state: new CRTC state
- *
- * This function will update DRRS states, disabling or enabling DRRS when
- * executing fastsets. For full modeset, intel_drrs_disable() and
- * intel_drrs_enable() should be called instead.
+ * intel_drrs_update - Update DRRS during fastset
+ * @state: atomic state
+ * @crtc: crtc
  */
-void
-intel_drrs_update(struct intel_dp *intel_dp,
-		  const struct intel_crtc_state *crtc_state)
+void intel_drrs_update(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (dev_priv->drrs.type != DRRS_TYPE_SEAMLESS)
+	if (old_crtc_state->has_drrs == new_crtc_state->has_drrs)
 		return;
 
-	mutex_lock(&dev_priv->drrs.mutex);
-
-	/* New state matches current one? */
-	if (crtc_state->has_drrs == !!dev_priv->drrs.dp)
-		goto unlock;
-
-	if (crtc_state->has_drrs)
-		intel_drrs_enable_locked(intel_dp);
+	if (new_crtc_state->has_drrs)
+		intel_drrs_enable(new_crtc_state);
 	else
-		intel_drrs_disable_locked(intel_dp, crtc_state);
-
-unlock:
-	mutex_unlock(&dev_priv->drrs.mutex);
+		intel_drrs_disable(old_crtc_state);
 }
 
 static void intel_drrs_downclock_work(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv =
-		container_of(work, typeof(*dev_priv), drrs.work.work);
-	struct intel_dp *intel_dp;
+	struct intel_crtc *crtc = container_of(work, typeof(*crtc), drrs.work.work);
 
-	mutex_lock(&dev_priv->drrs.mutex);
+	mutex_lock(&crtc->drrs.mutex);
 
-	intel_dp = dev_priv->drrs.dp;
+	if (intel_drrs_is_enabled(crtc) && !crtc->drrs.busy_frontbuffer_bits)
+		intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_LOW);
 
-	if (!intel_dp)
-		goto unlock;
-
-	/*
-	 * The delayed work can race with an invalidate hence we need to
-	 * recheck.
-	 */
-
-	if (!dev_priv->drrs.busy_frontbuffer_bits) {
-		struct intel_crtc *crtc =
-			to_intel_crtc(dp_to_dig_port(intel_dp)->base.base.crtc);
-
-		intel_drrs_set_state(dev_priv, crtc->config,
-				     DRRS_REFRESH_RATE_LOW);
-	}
-
-unlock:
-	mutex_unlock(&dev_priv->drrs.mutex);
+	mutex_unlock(&crtc->drrs.mutex);
 }
 
 static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 					  unsigned int frontbuffer_bits,
 					  bool invalidate)
 {
-	struct intel_dp *intel_dp;
-	struct drm_crtc *crtc;
-	enum pipe pipe;
+	struct intel_crtc *crtc;
 
-	if (dev_priv->drrs.type != DRRS_TYPE_SEAMLESS)
+	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS)
 		return;
 
-	cancel_delayed_work(&dev_priv->drrs.work);
+	for_each_intel_crtc(&dev_priv->drm, crtc) {
+		enum pipe pipe = crtc->pipe;
 
-	mutex_lock(&dev_priv->drrs.mutex);
+		cancel_delayed_work(&crtc->drrs.work);
 
-	intel_dp = dev_priv->drrs.dp;
-	if (!intel_dp) {
-		mutex_unlock(&dev_priv->drrs.mutex);
-		return;
+		mutex_lock(&crtc->drrs.mutex);
+
+		if (!intel_drrs_is_enabled(crtc)) {
+			mutex_unlock(&crtc->drrs.mutex);
+			continue;
+		}
+
+		frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
+		if (invalidate)
+			crtc->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
+		else
+			crtc->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
+
+		/* flush/invalidate means busy screen hence upclock */
+		if (frontbuffer_bits)
+			intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_HIGH);
+
+		/*
+		 * flush also means no more activity hence schedule downclock, if all
+		 * other fbs are quiescent too
+		 */
+		if (!invalidate && !crtc->drrs.busy_frontbuffer_bits)
+			schedule_delayed_work(&crtc->drrs.work,
+					      msecs_to_jiffies(1000));
+
+		mutex_unlock(&crtc->drrs.mutex);
 	}
-
-	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
-	pipe = to_intel_crtc(crtc)->pipe;
-
-	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
-	if (invalidate)
-		dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
-	else
-		dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
-
-	/* flush/invalidate means busy screen hence upclock */
-	if (frontbuffer_bits)
-		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
-				     DRRS_REFRESH_RATE_HIGH);
-
-	/*
-	 * flush also means no more activity hence schedule downclock, if all
-	 * other fbs are quiescent too
-	 */
-	if (!invalidate && !dev_priv->drrs.busy_frontbuffer_bits)
-		schedule_delayed_work(&dev_priv->drrs.work,
-				      msecs_to_jiffies(1000));
-	mutex_unlock(&dev_priv->drrs.mutex);
 }
 
 /**
@@ -396,22 +320,36 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
 	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
 }
 
-void intel_drrs_page_flip(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc)
+void intel_drrs_page_flip(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	unsigned int frontbuffer_bits = INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
 
 	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
 }
 
 /**
- * intel_drrs_init - Init basic DRRS work and mutex.
+ * intel_crtc_drrs_init - Init DRRS for CRTC
+ * @crtc: crtc
+ *
+ * This function is called only once at driver load to initialize basic
+ * DRRS stuff.
+ *
+ */
+void intel_crtc_drrs_init(struct intel_crtc *crtc)
+{
+	INIT_DELAYED_WORK(&crtc->drrs.work, intel_drrs_downclock_work);
+	mutex_init(&crtc->drrs.mutex);
+	crtc->drrs.cpu_transcoder = INVALID_TRANSCODER;
+}
+
+/**
+ * intel_drrs_init - Init DRRS for eDP connector
  * @connector: eDP connector
  * @fixed_mode: preferred mode of panel
  *
- * This function is  called only once at driver load to initialize basic
- * DRRS stuff.
+ * This function is called only once at driver load to initialize
+ * DRRS support for the connector.
  *
  * Returns:
  * Downclock mode if panel supports it, else return NULL.
@@ -424,10 +362,7 @@ intel_drrs_init(struct intel_connector *connector,
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_encoder *encoder = connector->encoder;
-	struct drm_display_mode *downclock_mode = NULL;
-
-	INIT_DELAYED_WORK(&dev_priv->drrs.work, intel_drrs_downclock_work);
-	mutex_init(&dev_priv->drrs.mutex);
+	struct drm_display_mode *downclock_mode;
 
 	if (DISPLAY_VER(dev_priv) <= 6) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -460,9 +395,6 @@ intel_drrs_init(struct intel_connector *connector,
 		return NULL;
 	}
 
-	dev_priv->drrs.type = dev_priv->vbt.drrs_type;
-
-	dev_priv->drrs.refresh_rate = DRRS_REFRESH_RATE_HIGH;
 	drm_dbg_kms(&dev_priv->drm,
 		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
 		    connector->base.base.id, connector->base.name);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 6bca7692f59f..9347cf451789 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -13,23 +13,21 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_connector;
-struct intel_dp;
 
-void intel_drrs_enable(struct intel_dp *intel_dp,
-		       const struct intel_crtc_state *crtc_state);
-void intel_drrs_disable(struct intel_dp *intel_dp,
-			const struct intel_crtc_state *crtc_state);
-void intel_drrs_update(struct intel_dp *intel_dp,
-		       const struct intel_crtc_state *crtc_state);
+bool intel_drrs_is_enabled(struct intel_crtc *crtc);
+void intel_drrs_enable(const struct intel_crtc_state *crtc_state);
+void intel_drrs_disable(const struct intel_crtc_state *crtc_state);
+void intel_drrs_update(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc);
 void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 			   unsigned int frontbuffer_bits);
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits);
-void intel_drrs_page_flip(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc);
-void intel_drrs_compute_config(struct intel_dp *intel_dp,
-			       struct intel_crtc_state *pipe_config,
+void intel_drrs_page_flip(struct intel_crtc *crtc);
+void intel_drrs_compute_config(struct intel_crtc_state *pipe_config,
+			       struct intel_connector *connector,
 			       int output_bpp, bool constant_n);
+void intel_crtc_drrs_init(struct intel_crtc *crtc);
 struct drm_display_mode *intel_drrs_init(struct intel_connector *connector,
 					 const struct drm_display_mode *fixed_mode);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7d622d1afe93..26df561a4e94 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -196,26 +196,12 @@ struct drm_i915_display_funcs {
 
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
-enum drrs_refresh_rate {
-	DRRS_REFRESH_RATE_HIGH,
-	DRRS_REFRESH_RATE_LOW,
-};
-
 enum drrs_type {
 	DRRS_TYPE_NONE,
 	DRRS_TYPE_STATIC,
 	DRRS_TYPE_SEAMLESS,
 };
 
-struct i915_drrs {
-	struct mutex mutex;
-	struct delayed_work work;
-	struct intel_dp *dp;
-	unsigned busy_frontbuffer_bits;
-	enum drrs_refresh_rate refresh_rate;
-	enum drrs_type type;
-};
-
 #define QUIRK_LVDS_SSC_DISABLE (1<<1)
 #define QUIRK_INVERT_BRIGHTNESS (1<<2)
 #define QUIRK_BACKLIGHT_PRESENT (1<<3)
@@ -537,7 +523,6 @@ struct drm_i915_private {
 
 	struct i915_hotplug hotplug;
 	struct intel_fbc *fbc[I915_MAX_FBCS];
-	struct i915_drrs drrs;
 	struct intel_opregion opregion;
 	struct intel_vbt_data vbt;
 
-- 
2.34.1

