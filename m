Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA694D678A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:25:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0EE10E68E;
	Fri, 11 Mar 2022 17:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336C210E783
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019507; x=1678555507;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xYOZ4J2k98dMxSHvAUloAUvAoNZeNRCxxbGA613Ane0=;
 b=STIQoZ3ICRb53TVE38KM+/1PpYgXGodcaO42UnDPCD5JGuNGZXR4HYV8
 aoxDyFz88XOw8yavHGy6w2esgIIOhblik8R2WC/UMvy9fGVVjC52PSpvj
 pNL24Rzqlb+ZoEVtZ1Ay88lQSLcu3Qos+Vpfinmjo/dSkzlrXIlt4BcYH
 WvRx1yhnG4MyN9CvAp/h3vrSQS0Y03xYQC6JTHVDyuEn0yJguoZW3f7za
 LtCv5VcxbO7kayWyD1CNjLjLdANnQ5g/xTQoQhmnQhrZFz0d7lacVMzdQ
 L0grZa8N3ZX1nbYuozwS+lc+UCNLf+HsC6XByUpzS0ISQTCxvIYvtbCPa g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="237787129"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="237787129"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:25:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="555386502"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 11 Mar 2022 09:25:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:25:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:24 +0200
Message-Id: <20220311172428.14685-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/16] drm/i915: Stash DRRS state under
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

Ger rid of one more ugly crtc->config usage by storing the DRRS
state under intel_crtc. intel_drrs_enable() copies what it needs
from the crtc state, after which DRRS can be blissfully ignorant
of anything going on around it.

This also lets multiple pipes do DRRS simultanously and entirely
independently.

v2: Split out some stuff (Jani)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |  70 ++---
 .../drm/i915/display/intel_display_types.h    |  14 +
 drivers/gpu/drm/i915/display/intel_drrs.c     | 257 +++++++-----------
 drivers/gpu/drm/i915/display/intel_drrs.h     |   8 +-
 drivers/gpu/drm/i915/i915_drv.h               |  14 -
 8 files changed, 144 insertions(+), 227 deletions(-)

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
index 6660fe59e387..a3bf4e876fb4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3013,10 +3013,12 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 				     const struct intel_crtc_state *crtc_state,
 				     const struct drm_connector_state *conn_state)
 {
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
 	intel_ddi_set_dp_msa(crtc_state, conn_state);
 
 	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
-	intel_drrs_update(crtc_state);
+	intel_drrs_update(state, crtc);
 
 	intel_backlight_update(state, encoder, crtc_state, conn_state);
 	drm_connector_update_privacy_screen(conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b67520a719d9..ad82c251a0cd 100644
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
index 219bac411cda..24f773583dd3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1138,20 +1138,15 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static void drrs_status_per_crtc(struct seq_file *m,
-				 struct drm_device *dev,
-				 struct intel_crtc *crtc)
+static int i915_drrs_status(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct i915_drrs *drrs = &dev_priv->drrs;
+	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
-	struct drm_connector_list_iter conn_iter;
+	struct intel_crtc *crtc;
 
-	drm_connector_list_iter_begin(dev, &conn_iter);
+	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
-		if (connector->base.state->crtc != &crtc->base)
-			continue;
-
 		seq_printf(m, "[CONNECTOR:%d:%s] DRRS type: %s\n",
 			   connector->base.base.id, connector->base.name,
 			   intel_drrs_type_str(intel_panel_drrs_type(connector)));
@@ -1160,56 +1155,25 @@ static void drrs_status_per_crtc(struct seq_file *m,
 
 	seq_puts(m, "\n");
 
-	if (to_intel_crtc_state(crtc->base.state)->has_drrs) {
-		mutex_lock(&drrs->mutex);
+	for_each_intel_crtc(&dev_priv->drm, crtc) {
+		seq_printf(m, "[CRTC:%d:%s]:\n",
+			   crtc->base.base.id, crtc->base.name);
+
+		mutex_lock(&crtc->drrs.mutex);
+
 		/* DRRS Supported */
-		seq_puts(m, "\tDRRS Enabled: Yes\n");
+		seq_printf(m, "\tDRRS Enabled: %s\n",
+			   str_yes_no(intel_drrs_is_enabled(crtc)));
 
-		/* disable_drrs() will make drrs->dp NULL */
-		if (!drrs->crtc) {
-			seq_puts(m, "Idleness DRRS: Disabled\n");
-			mutex_unlock(&drrs->mutex);
-			return;
-		}
-
-		seq_printf(m, "\t\tBusy_frontbuffer_bits: 0x%X",
-					drrs->busy_frontbuffer_bits);
-
-		seq_puts(m, "\n\t\t");
+		seq_printf(m, "\tBusy_frontbuffer_bits: 0x%X\n",
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
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 12d09560bc80..fd956775698e 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -114,12 +114,11 @@ intel_drrs_compute_config(struct intel_connector *connector,
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
@@ -138,65 +137,33 @@ intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc_state,
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
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!dev_priv->drrs.crtc) {
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
-	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS) {
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
-intel_drrs_enable_locked(struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-
-	dev_priv->drrs.busy_frontbuffer_bits = 0;
-	dev_priv->drrs.crtc = crtc;
+	crtc->drrs.refresh_rate = refresh_rate;
 }
 
 /**
@@ -213,28 +180,17 @@ void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->has_drrs)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "Enabling DRRS\n");
+	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Enabling DRRS\n",
+		    crtc->base.base.id, crtc->base.name);
 
-	mutex_lock(&dev_priv->drrs.mutex);
+	mutex_lock(&crtc->drrs.mutex);
 
-	if (dev_priv->drrs.crtc) {
-		drm_warn(&dev_priv->drm, "DRRS already enabled\n");
-		goto unlock;
-	}
+	crtc->drrs.cpu_transcoder = crtc_state->cpu_transcoder;
+	crtc->drrs.m_n = crtc_state->dp_m_n;
+	crtc->drrs.m2_n2 = crtc_state->dp_m2_n2;
+	crtc->drrs.busy_frontbuffer_bits = 0;
 
-	intel_drrs_enable_locked(crtc);
-
-unlock:
-	mutex_unlock(&dev_priv->drrs.mutex);
-}
-
-static void
-intel_drrs_disable_locked(const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-
-	intel_drrs_set_state(dev_priv, crtc_state, DRRS_REFRESH_RATE_HIGH);
-	dev_priv->drrs.crtc = NULL;
+	mutex_unlock(&crtc->drrs.mutex);
 }
 
 /**
@@ -249,74 +205,54 @@ void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->has_drrs)
 		return;
 
-	mutex_lock(&dev_priv->drrs.mutex);
-	if (dev_priv->drrs.crtc != crtc) {
-		mutex_unlock(&dev_priv->drrs.mutex);
-		return;
-	}
+	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Disabling DRRS\n",
+		    crtc->base.base.id, crtc->base.name);
 
-	intel_drrs_disable_locked(old_crtc_state);
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
-intel_drrs_update(const struct intel_crtc_state *crtc_state)
+void intel_drrs_update(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS)
+	if (old_crtc_state->has_drrs == new_crtc_state->has_drrs)
 		return;
 
-	mutex_lock(&dev_priv->drrs.mutex);
-
-	/* New state matches current one? */
-	if (crtc_state->has_drrs == !!dev_priv->drrs.crtc)
-		goto unlock;
-
-	if (crtc_state->has_drrs)
-		intel_drrs_enable_locked(crtc);
+	if (new_crtc_state->has_drrs)
+		intel_drrs_enable(new_crtc_state);
 	else
-		intel_drrs_disable_locked(crtc_state);
-
-unlock:
-	mutex_unlock(&dev_priv->drrs.mutex);
+		intel_drrs_disable(old_crtc_state);
 }
 
 static void intel_drrs_downclock_work(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv =
-		container_of(work, typeof(*dev_priv), drrs.work.work);
-	struct intel_crtc *crtc;
+	struct intel_crtc *crtc = container_of(work, typeof(*crtc), drrs.work.work);
 
-	mutex_lock(&dev_priv->drrs.mutex);
+	mutex_lock(&crtc->drrs.mutex);
 
-	crtc = dev_priv->drrs.crtc;
-	if (!crtc)
-		goto unlock;
+	if (intel_drrs_is_enabled(crtc) && !crtc->drrs.busy_frontbuffer_bits)
+		intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_LOW);
 
-	/*
-	 * The delayed work can race with an invalidate hence we need to
-	 * recheck.
-	 */
-
-	if (!dev_priv->drrs.busy_frontbuffer_bits) {
-		intel_drrs_set_state(dev_priv, crtc->config,
-				     DRRS_REFRESH_RATE_LOW);
-	}
-
-unlock:
-	mutex_unlock(&dev_priv->drrs.mutex);
+	mutex_unlock(&crtc->drrs.mutex);
 }
 
 static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
@@ -328,35 +264,36 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS)
 		return;
 
-	cancel_delayed_work(&dev_priv->drrs.work);
+	for_each_intel_crtc(&dev_priv->drm, crtc) {
+		cancel_delayed_work(&crtc->drrs.work);
 
-	mutex_lock(&dev_priv->drrs.mutex);
+		mutex_lock(&crtc->drrs.mutex);
 
-	crtc = dev_priv->drrs.crtc;
-	if (!crtc) {
-		mutex_unlock(&dev_priv->drrs.mutex);
-		return;
+		if (!intel_drrs_is_enabled(crtc)) {
+			mutex_unlock(&crtc->drrs.mutex);
+			continue;
+		}
+
+		frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
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
-	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
-	if (invalidate)
-		dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
-	else
-		dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
-
-	/* flush/invalidate means busy screen hence upclock */
-	if (frontbuffer_bits)
-		intel_drrs_set_state(dev_priv, crtc->config,
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
@@ -393,22 +330,36 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
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
@@ -421,10 +372,7 @@ intel_drrs_init(struct intel_connector *connector,
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
@@ -457,7 +405,6 @@ intel_drrs_init(struct intel_connector *connector,
 		return NULL;
 	}
 
-	dev_priv->drrs.refresh_rate = DRRS_REFRESH_RATE_HIGH;
 	drm_dbg_kms(&dev_priv->drm,
 		    "[CONNECTOR:%d:%s] %s DRRS supported\n",
 		    connector->base.base.id, connector->base.name,
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index e202e8810c12..c6e325a91552 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -16,18 +16,20 @@ struct intel_crtc_state;
 struct intel_connector;
 
 const char *intel_drrs_type_str(enum drrs_type drrs_type);
+bool intel_drrs_is_enabled(struct intel_crtc *crtc);
 void intel_drrs_enable(const struct intel_crtc_state *crtc_state);
 void intel_drrs_disable(const struct intel_crtc_state *crtc_state);
-void intel_drrs_update(const struct intel_crtc_state *crtc_state);
+void intel_drrs_update(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc);
 void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 			   unsigned int frontbuffer_bits);
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits);
-void intel_drrs_page_flip(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc);
+void intel_drrs_page_flip(struct intel_crtc *crtc);
 void intel_drrs_compute_config(struct intel_connector *connector,
 			       struct intel_crtc_state *pipe_config,
 			       int output_bpp, bool constant_n);
+void intel_crtc_drrs_init(struct intel_crtc *crtc);
 struct drm_display_mode *intel_drrs_init(struct intel_connector *connector,
 					 const struct drm_display_mode *fixed_mode);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index caf236c17a4a..26df561a4e94 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -196,25 +196,12 @@ struct drm_i915_display_funcs {
 
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
-	struct intel_crtc *crtc;
-	unsigned busy_frontbuffer_bits;
-	enum drrs_refresh_rate refresh_rate;
-};
-
 #define QUIRK_LVDS_SSC_DISABLE (1<<1)
 #define QUIRK_INVERT_BRIGHTNESS (1<<2)
 #define QUIRK_BACKLIGHT_PRESENT (1<<3)
@@ -536,7 +523,6 @@ struct drm_i915_private {
 
 	struct i915_hotplug hotplug;
 	struct intel_fbc *fbc[I915_MAX_FBCS];
-	struct i915_drrs drrs;
 	struct intel_opregion opregion;
 	struct intel_vbt_data vbt;
 
-- 
2.34.1

