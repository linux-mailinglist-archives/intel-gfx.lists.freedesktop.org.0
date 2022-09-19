Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 078D65BC3C2
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 09:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8475E10E562;
	Mon, 19 Sep 2022 07:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBCF10E562
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 07:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663574090; x=1695110090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wG92wasXAJm/iYkIJC6dtPeNnm7CCY2NtU9TgSQIDD0=;
 b=RtrF0foV9FsB9fG05YFO4UZRcxGavkawEEF45ohPmHuEFobEv9sRVrWK
 iBEEIMNs+MhGAq7GL33Sq1c11hZfmHfxDoYTi869KyBmECCad62JmHK17
 kYzad+iFWSC4cK1p4okcLFtdfojndgYJEoKBVOfw9HfWBgRSosNFWa+wo
 DOKgI/j5zqo2SOS1AHe5Pl+YuLoERTA6HW38PHcEPIGXofDg/2zE8/B+a
 ND1LcaeDTYv+8Sm85DhWGEMRVBJdrcK4p522fzhRWsBm//ev6/sFPyulP
 0bOO/GESd3Q/mZwjq6D8sgYKXx1NbNw9rYl8xtfsCSooo+bBmLmiOj9Ls Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="286378616"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="286378616"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 00:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="618388986"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 19 Sep 2022 00:54:47 -0700
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Sep 2022 13:23:25 +0530
Message-Id: <20220919075326.1848294-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220919075326.1848294-1-suraj.kandpal@intel.com>
References: <20220919075326.1848294-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/3] drm/i915 : Changing intel_connector
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
 drivers/gpu/drm/i915/display/intel_display.h  |  7 ++---
 .../drm/i915/display/intel_display_types.h    | 26 ++++++++++++++++++-
 .../drm/i915/display/intel_modeset_setup.c    | 16 +++++++++---
 drivers/gpu/drm/i915/i915_reg.h               |  2 --
 4 files changed, 40 insertions(+), 11 deletions(-)

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
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 53569cfdec64..e8d5ee131838 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3703,11 +3703,9 @@
 #define PIPE_DSI0_OFFSET	0x7b000
 #define PIPE_DSI1_OFFSET	0x7b800
 
-/* WD 0 and 1 */
 #define PIPE_WD0_OFFSET		0x7e000
 #define PIPE_WD1_OFFSET		0x7d000
 
-
 #define PIPECONF(pipe)		_MMIO_PIPE2(pipe, _PIPEACONF)
 #define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
 #define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
-- 
2.25.1

