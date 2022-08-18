Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F203598188
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 12:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9C8BCC5A1;
	Thu, 18 Aug 2022 10:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DCC410E736
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 10:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660819050; x=1692355050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FxBZQkNfEO0y0DKxnv+1hbJ5VkfuAGcnALmzY9CbI/M=;
 b=RUVUN9ZARXaYtEhI7ol1XJMDWE/ayR3v+GAKWp1csAb3I9UXYsSKqAXd
 z78ZnsKNZ6bFRh4p1Ru5nNUxL9tU8C8yroXLuDSLsbx6xZjlroatsmkrN
 082e08i63FkTs2XU2kim3RGoL8DRBEmnEuclSou1Ac0+R7YKkVO72eGB/
 dOqgDYSrpfaV92mo6OR/HCJXz61NNbMck6c6bM1cIf56fhdoC4MWyjD/l
 Cqtt4SmN5Rwjo4BHFogjVg8spV+xQkJtFLCl8uwEti8JsOJJ8PBvH7R1V
 orK8cEwH8/yUBHJdxWnXM8et+TU5qMZnwbvX8mCQlCZEiZHhrGDhSpTIY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="379019423"
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="379019423"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 03:37:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="584161140"
Received: from kandpal.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 18 Aug 2022 03:37:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Aug 2022 16:06:41 +0530
Message-Id: <20220818103642.501756-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220818103642.501756-1-suraj.kandpal@intel.com>
References: <20220818103642.501756-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915 : Changing intel_connector
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
Cc: ville.syrjala@intel.com, jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Changing intel_connector iterators as with writeback introduction
not all drm_connector will be embedded within intel_connector.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h  |  7 ++---
 .../drm/i915/display/intel_display_types.h    | 26 ++++++++++++++++++-
 .../drm/i915/display/intel_modeset_setup.c    | 11 +++++---
 3 files changed, 35 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 4e9f22954a41..3b9987b5f304 100644
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
index 0e94bd430bcb..7a82b7acbaf2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1497,12 +1497,14 @@ struct cxsr_latency {
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
@@ -2068,4 +2070,26 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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
index f0e04d3904c6..20a5a9e33eca 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -204,11 +204,16 @@ static bool intel_crtc_has_encoders(struct intel_crtc *crtc)
 
 static struct intel_connector *intel_encoder_find_connector(struct intel_encoder *encoder)
 {
-	struct drm_device *dev = encoder->base.dev;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_connector *connector;
+	struct drm_connector_list_iter conn_iter;
 
-	for_each_connector_on_encoder(dev, &encoder->base, connector)
-		return connector;
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		if (&encoder->base == connector->base.encoder)
+			return connector;
+	}
+	drm_connector_list_iter_end(&conn_iter);
 
 	return NULL;
 }
-- 
2.37.0

