Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4754A34438
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559CA10E413;
	Thu, 13 Feb 2025 15:02:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCO0sKOt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E76A010E413
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458946; x=1770994946;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lYRKXGkfAtBu21VcSJcTfFWjy3MdEZ3gMcsWRvTTbTw=;
 b=eCO0sKOtVAROlZAlkGVLLfex+jSZTvg9iQUI+iRUv9Us7gyy26I1NiNJ
 rNleGGmgMBfxkJvkr38EISNfykJG1GqaOJqtZz5JWuErqpSvGN+E1KER1
 Tw5bJK5AH1iR6YNlCv1hMku5Uvw12jNipw7UKDNztYuGFjPKbphCVkp9C
 7FdAlRtpGGiGlhyRSjphQOH2NmmAe3PN8ZV1NCMImEUgUSKXPu7TKII0Q
 p7TlRUmEMEfHuHWfG7TUGj7aJH5aMo6EUwpLEkA/5XkQURo9lXU9DIq/m
 fyt2KmNo9KrpjMnHC7ncsbAmlTiauwuakSpzpie7vFYbFnF71hF5jOqVX g==;
X-CSE-ConnectionGUID: 3JWcgbXUTjGktj0GfK38Pw==
X-CSE-MsgGUID: oOHkemOHSgKqCSStH/NIJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567419"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567419"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:26 -0800
X-CSE-ConnectionGUID: oI1y54ymSCa2r+CVjwGxhQ==
X-CSE-MsgGUID: hhcIZO+JSyy4n7c63uA2bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349568"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/12] drm/i915: Move modeset_retry stuff into
 intel_connector.c
Date: Thu, 13 Feb 2025 17:02:09 +0200
Message-ID: <20250213150220.13580-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Most the modeset retry stuff look to be entirely generic, and
so there doesn't seem to any reason to keep it in intel_dp.c.
Move the generic bits into intel_connector.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    | 39 ++++++++++++++++
 .../gpu/drm/i915/display/intel_connector.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 44 ++-----------------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 4 files changed, 46 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index c65887870ddc..4f54c9249a84 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -28,6 +28,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
 #include "intel_backlight.h"
@@ -37,6 +38,44 @@
 #include "intel_hdcp.h"
 #include "intel_panel.h"
 
+static void intel_connector_modeset_retry_work_fn(struct work_struct *work)
+{
+	struct intel_connector *connector = container_of(work, typeof(*connector),
+							 modeset_retry_work);
+	struct intel_display *display = to_intel_display(connector);
+
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n", connector->base.base.id,
+		    connector->base.name);
+
+	/* Grab the locks before changing connector property*/
+	mutex_lock(&display->drm->mode_config.mutex);
+	/* Set connector link status to BAD and send a Uevent to notify
+	 * userspace to do a modeset.
+	 */
+	drm_connector_set_link_status_property(&connector->base,
+					       DRM_MODE_LINK_STATUS_BAD);
+	mutex_unlock(&display->drm->mode_config.mutex);
+	/* Send Hotplug uevent so userspace can reprobe */
+	drm_kms_helper_connector_hotplug_event(&connector->base);
+
+	drm_connector_put(&connector->base);
+}
+
+void intel_connector_queue_modeset_retry_work(struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
+	drm_connector_get(&connector->base);
+	if (!queue_work(i915->unordered_wq, &connector->modeset_retry_work))
+		drm_connector_put(&connector->base);
+}
+
+void intel_connector_init_modeset_retry_work(struct intel_connector *connector)
+{
+	INIT_WORK(&connector->modeset_retry_work,
+		  intel_connector_modeset_retry_work_fn);
+}
+
 int intel_connector_init(struct intel_connector *connector)
 {
 	struct intel_digital_connector_state *conn_state;
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index bafde3f11ff4..10a1779201ed 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -33,5 +33,8 @@ void intel_attach_aspect_ratio_property(struct drm_connector *connector);
 void intel_attach_hdmi_colorspace_property(struct drm_connector *connector);
 void intel_attach_dp_colorspace_property(struct drm_connector *connector);
 void intel_attach_scaling_mode_property(struct drm_connector *connector);
+void intel_connector_init_modeset_retry_work(struct intel_connector *connector);
+void intel_connector_queue_modeset_retry_work(struct intel_connector *connector);
+void intel_connector_cancel_modeset_retry_work(struct intel_connector *connector);
 
 #endif /* __INTEL_CONNECTOR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 29970baaf03e..8bcf400b0239 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3056,15 +3056,6 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 					intel_dp_is_uhbr(pipe_config);
 }
 
-static void intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
-{
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-
-	drm_connector_get(&connector->base);
-	if (!queue_work(i915->unordered_wq, &connector->modeset_retry_work))
-		drm_connector_put(&connector->base);
-}
-
 void
 intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 				      struct intel_encoder *encoder,
@@ -3081,7 +3072,7 @@ intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 	intel_dp->needs_modeset_retry = true;
 
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
-		intel_dp_queue_modeset_retry_work(intel_dp->attached_connector);
+		intel_connector_queue_modeset_retry_work(intel_dp->attached_connector);
 
 		return;
 	}
@@ -3091,7 +3082,7 @@ intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 			continue;
 
 		if (connector->mst_port == intel_dp)
-			intel_dp_queue_modeset_retry_work(connector);
+			intel_connector_queue_modeset_retry_work(connector);
 	}
 }
 
@@ -6485,35 +6476,6 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	return false;
 }
 
-static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
-{
-	struct intel_connector *connector = container_of(work, typeof(*connector),
-							 modeset_retry_work);
-	struct intel_display *display = to_intel_display(connector);
-
-	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n", connector->base.base.id,
-		    connector->base.name);
-
-	/* Grab the locks before changing connector property*/
-	mutex_lock(&display->drm->mode_config.mutex);
-	/* Set connector link status to BAD and send a Uevent to notify
-	 * userspace to do a modeset.
-	 */
-	drm_connector_set_link_status_property(&connector->base,
-					       DRM_MODE_LINK_STATUS_BAD);
-	mutex_unlock(&display->drm->mode_config.mutex);
-	/* Send Hotplug uevent so userspace can reprobe */
-	drm_kms_helper_connector_hotplug_event(&connector->base);
-
-	drm_connector_put(&connector->base);
-}
-
-void intel_dp_init_modeset_retry_work(struct intel_connector *connector)
-{
-	INIT_WORK(&connector->modeset_retry_work,
-		  intel_dp_modeset_retry_work_fn);
-}
-
 bool
 intel_dp_init_connector(struct intel_digital_port *dig_port,
 			struct intel_connector *connector)
@@ -6526,7 +6488,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	int type;
 
 	/* Initialize the work for modeset in case of link train failure */
-	intel_dp_init_modeset_retry_work(connector);
+	intel_connector_init_modeset_retry_work(connector);
 
 	if (drm_WARN(dev, dig_port->max_lanes < 1,
 		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 73a0a0f9b3d0..0044b2a9a16b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1747,7 +1747,7 @@ mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
 	connector->port = port;
 	drm_dp_mst_get_port_malloc(port);
 
-	intel_dp_init_modeset_retry_work(connector);
+	intel_connector_init_modeset_retry_work(connector);
 
 	ret = drm_connector_dynamic_init(display->drm, &connector->base, &mst_connector_funcs,
 					 DRM_MODE_CONNECTOR_DisplayPort, NULL);
-- 
2.45.3

