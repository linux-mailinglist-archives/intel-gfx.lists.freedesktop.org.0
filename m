Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E84396275C9
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 07:11:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A8810E262;
	Mon, 14 Nov 2022 06:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F2010E25F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 06:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668406292; x=1699942292;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vdSXadnCSwgIKWSrV6a0+LIDBiVAp9eN/4fVEaJkGas=;
 b=i/x0NWtbdg9mUM7mJgr1uqDwxZ7D9fXVb672tdvja6iwqH0WJBegEEtQ
 l88W5Dpq5b8bjeEehYuexgDpyf7ZNR7u1K0SmOs4bEUhWeIPKQ96P5ISj
 x/AioB+FsPMfQHx7iNEke2lOM7Fa9oFiYlvd1Q/89iU1z3XqIxtQjNm4j
 7i6TEAMFhrmF6IwTwJbVj5xFBfjobdeaNXFg2HoPU3NUKzXR8wZKjElYV
 4+zEyFDKOF4NZlcNxmHcajmV6cEgPfmG/Xg0j0Hh/W0odvvPSP5764hOk
 GfoeSmS/BQL7JCuWsttYJ8ZAndm0iAKFlMnMsZ3lRCrxQmJXO+IM/e5YK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="374021079"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="374021079"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2022 22:11:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="632678904"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="632678904"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 13 Nov 2022 22:11:29 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 11:40:18 +0530
Message-Id: <20221114061019.1444353-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221114061019.1444353-1-suraj.kandpal@intel.com>
References: <20221114061019.1444353-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 2/3] drm/i915: Change intel_connector
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

Change intel_connector iterators as with writeback introduction
not all drm_connector will be embedded within intel_connector.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_acpi.c     |  7 +++++-
 drivers/gpu/drm/i915/display/intel_display.h  |  3 ++-
 .../drm/i915/display/intel_display_types.h    | 24 ++++++++++++++++++-
 3 files changed, 31 insertions(+), 3 deletions(-)

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
index 7210d678bc74..e0c31a3b20fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -52,6 +52,7 @@ struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_dp;
 struct intel_encoder;
+struct intel_connector;
 struct intel_initial_plane_config;
 struct intel_link_m_n;
 struct intel_load_detect_pipe;
@@ -432,7 +433,7 @@ enum hpd_pin {
 		for_each_if(intel_encoder_can_psr(intel_encoder))
 
 #define for_each_intel_connector_iter(intel_connector, iter) \
-	while ((intel_connector = to_intel_connector(drm_connector_list_iter_next(iter))))
+	while ((intel_connector = intel_connector_list_iter_next(iter)))
 
 #define for_each_encoder_on_crtc(dev, __crtc, intel_encoder) \
 	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8b34ba423817..83fef7f41458 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1509,9 +1509,10 @@ struct cxsr_latency {
 };
 
 #define to_intel_atomic_state(x) container_of(x, struct intel_atomic_state, base)
+#define to_intel_connector(x) ((((x)->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)) ?\
+				NULL : container_of(x, struct intel_connector, base))
 #define to_intel_crtc(x) container_of(x, struct intel_crtc, base)
 #define to_intel_crtc_state(x) container_of(x, struct intel_crtc_state, uapi)
-#define to_intel_connector(x) container_of(x, struct intel_connector, base)
 #define to_intel_encoder(x) container_of(x, struct intel_encoder, base)
 #define to_intel_framebuffer(x) container_of(x, struct intel_framebuffer, base)
 #define to_intel_plane(x) container_of(x, struct intel_plane, base)
@@ -2052,4 +2053,25 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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
+	}
+	return NULL;
+}
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
-- 
2.25.1

