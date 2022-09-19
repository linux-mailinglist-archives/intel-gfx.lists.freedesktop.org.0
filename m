Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA98E5BCC85
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 15:06:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBB010E629;
	Mon, 19 Sep 2022 13:06:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C59810E629
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 13:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663592778; x=1695128778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8uR1DIl629wAttBQxWmXo0RDnnfEuMjoxRHKk6f+C48=;
 b=Z8qOYkg/HpGlp7CAazEYr9R2V+BlKdF83d0I5CgWy4+akWWbbopdZ3Ha
 dcPzXPfJ3NJB6fnQW72vCCMEtYBmWanMW1dPSCxCObDk79UYc7uIQnp8j
 Yb0HAhkyumGAvfw35fGGuxSlQ2tqeJ7UlCIK819MPxXttb01NR/m0e/V/
 m7O8PpS9FFB/Y6F3keRdyTKzScWTm75FVYzNCrupsxSTFmpqIiiS3HXXr
 izrP7lpMW6GQiTLYIG+78QOQIXQGLkLTB95kJRcUO5FxiRPGNdZt+Y4+l
 3Om3AFihBZLFuRLYQRIAuFjL1U9IxKwmc6nJQkYmG+b3iVZ+n8z500kda Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286438312"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="286438312"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 06:06:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="863553245"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 19 Sep 2022 06:06:15 -0700
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Sep 2022 18:35:04 +0530
Message-Id: <20220919130505.1984383-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220919130505.1984383-1-suraj.kandpal@intel.com>
References: <20220919130505.1984383-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 2/3] drm/i915 : Changing intel_connector
 iterators
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

Changing intel_connector iterators as with writeback introduction
not all drm_connector will be embedded within intel_connector.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_acpi.c     |  7 ++++-
 drivers/gpu/drm/i915/display/intel_display.h  |  7 ++---
 .../drm/i915/display/intel_display_types.h    | 26 ++++++++++++++++++-
 .../drm/i915/display/intel_modeset_setup.c    | 16 +++++++++---
 4 files changed, 46 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index 9df78e7caa2b..912fe5c2ffe5 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -349,8 +349,13 @@ void intel_acpi_video_register(struct drm_i915_private *i915)
 	 */
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	drm_for_each_connector_iter(connector, &conn_iter) {
-		struct intel_panel *panel = &to_intel_connector(connector)->panel;
+		struct intel_panel *panel;
+		struct intel_connector *intel_connector =
+					to_intel_connector(connector);
 
+		if (!intel_connector)
+			continue;
+		panel = &intel_connector->panel;
 		if (panel->backlight.funcs && !panel->backlight.device) {
 			acpi_video_register_backlight();
 			break;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index a1ed9c82e2ed..102bf7d47ccc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -52,6 +52,7 @@ struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_dp;
 struct intel_encoder;
+struct intel_connector;
 struct intel_initial_plane_config;
 struct intel_load_detect_pipe;
 struct intel_plane;
@@ -469,16 +470,12 @@ enum hpd_pin {
 		for_each_if(intel_encoder_can_psr(intel_encoder))
 
 #define for_each_intel_connector_iter(intel_connector, iter) \
-	while ((intel_connector = to_intel_connector(drm_connector_list_iter_next(iter))))
+	while ((intel_connector = intel_connector_list_iter_next(iter)))
 
 #define for_each_encoder_on_crtc(dev, __crtc, intel_encoder) \
 	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
 		for_each_if((intel_encoder)->base.crtc == (__crtc))
 
-#define for_each_connector_on_encoder(dev, __encoder, intel_connector) \
-	list_for_each_entry((intel_connector), &(dev)->mode_config.connector_list, base.head) \
-		for_each_if((intel_connector)->base.encoder == (__encoder))
-
 #define for_each_old_intel_plane_in_state(__state, plane, old_plane_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 633cacd79074..a2d294929a64 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1498,12 +1498,14 @@ struct cxsr_latency {
 #define to_intel_atomic_state(x) container_of(x, struct intel_atomic_state, base)
 #define to_intel_crtc(x) container_of(x, struct intel_crtc, base)
 #define to_intel_crtc_state(x) container_of(x, struct intel_crtc_state, uapi)
-#define to_intel_connector(x) container_of(x, struct intel_connector, base)
+#define to_intel_wb_connector(x) container_of(x, struct intel_wb_connector, base)
 #define to_intel_encoder(x) container_of(x, struct intel_encoder, base)
 #define to_intel_framebuffer(x) container_of(x, struct intel_framebuffer, base)
 #define to_intel_plane(x) container_of(x, struct intel_plane, base)
 #define to_intel_plane_state(x) container_of(x, struct intel_plane_state, uapi)
 #define intel_fb_obj(x) ((x) ? to_intel_bo((x)->obj[0]) : NULL)
+#define to_intel_connector(x) (((x->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)) ?	\
+				NULL : container_of(x, struct intel_connector, base))
 
 struct intel_hdmi {
 	i915_reg_t hdmi_reg;
@@ -2069,4 +2071,26 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
 }
 
+static inline struct intel_connector *
+intel_connector_list_iter_next(struct drm_connector_list_iter *iter)
+{
+	struct drm_connector *connector;
+	bool flag = true;
+	/*
+	 * Skipping connector that are Writeback connector as they will
+	 * not be embedded in intel connector
+	 */
+	while (flag) {
+		connector = drm_connector_list_iter_next(iter);
+		if (connector && !to_intel_connector(connector))
+			continue;
+
+		flag = false;
+
+		if (connector)
+			return to_intel_connector(connector);
+
+	}
+	return NULL;
+}
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index cbfabd58b75a..e1a90331c230 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -205,12 +205,22 @@ static bool intel_crtc_has_encoders(struct intel_crtc *crtc)
 
 static struct intel_connector *intel_encoder_find_connector(struct intel_encoder *encoder)
 {
-	struct drm_device *dev = encoder->base.dev;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+	bool found_connector = false;
 
-	for_each_connector_on_encoder(dev, &encoder->base, connector)
-		return connector;
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		if (&encoder->base == connector->base.encoder) {
+			found_connector = true;
+			break;
+		}
+	}
+	drm_connector_list_iter_end(&conn_iter);
 
+	if (found_connector)
+		return connector;
 	return NULL;
 }
 
-- 
2.25.1

