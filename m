Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 000F6707D60
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 11:56:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E40010E057;
	Thu, 18 May 2023 09:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D851E10E4ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 09:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684403775; x=1715939775;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4K9uom5S9jAdpZbyzEthK86FgUUMbqlkEKBp03ctFyw=;
 b=fdRlpRsyrp6Jr9WxDFb8Im0ZFaGdg1yDiaFISUlL7BCSQxT56KpnaFaK
 ndfXJdMM3N0hs1E0nvsS3bOQcCjxlC7/N/YYOxtV5jRSbCrJtGWCx/cjc
 UKcKLjePC31waqXTG7Z9LlrMFqGrvmKAyBPKeHkuijolkN54eQ6q1Zdqo
 gQjEWj1O4+sagkYxab2UTqxCOmINMS4MKHV98W9TKzw6Lsqtlk8VpCjo9
 SpB57NcLKCaH0ymWuGU2E3Ets50Orx81tkAHXmmRbTUGyuZhlDlyIVTbk
 e1rOR6r6fqE3OJJfih9SioTsPeNxOPxxqbwP/ttoSfNAgF99+VKbUCF3V w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438366656"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438366656"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 02:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="791897338"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="791897338"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by FMSMGA003.fm.intel.com with ESMTP; 18 May 2023 02:56:12 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 May 2023 15:19:11 +0530
Message-Id: <20230518094916.1142812-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/display: Add support for global
 histogram
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

API are added to enable/disable histogram. Upon generation of histogram
interrupt its notified to the usespace. User can then use this histogram
and generate a LUT which is then fed back to the enahancement block.
Histogram is an image statistics based on the input pixel stream.
LUT is a look up table consisiting of pixel data.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 .../gpu/drm/i915/display/intel_global_hist.c  | 295 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_global_hist.h  | 117 +++++++
 4 files changed, 416 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_global_hist.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_global_hist.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 5ab909ec24e5..eac1e0d7bd30 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -295,6 +295,7 @@ i915-y += \
 	display/intel_dpll.o \
 	display/intel_dpll_mgr.o \
 	display/intel_dpt.o \
+	display/intel_global_hist.o \
 	display/intel_drrs.o \
 	display/intel_dsb.o \
 	display/intel_fb.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ac6951b3e5bd..9848fcf73b87 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1462,6 +1462,9 @@ struct intel_crtc {
 	/* for loading single buffered registers during vblank */
 	struct pm_qos_request vblank_pm_qos;
 
+	/* GLOBAL_HIST data */
+	struct intel_global_hist *global_hist;
+
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 	u32 cpu_fifo_underrun_count;
diff --git a/drivers/gpu/drm/i915/display/intel_global_hist.c b/drivers/gpu/drm/i915/display/intel_global_hist.c
new file mode 100644
index 000000000000..ea5bcd195017
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_global_hist.c
@@ -0,0 +1,295 @@
+// SPDX-License-Identifier: MIT
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
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
+ * DEALINGS IN THE SOFTWARE.
+ *
+ */
+
+#include <drm/drm_device.h>
+#include <drm/drm_file.h>
+#include "i915_reg.h"
+#include "i915_drv.h"
+#include "intel_display_types.h"
+#include "intel_de.h"
+#include "intel_global_hist.h"
+
+static int intel_global_hist_get_data(struct drm_i915_private *i915,
+		enum pipe pipe)
+{
+	struct intel_crtc *intel_crtc = to_intel_crtc(
+			drm_crtc_from_index(&i915->drm, pipe));
+	struct intel_global_hist *global_hist = intel_crtc->global_hist;
+	u32 dpstbin;
+	int ret = 0, i = 0;
+
+	/*
+	 * TODO: PSR to be exited while reading the Histogram data
+	 * Set DPST_CTL Bin Reg function select to TC
+	 * Set DPST_CTL Bin Register Index to 0
+	 */
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
+
+	for (i = 0; i < GLOBAL_HIST_BIN_COUNT; i++) {
+		dpstbin = intel_de_read(i915, DPST_BIN(pipe));
+		if (dpstbin & DPST_BIN_BUSY) {
+			/*
+			 * If DPST_BIN busy bit is set, then set the
+			 * DPST_CTL bin reg index to 0 and proceed
+			 * from begining
+			 */
+			intel_de_rmw(i915, DPST_CTL(pipe),
+				     DPST_CTL_BIN_REG_MASK, 0);
+			i = 0;
+		}
+		global_hist->bindata[i] = dpstbin & DPST_BIN_DATA_MASK;
+		drm_dbg_atomic(&i915->drm, "Hist[%d]=%x\n",
+				i, global_hist->bindata[i]);
+	}
+
+	/* Clear histogram interrupt by setting histogram interrupt status bit*/
+	intel_de_rmw(i915, DPST_GUARD(pipe),
+			DPST_GUARD_HIST_EVENT_STATUS, 1);
+
+	return ret;
+}
+
+int intel_global_hist_compute_config(struct intel_crtc *intel_crtc)
+{
+	struct intel_global_hist *global_hist = intel_crtc->global_hist;
+	struct drm_i915_private *i915 = global_hist->i915;
+
+	if (!global_hist->has_edp) {
+		drm_err(&i915->drm, "Not a eDP panel\n");
+		return -EINVAL;
+	}
+	if (!global_hist->has_pwm) {
+		drm_err(&i915->drm, "eDP doesn't have PWM based backlight, cannot enable GLOBAL_HIST\n");
+		return -EINVAL;
+	}
+	/* Restrictions for enabling GLOBAL_HIST */
+	global_hist->can_enable = true;
+	return 0;
+}
+
+static void intel_global_hist_handle_int_work(struct work_struct *work)
+{
+	struct intel_global_hist *global_hist = container_of(work,
+		struct intel_global_hist, handle_global_hist_int_work.work);
+	struct drm_i915_private *i915 = global_hist->i915;
+	char *global_hist_event[] = {"GLOBAL_HIST=1", NULL};
+
+	/* Notify user for Histogram rediness */
+	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj, KOBJ_CHANGE,
+				global_hist_event))
+		drm_err(&i915->drm, "sending GLOBAL_HIST event failed\n");
+	intel_global_hist_get_data(i915, global_hist->pipe);
+}
+
+void intel_global_hist_irq_handler(struct drm_i915_private *i915, enum pipe pipe)
+{
+	struct intel_crtc *intel_crtc =
+		to_intel_crtc(drm_crtc_from_index(&i915->drm, pipe));
+	struct intel_global_hist *global_hist = intel_crtc->global_hist;
+
+	if (!global_hist->has_pwm) {
+		drm_err(&i915->drm,
+			"eDP doesn't have PWM based backlight, failure in GLOBAL_HIST\n");
+		return;
+	}
+	queue_delayed_work(global_hist->wq,
+			   &global_hist->handle_global_hist_int_work, 0);
+}
+static void intel_global_hist_enable_dithering(struct drm_i915_private *dev_priv,
+		enum pipe pipe)
+{
+	intel_de_rmw(dev_priv, PIPEMISC(pipe), PIPEMISC_DITHER_ENABLE,
+		     PIPEMISC_DITHER_ENABLE);
+}
+
+static int intel_global_hist_enable(struct intel_crtc *intel_crtc)
+{
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+	struct intel_global_hist *global_hist = intel_crtc->global_hist;
+	int pipe = intel_crtc->pipe;
+	uint32_t gbandthreshold;
+
+	if (!global_hist->has_pwm) {
+		drm_err(&i915->drm,
+			"eDP doesn't have PWM based backlight, cannot enable GLOBAL_HIST\n");
+		return -EINVAL;
+	}
+
+	/* Pipe Dithering should be enabled with GLOBAL_HIST */
+	intel_global_hist_enable_dithering(i915, pipe);
+
+	/*
+	 * enable DPST_CTL Histogram mode
+	 * Clear DPST_CTL Bin Reg function select to TC
+	 */
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
+		     DPST_CTL_HIST_MODE | DPST_CTL_IE_TABLE_VALUE_FORMAT,
+		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
+		     DPST_CTL_HIST_MODE_HSV |
+		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
+	/* check if wait for one vblank is required */
+	drm_crtc_wait_one_vblank(&intel_crtc->base);
+
+	/* TODO: one time programming: Program GuardBand Threshold */
+	gbandthreshold = ((intel_crtc->config->hw.adjusted_mode.vtotal *
+				intel_crtc->config->hw.adjusted_mode.htotal) *
+				GLOBAL_HIST_GUARDBAND_THRESHOLD_DEFAULT) /
+				GLOBAL_HIST_GUARDBAND_PRECISION_FACTOR;
+
+	/* Enable histogram interrupt mode */
+	intel_de_rmw(i915, DPST_GUARD(pipe),
+		     DPST_GUARD_THRESHOLD_GB_MASK |
+		     DPST_GUARD_INTERRUPT_DELAY_MASK | DPST_GUARD_HIST_INT_EN,
+		     DPST_GUARD_THRESHOLD_GB(gbandthreshold) |
+		     DPST_GUARD_INTERRUPT_DELAY(GLOBAL_HIST_DEFAULT_GUARDBAND_DELAY) |
+		     DPST_GUARD_HIST_INT_EN);
+
+	/* Clear pending interrupts has to be done on seperate write */
+	intel_de_rmw(i915, DPST_GUARD(pipe),
+			DPST_GUARD_HIST_EVENT_STATUS, 1);
+
+	global_hist->enable = true;
+
+	return 0;
+}
+
+static int intel_global_hist_disable(struct intel_crtc *intel_crtc)
+{
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+	struct intel_global_hist *global_hist = intel_crtc->global_hist;
+	int pipe = intel_crtc->pipe;
+
+	/* Pipe Dithering should be enabled with GLOBAL_HIST */
+	intel_global_hist_enable_dithering(i915, pipe);
+
+	/* Clear pending interrupts and disable interrupts */
+	intel_de_rmw(i915, DPST_GUARD(pipe),
+		     DPST_GUARD_HIST_INT_EN | DPST_GUARD_HIST_EVENT_STATUS, 0);
+
+	/* disable DPST_CTL Histogram mode */
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_IE_HIST_EN, 0);
+
+	cancel_delayed_work(&global_hist->handle_global_hist_int_work);
+	global_hist->enable = false;
+
+	return 0;
+}
+
+int intel_global_hist_update(struct intel_crtc *intel_crtc, bool enable)
+{
+	struct intel_global_hist *global_hist = intel_crtc->global_hist;
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+
+	if (!global_hist->can_enable) {
+		drm_err(&i915->drm,
+			"GLOBAL_HIST not supported, compute config failed\n");
+		return 0;
+	}
+
+	if (enable)
+		return intel_global_hist_enable(intel_crtc);
+	else
+		return intel_global_hist_disable(intel_crtc);
+}
+
+int intel_global_hist_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data)
+{
+	struct intel_global_hist *global_hist = intel_crtc->global_hist;
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+	int pipe = intel_crtc->pipe;
+	int i = 0;
+
+	if (!global_hist->enable) {
+		drm_err(&i915->drm, "GLOBAL_HIST not enabled");
+		return -EINVAL;
+	}
+
+	/*
+	 * Set DPST_CTL Bin Reg function select to IE
+	 * Set DPST_CTL Bin Register Index to 0
+	 */
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK,
+		     DPST_CTL_BIN_REG_FUNC_IE | DPST_CTL_BIN_REG_CLEAR);
+	for (i = 0; i < GLOBAL_HIST_IET_LENGTH; i++) {
+		intel_de_rmw(i915, DPST_BIN(pipe),
+			     DPST_BIN_DATA_MASK, data[i]);
+		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=%x\n", i, data[i]);
+	}
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_ENHANCEMENT_MODE_MASK | DPST_CTL_IE_MODI_TABLE_EN,
+		     DPST_CTL_EN_MULTIPLICATIVE | DPST_CTL_IE_MODI_TABLE_EN);
+	/* Once IE is applied, change DPST CTL to TC */
+	intel_de_rmw(i915, DPST_CTL(pipe),
+		     DPST_CTL_BIN_REG_FUNC_SEL, DPST_CTL_BIN_REG_FUNC_TC);
+
+	return 0;
+}
+
+void intel_global_hist_deinit(struct intel_crtc *intel_crtc)
+{
+	struct intel_global_hist *global_hist = intel_crtc->global_hist;
+
+	cancel_delayed_work(&global_hist->handle_global_hist_int_work);
+	destroy_workqueue(global_hist->wq);
+	kfree(global_hist);
+}
+
+int intel_global_hist_init(struct intel_crtc *intel_crtc)
+{
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+	struct intel_global_hist *global_hist;
+
+	/* Allocate global_hist internal struct */
+	global_hist = kzalloc(sizeof(*global_hist), GFP_KERNEL);
+	if (unlikely(!global_hist)) {
+		drm_err(&i915->drm,
+			"Failed to allocate GLOBAL_HIST event\n");
+		kfree(global_hist);
+		return -ENOMEM;
+	}
+
+	intel_crtc->global_hist = global_hist;
+	global_hist->pipe = intel_crtc->pipe;
+	global_hist->can_enable = false;
+	global_hist->wq = alloc_ordered_workqueue("global_hist_wq",
+						 WQ_MEM_RECLAIM);
+	if (global_hist->wq == NULL) {
+		drm_err(&i915->drm,
+			"failed to create work queue\n");
+		kfree(global_hist);
+		return -ENOMEM;
+	}
+
+	INIT_DEFERRABLE_WORK(&global_hist->handle_global_hist_int_work,
+		intel_global_hist_handle_int_work);
+
+	global_hist->i915 = i915;
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_global_hist.h b/drivers/gpu/drm/i915/display/intel_global_hist.h
new file mode 100644
index 000000000000..c6621bf4ea61
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_global_hist.h
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: MIT
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
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
+ * DEALINGS IN THE SOFTWARE.
+ *
+ */
+
+#ifndef __INTEL_GLOBAL_HIST_H__
+#define __INTEL_GLOBAL_HIST_H__
+
+#include <drm/drm_device.h>
+#include <drm/drm_file.h>
+#include "intel_display.h"
+#include "../i915_reg.h"
+
+/* GLOBAL_HIST related registers */
+#define _DPST_CTL_A					0x490C0
+#define _DPST_CTL_B					0x491C0
+#define DPST_CTL(pipe)					_MMIO_PIPE(pipe, _DPST_CTL_A, _DPST_CTL_B)
+#define DPST_CTL_IE_HIST_EN				REG_BIT(31)
+#define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
+#define DPST_CTL_HIST_MODE				REG_BIT(24)
+#define DPST_CTL_ENHANCEMENT_MODE_MASK			REG_GENMASK(14, 13)
+#define DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
+#define DPST_CTL_BIN_REG_FUNC_SEL			REG_BIT(11)
+#define DPST_CTL_BIN_REG_FUNC_TC			(0 << 0)
+#define DPST_CTL_BIN_REG_FUNC_IE			(1 << 11)
+#define DPST_CTL_BIN_REG_MASK				REG_GENMASK(6, 0)
+#define DPST_CTL_BIN_REG_CLEAR				REG_FIELD_PREP(DPST_CTL_BIN_REG_MASK, 0)
+
+#define _DPST_GUARD_A					0x490C8
+#define _DPST_GUARD_B					0x491C8
+#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe, _DPST_GUARD_A, _DPST_GUARD_B)
+#define DPST_GUARD_HIST_INT_EN				REG_BIT(31)
+#define DPST_GUARD_HIST_EVENT_STATUS			REG_BIT(30)
+#define DPST_GUARD_INTERRUPT_DELAY_MASK			REG_GENMASK(29, 22)
+#define DPST_GUARD_INTERRUPT_DELAY(val)			REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)
+#define DPST_GUARD_THRESHOLD_GB_MASK			REG_GENMASK(21, 0)
+#define DPST_GUARD_THRESHOLD_GB(val)			REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)
+
+#define _DPST_BIN_A					0x490C4
+#define _DPST_BIN_B					0x491C4
+#define DPST_BIN(pipe)					_MMIO_PIPE(pipe, _DPST_BIN_A, _DPST_BIN_B)
+#define DPST_BIN_DATA_MASK				REG_GENMASK(23, 0)
+#define DPST_BIN_BUSY					REG_BIT(31)
+
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC	(1 << 15)
+#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC	(0 << 15)
+#define DPST_CTL_HIST_MODE_YUV				(0 << 24)
+#define DPST_CTL_HIST_MODE_HSV				(1 << 24)
+
+
+#define INTEL_GLOBAL_HISTOGRAM_PIPEA	0x90000000
+#define INTEL_GLOBAL_HISTOGRAM_PIPEB	0x90000002
+#define INTEL_GLOBAL_HISTOGRAM_EVENT(pipe)	_PIPE(pipe, \
+						INTEL_GLOBAL_HISTOGRAM_PIPEA, \
+						INTEL_GLOBAL_HISTOGRAM_PIPEB)
+
+#define GLOBAL_HIST_BIN_COUNT			32
+#define GLOBAL_HIST_IET_LENGTH			33
+
+#define GLOBAL_HIST_GUARDBAND_THRESHOLD_DEFAULT 300    // 3.0% of the pipe's current pixel count.
+#define GLOBAL_HIST_GUARDBAND_PRECISION_FACTOR 10000   // Precision factor for threshold guardband.
+#define GLOBAL_HIST_DEFAULT_GUARDBAND_DELAY 0x04
+
+enum intel_global_hist_status {
+	INTEL_GLOBAL_HIST_ENABLE,
+	INTEL_GLOBAL_HIST_DISABLE,
+};
+
+enum intel_global_histogram {
+	INTEL_GLOBAL_HISTOGRAM,
+};
+
+enum intel_global_hist_lut {
+	INTEL_GLOBAL_HIST_PIXEL_FACTOR,
+};
+
+struct intel_global_hist {
+	struct drm_i915_private *i915;
+	struct workqueue_struct *wq;
+	struct delayed_work handle_global_hist_int_work;
+	bool enable;
+	bool has_pwm;
+	bool has_edp;
+	bool can_enable;
+	enum pipe pipe;
+	u32 bindata[GLOBAL_HIST_BIN_COUNT];
+};
+
+int intel_global_hist_compute_config(struct intel_crtc *intel_crtc);
+void intel_global_hist_irq_handler(struct drm_i915_private *i915, enum pipe pipe);
+int intel_global_hist_update(struct intel_crtc *intel_crtc, bool enable);
+int intel_global_hist_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data);
+int intel_global_hist_init(struct intel_crtc *intel_crtc);
+void intel_global_hist_deinit(struct intel_crtc *intel_crtc);
+
+#endif /* __INTEL_GLOBAL_HIST_H__ */
-- 
2.25.1

