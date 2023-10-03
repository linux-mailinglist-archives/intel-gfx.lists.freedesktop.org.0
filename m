Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 652E37B693A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 14:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF45510E056;
	Tue,  3 Oct 2023 12:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B821A10E056
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 12:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696336939; x=1727872939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RJAZ6q47UIFEbgwVN+OIZK+xazhxH62SNv8WCGgKS0g=;
 b=QJyVRm9PrQw+WHN6rc+lrxl2MxP2KrmcEf7GFaNQq4ucvh5adh/lAbL+
 UKp6NoFK58d41Vzgj4RVMg57gxyhkrodkOlFvtUhZuZoZr/7fRNkUtPSU
 2fYvTMGo8o8d1JhLywY4Q1zpAgTWuuagSPDZndSRBHIkNSB5R18sSCVYG
 mWAWeqVFQRdDmbsPl52O7rAaBBfxETeMoMoWzMHZ74vR91vfLLbfEG355
 nWlcux9XOGOn9NPZMXV+xElkjoA4vovd2hGPVHSPMNAhQXHlCWPplJVfq
 dTySXjHZGBqxG4Pm2mAjtoxaqdy4ym6jsM0V/6IMbvQZmXg3ngb0Iht1U g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="363128720"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="363128720"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 05:42:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="866858106"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="866858106"
Received: from akorotox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.199])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 05:42:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 15:42:07 +0300
Message-Id: <480b9b697b2ffa0c8677115bd443ba633801c6c1.1696336887.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696336887.git.jani.nikula@intel.com>
References: <cover.1696336887.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: convert INTEL_DISPLAY_ENABLED()
 into a function
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

There's no need for this to be a macro. Add some documentation too.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c        |  2 +-
 .../gpu/drm/i915/display/intel_display_device.c | 17 +++++++++++++++++
 .../gpu/drm/i915/display/intel_display_device.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_panel.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_tv.c         |  2 +-
 drivers/gpu/drm/i915/i915_drv.h                 |  6 ------
 12 files changed, 27 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index d4bad0ddff41..913e5d230a4d 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -838,7 +838,7 @@ intel_crt_detect(struct drm_connector *connector,
 		    connector->base.id, connector->name,
 		    force);
 
-	if (!INTEL_DISPLAY_ENABLED(dev_priv))
+	if (!intel_display_device_enabled(dev_priv))
 		return connector_status_disconnected;
 
 	if (dev_priv->params.load_detect_test) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index ce55b968e658..dea64c99721e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1091,3 +1091,20 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
 	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
 	drm_printf(p, "has_dsc: %s\n", str_yes_no(runtime->has_dsc));
 }
+
+/*
+ * Assuming the device has display hardware, should it be enabled?
+ *
+ * It's an error to call this function if the device does not have display
+ * hardware.
+ *
+ * Disabling display means taking over the display hardware, putting it to
+ * sleep, and preventing connectors from being connected via any means.
+ */
+bool intel_display_device_enabled(struct drm_i915_private *i915)
+{
+	/* Only valid when HAS_DISPLAY() is true */
+	drm_WARN_ON(&i915->drm, !HAS_DISPLAY(i915));
+
+	return !i915->params.disable_display && !intel_opregion_headless_sku(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 44733c9d5812..8977bac8cb7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -150,6 +150,7 @@ struct intel_display_device_info {
 	} color;
 };
 
+bool intel_display_device_enabled(struct drm_i915_private *i915);
 void intel_display_device_probe(struct drm_i915_private *i915);
 void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 11420595c4f9..f0f43aeabd21 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5358,7 +5358,7 @@ intel_dp_detect(struct drm_connector *connector,
 	drm_WARN_ON(&dev_priv->drm,
 		    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
 
-	if (!INTEL_DISPLAY_ENABLED(dev_priv))
+	if (!intel_display_device_enabled(dev_priv))
 		return connector_status_disconnected;
 
 	/* Can't disconnect eDP */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 648cf37e02a8..a21cc9d0689e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1062,7 +1062,7 @@ intel_dp_mst_detect(struct drm_connector *connector,
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct intel_dp *intel_dp = intel_connector->mst_port;
 
-	if (!INTEL_DISPLAY_ENABLED(i915))
+	if (!intel_display_device_enabled(i915))
 		return connector_status_disconnected;
 
 	if (drm_connector_is_unregistered(connector))
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index d9f427856fb8..55d6743374bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -319,7 +319,7 @@ intel_dvo_detect(struct drm_connector *_connector, bool force)
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.base.id, connector->base.name);
 
-	if (!INTEL_DISPLAY_ENABLED(i915))
+	if (!intel_display_device_enabled(i915))
 		return connector_status_disconnected;
 
 	return intel_dvo->dev.dev_ops->detect(&intel_dvo->dev);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index af4102e91769..ac315f8e7820 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2496,7 +2496,7 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
-	if (!INTEL_DISPLAY_ENABLED(dev_priv))
+	if (!intel_display_device_enabled(dev_priv))
 		return connector_status_disconnected;
 
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index e8562f6f8bb4..0c0700c6ec66 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -763,7 +763,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 {
 	if (!HAS_DISPLAY(dev_priv) ||
-	    !INTEL_DISPLAY_ENABLED(dev_priv))
+	    !intel_display_device_enabled(dev_priv))
 		return;
 
 	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, true);
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 086cb8dbe22c..483beedac5b8 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -680,7 +680,7 @@ intel_panel_detect(struct drm_connector *connector, bool force)
 {
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 
-	if (!INTEL_DISPLAY_ENABLED(i915))
+	if (!intel_display_device_enabled(i915))
 		return connector_status_disconnected;
 
 	return connector_status_connected;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 950ba0431f5f..35137e978591 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2121,7 +2121,7 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
 		      connector->base.id, connector->name);
 
-	if (!INTEL_DISPLAY_ENABLED(i915))
+	if (!intel_display_device_enabled(i915))
 		return connector_status_disconnected;
 
 	if (!intel_sdvo_set_target_output(intel_sdvo,
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 36b479b46b60..31a79fdfc812 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1720,7 +1720,7 @@ intel_tv_detect(struct drm_connector *connector,
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] force=%d\n",
 		    connector->base.id, connector->name, force);
 
-	if (!INTEL_DISPLAY_ENABLED(i915))
+	if (!intel_display_device_enabled(i915))
 		return connector_status_disconnected;
 
 	if (force) {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b4fa81cab92d..e513328621ef 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -805,12 +805,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define NUM_L3_SLICES(i915) (IS_HASWELL_GT3(i915) ? \
 				 2 : HAS_L3_DPF(i915))
 
-/* Only valid when HAS_DISPLAY() is true */
-#define INTEL_DISPLAY_ENABLED(i915) \
-	(drm_WARN_ON(&(i915)->drm, !HAS_DISPLAY(i915)),		\
-	 !(i915)->params.disable_display &&				\
-	 !intel_opregion_headless_sku(i915))
-
 #define HAS_GUC_DEPRIVILEGE(i915) \
 	(INTEL_INFO(i915)->has_guc_deprivilege)
 
-- 
2.39.2

