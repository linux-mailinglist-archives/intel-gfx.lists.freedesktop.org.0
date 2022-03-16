Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 660504DADA1
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 10:38:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764B410E3A6;
	Wed, 16 Mar 2022 09:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AD6F10E3A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 09:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647423499; x=1678959499;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dWDWG7RxHPRKJC/chPi3xqDISMu8n/ubqnja/AO0ozI=;
 b=lKZqTKEMqIrBhgo+WTo2afaDGHKMlrqAIceeER1QtBR96Jvj0QOUzaM8
 D0H+LlL9BL72pU4Kfab3H9LnZ3++vv25cPFV6Sw1B4acZGIZiJTCmNIIt
 ZafcPHDzKMvIkn3hbGb437bbHifuqM3dsm0ylkKr0ewcFU2/fUhjuA+IF
 u1dQcF9iiHtoPP5TVnRUOX2yC2w028VG1ODmW0t9M10dospK/2OKStw5o
 NvaHk3MsOspy20RKg00OoI54TWilyAn6WagTvF0IpGp8bYSoRc+FxkSMQ
 4dTgoHRxJfpwV7qrz4q0/0wl6l6XURhBGho6teIz6xIHTF0QqaQosNBib g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="317257692"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="317257692"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 02:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="783401816"
Received: from kandpal.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 16 Mar 2022 02:38:17 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Mar 2022 15:07:38 +0530
Message-Id: <20220316093740.652925-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220316093740.652925-1-suraj.kandpal@intel.com>
References: <20220316093740.652925-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 1/3] drm/i915: Creating writeback pipeline
 to bypass drm_writeback framework
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

Changes to create a i915 private pipeline to enable the WD transcoder
without relying on the current drm_writeback framework.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_wb_connector.c | 296 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_wb_connector.h |  99 ++++++
 drivers/gpu/drm/i915/i915_drv.h               |   3 +
 4 files changed, 399 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1a771ee5b1d0..087bd9d1b397 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -286,6 +286,7 @@ i915-y += \
 	display/intel_tv.o \
 	display/intel_vdsc.o \
 	display/intel_vrr.o \
+	display/intel_wb_connector.o\
 	display/vlv_dsi.o \
 	display/vlv_dsi_pll.o
 
diff --git a/drivers/gpu/drm/i915/display/intel_wb_connector.c b/drivers/gpu/drm/i915/display/intel_wb_connector.c
new file mode 100644
index 000000000000..526b3e7530e0
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_wb_connector.c
@@ -0,0 +1,296 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright © 2022 Intel Corporation
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
+
+#include <linux/dma-fence.h>
+
+#include <drm/drm_crtc.h>
+#include <drm/drm_device.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_modeset_helper_vtables.h>
+#include <drm/drm_property.h>
+
+#include "i915_drv.h"
+#include "intel_wb_connector.h"
+#include "intel_display_types.h"
+
+#define fence_to_wb_connector(x) container_of(x->lock, \
+					      struct intel_writeback_connector, \
+					      fence_lock)
+
+static const char *intel_writeback_fence_get_driver_name(struct dma_fence *fence)
+{
+	struct intel_writeback_connector *wb_connector =
+		fence_to_wb_connector(fence);
+
+	return wb_connector->base->dev->driver->name;
+}
+
+static const char *
+intel_writeback_fence_get_timeline_name(struct dma_fence *fence)
+{
+	struct intel_writeback_connector *wb_connector =
+		fence_to_wb_connector(fence);
+
+	return wb_connector->timeline_name;
+}
+
+static bool intel_writeback_fence_enable_signaling(struct dma_fence *fence)
+{
+	return true;
+}
+
+static const struct dma_fence_ops intel_writeback_fence_ops = {
+	.get_driver_name = intel_writeback_fence_get_driver_name,
+	.get_timeline_name = intel_writeback_fence_get_timeline_name,
+	.enable_signaling = intel_writeback_fence_enable_signaling,
+};
+
+static int intel_create_writeback_properties(struct drm_device *dev)
+{
+	struct drm_property *prop;
+	struct drm_i915_private *i915 = to_i915(dev);
+
+	if (!i915->wb_fb_id_property) {
+		prop = drm_property_create_object(dev, DRM_MODE_PROP_ATOMIC,
+						"WRITEBACK_FB_ID",
+						DRM_MODE_OBJECT_FB);
+		if (!prop)
+			return -ENOMEM;
+		i915->wb_fb_id_property = prop;
+	}
+
+	if (!i915->wb_pixel_formats_property) {
+		prop = drm_property_create(dev, DRM_MODE_PROP_BLOB |
+					DRM_MODE_PROP_ATOMIC |
+					DRM_MODE_PROP_IMMUTABLE,
+					"WRITEBACK_PIXEL_FORMATS", 0);
+		if (!prop)
+			return -ENOMEM;
+		i915->wb_pixel_formats_property = prop;
+	}
+
+	if (!i915->wb_out_fence_ptr_property) {
+		prop = drm_property_create_range(dev, DRM_MODE_PROP_ATOMIC,
+						"WRITEBACK_OUT_FENCE_PTR", 0,
+						U64_MAX);
+		if (!prop)
+			return -ENOMEM;
+		i915->wb_out_fence_ptr_property = prop;
+	}
+
+	return 0;
+}
+
+static const struct drm_encoder_funcs intel_writeback_encoder_funcs = {
+	.destroy = drm_encoder_cleanup,
+};
+
+int intel_writeback_connector_init(struct drm_device *dev,
+				 struct intel_writeback_connector *wb_connector,
+				 const struct drm_connector_funcs *con_funcs,
+				 const struct drm_encoder_helper_funcs *enc_helper_funcs,
+				 const u32 *formats, int n_formats)
+{
+	struct drm_property_blob *blob;
+	struct drm_i915_private *i915 = to_i915(dev);
+	struct drm_connector *connector = wb_connector->base;
+	int ret;
+
+	drm_dbg_kms(&i915->drm, "\n");
+	ret = intel_create_writeback_properties(dev);
+
+	if (ret != 0)
+		return ret;
+
+	blob = drm_property_create_blob(dev, n_formats * sizeof(*formats),
+					formats);
+	if (IS_ERR(blob))
+		return PTR_ERR(blob);
+
+	drm_encoder_helper_add(wb_connector->encoder, enc_helper_funcs);
+	ret = drm_encoder_init(dev, wb_connector->encoder,
+			&intel_writeback_encoder_funcs,
+			DRM_MODE_ENCODER_VIRTUAL, NULL);
+	if (ret)
+		goto fail;
+
+	connector->interlace_allowed = 0;
+
+	ret = drm_connector_init(dev, connector, con_funcs,
+				DRM_MODE_CONNECTOR_WRITEBACK);
+	if (ret)
+		goto connector_fail;
+
+	ret = drm_connector_attach_encoder(connector,
+					wb_connector->encoder);
+	if (ret)
+		goto attach_fail;
+
+	INIT_LIST_HEAD(&wb_connector->job_queue);
+	spin_lock_init(&wb_connector->job_lock);
+
+	wb_connector->fence_context = dma_fence_context_alloc(1);
+	spin_lock_init(&wb_connector->fence_lock);
+	snprintf(wb_connector->timeline_name,
+		sizeof(wb_connector->timeline_name),
+		"CONNECTOR:%d-%s", connector->base.id, connector->name);
+
+	drm_object_attach_property(&connector->base,
+				i915->wb_out_fence_ptr_property, 0);
+
+	drm_object_attach_property(&connector->base,
+				i915->wb_fb_id_property, 0);
+
+	drm_object_attach_property(&connector->base,
+				i915->wb_pixel_formats_property,
+				blob->base.id);
+	wb_connector->pixel_formats_blob_ptr = blob;
+
+	return 0;
+
+attach_fail:
+	drm_connector_cleanup(connector);
+connector_fail:
+	drm_encoder_cleanup(wb_connector->encoder);
+fail:
+	drm_property_blob_put(blob);
+	return ret;
+}
+
+void intel_writeback_queue_job(struct intel_writeback_connector *wb_connector,
+		struct drm_connector_state *conn_state)
+{
+	struct intel_writeback_job *wb_job;
+	struct intel_digital_connector_state *intel_conn_state =
+		to_intel_digital_connector_state(conn_state);
+	unsigned long flags;
+
+	wb_job = intel_conn_state->job;
+	intel_conn_state->job = NULL;
+
+	spin_lock_irqsave(&wb_connector->job_lock, flags);
+	list_add_tail(&wb_job->list_entry, &wb_connector->job_queue);
+	spin_unlock_irqrestore(&wb_connector->job_lock, flags);
+}
+
+int intel_writeback_set_fb(struct drm_connector_state *conn_state,
+			 struct drm_framebuffer *fb)
+{
+	struct intel_connector *intel_connector = to_intel_connector(conn_state->connector);
+	struct intel_writeback_connector *wb_connector = &intel_connector->wb_conn;
+	struct intel_digital_connector_state *intel_conn_state =
+		to_intel_digital_connector_state(conn_state);
+	WARN_ON(conn_state->connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK);
+
+	if (!intel_conn_state->job) {
+		intel_conn_state->job =
+			kzalloc(sizeof(*intel_conn_state->job), GFP_KERNEL);
+		if (!intel_conn_state->job)
+			return -ENOMEM;
+
+		intel_conn_state->job->connector = wb_connector;
+	}
+
+	drm_framebuffer_assign(&intel_conn_state->job->fb, fb);
+	return 0;
+}
+
+void intel_writeback_cleanup_job(struct intel_writeback_job *job)
+{
+	if (job->fb)
+		drm_framebuffer_put(job->fb);
+
+	if (job->out_fence)
+		dma_fence_put(job->out_fence);
+
+	kfree(job);
+}
+
+void cleanup_work(struct work_struct *work)
+{
+	struct intel_writeback_job *job = container_of(work,
+						struct intel_writeback_job,
+						cleanup_work);
+
+	intel_writeback_cleanup_job(job);
+}
+
+void
+intel_writeback_signal_completion(struct intel_writeback_connector *wb_connector,
+				int status)
+{
+	unsigned long flags;
+	struct intel_writeback_job *job;
+	struct dma_fence *out_fence;
+
+	spin_lock_irqsave(&wb_connector->job_lock, flags);
+	job = list_first_entry_or_null(&wb_connector->job_queue,
+					struct intel_writeback_job,
+					list_entry);
+	if (job)
+		list_del(&job->list_entry);
+
+	spin_unlock_irqrestore(&wb_connector->job_lock, flags);
+
+	if (WARN_ON(!job))
+		return;
+
+	out_fence = job->out_fence;
+	if (out_fence) {
+		if (status)
+			dma_fence_set_error(out_fence, status);
+		dma_fence_signal(out_fence);
+		dma_fence_put(out_fence);
+		job->out_fence = NULL;
+	}
+
+	INIT_WORK(&job->cleanup_work, cleanup_work);
+	queue_work(system_long_wq, &job->cleanup_work);
+}
+
+struct dma_fence *
+intel_writeback_get_out_fence(struct intel_writeback_connector *wb_connector)
+{
+	struct dma_fence *fence;
+
+	if (WARN_ON(wb_connector->base->connector_type !=
+		DRM_MODE_CONNECTOR_WRITEBACK))
+		return NULL;
+
+	fence = kzalloc(sizeof(*fence), GFP_KERNEL);
+	if (!fence)
+		return NULL;
+
+	dma_fence_init(fence, &intel_writeback_fence_ops,
+		&wb_connector->fence_lock, wb_connector->fence_context,
+		++wb_connector->fence_seqno);
+
+	return fence;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_wb_connector.h b/drivers/gpu/drm/i915/display/intel_wb_connector.h
new file mode 100644
index 000000000000..71142457b7c1
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_wb_connector.h
@@ -0,0 +1,99 @@
+/* SPDX-License-Identifier: GPL-2.0
+ * Copyright © 2022 Intel Corporation
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
+#ifndef __INTEL_WB_CONNECTOR_H__
+#define __INTEL_WB_CONNECTOR_H__
+
+#include <drm/drm_connector.h>
+#include <drm/drm_encoder.h>
+#include <linux/workqueue.h>
+#include "intel_display.h"
+
+/**
+ * struct intel_writeback_connector - Intel writeback connector
+ * to get a idea of each individual variable please look at
+ * documentation in drm_writeback.h we emulate the same structure
+ * ditto for intel_writeback_job structure.
+ */
+struct intel_writeback_connector {
+	struct drm_connector *base;
+	struct drm_encoder *encoder;
+	struct drm_property_blob *pixel_formats_blob_ptr;
+	spinlock_t job_lock;
+	struct list_head job_queue;
+	unsigned int fence_context;
+	spinlock_t fence_lock;
+	unsigned long fence_seqno;
+	char timeline_name[32];
+};
+
+/**
+ * struct intel_writeback_job - DRM writeback job
+ */
+struct intel_writeback_job {
+	struct intel_writeback_connector *connector;
+	bool *prepared;
+	struct work_struct cleanup_work;
+	struct list_head list_entry;
+	struct drm_framebuffer *fb;
+	struct dma_fence *out_fence;
+	void *priv;
+};
+
+int intel_writeback_connector_init(struct drm_device *dev,
+			struct intel_writeback_connector *wb_connector,
+			const struct drm_connector_funcs *con_funcs,
+			const struct drm_encoder_helper_funcs *enc_helper_funcs,
+			const u32 *formats, int n_formats);
+
+int intel_writeback_set_fb(struct drm_connector_state *conn_state,
+			struct drm_framebuffer *fb);
+
+int intel_writeback_prepare_job(struct intel_writeback_job *job);
+
+void intel_writeback_queue_job(struct intel_writeback_connector *wb_connector,
+			struct drm_connector_state *conn_state);
+
+void intel_writeback_cleanup_job(struct intel_writeback_job *job);
+
+void
+intel_writeback_signal_completion(struct intel_writeback_connector *wb_connector,
+			int status);
+
+struct dma_fence *
+intel_writeback_get_out_fence(struct intel_writeback_connector *wb_connector);
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
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 26df561a4e94..9a86ee88089e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -678,6 +678,9 @@ struct drm_i915_private {
 
 	struct drm_property *broadcast_rgb_property;
 	struct drm_property *force_audio_property;
+	struct drm_property *wb_fb_id_property;
+	struct drm_property *wb_out_fence_ptr_property;
+	struct drm_property *wb_pixel_formats_property;
 
 	u32 fdi_rx_config;
 
-- 
2.35.1

