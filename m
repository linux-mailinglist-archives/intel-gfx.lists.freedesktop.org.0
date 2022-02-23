Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3944C0C74
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 07:12:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1F7F10EA8E;
	Wed, 23 Feb 2022 06:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D963610EA92
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 06:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645596746; x=1677132746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AO1BGvKscFyuNXWkSpQruSIk2fcsxNQ7kGPBf3ZPGOk=;
 b=Mh5F9bzI029rrzfpQadmhKMeVPhrE7rTXIZDKf89xygkUA125LrQV3X1
 2Dq9tYuntRwD2jQPgGJu2eYicha7dGU/u0pemIfBDo88JLjDy9bbjnJFw
 YVIt+8IWbUno7Np7BAV2zTrGSQWMRRA1gPsWQhFSNMRtiYJv4IRqgO8cT
 bt+T8kk3+1fNdo6vCz0POYU6O6+Bqxs4tlE/ag83bXhQQLD84qGO55Xx8
 3ph0ibwQKaG1U/mTO9+fAuQTNfIU8nrQud9KS4l0c6l+DWg0hRQ6+pccU
 sb4Fax1vyu2VBky6dTJXompmYfS65b3/GFJjeGoRd1urMEa/bGz5DIxus Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="315121234"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="315121234"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 22:12:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="639194278"
Received: from srr4-3-linux-116-skandpal.iind.intel.com ([10.190.238.57])
 by orsmga004.jf.intel.com with ESMTP; 22 Feb 2022 22:12:24 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 11:50:43 +0530
Message-Id: <20220223062043.8337-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220223062043.8337-1-suraj.kandpal@intel.com>
References: <20220223062043.8337-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 2/2] drm/i915: Enabling WD Transcoder
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

Adding support for writeback transcoder to start capturing frames using
interrupt mechanism

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  78 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   9 +
 .../drm/i915/display/intel_display_types.h    |  16 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 .../gpu/drm/i915/display/intel_wb_connector.h |  20 +
 drivers/gpu/drm/i915/display/intel_wd.c       | 769 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wd.h       |  70 ++
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 drivers/gpu/drm/i915/i915_reg.h               | 131 +++
 14 files changed, 1118 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 9d588d936e3d..3e2e0162115b 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -285,6 +285,7 @@ i915-y += \
 	display/intel_tv.o \
 	display/intel_vdsc.o \
 	display/intel_vrr.o \
+	display/intel_wd.o \
 	display/vlv_dsi.o \
 	display/vlv_dsi_pll.o
 
diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index e78430001f07..ae08db164f73 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -247,6 +247,7 @@ static u32 acpi_display_type(struct intel_connector *connector)
 	case DRM_MODE_CONNECTOR_LVDS:
 	case DRM_MODE_CONNECTOR_eDP:
 	case DRM_MODE_CONNECTOR_DSI:
+	case DRM_MODE_CONNECTOR_WRITEBACK:
 		display_type = ACPI_DISPLAY_TYPE_INTERNAL_DIGITAL;
 		break;
 	case DRM_MODE_CONNECTOR_Unknown:
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e2ca70696c05..f7297da7c375 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -110,6 +110,7 @@
 #include "intel_sprite.h"
 #include "intel_tc.h"
 #include "intel_vga.h"
+#include "intel_wd.h"
 #include "i9xx_plane.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
@@ -1548,6 +1549,69 @@ static void intel_encoders_update_complete(struct intel_atomic_state *state)
 	}
 }
 
+static void intel_queue_writeback_job(struct intel_atomic_state *state,
+		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)
+{
+	struct drm_connector_state *new_conn_state;
+	struct drm_connector *connector;
+	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	struct intel_wd *intel_wd;
+	struct intel_encoder *encoder;
+	int i;
+
+	for_each_intel_encoder_with_wd(&dev_priv->drm, encoder) {
+		intel_wd = enc_to_intel_wd(encoder);
+
+		if (intel_wd->wd_crtc != intel_crtc)
+			return;
+
+	}
+
+	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
+					i) {
+		if (!new_conn_state->writeback_job)
+			continue;
+
+		drm_writeback_queue_job(connector->wb_connector, new_conn_state);
+		drm_dbg_kms(&dev_priv->drm, "queueing writeback job\n");
+	}
+}
+
+static void intel_find_writeback_connector(struct intel_atomic_state *state,
+		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)
+{
+	struct drm_connector_state *new_conn_state;
+	struct drm_connector *connector;
+	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	struct intel_wd *intel_wd;
+	struct intel_encoder *encoder;
+	int i;
+
+	for_each_intel_encoder_with_wd(&dev_priv->drm, encoder) {
+		intel_wd = enc_to_intel_wd(encoder);
+
+		if (intel_wd->wd_crtc != intel_crtc)
+			return;
+
+	}
+
+	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
+					i) {
+		struct intel_connector *intel_connector;
+
+		intel_connector = to_intel_connector(connector);
+		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]: status: %s\n",
+				connector->base.id, connector->name,
+				drm_get_connector_status_name(connector->status));
+		encoder = intel_connector_primary_encoder(intel_connector);
+		if (encoder->type == INTEL_OUTPUT_WD) {
+			drm_dbg_kms(&dev_priv->drm, "encoder intel_output_wd found\n");
+			intel_wd_enable_capture(encoder, crtc_state, new_conn_state);
+		}
+	}
+
+}
+
 static void intel_encoders_pre_pll_enable(struct intel_atomic_state *state,
 					  struct intel_crtc *crtc)
 {
@@ -1948,7 +2012,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		bdw_set_pipemisc(new_crtc_state);
 
 	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
-	    !transcoder_is_dsi(cpu_transcoder))
+	    !transcoder_is_dsi(cpu_transcoder) &&
+	    !transcoder_is_wd(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
 	crtc->active = true;
@@ -5169,6 +5234,7 @@ static const char * const output_type_str[] = {
 	OUTPUT_TYPE(DSI),
 	OUTPUT_TYPE(DDI),
 	OUTPUT_TYPE(DP_MST),
+	OUTPUT_TYPE(WD),
 };
 
 #undef OUTPUT_TYPE
@@ -8390,6 +8456,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		}
 	}
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		intel_wd_set_vblank_event(crtc, new_crtc_state);
+	}
+
 	intel_encoders_update_prepare(state);
 
 	intel_dbuf_pre_plane_update(state);
@@ -8475,6 +8545,11 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_sagv_post_plane_update(state);
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		intel_queue_writeback_job(state, crtc, new_crtc_state);
+		intel_find_writeback_connector(state, crtc, new_crtc_state);
+	}
+
 	drm_atomic_helper_commit_hw_done(&state->base);
 
 	if (state->modeset) {
@@ -8779,6 +8854,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_TC1);
 		intel_ddi_init(dev_priv, PORT_TC2);
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
+		intel_wd_init(dev_priv, TRANSCODER_WD_0);
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_TC1);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 30b639051e64..a8d167eb7242 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -156,6 +156,11 @@ static inline bool transcoder_is_dsi(enum transcoder transcoder)
 	return transcoder == TRANSCODER_DSI_A || transcoder == TRANSCODER_DSI_C;
 }
 
+static inline bool transcoder_is_wd(enum transcoder transcoder)
+{
+	return transcoder == TRANSCODER_WD_0 || transcoder == TRANSCODER_WD_1;
+}
+
 /*
  * Global legacy plane identifier. Valid only for primary/sprite
  * planes on pre-g4x, and only for primary planes on g4x-bdw.
@@ -467,6 +472,10 @@ enum hpd_pin {
 	for_each_intel_encoder((dev), (intel_encoder)) \
 		for_each_if(intel_encoder_can_psr(intel_encoder))
 
+#define for_each_intel_encoder_with_wd(dev, intel_encoder)	\
+	for_each_intel_encoder(dev, intel_encoder)		\
+		for_each_if(intel_encoder_is_wd(intel_encoder))
+
 #define for_each_intel_connector_iter(intel_connector, iter) \
 	while ((intel_connector = to_intel_connector(drm_connector_list_iter_next(iter))))
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2b137909e0ab..3afc87590990 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -43,6 +43,7 @@
 #include <drm/drm_vblank.h>
 #include <drm/drm_vblank_work.h>
 #include <drm/i915_mei_hdcp_interface.h>
+#include <drm/drm_writeback.h>
 #include <media/cec-notifier.h>
 
 #include "i915_vma.h"
@@ -539,6 +540,8 @@ struct intel_connector {
 	struct work_struct modeset_retry_work;
 
 	struct intel_hdcp hdcp;
+
+	struct drm_writeback_connector wb_conn;
 };
 
 struct intel_digital_connector_state {
@@ -1285,6 +1288,11 @@ struct intel_crtc {
 	bool cpu_fifo_underrun_disabled;
 	bool pch_fifo_underrun_disabled;
 
+	struct {
+		struct drm_pending_vblank_event *e;
+		atomic_t work_busy;
+		wait_queue_head_t wd_wait;
+	} wd;
 	/* per-pipe watermark state */
 	struct {
 		/* watermarks currently being used  */
@@ -1403,6 +1411,7 @@ struct cxsr_latency {
 #define to_intel_crtc(x) container_of(x, struct intel_crtc, base)
 #define to_intel_crtc_state(x) container_of(x, struct intel_crtc_state, uapi)
 #define to_intel_connector(x) container_of(x, struct intel_connector, base)
+#define to_intel_wb_connector(x) container_of(x, struct intel_wb_connector, base)
 #define to_intel_encoder(x) container_of(x, struct intel_encoder, base)
 #define to_intel_framebuffer(x) container_of(x, struct intel_framebuffer, base)
 #define to_intel_plane(x) container_of(x, struct intel_plane, base)
@@ -1834,6 +1843,13 @@ static inline bool intel_encoder_is_dp(struct intel_encoder *encoder)
 	}
 }
 
+static inline bool intel_encoder_is_wd(struct intel_encoder *encoder)
+{
+	if (encoder->type == INTEL_OUTPUT_WD)
+		return true;
+	return false;
+}
+
 static inline struct intel_lspcon *
 enc_to_intel_lspcon(struct intel_encoder *encoder)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 14f5ffe27d05..dabedf2a34ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -947,6 +947,12 @@ static int hsw_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 	if (IS_DG2(dev_priv))
 		return intel_mpllb_calc_state(crtc_state, encoder);
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_WD)) {
+		pr_alert("%s: %d: output type: 0x%x",
+			__func__, __LINE__, crtc_state->output_types);
+		return 0;
+		}
+
 	if (DISPLAY_VER(dev_priv) < 11 &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index f31e8c3f8ce0..b7a0ac9bad05 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -370,6 +370,9 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 	if (ret)
 		return ret;
 
+	if (intel_encoder->type == INTEL_OUTPUT_WD)
+		return 0;
+
 	if (intel_encoder->type == INTEL_OUTPUT_DSI)
 		port = 0;
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_wb_connector.h b/drivers/gpu/drm/i915/display/intel_wb_connector.h
new file mode 100644
index 000000000000..8063a9273bc7
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_wb_connector.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2020 Intel Corporation
+ */
+
+#ifndef __INTEL_WB_CONNECTOR_H__
+#define __INTEL_WB_CONNECTOR_H__
+
+#include "intel_display.h"
+
+struct intel_wb_connector *intel_wb_connector_alloc(void);
+void intel_wb_connector_free(struct intel_wb_connector *connector);
+void intel_wb_connector_destroy(struct drm_connector *connector);
+bool intel_wb_connector_get_hw_state(struct intel_wb_connector *connector);
+enum pipe intel_wb_connector_get_pipe(struct intel_wb_connector *connector);
+void intel_wb_connector_attach_encoder(struct intel_wb_connector *connector,
+					struct intel_encoder *encoder);
+
+#endif /* __INTEL_WB_CONNECTOR_H__ */
+
diff --git a/drivers/gpu/drm/i915/display/intel_wd.c b/drivers/gpu/drm/i915/display/intel_wd.c
new file mode 100644
index 000000000000..ac9b4560c0f3
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_wd.c
@@ -0,0 +1,769 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright © 2021 Intel Corporation
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the next
+ * paragraph) shall be included in all copies or substantial portions of the
+ * Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+ * IN THE SOFTWARE.
+ *
+ * Authors:
+ *	Suraj Kandpal <suraj.kandpal@intel.com>
+ *	Arun Murthy <arun.r.murthy@intel.com>
+ *
+ */
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_fourcc.h>
+
+#include "intel_atomic.h"
+#include "intel_connector.h"
+#include "intel_wd.h"
+#include "intel_fb_pin.h"
+#include "intel_de.h"
+
+enum {
+	WD_CAPTURE_4_PIX,
+	WD_CAPTURE_2_PIX,
+} wd_capture_format;
+
+static struct drm_writeback_job
+*intel_get_writeback_job_from_queue(struct intel_wd *intel_wd)
+{
+	struct drm_writeback_job *job;
+	struct drm_i915_private *dev_priv = to_i915(intel_wd->base.base.dev);
+	struct drm_writeback_connector *wb_conn =
+		intel_wd->attached_connector->base.wb_connector;
+	unsigned long flags;
+
+	spin_lock_irqsave(&wb_conn->job_lock, flags);
+	job = list_first_entry_or_null(&wb_conn->job_queue,
+			struct drm_writeback_job,
+			list_entry);
+	spin_unlock_irqrestore(&wb_conn->job_lock, flags);
+	if (job == NULL) {
+		drm_dbg_kms(&dev_priv->drm, "job queue is empty\n");
+		return NULL;
+	}
+
+	return job;
+}
+
+void print_connectors(struct drm_i915_private *dev_priv)
+{
+	struct drm_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+	struct intel_connector *intel_connector;
+
+	drm_modeset_lock_all(&dev_priv->drm);
+	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		intel_connector = to_intel_connector(connector);
+		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]: status: %s\n",
+			connector->base.id, connector->name,
+			drm_get_connector_status_name(connector->status));
+	}
+	drm_connector_list_iter_end(&conn_iter);
+	drm_modeset_unlock_all(&dev_priv->drm);
+}
+
+/*Check with Spec*/
+static const u32 wb_fmts[] = {
+		DRM_FORMAT_YUV444,
+		DRM_FORMAT_XYUV8888,
+		DRM_FORMAT_XBGR8888,
+		DRM_FORMAT_XRGB8888,
+		DRM_FORMAT_Y410,
+		DRM_FORMAT_YUV422,
+		DRM_FORMAT_XBGR2101010,
+		DRM_FORMAT_RGB565,
+
+};
+
+static int intel_wd_get_format(int pixel_format)
+{
+	int wd_format = -EINVAL;
+
+	switch (pixel_format) {
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_XBGR2101010:
+	case DRM_FORMAT_XYUV8888:
+	case DRM_FORMAT_YUV444:
+		wd_format = WD_CAPTURE_4_PIX;
+		break;
+	case DRM_FORMAT_YUV422:
+	case DRM_FORMAT_RGB565:
+		wd_format = WD_CAPTURE_2_PIX;
+		break;
+	default:
+		DRM_ERROR("unsupported pixel format %x!\n",
+			pixel_format);
+	}
+
+	return wd_format;
+}
+
+static int intel_wd_verify_pix_format(int format)
+{
+	const struct drm_format_info *info = drm_format_info(format);
+	int pix_format = info->format;
+	int i = 0;
+
+	for (i = 0; i < ARRAY_SIZE(wb_fmts); i++)
+		if (pix_format == wb_fmts[i])
+			return 0;
+
+	return 1;
+}
+
+static u32 intel_wd_get_stride(const struct intel_crtc_state *crtc_state,
+			int format)
+{
+	const struct drm_format_info *info = drm_format_info(format);
+	int wd_format;
+	int hactive, pixel_size;
+
+	wd_format = intel_wd_get_format(info->format);
+
+	switch (wd_format) {
+	case WD_CAPTURE_4_PIX:
+		pixel_size = 4;
+		break;
+	case WD_CAPTURE_2_PIX:
+		pixel_size = 2;
+		break;
+	default:
+		pixel_size = 1;
+		break;
+	}
+
+	hactive = crtc_state->hw.adjusted_mode.crtc_hdisplay;
+
+	return DIV_ROUND_UP(hactive * pixel_size, 64);
+}
+
+static int intel_wd_pin_fb(struct intel_wd *intel_wd,
+			struct drm_framebuffer *fb)
+{
+	const struct i915_ggtt_view view = {
+		.type = I915_GGTT_VIEW_NORMAL,
+		};
+	struct i915_vma *vma;
+
+	vma = intel_pin_and_fence_fb_obj(fb, false, &view, false,
+			&intel_wd->flags);
+
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
+
+	intel_wd->vma = vma;
+	return 0;
+}
+
+static void intel_configure_slicing_strategy(struct drm_i915_private *dev_priv,
+		struct intel_wd *intel_wd, u32 *tmp)
+{
+	*tmp &= ~WD_STRAT_MASK;
+	if (intel_wd->slicing_strategy == 1)
+		*tmp |= WD_SLICING_STRAT_1_1;
+	else if (intel_wd->slicing_strategy == 2)
+		*tmp |= WD_SLICING_STRAT_2_1;
+	else if (intel_wd->slicing_strategy == 3)
+		*tmp |= WD_SLICING_STRAT_4_1;
+	else if (intel_wd->slicing_strategy == 4)
+		*tmp |= WD_SLICING_STRAT_8_1;
+
+	intel_de_write(dev_priv, WD_STREAMCAP_CTL(intel_wd->trans),
+			*tmp);
+
+}
+
+static enum drm_mode_status
+intel_wd_mode_valid(struct drm_connector *connector,
+		struct drm_display_mode *mode)
+{
+	drm_dbg_kms(connector->dev, ":");
+	return MODE_OK;
+}
+
+static int intel_wd_get_modes(struct drm_connector *connector)
+{
+	return 0;
+}
+
+static void intel_wd_get_config(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_crtc *intel_crtc =
+		to_intel_crtc(pipe_config->uapi.crtc);
+
+	drm_dbg_kms(&dev_priv->drm, "\n");
+	if (intel_crtc) {
+		memcpy(pipe_config, intel_crtc->config,
+			sizeof(*pipe_config));
+		pipe_config->output_types |= BIT(INTEL_OUTPUT_WD);
+		drm_dbg_kms(&dev_priv->drm, "crtc found\n");
+	}
+
+}
+
+static int intel_wd_compute_config(struct intel_encoder *encoder,
+			struct intel_crtc_state *pipe_config,
+			struct drm_connector_state *conn_state)
+{
+	struct intel_wd *intel_wd = enc_to_intel_wd(encoder);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_writeback_job *job;
+
+	drm_dbg_kms(&dev_priv->drm, "\n");
+	job = intel_get_writeback_job_from_queue(intel_wd);
+	if (job || conn_state->writeback_job) {
+		intel_wd->wd_crtc = to_intel_crtc(pipe_config->uapi.crtc);
+		return 0;
+	}
+	drm_dbg_kms(&dev_priv->drm, "No writebackjob in queue\n");
+
+	return 0;
+}
+
+static void intel_wd_get_power_domains(struct intel_encoder *encoder,
+			struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_wd *intel_wd = enc_to_intel_wd(encoder);
+	intel_wakeref_t wakeref;
+
+	wakeref = intel_display_power_get(dev_priv,
+				encoder->power_domain);
+
+	intel_wd->io_wakeref[0] = wakeref;
+	drm_dbg_kms(encoder->base.dev, "\n");
+}
+
+static bool intel_wd_get_hw_state(struct intel_encoder *encoder,
+		enum pipe *pipe)
+{
+	bool ret = false;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_wd *intel_wd = enc_to_intel_wd(encoder);
+	struct intel_crtc *wd_crtc = intel_wd->wd_crtc;
+	intel_wakeref_t wakeref;
+	u32 tmp;
+
+	if (wd_crtc)
+		return false;
+
+	wakeref = intel_display_power_get_if_enabled(dev_priv,
+				encoder->power_domain);
+	drm_dbg_kms(encoder->base.dev, "power enabled : %s\n",
+			!wakeref ? "false":"true");
+
+	if (!wakeref)
+		return false;
+
+	tmp = intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
+	ret = tmp & WD_TRANS_ACTIVE;
+	drm_dbg_kms(encoder->base.dev, "trancoder enabled: %s\n",
+			ret ? "true":"false");
+	if (ret) {
+		*pipe = wd_crtc->pipe;
+		drm_dbg_kms(encoder->base.dev, "pipe selected is %d\n",
+			wd_crtc->pipe);
+	}
+	return true;
+}
+
+static int intel_wd_encoder_atomic_check(struct drm_encoder *encoder,
+				    struct drm_crtc_state *crtc_st,
+				    struct drm_connector_state *conn_st)
+{
+	/* Check for the format and buffers and property validity */
+	struct drm_framebuffer *fb;
+	struct drm_writeback_job *job = conn_st->writeback_job;
+	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
+	const struct drm_display_mode *mode = &crtc_st->mode;
+	int ret;
+
+	drm_dbg_kms(&dev_priv->drm, "\n");
+
+	if (!job) {
+		drm_dbg_kms(&dev_priv->drm, "No writeback job created returning\n");
+		return -EINVAL;
+	}
+
+	fb = job->fb;
+
+	if (!fb) {
+		drm_dbg_kms(&dev_priv->drm, "Invalid framebuffer\n");
+		return -EINVAL;
+	}
+
+	if (fb->width != mode->hdisplay || fb->height != mode->vdisplay) {
+		drm_dbg_kms(&dev_priv->drm, "Invalid framebuffer size %ux%u\n",
+				fb->width, fb->height);
+		return -EINVAL;
+	}
+
+	ret = intel_wd_verify_pix_format(fb->format->format);
+
+	if (ret) {
+		drm_dbg_kms(&dev_priv->drm, "Unsupported framebuffer format %08x\n",
+				fb->format->format);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+
+static const struct drm_encoder_helper_funcs wd_encoder_helper_funcs = {
+	.atomic_check = intel_wd_encoder_atomic_check,
+};
+
+static void intel_wd_connector_destroy(struct drm_connector *connector)
+{
+	drm_dbg_kms(connector->dev, "\n");
+	drm_connector_cleanup(connector);
+	kfree(connector);
+}
+
+static enum drm_connector_status
+intel_wb_connector_detect(struct drm_connector *connector, bool force)
+{
+	drm_dbg_kms(connector->dev, "Writeback connector connected\n");
+	return connector_status_connected;
+}
+
+
+static const struct drm_connector_funcs wd_connector_funcs = {
+	.detect = intel_wb_connector_detect,
+	.reset = drm_atomic_helper_connector_reset,
+	.destroy = intel_wd_connector_destroy,
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
+};
+
+static const struct drm_connector_helper_funcs wd_connector_helper_funcs = {
+	.get_modes = intel_wd_get_modes,
+	.mode_valid = intel_wd_mode_valid,
+};
+
+static bool intel_fastset_dis(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)
+{
+	pipe_config->uapi.mode_changed = true;
+	drm_dbg_kms(encoder->base.dev, "\n");
+	return false;
+}
+
+void intel_wd_init(struct drm_i915_private *dev_priv, enum transcoder trans)
+{
+	struct intel_wd *intel_wd;
+	struct intel_encoder *encoder;
+	struct intel_connector *intel_connector;
+	struct drm_writeback_connector *wb_conn;
+	int n_formats = ARRAY_SIZE(wb_fmts);
+	int err;
+
+	drm_dbg_kms(&dev_priv->drm, "\n");
+	intel_wd = kzalloc(sizeof(*intel_wd), GFP_KERNEL);
+	if (!intel_wd)
+		return;
+
+	intel_connector = intel_connector_alloc();
+	if (!intel_connector) {
+		kfree(intel_wd);
+		return;
+	}
+
+	wb_conn = &intel_connector->wb_conn;
+	wb_conn->base = &intel_connector->base;
+	wb_conn->encoder = &intel_wd->base.base;
+
+	encoder = &intel_wd->base;
+	intel_wd->attached_connector = intel_connector;
+	intel_wd->trans = trans;
+	intel_wd->triggered_cap_mode = 1;
+	intel_wd->frame_num = 1;
+	intel_wd->slicing_strategy = 1;
+	encoder->get_config = intel_wd_get_config;
+	encoder->compute_config = intel_wd_compute_config;
+	encoder->get_hw_state = intel_wd_get_hw_state;
+	encoder->type = INTEL_OUTPUT_WD;
+	encoder->cloneable = 0;
+	encoder->pipe_mask = ~0;
+	encoder->power_domain = POWER_DOMAIN_TRANSCODER_B;
+	encoder->get_power_domains = intel_wd_get_power_domains;
+	encoder->initial_fastset_check = intel_fastset_dis;
+	intel_connector->get_hw_state =
+		intel_connector_get_hw_state;
+
+	err = drm_writeback_connector_init(&dev_priv->drm, wb_conn,
+		&wd_connector_funcs,
+		&wd_encoder_helper_funcs,
+		wb_fmts, n_formats);
+
+	if (err != 0) {
+		drm_dbg_kms(&dev_priv->drm,
+		"drm_writeback_connector_init: Failed: %d\n",
+			err);
+		goto cleanup;
+	}
+
+	drm_connector_helper_add(wb_conn->base, &wd_connector_helper_funcs);
+	intel_connector_attach_encoder(intel_connector, encoder);
+	wb_conn->base->status = connector_status_connected;
+	return;
+
+cleanup:
+	kfree(intel_wd);
+	intel_connector_free(intel_connector);
+}
+
+void intel_wd_writeback_complete(struct intel_wd *intel_wd,
+	struct drm_writeback_job *job, int status)
+{
+	struct drm_writeback_connector *wb_conn =
+		intel_wd->attached_connector->base.wb_connector;
+	drm_writeback_signal_completion(wb_conn, status);
+}
+
+int intel_wd_setup_transcoder(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,
+		struct drm_connector_state *conn_state,
+		struct drm_writeback_job *job)
+{
+	struct intel_crtc *intel_crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	enum pipe pipe = intel_crtc->pipe;
+	struct drm_framebuffer *fb;
+	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	struct drm_gem_object *wd_fb_obj;
+	int ret;
+	u32 stride, tmp;
+	u16 hactive, vactive;
+
+	fb = job->fb;
+	wd_fb_obj = fb->obj[0];
+	if (!wd_fb_obj) {
+		drm_dbg_kms(&dev_priv->drm, "No framebuffer gem object created\n");
+		return -1;
+	}
+	ret = intel_wd_pin_fb(intel_wd, fb);
+	drm_WARN_ON(&dev_priv->drm, ret != 0);
+
+	/*Write stride and surface registers in that particular order*/
+	stride = intel_wd_get_stride(pipe_config, fb->format->format);
+
+	tmp = intel_de_read(dev_priv, WD_STRIDE(intel_wd->trans));
+	tmp &= ~WD_STRIDE_MASK;
+	tmp |= (stride << WD_STRIDE_SHIFT);
+
+	intel_de_write(dev_priv, WD_STRIDE(intel_wd->trans), tmp);
+
+	tmp = intel_de_read(dev_priv, WD_SURF(intel_wd->trans));
+	drm_dbg_kms(&dev_priv->drm, "%d is the surface address\n", tmp);
+
+	intel_de_write(dev_priv, WD_SURF(intel_wd->trans),
+			i915_ggtt_offset(intel_wd->vma));
+
+	tmp = intel_de_read_fw(dev_priv, WD_IIR(intel_wd->trans));
+	intel_de_write_fw(dev_priv, WD_IIR(intel_wd->trans), tmp);
+
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
+			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
+	intel_de_write_fw(dev_priv, WD_IMR(intel_wd->trans), tmp);
+
+	if (intel_wd->stream_cap) {
+		tmp = intel_de_read(dev_priv,
+				WD_STREAMCAP_CTL(intel_wd->trans));
+		tmp |= WD_STREAM_CAP_MODE_EN;
+		intel_configure_slicing_strategy(dev_priv, intel_wd, &tmp);
+	}
+
+	hactive = pipe_config->uapi.mode.hdisplay;
+	vactive = pipe_config->uapi.mode.vdisplay;
+
+	drm_dbg_kms(&dev_priv->drm, "hactive : %d, vactive: %d\n", hactive, vactive);
+
+	tmp = intel_de_read(dev_priv, HTOTAL(intel_wd->trans));
+	drm_dbg_kms(&dev_priv->drm, "hactive_reg : %d\n", tmp);
+	tmp = intel_de_read(dev_priv, VTOTAL(intel_wd->trans));
+	drm_dbg_kms(&dev_priv->drm, "vactive_reg : %d\n", tmp);
+	/* minimum hactive as per bspec: 64 pixels*/
+	if (hactive < 64)
+		drm_err(&dev_priv->drm, "hactive is less then 64 pixels\n");
+
+	intel_de_write(dev_priv, HTOTAL(intel_wd->trans), hactive - 1);
+	intel_de_write(dev_priv, VTOTAL(intel_wd->trans), vactive - 1);
+
+	tmp = intel_de_read(dev_priv, WD_TRANS_FUNC_CTL(intel_wd->trans));
+	/* select pixel format */
+	tmp &= ~WD_PIX_FMT_MASK;
+
+	switch (fb->format->format) {
+	default:
+	fallthrough;
+	case DRM_FORMAT_YUYV:
+		tmp |= WD_PIX_FMT_YUYV;
+		break;
+	case DRM_FORMAT_XYUV8888:
+		tmp |= WD_PIX_FMT_XYUV8888;
+		break;
+	case DRM_FORMAT_XBGR8888:
+		tmp |= WD_PIX_FMT_XBGR8888;
+		break;
+	case DRM_FORMAT_Y410:
+		tmp |= WD_PIX_FMT_Y410;
+		break;
+	case DRM_FORMAT_YUV422:
+		tmp |= WD_PIX_FMT_YUV422;
+		break;
+	case DRM_FORMAT_XBGR2101010:
+		tmp |= WD_PIX_FMT_XBGR2101010;
+		break;
+	case DRM_FORMAT_RGB565:
+		tmp |= WD_PIX_FMT_RGB565;
+		break;
+	}
+
+	if (intel_wd->triggered_cap_mode)
+		tmp |= WD_TRIGGERED_CAP_MODE_ENABLE;
+
+	if (intel_wd->stream_cap)
+		tmp |= WD_CTL_POINTER_DTDH;
+
+	/*select input pipe*/
+	tmp &= ~WD_INPUT_SELECT_MASK;
+	drm_dbg_kms(&dev_priv->drm, "Selected pipe is %d\n", pipe);
+	switch (pipe) {
+	default:
+		fallthrough;
+	case PIPE_A:
+		tmp |= WD_INPUT_PIPE_A;
+		break;
+	case PIPE_B:
+		tmp |= WD_INPUT_PIPE_B;
+		break;
+	case PIPE_C:
+		tmp |= WD_INPUT_PIPE_C;
+		break;
+	case PIPE_D:
+		tmp |= WD_INPUT_PIPE_D;
+		break;
+	}
+
+	/* enable DDI buffer */
+	if (!(tmp & TRANS_WD_FUNC_ENABLE))
+		tmp |= TRANS_WD_FUNC_ENABLE;
+
+	intel_de_write(dev_priv, WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);
+
+	tmp = intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
+	ret = tmp & WD_TRANS_ACTIVE;
+	drm_dbg_kms(&dev_priv->drm, "Trancoder enabled: %s\n", ret ? "true":"false");
+
+	if (!ret) {
+		/*enable the transcoder	*/
+		tmp = intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
+		tmp |= WD_TRANS_ENABLE;
+		intel_de_write(dev_priv, PIPECONF(intel_wd->trans), tmp);
+
+		/* wait for transcoder to be enabled */
+		if (intel_de_wait_for_set(dev_priv, PIPECONF(intel_wd->trans),
+				WD_TRANS_ACTIVE, 10))
+			drm_err(&dev_priv->drm, "WD transcoder not enabled\n");
+	}
+
+	return 0;
+}
+
+static void intel_wd_disable_capture(struct intel_wd *intel_wd)
+{
+	struct drm_i915_private *dev_priv = to_i915(intel_wd->base.base.dev);
+	u32 tmp;
+
+	intel_de_write_fw(dev_priv, WD_IMR(intel_wd->trans), 0xFF);
+	tmp = intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
+	tmp &= WD_TRANS_DISABLE;
+	intel_de_write(dev_priv, PIPECONF(intel_wd->trans), tmp);
+
+	drm_dbg_kms(&dev_priv->drm, "WD Trans_Conf value after disable = 0x%08x\n",
+		intel_de_read(dev_priv, PIPECONF(intel_wd->trans)));
+	tmp = intel_de_read(dev_priv, WD_TRANS_FUNC_CTL(intel_wd->trans));
+	tmp |= ~TRANS_WD_FUNC_ENABLE;
+}
+
+int intel_wd_capture(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,
+		struct drm_connector_state *conn_state,
+		struct drm_writeback_job *job)
+{
+	u32 tmp;
+	struct drm_i915_private *dev_priv = to_i915(intel_wd->base.base.dev);
+	int ret = 0, status = 0;
+	struct intel_crtc *wd_crtc = intel_wd->wd_crtc;
+	unsigned long flags;
+
+	drm_dbg_kms(&dev_priv->drm, "\n");
+
+	if (!job->out_fence)
+		drm_dbg_kms(&dev_priv->drm, "Not able to get out_fence for job\n");
+
+	ret = intel_wd_setup_transcoder(intel_wd, pipe_config,
+		conn_state, job);
+
+	if (ret < 0) {
+		drm_dbg_kms(&dev_priv->drm,
+		"wd transcoder setup not completed aborting capture\n");
+		return -1;
+	}
+
+	if (wd_crtc == NULL) {
+		DRM_ERROR("CRTC not attached\n");
+		return -1;
+	}
+
+	tmp = intel_de_read_fw(dev_priv,
+			WD_TRANS_FUNC_CTL(intel_wd->trans));
+	tmp |= START_TRIGGER_FRAME;
+	tmp &= ~WD_FRAME_NUMBER_MASK;
+	tmp |= intel_wd->frame_num;
+	intel_de_write_fw(dev_priv,
+			WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);
+
+	if (!intel_de_wait_for_set(dev_priv, WD_IIR(intel_wd->trans),
+				WD_FRAME_COMPLETE_INT, 100)){
+		drm_dbg_kms(&dev_priv->drm, "frame captured\n");
+		tmp = intel_de_read(dev_priv, WD_IIR(intel_wd->trans));
+		drm_dbg_kms(&dev_priv->drm, "iir value : %d\n", tmp);
+		status = 0;
+	} else {
+		drm_dbg_kms(&dev_priv->drm, "frame not captured triggering stop frame\n");
+		tmp = intel_de_read(dev_priv,
+				WD_TRANS_FUNC_CTL(intel_wd->trans));
+		tmp |= STOP_TRIGGER_FRAME;
+		intel_de_write(dev_priv,
+				WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);
+		status = -1;
+	}
+
+	intel_de_write(dev_priv, WD_IIR(intel_wd->trans), tmp);
+	intel_wd_writeback_complete(intel_wd, job, status);
+	if (intel_get_writeback_job_from_queue(intel_wd) == NULL)
+		intel_wd_disable_capture(intel_wd);
+	if (wd_crtc->wd.e) {
+		spin_lock_irqsave(&dev_priv->drm.event_lock, flags);
+		drm_dbg_kms(&dev_priv->drm, "send %p\n", wd_crtc->wd.e);
+		drm_crtc_send_vblank_event(&wd_crtc->base,
+					wd_crtc->wd.e);
+		spin_unlock_irqrestore(&dev_priv->drm.event_lock, flags);
+		wd_crtc->wd.e = NULL;
+	} else {
+		DRM_ERROR("Event NULL! %p, %p\n", &dev_priv->drm,
+			wd_crtc);
+	}
+	return 0;
+
+}
+
+void intel_wd_enable_capture(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config,
+		struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_wd *intel_wd = enc_to_intel_wd(encoder);
+	struct drm_writeback_job *job;
+
+	drm_dbg_kms(&dev_priv->drm, "\n");
+
+	job = intel_get_writeback_job_from_queue(intel_wd);
+	if (job == NULL) {
+		drm_dbg_kms(&dev_priv->drm,
+			"job queue is empty not capturing any frame\n");
+		return;
+	}
+
+	intel_wd_capture(intel_wd, pipe_config,
+			conn_state, job);
+	intel_wd->frame_num += 1;
+
+}
+
+void intel_wd_set_vblank_event(struct intel_crtc *intel_crtc,
+			struct intel_crtc_state *intel_crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	struct drm_crtc_state *state = &intel_crtc_state->uapi;
+	struct intel_encoder *encoder;
+	struct intel_wd *intel_wd;
+
+	for_each_intel_encoder_with_wd(&dev_priv->drm, encoder) {
+		intel_wd = enc_to_intel_wd(encoder);
+
+		if (!intel_wd->wd_crtc) {
+			drm_dbg_kms(&dev_priv->drm, "wd crtc not found\n");
+			return;
+		}
+	}
+
+	if (intel_crtc == intel_wd->wd_crtc) {
+		intel_crtc->wd.e = state->event;
+		state->event = NULL;
+		if (intel_crtc->wd.e)
+			drm_dbg_kms(&dev_priv->drm, "WD event:%p\n",
+				intel_crtc->wd.e);
+		else
+			drm_dbg_kms(&dev_priv->drm, "WD no event\n");
+	}
+}
+
+void intel_wd_handle_isr(struct drm_i915_private *dev_priv)
+{
+	u32 iir_value = 0;
+	struct intel_encoder *encoder;
+	struct intel_wd *intel_wd;
+
+	iir_value = intel_de_read(dev_priv, WD_IIR(TRANSCODER_WD_0));
+	drm_dbg_kms(&dev_priv->drm, "\n");
+
+	for_each_intel_encoder_with_wd(&dev_priv->drm, encoder) {
+		intel_wd = enc_to_intel_wd(encoder);
+
+		if (!intel_wd->wd_crtc) {
+			DRM_ERROR("NO CRTC attached with WD\n");
+			goto clear_iir;
+		}
+	}
+
+	if (iir_value & WD_VBLANK_INT)
+		drm_dbg_kms(&dev_priv->drm, "vblank interrupt for wd transcoder\n");
+	if (iir_value & WD_WRITE_COMPLETE_INT)
+		drm_dbg_kms(&dev_priv->drm,
+		"wd write complete interrupt encountered\n");
+	else
+		DRM_INFO("iir: %x\n", iir_value);
+	if (iir_value & WD_FRAME_COMPLETE_INT) {
+		drm_dbg_kms(&dev_priv->drm,
+			"frame complete interrupt for wd transcoder\n");
+		return;
+	}
+clear_iir:
+	intel_de_write(dev_priv, WD_IIR(TRANSCODER_WD_0), iir_value);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_wd.h b/drivers/gpu/drm/i915/display/intel_wd.h
new file mode 100644
index 000000000000..d3370c392f1d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_wd.h
@@ -0,0 +1,70 @@
+/* SPDX-License-Identifier: GPL-2.0
+ * Copyright © 2021 Intel Corporation
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the next
+ * paragraph) shall be included in all copies or substantial portions of the
+ * Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
+ * DEALINGS IN THE SOFTWARE.
+ *
+ * Author :
+ *	Suraj Kandpal<suraj.kandpal@intel.com>
+ *	Arun Murthy<arun.r.murthy@intel.com>
+ */
+
+#ifndef _INTEL_WD_H
+#define _INTEL_WD_H
+
+#include <drm/drm_crtc.h>
+
+#include "intel_display_types.h"
+
+#define I915_MAX_WD_TANSCODERS 2
+
+struct intel_wd {
+	struct intel_encoder base;
+	struct intel_crtc *wd_crtc;
+	intel_wakeref_t io_wakeref[I915_MAX_WD_TANSCODERS];
+	struct intel_connector *attached_connector;
+	enum transcoder trans;
+	struct i915_vma *vma;
+	unsigned long flags;
+	struct drm_writeback_job *job;
+	int triggered_cap_mode;
+	int frame_num;
+	bool stream_cap;
+	bool start_capture;
+	int slicing_strategy;
+};
+
+struct intel_wd_clk_vals {
+	u32 cdclk;
+	u16 link_m;
+	u16 link_n;
+};
+
+static inline struct intel_wd *enc_to_intel_wd(struct intel_encoder *encoder)
+{
+	return container_of(&encoder->base, struct intel_wd, base.base);
+}
+void intel_wd_init(struct drm_i915_private *dev_priv, enum transcoder trans);
+void intel_wd_enable_capture(struct intel_encoder *encoder,
+				struct intel_crtc_state *pipe_config,
+				struct drm_connector_state *conn_state);
+void intel_wd_handle_isr(struct drm_i915_private *dev_priv);
+void intel_wd_set_vblank_event(struct intel_crtc *crtc,
+				struct intel_crtc_state *state);
+#endif/* _INTEL_WD_H */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1c2f4ae4ebf9..a90226b0dcd8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -40,6 +40,8 @@
 #include <linux/pm_qos.h>
 
 #include <drm/drm_connector.h>
+#include <drm/drm_writeback.h>
+#include <drm/i915_mei_hdcp_interface.h>
 #include <drm/ttm/ttm_device.h>
 
 #include "display/intel_bios.h"
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 73cebc6aa650..95a6a8f7a911 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -42,6 +42,7 @@
 #include "display/intel_hotplug.h"
 #include "display/intel_lpe_audio.h"
 #include "display/intel_psr.h"
+#include "display/intel_wd.h"
 
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_gt.h"
@@ -2342,6 +2343,11 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 		found = true;
 	}
 
+	if (iir & GEN8_DE_MISC_WD0) {
+		intel_wd_handle_isr(dev_priv);
+		found = true;
+	}
+
 	if (iir & GEN8_DE_EDP_PSR) {
 		struct intel_encoder *encoder;
 		u32 psr_iir;
@@ -3767,7 +3773,7 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	u32 de_pipe_enables;
 	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
 	u32 de_port_enables;
-	u32 de_misc_masked = GEN8_DE_EDP_PSR;
+	u32 de_misc_masked = GEN8_DE_EDP_PSR | GEN8_DE_MISC_WD0;
 	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
 	enum pipe pipe;
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index f449c454b6f8..36bbdc08fb7c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -853,7 +853,8 @@ static const struct intel_device_info jsl_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
-		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1)| \
+		BIT(TRANSCODER_WD_0), \
 	.pipe_offsets = { \
 		[TRANSCODER_A] = PIPE_A_OFFSET, \
 		[TRANSCODER_B] = PIPE_B_OFFSET, \
@@ -861,6 +862,8 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_D] = PIPE_D_OFFSET, \
 		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
+		[TRANSCODER_WD_0] = PIPE_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = PIPE_WD1_OFFSET, \
 	}, \
 	.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
@@ -869,6 +872,8 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_D] = TRANSCODER_D_OFFSET, \
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
+		[TRANSCODER_WD_0] = TRANSCODER_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = TRANSCODER_WD1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
 	.has_global_mocs = 1, \
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 912384eee068..7b07b61a934b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3790,6 +3790,11 @@
 #define PIPE_DSI0_OFFSET	0x7b000
 #define PIPE_DSI1_OFFSET	0x7b800
 
+/* WD 0 and 1 */
+#define PIPE_WD0_OFFSET		0x7e000
+#define PIPE_WD1_OFFSET		0x7d000
+
+
 #define PIPECONF(pipe)		_MMIO_PIPE2(pipe, _PIPEACONF)
 #define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
 #define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
@@ -4454,6 +4459,10 @@
 #define _PIPEDSI0CONF		0x7b008
 #define _PIPEDSI1CONF		0x7b808
 
+/* WD 0 and 1 */
+#define _PIPEWD0CONF		0x7e008
+#define _PIPEWD1CONF		0x7d008
+
 /* Sprite A control */
 #define _DVSACNTR		0x72180
 #define   DVS_ENABLE			REG_BIT(31)
@@ -5699,6 +5708,7 @@
 #define GEN8_DE_MISC_IER _MMIO(0x4446c)
 #define  GEN8_DE_MISC_GSE		(1 << 27)
 #define  GEN8_DE_EDP_PSR		(1 << 19)
+#define  GEN8_DE_MISC_WD0		(1 << 23)
 
 #define GEN8_PCU_ISR _MMIO(0x444e0)
 #define GEN8_PCU_IMR _MMIO(0x444e4)
@@ -8831,6 +8841,127 @@ enum skl_power_gate {
 #define TGL_ROOT_DEVICE_SKU_ULX		0x2
 #define TGL_ROOT_DEVICE_SKU_ULT		0x4
 
+/* Gen12 WD */
+#define _MMIO_WD(tc, wd0, wd1)		_MMIO_TRANS((tc) - TRANSCODER_WD_0, \
+							wd0, wd1)
+
+#define WD_TRANS_ENABLE			(1 << 31)
+#define WD_TRANS_DISABLE		0
+#define WD_TRANS_ACTIVE			(1 << 30)
+
+/* WD transcoder control */
+#define _WD_TRANS_FUNC_CTL_0		0x6e400
+#define _WD_TRANS_FUNC_CTL_1		0x6ec00
+#define WD_TRANS_FUNC_CTL(tc)		_MMIO_WD(tc,\
+					_WD_TRANS_FUNC_CTL_0,\
+					_WD_TRANS_FUNC_CTL_1)
+
+#define TRANS_WD_FUNC_ENABLE		(1 << 31)
+#define WD_TRIGGERED_CAP_MODE_ENABLE	(1 << 30)
+#define START_TRIGGER_FRAME		(1 << 29)
+#define STOP_TRIGGER_FRAME		(1 << 28)
+#define WD_CTL_POINTER_ETEH		(0 << 18)
+#define WD_CTL_POINTER_ETDH		(1 << 18)
+#define WD_CTL_POINTER_DTDH		(2 << 18)
+#define WD_INPUT_SELECT_MASK		(7 << 12)
+#define WD_INPUT_PIPE_A			(0 << 12)
+#define WD_INPUT_PIPE_B			(5 << 12)
+#define WD_INPUT_PIPE_C			(6 << 12)
+#define WD_INPUT_PIPE_D			(7 << 12)
+
+#define WD_PIX_FMT_MASK			(0x3 << 20)
+#define WD_PIX_FMT_YUYV			(0x1 << 20)
+#define WD_PIX_FMT_XYUV8888		(0x2 << 20)
+#define WD_PIX_FMT_XBGR8888		(0x3 << 20)
+#define WD_PIX_FMT_Y410			(0x4 << 20)
+#define WD_PIX_FMT_YUV422		(0x5 << 20)
+#define WD_PIX_FMT_XBGR2101010		(0x6 << 20)
+#define WD_PIX_FMT_RGB565		(0x7 << 20)
+
+#define WD_FRAME_NUMBER_MASK		15
+
+#define _WD_STRIDE_0			0x6e510
+#define _WD_STRIDE_1			0x6ed10
+#define WD_STRIDE(tc)			_MMIO_WD(tc,\
+					_WD_STRIDE_0,\
+					_WD_STRIDE_1)
+#define WD_STRIDE_SHIFT			6
+#define WD_STRIDE_MASK			(0x3ff << WD_STRIDE_SHIFT)
+
+#define _WD_STREAMCAP_CTL0		0x6e590
+#define _WD_STREAMCAP_CTL1		0x6ed90
+#define WD_STREAMCAP_CTL(tc)		_MMIO_WD(tc,\
+					_WD_STREAMCAP_CTL0,\
+					_WD_STREAMCAP_CTL1)
+
+#define WD_STREAM_CAP_MODE_EN		(1 << 31)
+#define WD_STRAT_MASK			(3 << 24)
+#define WD_SLICING_STRAT_1_1		(0 << 24)
+#define WD_SLICING_STRAT_2_1		(1 << 24)
+#define WD_SLICING_STRAT_4_1		(2 << 24)
+#define WD_SLICING_STRAT_8_1		(3 << 24)
+#define WD_STREAM_OVERRUN_STATUS	1
+
+#define _WD_SURF_0			0x6e514
+#define _WD_SURF_1			0x6ed14
+#define WD_SURF(tc)			_MMIO_WD(tc,\
+					_WD_SURF_0,\
+					_WD_SURF_1)
+
+#define _WD_IMR_0			0x6e560
+#define _WD_IMR_1			0x6ed60
+#define WD_IMR(tc)			_MMIO_WD(tc,\
+					_WD_IMR_0,\
+					_WD_IMR_1)
+#define WD_FRAME_COMPLETE_INT		(1 << 7)
+#define WD_GTT_FAULT_INT		(1 << 6)
+#define WD_VBLANK_INT			(1 << 5)
+#define WD_OVERRUN_INT			(1 << 4)
+#define WD_CAPTURING_INT		(1 << 3)
+#define WD_WRITE_COMPLETE_INT		(1 << 2)
+
+#define _WD_IIR_0			0x6e564
+#define _WD_IIR_1			0x6ed64
+#define WD_IIR(tc)			_MMIO_WD(tc,\
+					_WD_IIR_0,\
+					_WD_IIR_1)
+
+#define _WD_FRAME_STATUS_0		0x6e56b
+#define _WD_FRAME_STATUS_1		0x6ed6b
+#define WD_FRAME_STATUS(tc)		_MMIO_WD(tc,\
+					_WD_FRAME_STATUS_0,\
+					_WD_FRAME_STATUS_1)
+
+#define WD_FRAME_COMPLETE		(1 << 31)
+#define WD_STATE_IDLE			(0 << 24)
+#define WD_STATE_CAPSTART		(1 << 24)
+#define WD_STATE_FRAME_START		(2 << 24)
+#define WD_STATE_CAPACITIVE		(3 << 24)
+#define WD_STATE_TG_DONE		(4 << 24)
+#define WD_STATE_WDX_DONE		(5 << 24)
+#define WD_STATE_QUICK_CAP		(6 << 24)
+
+#define _WD_27_M_0			0x6e524
+#define _WD_27_M_1			0x6ed24
+#define WD_27_M(tc)			_MMIO_WD(tc,\
+					_WD_27_M_0,\
+					_WD_27_M_1)
+
+#define _WD_27_N_0			0x6e528
+
+//Address looks wrong in bspec:
+#define _WD_27_N_1			0x6ec28
+#define WD_27_N(tc)			_MMIO_WD(tc,\
+					_WD_27_N_0,\
+					_WD_27_N_1)
+
+#define _WD_TAIL_CFG_0			0x6e520
+#define _WD_TAIL_CFG_1			0x6ed20
+
+#define WD_TAIL_CFG(tc)			_MMIO_WD(tc,\
+					_WD_TAIL_CFG_0,\
+					_WD_TAIL_CFG_1)
+
 #define CLKREQ_POLICY			_MMIO(0x101038)
 #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)
 
-- 
2.17.1

