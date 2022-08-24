Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B87C459FB17
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3657EB5253;
	Wed, 24 Aug 2022 13:18:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E764B51CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347083; x=1692883083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8K8HuPk8kxV908jbzXJKvu9+GLwcnQb1ibIqxluYaGw=;
 b=H7lHQXkH5ko1i6WAFzUjMg6OzfKefmhfzCquhN9g6jYjaHCRP3tz9xqC
 4NbLtSIDSnfEQ9Q5BcukSBPmKYZQhsB+VJ6YGXunwlt8ixIwPZasAu36I
 AdJSeVIgcVzUO6Q2AXLkUyKxRujpzyi+z0VQxKIFoIeswlD3Qq89JzpWJ
 yLBVNKFCd3d+vWBpOr2LRWbtNbTZJjG6X8XcbrkceemIWC063Ot8LNdZp
 jCUYVcCtADoUArI/ee5NBzUqo33gK6cvoMnGY8/vAtUB4nkxZibNlPYDt
 RlIPiiMyvnZ/E+m5tVxf9BeAhAvpZvtEiaTqfdvIFfKBDzNNnyCP3aOLs w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="380255180"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="380255180"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:17:48 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="785624741"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:17:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:48 +0300
Message-Id: <e90f1bb837b51d2bed19b3022531e712fa6e3591.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 22/38] drm/i915: move backlight to
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display backlight related members under drm_i915_private display
sub-struct.

Prefer adding anonymous sub-structs even for single members that aren't
our own structs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 28 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  5 ++++
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  3 --
 4 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 354e2794ed92..f20f3c06ca96 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -305,7 +305,7 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 	if (!panel->backlight.present || !conn_state->crtc)
 		return;
 
-	mutex_lock(&dev_priv->backlight_lock);
+	mutex_lock(&dev_priv->display.backlight.lock);
 
 	drm_WARN_ON(&dev_priv->drm, panel->backlight.max == 0);
 
@@ -321,7 +321,7 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 	if (panel->backlight.enabled)
 		intel_panel_actually_set_backlight(conn_state, hw_level);
 
-	mutex_unlock(&dev_priv->backlight_lock);
+	mutex_unlock(&dev_priv->display.backlight.lock);
 }
 
 static void lpt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 level)
@@ -465,14 +465,14 @@ void intel_backlight_disable(const struct drm_connector_state *old_conn_state)
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
@@ -815,11 +815,11 @@ void intel_backlight_enable(const struct intel_crtc_state *crtc_state,
 
 	drm_dbg_kms(&dev_priv->drm, "pipe %c\n", pipe_name(pipe));
 
-	mutex_lock(&dev_priv->backlight_lock);
+	mutex_lock(&dev_priv->display.backlight.lock);
 
 	__intel_backlight_enable(crtc_state, conn_state);
 
-	mutex_unlock(&dev_priv->backlight_lock);
+	mutex_unlock(&dev_priv->display.backlight.lock);
 }
 
 #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
@@ -829,12 +829,12 @@ static u32 intel_panel_get_backlight(struct intel_connector *connector)
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
@@ -862,7 +862,7 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 	if (!panel->backlight.present)
 		return;
 
-	mutex_lock(&dev_priv->backlight_lock);
+	mutex_lock(&dev_priv->display.backlight.lock);
 
 	drm_WARN_ON(&dev_priv->drm, panel->backlight.max == 0);
 
@@ -872,7 +872,7 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
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
index 88e6bc61f5e6..cc54793ae9bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -218,6 +218,11 @@ struct intel_display {
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
index e1f77b0973d7..3aedc33ded57 100644
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
index 459814b98e7e..7496c1e22bf1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -329,9 +329,6 @@ struct drm_i915_private {
 
 	bool preserve_bios_swizzle;
 
-	/* backlight registers and fields in struct intel_panel */
-	struct mutex backlight_lock;
-
 	unsigned int fsb_freq, mem_freq, is_ddr3;
 	unsigned int skl_preferred_vco_freq;
 
-- 
2.34.1

