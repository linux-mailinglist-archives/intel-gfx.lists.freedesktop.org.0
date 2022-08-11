Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A7958FEF6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 777A0B3D99;
	Thu, 11 Aug 2022 15:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CEBBB3D5A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230850; x=1691766850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ksx3jiCPUOCdHfbh3IvixFEMhbeU6Rm9Mx4QTKpZXvA=;
 b=jne+uCCRYUPQy+vFaRYo+R6zeVfCIJsmXHuu2LMOMJ+5wJUWaZ237/T4
 PzKeGgW0CTVHNoW6UK51C+sejV+orzFH4Hb1lsvwF/ZOF9iCfZnVY/boF
 08NXyne0iEb4fL9Nh5id5N1xQ6YvkuPzEdvff4YYRsQ1tTskAAqQWAu2l
 GwBif/qFjX0Eh5IEHBYlKFQE95Y8u9refsl96zL94aR6rVrMgCwX8SECI
 7BxqPrL4ZBVkhjLLwzRphKSAHosKJCs6etyBpFkSB3pGJCpnfEPJT9/qi
 3Gt9qx/KwNwiC28zPemZct4IWYrAHnwcTkJlm9D/d6sgb0x94658gmRkF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="355376591"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="355376591"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="851231714"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:34 +0300
Message-Id: <fddf8e996d424e1c3d17ab382a9501c8ec279138.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 23/39] drm/i915: move backlight to
 display.backlight
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Prefer adding anonymous sub-structs even for single members that aren't
our own structs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 28 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  5 ++++
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  3 --
 4 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index fbe87ec458be..67ecad0f9ef1 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -303,7 +303,7 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 	if (!panel->backlight.present || !conn_state->crtc)
 		return;
 
-	mutex_lock(&dev_priv->backlight_lock);
+	mutex_lock(&dev_priv->display.backlight.lock);
 
 	drm_WARN_ON(&dev_priv->drm, panel->backlight.max == 0);
 
@@ -319,7 +319,7 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 	if (panel->backlight.enabled)
 		intel_panel_actually_set_backlight(conn_state, hw_level);
 
-	mutex_unlock(&dev_priv->backlight_lock);
+	mutex_unlock(&dev_priv->display.backlight.lock);
 }
 
 static void lpt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 level)
@@ -463,14 +463,14 @@ void intel_backlight_disable(const struct drm_connector_state *old_conn_state)
 		return;
 	}
 
-	mutex_lock(&dev_priv->backlight_lock);
+	mutex_lock(&dev_priv->display.backlight.lock);
 
 	if (panel->backlight.device)
 		panel->backlight.device->props.power = FB_BLANK_POWERDOWN;
 	panel->backlight.enabled = false;
 	panel->backlight.funcs->disable(old_conn_state, 0);
 
-	mutex_unlock(&dev_priv->backlight_lock);
+	mutex_unlock(&dev_priv->display.backlight.lock);
 }
 
 static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
@@ -813,11 +813,11 @@ void intel_backlight_enable(const struct intel_crtc_state *crtc_state,
 
 	drm_dbg_kms(&dev_priv->drm, "pipe %c\n", pipe_name(pipe));
 
-	mutex_lock(&dev_priv->backlight_lock);
+	mutex_lock(&dev_priv->display.backlight.lock);
 
 	__intel_backlight_enable(crtc_state, conn_state);
 
-	mutex_unlock(&dev_priv->backlight_lock);
+	mutex_unlock(&dev_priv->display.backlight.lock);
 }
 
 #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
@@ -827,12 +827,12 @@ static u32 intel_panel_get_backlight(struct intel_connector *connector)
 	struct intel_panel *panel = &connector->panel;
 	u32 val = 0;
 
-	mutex_lock(&dev_priv->backlight_lock);
+	mutex_lock(&dev_priv->display.backlight.lock);
 
 	if (panel->backlight.enabled)
 		val = panel->backlight.funcs->get(connector, intel_connector_get_pipe(connector));
 
-	mutex_unlock(&dev_priv->backlight_lock);
+	mutex_unlock(&dev_priv->display.backlight.lock);
 
 	drm_dbg_kms(&dev_priv->drm, "get backlight PWM = %d\n", val);
 	return val;
@@ -860,7 +860,7 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 	if (!panel->backlight.present)
 		return;
 
-	mutex_lock(&dev_priv->backlight_lock);
+	mutex_lock(&dev_priv->display.backlight.lock);
 
 	drm_WARN_ON(&dev_priv->drm, panel->backlight.max == 0);
 
@@ -870,7 +870,7 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 	if (panel->backlight.enabled)
 		intel_panel_actually_set_backlight(conn_state, hw_level);
 
-	mutex_unlock(&dev_priv->backlight_lock);
+	mutex_unlock(&dev_priv->display.backlight.lock);
 }
 
 static int intel_backlight_device_update_status(struct backlight_device *bd)
@@ -1591,11 +1591,11 @@ void intel_backlight_update(struct intel_atomic_state *state,
 	if (!panel->backlight.present)
 		return;
 
-	mutex_lock(&dev_priv->backlight_lock);
+	mutex_lock(&dev_priv->display.backlight.lock);
 	if (!panel->backlight.enabled)
 		__intel_backlight_enable(crtc_state, conn_state);
 
-	mutex_unlock(&dev_priv->backlight_lock);
+	mutex_unlock(&dev_priv->display.backlight.lock);
 }
 
 int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
@@ -1620,9 +1620,9 @@ int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 		return -ENODEV;
 
 	/* set level and max in panel struct */
-	mutex_lock(&dev_priv->backlight_lock);
+	mutex_lock(&dev_priv->display.backlight.lock);
 	ret = panel->backlight.funcs->setup(connector, pipe);
-	mutex_unlock(&dev_priv->backlight_lock);
+	mutex_unlock(&dev_priv->display.backlight.lock);
 
 	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index d5069c4d3e3d..533c2e3a6685 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -220,6 +220,11 @@ struct intel_display {
 	} funcs;
 
 	/* Grouping using anonymous structs. Keep sorted. */
+	struct {
+		/* backlight registers and fields in struct intel_panel */
+		struct mutex lock;
+	} backlight;
+
 	struct {
 		struct intel_global_obj obj;
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 6607ed250531..5d272d2d450e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -330,7 +330,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	spin_lock_init(&dev_priv->irq_lock);
 	spin_lock_init(&dev_priv->gpu_error.lock);
-	mutex_init(&dev_priv->backlight_lock);
+	mutex_init(&dev_priv->display.backlight.lock);
 
 	mutex_init(&dev_priv->sb_lock);
 	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a28d0bcb07ca..29d7dcdf89af 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -328,9 +328,6 @@ struct drm_i915_private {
 
 	bool preserve_bios_swizzle;
 
-	/* backlight registers and fields in struct intel_panel */
-	struct mutex backlight_lock;
-
 	unsigned int fsb_freq, mem_freq, is_ddr3;
 	unsigned int skl_preferred_vco_freq;
 
-- 
2.34.1

