Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BD8902877
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 20:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6422A10E255;
	Mon, 10 Jun 2024 18:14:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iJr5fqqX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B62410E255
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 18:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718043261; x=1749579261;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zdnGZCshHrcGDL9VK6atMl1xrfyoojAnDICJqzHaJVM=;
 b=iJr5fqqXjz5Px9D6yX4zVoPJEIlHAVHA1q8rOkk708JmElRxQei8HdKV
 OIGbyU2xN00K96YLIbq/19rYmFCobW28xy7rUaG5t4RajIG8+VBsC8iX9
 qjQ7OcgzJyvBSRtEDnJ51lTXIigJ5dIYivoZakz2LhfEgXBHXukEP2hMI
 xQfOj7z8Khxq0qXkLIhiOjGZ6Iq71Q/SB+rlFQuWHcUDTusccab8kb8rU
 m+aIX//H8Qa0becs9w4hc8xkCENUP+zVq3rEv52usB2YyUn+lVlXGffU9
 1V6vN9UdIyVryvAJIn4R8xhnGOeDCoftvdbQIdDrinXBFd825JVcAu67H A==;
X-CSE-ConnectionGUID: Stu1o4tSTnWKAOVi/JZ2/A==
X-CSE-MsgGUID: 8OtVAfHGSUW4uIC3TNRhIg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="25831118"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="25831118"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 11:14:21 -0700
X-CSE-ConnectionGUID: YgIk+fhaQ72q7Tl04rdT8A==
X-CSE-MsgGUID: AqTZhKNoSCO3mZoQoNpsow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39812773"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 11:14:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v4 07/21] drm/i915/dp: Recheck link state after modeset
Date: Mon, 10 Jun 2024 21:14:28 +0300
Message-ID: <20240610181428.2955658-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-8-imre.deak@intel.com>
References: <20240610164933.2947366-8-imre.deak@intel.com>
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

Recheck the link state after a passing link training, with a 2 sec delay
to account for cases where the link goes bad following the link training
and the sink doesn't report this via an HPD IRQ.

The delayed work added here will be also used by a later patch after a
failed link training to try to retrain the link with unchanged link
params before reducing the link params.

v2: Don't flush an uninitialized delayed work (on HDMI-only DDI ports).
v3:
- Move the helpers to a new intel_encoder.c file, rename them
  accordingly. (Ville)
- Add the work to intel_encoder instead of intel_digital_port.
- Call the encoder specific link check function via an encoder hook.
- Flush the link check work during encoder destroy from
  intel_dp_encoder_flush_work().
- Flush the link check work during encoder suspend as well.
v4: Call intel_encoder_link_check_init() with a valid encoder pointer.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         | 13 +++++++
 drivers/gpu/drm/i915/display/intel_ddi.c      | 19 +++++++++
 .../drm/i915/display/intel_display_types.h    |  5 +++
 drivers/gpu/drm/i915/display/intel_dp.c       | 21 +++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
 .../drm/i915/display/intel_dp_link_training.c | 13 +++++--
 drivers/gpu/drm/i915/display/intel_encoder.c  | 39 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_encoder.h  | 16 ++++++++
 drivers/gpu/drm/xe/Makefile                   |  1 +
 10 files changed, 124 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_encoder.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_encoder.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 4022e44993824..c63fa2133ccb5 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -329,6 +329,7 @@ i915-y += \
 	display/intel_dsi_dcs_backlight.o \
 	display/intel_dsi_vbt.o \
 	display/intel_dvo.o \
+	display/intel_encoder.o \
 	display/intel_gmbus.o \
 	display/intel_hdmi.o \
 	display/intel_lspcon.o \
diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 40fee8380a81b..4d279cadf7e2b 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -20,6 +20,7 @@
 #include "intel_dp_aux.h"
 #include "intel_dp_link_training.h"
 #include "intel_dpio_phy.h"
+#include "intel_encoder.h"
 #include "intel_fifo_underrun.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
@@ -1239,6 +1240,15 @@ static bool ilk_digital_port_connected(struct intel_encoder *encoder)
 	return intel_de_read(dev_priv, DEISR) & bit;
 }
 
+static void g4x_dp_suspend_complete(struct intel_encoder *encoder)
+{
+	/*
+	 * TODO: Move this to intel_dp_encoder_suspend(),
+	 * once modeset locking around that is removed.
+	 */
+	intel_encoder_link_check_flush_work(encoder);
+}
+
 static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
 {
 	intel_dp_encoder_flush_work(encoder);
@@ -1325,6 +1335,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 			     "DP %c", port_name(port)))
 		goto err_encoder_init;
 
+	intel_encoder_link_check_init(intel_encoder, intel_dp_link_check);
+
 	intel_encoder->hotplug = intel_dp_hotplug;
 	intel_encoder->compute_config = intel_dp_compute_config;
 	intel_encoder->get_hw_state = intel_dp_get_hw_state;
@@ -1333,6 +1345,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	intel_encoder->initial_fastset_check = intel_dp_initial_fastset_check;
 	intel_encoder->update_pipe = intel_backlight_update;
 	intel_encoder->suspend = intel_dp_encoder_suspend;
+	intel_encoder->suspend_complete = g4x_dp_suspend_complete;
 	intel_encoder->shutdown = intel_dp_encoder_shutdown;
 	if (IS_CHERRYVIEW(dev_priv)) {
 		intel_encoder->pre_pll_enable = chv_dp_pre_pll_enable;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index db601c230ac7b..0b54d4afa81f8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -57,6 +57,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dpio_phy.h"
 #include "intel_dsi.h"
+#include "intel_encoder.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
@@ -4526,6 +4527,17 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	return intel_modeset_commit_pipes(dev_priv, BIT(crtc->pipe), ctx);
 }
 
+static void intel_ddi_link_check(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	/* TODO: Move checking the HDMI link state here as well. */
+	drm_WARN_ON(&i915->drm, !dig_port->dp.attached_connector);
+
+	intel_dp_link_check(encoder);
+}
+
 static enum intel_hotplug_state
 intel_ddi_hotplug(struct intel_encoder *encoder,
 		  struct intel_connector *connector)
@@ -4769,6 +4781,11 @@ static void intel_ddi_tc_encoder_suspend_complete(struct intel_encoder *encoder)
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
+	/*
+	 * TODO: Move this to intel_dp_encoder_suspend(),
+	 * once modeset locking around that is removed.
+	 */
+	intel_encoder_link_check_flush_work(encoder);
 	intel_tc_port_suspend(dig_port);
 }
 
@@ -4959,6 +4976,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 				 "DDI %c/PHY %c", port_name(port),  phy_name(phy));
 	}
 
+	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
+
 	mutex_init(&dig_port->hdcp_mutex);
 	dig_port->num_hdcp_streams = 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a725c2c9bdfc5..00ba671c9d86d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -161,6 +161,11 @@ struct intel_encoder {
 	enum port port;
 	u16 cloneable;
 	u8 pipe_mask;
+
+	/* Check and recover a bad link state. */
+	struct delayed_work link_check_work;
+	void (*link_check)(struct intel_encoder *encoder);
+
 	enum intel_hotplug_state (*hotplug)(struct intel_encoder *encoder,
 					    struct intel_connector *connector);
 	enum intel_output_type (*compute_output_type)(struct intel_encoder *,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a38e1f89cfb86..9f5624c4f3586 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -69,6 +69,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_drrs.h"
+#include "intel_encoder.h"
 #include "intel_fifo_underrun.h"
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
@@ -76,6 +77,7 @@
 #include "intel_hotplug_irq.h"
 #include "intel_lspcon.h"
 #include "intel_lvds.h"
+#include "intel_modeset_lock.h"
 #include "intel_panel.h"
 #include "intel_pch_display.h"
 #include "intel_pps.h"
@@ -5233,6 +5235,18 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	return 0;
 }
 
+void intel_dp_link_check(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct drm_modeset_acquire_ctx ctx;
+	int ret;
+
+	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
+		ret = intel_dp_retrain_link(encoder, &ctx);
+
+	drm_WARN_ON(&i915->drm, ret);
+}
+
 static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
 				  struct drm_modeset_acquire_ctx *ctx,
 				  u8 *pipe_mask)
@@ -5999,11 +6013,14 @@ void intel_dp_connector_sync_state(struct intel_connector *connector,
 	}
 }
 
-void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
+void intel_dp_encoder_flush_work(struct drm_encoder *_encoder)
 {
-	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_dp *intel_dp = &dig_port->dp;
 
+	intel_encoder_link_check_flush_work(encoder);
+
 	intel_dp_mst_encoder_cleanup(dig_port);
 
 	intel_dp_tunnel_destroy(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index e7b47e7bcd98b..279cca23b95fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -60,6 +60,7 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      u8 *pipe_mask);
 int intel_dp_retrain_link(struct intel_encoder *encoder,
 			  struct drm_modeset_acquire_ctx *ctx);
+void intel_dp_link_check(struct intel_encoder *encoder);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
 void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 190372cf76e5d..1164255cf5f2d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -25,6 +25,7 @@
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
+#include "intel_encoder.h"
 #include "intel_panel.h"
 
 #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
@@ -1464,6 +1465,8 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
 	bool passed;
 
 	/*
@@ -1483,6 +1486,11 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 	else
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
+	if (passed) {
+		intel_encoder_link_check_queue_work(encoder, 2000);
+		return;
+	}
+
 	/*
 	 * Ignore the link failure in CI
 	 *
@@ -1495,13 +1503,12 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 	 * For test cases which rely on the link training or processing of HPDs
 	 * ignore_long_hpd flag can unset from the testcase.
 	 */
-	if (!passed && i915->display.hotplug.ignore_long_hpd) {
+	if (i915->display.hotplug.ignore_long_hpd) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Ignore the link failure\n");
 		return;
 	}
 
-	if (!passed)
-		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
+	intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
 }
 
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
new file mode 100644
index 0000000000000..dee55f56960fc
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_encoder.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include <linux/workqueue.h>
+
+#include "i915_drv.h"
+
+#include "intel_display_types.h"
+#include "intel_encoder.h"
+
+static void intel_encoder_link_check_work_fn(struct work_struct *work)
+{
+	struct intel_encoder *encoder =
+		container_of(work, typeof(*encoder), link_check_work.work);
+
+	encoder->link_check(encoder);
+}
+
+void intel_encoder_link_check_init(struct intel_encoder *encoder,
+				   void (*callback)(struct intel_encoder *encoder))
+{
+	INIT_DELAYED_WORK(&encoder->link_check_work, intel_encoder_link_check_work_fn);
+	encoder->link_check = callback;
+}
+
+void intel_encoder_link_check_flush_work(struct intel_encoder *encoder)
+{
+	cancel_delayed_work_sync(&encoder->link_check_work);
+}
+
+void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int delay_ms)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	mod_delayed_work(i915->unordered_wq,
+			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
new file mode 100644
index 0000000000000..2cda054e2b152
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_encoder.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_ENCODER_H__
+#define __INTEL_ENCODER_H__
+
+struct intel_encoder;
+
+void intel_encoder_link_check_init(struct intel_encoder *encoder,
+				   void (*callback)(struct intel_encoder *encoder));
+void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int delay_ms);
+void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
+
+#endif /* __INTEL_ENCODER_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 478acc94a71cc..cd076d0c52a5d 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -242,6 +242,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_dsi.o \
 	i915-display/intel_dsi_dcs_backlight.o \
 	i915-display/intel_dsi_vbt.o \
+	i915-display/intel_encoder.o \
 	i915-display/intel_fb.o \
 	i915-display/intel_fbc.o \
 	i915-display/intel_fdi.o \
-- 
2.43.3

