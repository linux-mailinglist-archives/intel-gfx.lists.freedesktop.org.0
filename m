Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2906275CB
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 07:11:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62B9210E264;
	Mon, 14 Nov 2022 06:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A60310E263
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 06:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668406296; x=1699942296;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LksC8b26gyW/a1djgt9yuqEAmb9WZYdfduMA+VR3PyA=;
 b=fdVCe34OPj9Arfra0DsgP3aRrmcTzBoVF9bV9ss+gfB+xkwP2BELCROc
 kwzMYkQhMOa3N1oyg6s9ApjccGI39Lu/DVcvJW2/xbQUSGXLAhYygdENz
 XoKo/HqJezTYpAzB6ZC+eGOrCHsOb4IfN8zG478pgz29/3UX9VzZM0DVr
 4UOkdREYt0c5RHfjUNybmDtHrgKLbTxirf4Y8sDjMhY0v12DnCJdOPnMp
 qB4lcqF+1vWDUJoVaSjELPg080+C6s30m4/g5d7NBj0Olf8EGdxCitWkj
 k2BSY7L9nRjzgaeqabwW4nXnryCBGaKpw/78QA+80xSvJRhdlWvZZjsMr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="374021092"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="374021092"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2022 22:11:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="632678918"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="632678918"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 13 Nov 2022 22:11:33 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 11:40:19 +0530
Message-Id: <20221114061019.1444353-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221114061019.1444353-1-suraj.kandpal@intel.com>
References: <20221114061019.1444353-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 3/3] drm/i915: Enable WD Transcoder
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

Add support for writeback transcoder to start capturing frames using
interrupt mechanism

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  75 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   5 +
 .../drm/i915/display/intel_display_debugfs.c  |  13 +-
 .../drm/i915/display/intel_display_types.h    |  10 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
 .../drm/i915/display/intel_modeset_setup.c    | 103 ++-
 .../drm/i915/display/intel_modeset_verify.c   |  17 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 drivers/gpu/drm/i915/display/intel_wb.c       | 714 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wb.h       |  49 ++
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 18 files changed, 977 insertions(+), 49 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 51704b54317c..450337767e29 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -308,6 +308,7 @@ i915-y += \
 	display/intel_tv.o \
 	display/intel_vdsc.o \
 	display/intel_vrr.o \
+	display/intel_wb.o \
 	display/vlv_dsi.o \
 	display/vlv_dsi_pll.o
 
diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index 912fe5c2ffe5..3321ef62fdbd 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -248,6 +248,7 @@ static u32 acpi_display_type(struct intel_connector *connector)
 	case DRM_MODE_CONNECTOR_LVDS:
 	case DRM_MODE_CONNECTOR_eDP:
 	case DRM_MODE_CONNECTOR_DSI:
+	case DRM_MODE_CONNECTOR_WRITEBACK:
 		display_type = ACPI_DISPLAY_TYPE_INTERNAL_DIGITAL;
 		break;
 	case DRM_MODE_CONNECTOR_Unknown:
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 037fc140b585..fa91f2defa6d 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -489,6 +489,9 @@ void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
 	if (new_crtc_state->do_async_flip)
 		return;
 
+	if (new_crtc_state->output_types & BIT(INTEL_OUTPUT_WB))
+		return;
+
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
 
@@ -636,6 +639,9 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	if (new_crtc_state->do_async_flip)
 		return;
 
+	if (new_crtc_state->output_types & BIT(INTEL_OUTPUT_WB))
+		return;
+
 	trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index e3273fe8ddac..f1b70b4965d0 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -71,6 +71,7 @@ static const char * const output_type_str[] = {
 	OUTPUT_TYPE(DSI),
 	OUTPUT_TYPE(DDI),
 	OUTPUT_TYPE(DP_MST),
+	OUTPUT_TYPE(WB),
 };
 
 #undef OUTPUT_TYPE
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 477dd9b72ea3..a3ccc3544870 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1953,6 +1953,12 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 	 */
 	if (encoder->type == INTEL_OUTPUT_DP_MST)
 		return;
+	/*
+	 * WD transcoder is a virtual encoder hence sanization
+	 * is not required for it
+	 */
+	if (encoder->type == INTEL_OUTPUT_WB)
+		return;
 
 	if (!encoder->base.crtc && intel_encoder_is_dp(encoder)) {
 		u8 pipe_mask;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7cceaa6b1166..6d4a2008a00f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -117,6 +117,7 @@
 #include "intel_sprite.h"
 #include "intel_tc.h"
 #include "intel_vga.h"
+#include "intel_wb.h"
 #include "i9xx_plane.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
@@ -1347,7 +1348,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	if (hsw_ips_pre_update(state, crtc))
 		intel_crtc_wait_for_next_vblank(crtc);
 
-	if (intel_fbc_pre_update(state, crtc))
+	if (intel_fbc_pre_update(state, crtc) &&
+	    !(new_crtc_state->output_types & BIT(INTEL_OUTPUT_WB)))
 		intel_crtc_wait_for_next_vblank(crtc);
 
 	if (!needs_async_flip_vtd_wa(old_crtc_state) &&
@@ -1523,6 +1525,10 @@ static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 			continue;
 
 		intel_connector = to_intel_connector(connector);
+		/* intel_connector instance is not created for WD transcoder */
+		if (!intel_connector)
+			continue;
+
 		encoder = intel_connector_primary_encoder(intel_connector);
 		if (!encoder->update_prepare)
 			continue;
@@ -1552,6 +1558,10 @@ static void intel_encoders_update_complete(struct intel_atomic_state *state)
 			continue;
 
 		intel_connector = to_intel_connector(connector);
+		/* intel_connector instance is not created for WD transcoder */
+		if (!intel_connector)
+			continue;
+
 		encoder = intel_connector_primary_encoder(intel_connector);
 		if (!encoder->update_complete)
 			continue;
@@ -1562,6 +1572,38 @@ static void intel_encoders_update_complete(struct intel_atomic_state *state)
 	}
 }
 
+static void intel_queue_writeback_job(struct intel_atomic_state *state)
+{
+	struct drm_connector_state *new_conn_state;
+	struct drm_connector *connector;
+	struct drm_writeback_connector *wb_conn;
+	int i;
+
+	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
+					i) {
+		if (!new_conn_state->writeback_job)
+			continue;
+
+		wb_conn = drm_connector_to_writeback(connector);
+		drm_writeback_queue_job(wb_conn, new_conn_state);
+	}
+}
+
+static void intel_enable_writeback_capture(struct intel_atomic_state *state,
+					   struct intel_crtc_state *crtc_state)
+{
+	struct drm_connector_state *new_conn_state;
+	struct drm_connector *connector;
+	int i;
+
+	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
+					i) {
+		if (connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK)
+			continue;
+		intel_wb_enable_capture(crtc_state, new_conn_state);
+	}
+}
+
 static void intel_encoders_pre_pll_enable(struct intel_atomic_state *state,
 					  struct intel_crtc *crtc)
 {
@@ -1662,8 +1704,12 @@ static void intel_encoders_post_disable(struct intel_atomic_state *state,
 	int i;
 
 	for_each_old_connector_in_state(&state->base, conn, old_conn_state, i) {
-		struct intel_encoder *encoder =
-			to_intel_encoder(old_conn_state->best_encoder);
+		struct intel_encoder *encoder;
+
+		if (conn->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
+			continue;
+
+		encoder = to_intel_encoder(old_conn_state->best_encoder);
 
 		if (old_conn_state->crtc != &crtc->base)
 			continue;
@@ -1942,7 +1988,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		bdw_set_pipemisc(new_crtc_state);
 
 	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
-	    !transcoder_is_dsi(cpu_transcoder))
+	    !transcoder_is_dsi(cpu_transcoder) &&
+	    !transcoder_is_wd(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
 	crtc->active = true;
@@ -7514,6 +7561,11 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		}
 	}
 
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+		if ((new_crtc_state->output_types & BIT(INTEL_OUTPUT_WB)))
+			intel_wb_set_vblank_event(state, crtc, new_crtc_state);
+	}
+
 	intel_encoders_update_prepare(state);
 
 	intel_dbuf_pre_plane_update(state);
@@ -7524,9 +7576,20 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 			intel_crtc_enable_flip_done(state, crtc);
 	}
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if ((new_crtc_state->output_types & BIT(INTEL_OUTPUT_WB))) {
+			intel_queue_writeback_job(state);
+			intel_enable_writeback_capture(state, new_crtc_state);
+		}
+	}
+
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.funcs.display->commit_modeset_enables(state);
 
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+		if ((new_crtc_state->output_types & BIT(INTEL_OUTPUT_WB)))
+			intel_wb_set_vblank_event(state, crtc, new_crtc_state);
+	}
 	intel_encoders_update_complete(state);
 
 	if (state->modeset)
@@ -7884,6 +7947,10 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
+	/* Initializing WD transcoder */
+	if (DISPLAY_VER(dev_priv) >= 12)
+		intel_wb_init(dev_priv, TRANSCODER_WD_0);
+
 	if (IS_DG2(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e0c31a3b20fd..510c844fe5fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -141,6 +141,11 @@ static inline bool transcoder_is_dsi(enum transcoder transcoder)
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
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 7bcd90384a46..4868fd18cb48 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -552,7 +552,7 @@ static void intel_hdmi_info(struct seq_file *m,
 static void intel_connector_info(struct seq_file *m,
 				 struct drm_connector *connector)
 {
-	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_connector *intel_connector;
 	const struct drm_connector_state *conn_state = connector->state;
 	struct intel_encoder *encoder =
 		to_intel_encoder(conn_state->best_encoder);
@@ -575,6 +575,8 @@ static void intel_connector_info(struct seq_file *m,
 	if (!encoder)
 		return;
 
+	intel_connector = to_intel_connector(connector);
+
 	switch (connector->connector_type) {
 	case DRM_MODE_CONNECTOR_DisplayPort:
 	case DRM_MODE_CONNECTOR_eDP:
@@ -592,12 +594,15 @@ static void intel_connector_info(struct seq_file *m,
 		break;
 	}
 
-	seq_puts(m, "\tHDCP version: ");
-	intel_hdcp_info(m, intel_connector);
+	if (intel_connector) {
+		seq_puts(m, "\tHDCP version: ");
+		intel_hdcp_info(m, intel_connector);
+	}
 
 	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
 
-	intel_panel_info(m, intel_connector);
+	if (intel_connector)
+		intel_panel_info(m, intel_connector);
 
 	seq_printf(m, "\tmodes:\n");
 	list_for_each_entry(mode, &connector->modes, head)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 83fef7f41458..9b8adae04e85 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -44,6 +44,7 @@
 #include <drm/drm_vblank.h>
 #include <drm/drm_vblank_work.h>
 #include <drm/i915_mei_hdcp_interface.h>
+#include <drm/drm_writeback.h>
 #include <media/cec-notifier.h>
 
 #include "i915_vma.h"
@@ -1384,6 +1385,11 @@ struct intel_crtc {
 	bool cpu_fifo_underrun_disabled;
 	bool pch_fifo_underrun_disabled;
 
+	struct {
+		struct drm_pending_vblank_event *e;
+		atomic_t work_busy;
+		wait_queue_head_t wb_wait;
+	} wb;
 	/* per-pipe watermark state */
 	struct {
 		/* watermarks currently being used  */
@@ -2059,8 +2065,8 @@ intel_connector_list_iter_next(struct drm_connector_list_iter *iter)
 	struct drm_connector *connector;
 	bool flag = true;
 	/*
-	 * Skipping connector that are Writeback connector as they will
-	 * not be embedded in intel connector
+	 * An intel_connector entity is not created for a writeback
+	 * connector hence decoupling.
 	 */
 	while (flag) {
 		connector = drm_connector_list_iter_next(iter);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index c236aafe9be0..52da443b4577 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -942,6 +942,9 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_get_crtc_new_encoder(state, crtc_state);
 	int ret;
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_WB))
+		return 0;
+
 	if (DISPLAY_VER(dev_priv) < 11 &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
@@ -970,6 +973,9 @@ static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_WB))
+		return 0;
+
 	if (DISPLAY_VER(dev_priv) < 11 &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 96395bfbd41d..915b41a74798 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -25,6 +25,7 @@
 #include "intel_pch_display.h"
 #include "intel_pm.h"
 #include "skl_watermark.h"
+#include "intel_wb.h"
 
 static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 					struct drm_modeset_acquire_ctx *ctx)
@@ -112,17 +113,17 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 
 static void intel_modeset_update_connector_atomic_state(struct drm_i915_private *i915)
 {
-	struct intel_connector *connector;
+	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
-	for_each_intel_connector_iter(connector, &conn_iter) {
-		struct drm_connector_state *conn_state = connector->base.state;
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		struct drm_connector_state *conn_state = connector->state;
 		struct intel_encoder *encoder =
-			to_intel_encoder(connector->base.encoder);
+			to_intel_encoder(connector->encoder);
 
 		if (conn_state->crtc)
-			drm_connector_put(&connector->base);
+			drm_connector_put(connector);
 
 		if (encoder) {
 			struct intel_crtc *crtc =
@@ -134,7 +135,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 			conn_state->crtc = &crtc->base;
 			conn_state->max_bpc = (crtc_state->pipe_bpp ?: 24) / 3;
 
-			drm_connector_get(&connector->base);
+			drm_connector_get(connector);
 		} else {
 			conn_state->best_encoder = NULL;
 			conn_state->crtc = NULL;
@@ -438,6 +439,8 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 	struct intel_crtc *crtc;
 	struct intel_encoder *encoder;
 	struct intel_connector *connector;
+	struct drm_connector *_connector;
+	struct drm_encoder *_encoder;
 	struct drm_connector_list_iter conn_iter;
 	u8 active_pipes = 0;
 
@@ -514,38 +517,70 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 	intel_dpll_readout_hw_state(i915);
 
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
-	for_each_intel_connector_iter(connector, &conn_iter) {
-		if (connector->get_hw_state(connector)) {
-			struct intel_crtc_state *crtc_state;
-			struct intel_crtc *crtc;
-
-			connector->base.dpms = DRM_MODE_DPMS_ON;
-
-			encoder = intel_attached_encoder(connector);
-			connector->base.encoder = &encoder->base;
-
-			crtc = to_intel_crtc(encoder->base.crtc);
-			crtc_state = crtc ? to_intel_crtc_state(crtc->base.state) : NULL;
-
-			if (crtc_state && crtc_state->hw.active) {
-				/*
-				 * This has to be done during hardware readout
-				 * because anything calling .crtc_disable may
-				 * rely on the connector_mask being accurate.
-				 */
-				crtc_state->uapi.connector_mask |=
-					drm_connector_mask(&connector->base);
-				crtc_state->uapi.encoder_mask |=
-					drm_encoder_mask(&encoder->base);
+	drm_for_each_connector_iter(_connector, &conn_iter) {
+		struct intel_crtc_state *crtc_state;
+		struct intel_crtc *crtc;
+		struct drm_writeback_connector *wb_conn;
+		struct intel_wb *intel_wb;
+
+		connector = to_intel_connector(_connector);
+		if (!connector) {
+			wb_conn = drm_connector_to_writeback(_connector);
+			intel_wb = wb_conn_to_intel_wb(wb_conn);
+			_encoder = &intel_wb->base.base;
+			_connector->encoder = _encoder;
+			encoder = to_intel_encoder(_encoder);
+			pipe = 0;
+			if (encoder->get_hw_state(encoder, &pipe)) {
+				_connector->dpms = DRM_MODE_DPMS_ON;
+				crtc = to_intel_crtc(_encoder->crtc);
+				crtc_state = crtc ? to_intel_crtc_state(crtc->base.state) : NULL;
+
+				if (crtc_state && crtc_state->hw.active) {
+					/*
+					 * This has to be done during hardware readout
+					 * because anything calling .crtc_disable may
+					 * rely on the connector_mask being accurate.
+					 */
+					crtc_state->uapi.connector_mask |=
+						drm_connector_mask(&connector->base);
+					crtc_state->uapi.encoder_mask |=
+						drm_encoder_mask(&encoder->base);
+				}
+			} else {
+				_connector->dpms = DRM_MODE_DPMS_OFF;
+				_connector->encoder = NULL;
 			}
 		} else {
-			connector->base.dpms = DRM_MODE_DPMS_OFF;
-			connector->base.encoder = NULL;
+			if (connector->get_hw_state(connector)) {
+				connector->base.dpms = DRM_MODE_DPMS_OFF;
+				encoder = intel_attached_encoder(connector);
+				connector->base.encoder = &encoder->base;
+
+				crtc = to_intel_crtc(encoder->base.crtc);
+				crtc_state = crtc ? to_intel_crtc_state(crtc->base.state) : NULL;
+
+				if (crtc_state && crtc_state->hw.active) {
+					/*
+					 * This has to be done during hardware readout
+					 * because anything calling .crtc_disable may
+					 * rely on the connector_mask being accurate.
+					 */
+					crtc_state->uapi.connector_mask |=
+						drm_connector_mask(&connector->base);
+					crtc_state->uapi.encoder_mask |=
+						drm_encoder_mask(&encoder->base);
+				}
+			} else {
+				connector->base.dpms = DRM_MODE_DPMS_OFF;
+				connector->base.encoder = NULL;
+			}
 		}
 		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] hw state readout: %s\n",
-			    connector->base.base.id, connector->base.name,
-			    str_enabled_disabled(connector->base.encoder));
+				"[CONNECTOR:%d:%s] hw state readout: %s\n",
+				_connector->base.id, _connector->name,
+				str_enabled_disabled(_connector->encoder));
+
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 842d70f0dfd2..f9b97456f529 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -25,11 +25,16 @@
 static void intel_connector_verify_state(struct intel_crtc_state *crtc_state,
 					 struct drm_connector_state *conn_state)
 {
-	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_connector *_connector = conn_state->connector;
+	struct intel_connector *connector;
+	struct drm_i915_private *i915 = to_i915(_connector->dev);
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
-		    connector->base.base.id, connector->base.name);
+		    _connector->base.id, _connector->name);
+
+	connector = to_intel_connector(_connector);
+	if (!connector)
+		return;
 
 	if (connector->get_hw_state(connector)) {
 		struct intel_encoder *encoder = intel_attached_encoder(connector);
@@ -119,6 +124,9 @@ verify_encoder_state(struct drm_i915_private *dev_priv, struct intel_atomic_stat
 			    encoder->base.base.id,
 			    encoder->base.name);
 
+		if (encoder->type == INTEL_OUTPUT_WB)
+			continue;
+
 		for_each_oldnew_connector_in_state(&state->base, connector, old_conn_state,
 						   new_conn_state, i) {
 			if (old_conn_state->best_encoder == &encoder->base)
@@ -177,6 +185,9 @@ verify_crtc_state(struct intel_crtc *crtc,
 
 	intel_crtc_get_pipe_config(pipe_config);
 
+	if (new_crtc_state->output_types & BIT(INTEL_OUTPUT_WB))
+		return;
+
 	/* we keep both pipes enabled on 830 */
 	if (IS_I830(dev_priv) && pipe_config->hw.active)
 		pipe_config->hw.active = new_crtc_state->hw.active;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index e0184745632c..92727f784f2f 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -374,6 +374,9 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 	if (ret)
 		return ret;
 
+	if (intel_encoder->type == INTEL_OUTPUT_WB)
+		return 0;
+
 	if (intel_encoder->type == INTEL_OUTPUT_DSI)
 		port = 0;
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_wb.c b/drivers/gpu/drm/i915/display/intel_wb.c
new file mode 100644
index 000000000000..34e7a625b556
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_wb.c
@@ -0,0 +1,714 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_atomic_uapi.h>
+#include <drm/drm_fourcc.h>
+
+#include "intel_atomic.h"
+#include "intel_connector.h"
+#include "intel_wb.h"
+#include "intel_fb_pin.h"
+#include "intel_de.h"
+#include "intel_writeback_reg.h"
+
+enum {
+	WD_CAPTURE_4_PIX,
+	WD_CAPTURE_2_PIX,
+} wb_capture_format;
+
+struct drm_writeback_job
+*intel_get_writeback_job_from_queue(struct intel_wb *intel_wb)
+{
+	struct drm_writeback_job *job;
+	struct drm_i915_private *i915 = to_i915(intel_wb->base.base.dev);
+	struct drm_writeback_connector *wb_conn =
+		&intel_wb->wb_conn;
+	unsigned long flags;
+
+	spin_lock_irqsave(&wb_conn->job_lock, flags);
+	job = list_first_entry_or_null(&wb_conn->job_queue,
+				       struct drm_writeback_job,
+				       list_entry);
+	spin_unlock_irqrestore(&wb_conn->job_lock, flags);
+	if (!job)
+		drm_dbg_kms(&i915->drm, "job queue is empty\n");
+
+	return job;
+}
+
+static const u32 wb_fmts[] = {
+	DRM_FORMAT_YUV444,
+	DRM_FORMAT_XYUV8888,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_XRGB8888,
+	DRM_FORMAT_Y410,
+	DRM_FORMAT_YUV422,
+	DRM_FORMAT_XBGR2101010,
+	DRM_FORMAT_RGB565,
+};
+
+static int intel_wb_get_format(int pixel_format)
+{
+	int wb_format = -EINVAL;
+
+	switch (pixel_format) {
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_XBGR2101010:
+	case DRM_FORMAT_XYUV8888:
+	case DRM_FORMAT_YUV444:
+		wb_format = WD_CAPTURE_4_PIX;
+		break;
+	case DRM_FORMAT_YUV422:
+	case DRM_FORMAT_RGB565:
+		wb_format = WD_CAPTURE_2_PIX;
+		break;
+	default:
+		DRM_ERROR("unsupported pixel format %x!\n",
+			  pixel_format);
+	}
+
+	return wb_format;
+}
+
+static int intel_wb_verify_pix_format(int format)
+{
+	const struct drm_format_info *info = drm_format_info(format);
+	int pix_format = info->format;
+	int i = 0;
+
+	for (i = 0; i < ARRAY_SIZE(wb_fmts); i++)
+		if (pix_format == wb_fmts[i])
+			return 0;
+
+	return true;
+}
+
+static u32 intel_wb_get_stride(const struct intel_crtc_state *crtc_state,
+			       int format)
+{
+	const struct drm_format_info *info = drm_format_info(format);
+	int wb_format;
+	int hactive, pixel_size;
+
+	wb_format = intel_wb_get_format(info->format);
+
+	switch (wb_format) {
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
+static int intel_wb_pin_fb(struct intel_wb *intel_wb,
+			   struct drm_framebuffer *fb)
+{
+	const struct i915_gtt_view view = {
+		.type = I915_GTT_VIEW_NORMAL,
+	};
+	struct i915_vma *vma;
+
+	vma = intel_pin_and_fence_fb_obj(fb, false, &view, true,
+					 &intel_wb->flags);
+
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
+
+	intel_wb->vma = vma;
+	return 0;
+}
+
+static void intel_configure_slicing_strategy(struct drm_i915_private *i915,
+					     struct intel_wb *intel_wb,
+					     u32 *tmp)
+{
+	*tmp &= ~WD_STRAT_MASK;
+	if (intel_wb->slicing_strategy == 1)
+		*tmp |= WD_SLICING_STRAT_1_1;
+	else if (intel_wb->slicing_strategy == 2)
+		*tmp |= WD_SLICING_STRAT_2_1;
+	else if (intel_wb->slicing_strategy == 3)
+		*tmp |= WD_SLICING_STRAT_4_1;
+	else if (intel_wb->slicing_strategy == 4)
+		*tmp |= WD_SLICING_STRAT_8_1;
+
+	intel_de_write(i915, WD_STREAMCAP_CTL(intel_wb->trans),
+		       *tmp);
+}
+
+static enum drm_mode_status
+intel_wb_mode_valid(struct drm_connector *connector,
+		    struct drm_display_mode *mode)
+{
+	return MODE_OK;
+}
+
+static int intel_wb_get_modes(struct drm_connector *connector)
+{
+	return 0;
+}
+
+static void intel_wb_get_config(struct intel_encoder *encoder,
+				struct intel_crtc_state *pipe_config)
+{
+	struct intel_crtc *intel_crtc =
+		to_intel_crtc(pipe_config->uapi.crtc);
+
+	if (intel_crtc) {
+		memcpy(pipe_config, intel_crtc->config,
+		       sizeof(*pipe_config));
+		pipe_config->output_types |= BIT(INTEL_OUTPUT_WB);
+	}
+}
+
+static int intel_wb_compute_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *pipe_config,
+				   struct drm_connector_state *conn_state)
+{
+	struct intel_wb *intel_wb = enc_to_intel_wb(encoder);
+	struct drm_writeback_job *job;
+
+	job = intel_get_writeback_job_from_queue(intel_wb);
+	if (job || conn_state->writeback_job) {
+		/*
+		 * Saving reference of pipe/crtc for later use if
+		 * writeback job is present
+		 */
+		intel_wb->wb_crtc = to_intel_crtc(pipe_config->uapi.crtc);
+		return 0;
+	}
+
+	return 0;
+}
+
+static void intel_wb_get_power_domains(struct intel_encoder *encoder,
+				       struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_wb *intel_wb = enc_to_intel_wb(encoder);
+	intel_wakeref_t wakeref;
+
+	wakeref = intel_display_power_get(i915, encoder->power_domain);
+
+	intel_wb->io_wakeref[0] = wakeref;
+}
+
+static bool intel_wb_get_hw_state(struct intel_encoder *encoder,
+				  enum pipe *pipe)
+{
+	bool ret = false;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_wb *intel_wb = enc_to_intel_wb(encoder);
+	struct intel_crtc *wb_crtc = intel_wb->wb_crtc;
+	intel_wakeref_t wakeref;
+	u32 tmp;
+
+	if (wb_crtc)
+		return false;
+
+	wakeref = intel_display_power_get_if_enabled(dev_priv,
+						     encoder->power_domain);
+
+	if (!wakeref)
+		goto out;
+
+	tmp = intel_de_read(dev_priv, PIPECONF(intel_wb->trans));
+	ret = tmp & WD_TRANS_ACTIVE;
+	if (ret) {
+		*pipe = wb_crtc->pipe;
+		return true;
+	}
+
+out:
+	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	return false;
+}
+
+static int intel_wb_encoder_atomic_check(struct drm_encoder *encoder,
+					 struct drm_crtc_state *crtc_st,
+					 struct drm_connector_state *conn_st)
+{
+	/* Check for the format and buffers and property validity */
+	struct drm_framebuffer *fb;
+	struct drm_writeback_job *job = conn_st->writeback_job;
+	struct drm_i915_private *i915 = to_i915(encoder->dev);
+	const struct drm_display_mode *mode = &crtc_st->mode;
+	int ret;
+
+	if (!job) {
+		drm_dbg_kms(&i915->drm, "No writeback job created returning\n");
+		crtc_st->no_vblank = true;
+		return 0;
+	}
+
+	fb = job->fb;
+	if (!fb) {
+		drm_dbg_kms(&i915->drm, "Invalid framebuffer\n");
+		return -EINVAL;
+	}
+
+	if (fb->width != mode->hdisplay || fb->height != mode->vdisplay) {
+		drm_dbg_kms(&i915->drm, "Invalid framebuffer size %ux%u\n",
+			    fb->width, fb->height);
+		return -EINVAL;
+	}
+
+	ret = intel_wb_verify_pix_format(fb->format->format);
+	if (ret) {
+		drm_dbg_kms(&i915->drm, "Unsupported framebuffer format %08x\n",
+			    fb->format->format);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static const struct drm_encoder_helper_funcs wb_encoder_helper_funcs = {
+	.atomic_check = intel_wb_encoder_atomic_check,
+};
+
+static void intel_wb_connector_destroy(struct drm_connector *connector)
+{
+	drm_connector_cleanup(connector);
+}
+
+static enum drm_connector_status
+intel_wb_connector_detect(struct drm_connector *connector, bool force)
+{
+	return connector_status_connected;
+}
+
+static void intel_wb_cleanup_writeback_job(struct drm_writeback_connector *connector,
+					   struct drm_writeback_job *job)
+{
+	struct intel_wb *intel_wb = wb_conn_to_intel_wb(connector);
+
+	intel_unpin_fb_vma(intel_wb->vma, intel_wb->flags);
+}
+
+static const struct drm_connector_funcs wb_connector_funcs = {
+	.detect = intel_wb_connector_detect,
+	.reset = drm_atomic_helper_connector_reset,
+	.destroy = intel_wb_connector_destroy,
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+};
+
+static const struct drm_connector_helper_funcs wb_connector_helper_funcs = {
+	.get_modes = intel_wb_get_modes,
+	.mode_valid = intel_wb_mode_valid,
+	.cleanup_writeback_job = intel_wb_cleanup_writeback_job,
+};
+
+static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
+	.destroy = drm_encoder_cleanup,
+};
+
+static bool intel_fastset_dis(struct intel_encoder *encoder,
+			      struct intel_crtc_state *pipe_config)
+{
+	return false;
+}
+
+static void intel_wb_connector_init(struct intel_wb *intel_wb)
+{
+	drm_atomic_helper_connector_reset(&intel_wb->wb_conn.base);
+}
+
+static void intel_wb_disable_capture(struct intel_wb *intel_wb)
+{
+	struct drm_i915_private *dev_priv = to_i915(intel_wb->base.base.dev);
+	u32 tmp;
+
+	intel_de_write_fw(dev_priv, WD_IMR(intel_wb->trans), 0xFF);
+	tmp = intel_de_read(dev_priv, PIPECONF(intel_wb->trans));
+	tmp &= WD_TRANS_DISABLE;
+	intel_de_write(dev_priv, PIPECONF(intel_wb->trans), tmp);
+	tmp = intel_de_read(dev_priv, WD_TRANS_FUNC_CTL(intel_wb->trans));
+	tmp |= WD_TRANS_DISABLE;
+	intel_de_write(dev_priv, WD_TRANS_FUNC_CTL(intel_wb->trans), tmp);
+}
+
+void intel_wb_init(struct drm_i915_private *i915, enum transcoder trans)
+{
+	struct intel_wb *intel_wb;
+	struct intel_encoder *encoder;
+	struct drm_writeback_connector *wb_conn;
+	int n_formats = ARRAY_SIZE(wb_fmts);
+	struct drm_encoder *drm_enc;
+	int err, ret;
+
+	intel_wb = kzalloc(sizeof(*intel_wb), GFP_KERNEL);
+	if (!intel_wb)
+		return;
+
+	intel_wb_connector_init(intel_wb);
+	encoder = &intel_wb->base;
+	drm_enc = &encoder->base;
+	wb_conn = &intel_wb->wb_conn;
+	intel_wb->trans = trans;
+	intel_wb->triggered_cap_mode = 1;
+	intel_wb->frame_num = 1;
+	intel_wb->slicing_strategy = 1;
+	encoder->get_config = intel_wb_get_config;
+	encoder->compute_config = intel_wb_compute_config;
+	encoder->get_hw_state = intel_wb_get_hw_state;
+	encoder->type = INTEL_OUTPUT_WB;
+	encoder->cloneable = 0;
+	encoder->pipe_mask = ~0;
+	encoder->power_domain = POWER_DOMAIN_TRANSCODER_B;
+	encoder->get_power_domains = intel_wb_get_power_domains;
+	encoder->initial_fastset_check = intel_fastset_dis;
+
+	drm_encoder_helper_add(drm_enc,
+			       &wb_encoder_helper_funcs);
+
+	drm_enc->possible_crtcs = ~0;
+	ret = drm_encoder_init(&i915->drm, drm_enc,
+			       &drm_writeback_encoder_funcs,
+			       DRM_MODE_ENCODER_VIRTUAL, NULL);
+
+	if (ret) {
+		drm_dbg_kms(&i915->drm,
+			    "Writeback drm_encoder init Failed: %d\n",
+			    ret);
+		goto cleanup;
+	}
+
+	err = drm_writeback_connector_init_with_encoder(&i915->drm,
+							wb_conn,
+							drm_enc,
+							&wb_connector_funcs,
+							wb_fmts, n_formats);
+
+	if (err != 0) {
+		drm_dbg_kms(&i915->drm,
+			    "drm_writeback_connector_init: Failed: %d\n",
+			    err);
+		goto cleanup;
+	}
+
+	wb_conn->base.encoder = drm_enc;
+	drm_connector_helper_add(&wb_conn->base, &wb_connector_helper_funcs);
+	wb_conn->base.status = connector_status_connected;
+	return;
+
+cleanup:
+	kfree(intel_wb);
+	return;
+}
+
+static void intel_wb_writeback_complete(struct intel_wb *intel_wb,
+					struct drm_writeback_job *job,
+					int status)
+{
+	struct drm_writeback_connector *wb_conn =
+		&intel_wb->wb_conn;
+	drm_writeback_signal_completion(wb_conn, status);
+}
+
+static int intel_wb_setup_transcoder(struct intel_wb *intel_wb,
+				     struct intel_crtc_state *pipe_config,
+				     struct drm_connector_state *conn_state,
+				     struct drm_writeback_job *job)
+{
+	struct intel_crtc *intel_crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	enum pipe pipe = intel_crtc->pipe;
+	struct drm_framebuffer *fb;
+	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
+	struct drm_gem_object *wb_fb_obj;
+	int ret;
+	u32 stride, tmp;
+	u16 hactive, vactive;
+
+	fb = job->fb;
+	wb_fb_obj = fb->obj[0];
+	if (!wb_fb_obj) {
+		drm_dbg_kms(&dev_priv->drm, "No framebuffer gem object created\n");
+		return -EINVAL;
+	}
+
+	ret = intel_wb_pin_fb(intel_wb, fb);
+	drm_WARN_ON(&dev_priv->drm, ret != 0);
+	/* Write stride and surface registers in that particular order */
+	stride = intel_wb_get_stride(pipe_config, fb->format->format);
+
+	tmp = intel_de_read(dev_priv, WD_STRIDE(intel_wb->trans));
+	tmp &= ~WD_STRIDE_MASK;
+	tmp |= (stride << WD_STRIDE_SHIFT);
+
+	intel_de_write(dev_priv, WD_STRIDE(intel_wb->trans), tmp);
+
+	tmp = intel_de_read(dev_priv, WD_SURF(intel_wb->trans));
+
+	intel_de_write(dev_priv, WD_SURF(intel_wb->trans),
+		       i915_ggtt_offset(intel_wb->vma));
+
+	tmp = intel_de_read_fw(dev_priv, WD_IIR(intel_wb->trans));
+	intel_de_write_fw(dev_priv, WD_IIR(intel_wb->trans), tmp);
+
+	tmp = ~(WD_GTT_FAULT_INT | WD_WRITE_COMPLETE_INT | WD_FRAME_COMPLETE_INT |
+		WD_VBLANK_INT | WD_OVERRUN_INT | WD_CAPTURING_INT);
+	intel_de_write_fw(dev_priv, WD_IMR(intel_wb->trans), tmp);
+
+	if (intel_wb->stream_cap) {
+		tmp = intel_de_read(dev_priv,
+				    WD_STREAMCAP_CTL(intel_wb->trans));
+		tmp |= WD_STREAM_CAP_MODE_EN;
+		intel_configure_slicing_strategy(dev_priv, intel_wb, &tmp);
+	}
+
+	hactive = pipe_config->uapi.mode.hdisplay;
+	vactive = pipe_config->uapi.mode.vdisplay;
+	tmp = intel_de_read(dev_priv, HTOTAL(intel_wb->trans));
+	tmp = intel_de_read(dev_priv, VTOTAL(intel_wb->trans));
+
+	/* minimum hactive as per bspec: 64 pixels */
+	if (hactive < 64)
+		drm_err(&dev_priv->drm, "hactive is less then 64 pixels\n");
+
+	intel_de_write(dev_priv, HTOTAL(intel_wb->trans), hactive - 1);
+	intel_de_write(dev_priv, VTOTAL(intel_wb->trans), vactive - 1);
+
+	tmp = intel_de_read(dev_priv, WD_TRANS_FUNC_CTL(intel_wb->trans));
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
+	case DRM_FORMAT_XRGB8888:
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
+	if (intel_wb->triggered_cap_mode)
+		tmp |= WD_TRIGGERED_CAP_MODE_ENABLE;
+
+	if (intel_wb->stream_cap)
+		tmp |= WD_CTL_POINTER_DTDH;
+
+	/* select input pipe */
+	tmp &= ~WD_INPUT_SELECT_MASK;
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
+	intel_de_write(dev_priv, WD_TRANS_FUNC_CTL(intel_wb->trans), tmp);
+
+	tmp = intel_de_read(dev_priv, PIPECONF(intel_wb->trans));
+	ret = tmp & WD_TRANS_ACTIVE;
+	if (!ret) {
+		/* enable the transcoder */
+		tmp = intel_de_read(dev_priv, PIPECONF(intel_wb->trans));
+		tmp |= WD_TRANS_ENABLE;
+		intel_de_write(dev_priv, PIPECONF(intel_wb->trans), tmp);
+
+		/* wait for transcoder to be enabled */
+		if (intel_de_wait_for_set(dev_priv, PIPECONF(intel_wb->trans),
+					  WD_TRANS_ACTIVE, 10))
+			drm_err(&dev_priv->drm, "WD transcoder could not be enabled\n");
+	}
+
+	return 0;
+}
+
+static int intel_wb_capture(struct intel_wb *intel_wb,
+			    struct intel_crtc_state *pipe_config,
+			    struct drm_connector_state *conn_state,
+			    struct drm_writeback_job *job)
+{
+	u32 tmp;
+	struct drm_i915_private *i915 = to_i915(intel_wb->base.base.dev);
+	int ret = 0, status = 0;
+	struct intel_crtc *wb_crtc = intel_wb->wb_crtc;
+	unsigned long flags;
+
+	if (!job->out_fence)
+		drm_dbg_kms(&i915->drm, "Not able to get out_fence for job\n");
+
+	ret = intel_wb_setup_transcoder(intel_wb, pipe_config,
+					conn_state, job);
+
+	if (ret < 0) {
+		drm_dbg_kms(&i915->drm,
+			    "WD transcoder setup not completed aborting capture\n");
+		return -1;
+	}
+
+	if (!wb_crtc) {
+		drm_err(&i915->drm, "CRTC not attached\n");
+		return -1;
+	}
+
+	tmp = intel_de_read_fw(i915, WD_TRANS_FUNC_CTL(intel_wb->trans));
+	tmp |= START_TRIGGER_FRAME;
+	tmp &= ~WD_FRAME_NUMBER_MASK;
+	tmp |= intel_wb->frame_num;
+	intel_de_write_fw(i915,	WD_TRANS_FUNC_CTL(intel_wb->trans), tmp);
+
+	if (!intel_de_wait_for_set(i915, WD_IIR(intel_wb->trans),
+				   WD_FRAME_COMPLETE_INT, 100)){
+		drm_dbg_kms(&i915->drm, "frame captured\n");
+		status = 0;
+	} else {
+		drm_dbg_kms(&i915->drm, "frame not captured triggering stop frame\n");
+		tmp = intel_de_read(i915, WD_TRANS_FUNC_CTL(intel_wb->trans));
+		tmp |= STOP_TRIGGER_FRAME;
+		intel_de_write(i915, WD_TRANS_FUNC_CTL(intel_wb->trans), tmp);
+		status = -1;
+	}
+
+	intel_wb_writeback_complete(intel_wb, job, status);
+	if (wb_crtc->wb.e) {
+		spin_lock_irqsave(&i915->drm.event_lock, flags);
+		drm_dbg_kms(&i915->drm, "send %p\n", wb_crtc->wb.e);
+		drm_crtc_send_vblank_event(&wb_crtc->base,
+					   wb_crtc->wb.e);
+		spin_unlock_irqrestore(&i915->drm.event_lock, flags);
+		wb_crtc->wb.e = NULL;
+	} else {
+		drm_err(&i915->drm, "Event NULL! %p, %p\n", &i915->drm,
+			wb_crtc);
+	}
+	if (!intel_get_writeback_job_from_queue(intel_wb))
+		intel_wb_disable_capture(intel_wb);
+	return 0;
+}
+
+void intel_wb_enable_capture(struct intel_crtc_state *pipe_config,
+			     struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 =
+		to_i915(conn_state->connector->dev);
+	struct drm_writeback_connector *wb_conn =
+		drm_connector_to_writeback(conn_state->connector);
+	struct intel_wb *intel_wb = wb_conn_to_intel_wb(wb_conn);
+	struct drm_writeback_job *job;
+
+	job = intel_get_writeback_job_from_queue(intel_wb);
+	if (!job) {
+		drm_dbg_kms(&i915->drm,
+			    "job queue is empty not capturing any frame\n");
+		return;
+	}
+
+	intel_wb_capture(intel_wb, pipe_config,
+			 conn_state, job);
+	intel_wb->frame_num += 1;
+}
+
+void intel_wb_set_vblank_event(struct intel_atomic_state *state,
+			       struct intel_crtc *intel_crtc,
+			       struct intel_crtc_state *intel_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
+	struct drm_crtc_state *crtc_state = &intel_crtc_state->uapi;
+	struct intel_encoder *encoder;
+	struct intel_wb *intel_wb;
+	struct drm_connector_state *old_conn_state;
+	struct drm_connector_state *new_conn_state;
+	struct drm_connector *connector;
+	int i;
+
+	for_each_intel_encoder(&i915->drm, encoder) {
+		if (encoder->type != INTEL_OUTPUT_WB)
+			continue;
+
+		intel_wb = enc_to_intel_wb(encoder);
+		if (!intel_wb->wb_crtc)
+			return;
+	}
+
+	if (intel_wb && intel_crtc == intel_wb->wb_crtc) {
+		for_each_oldnew_connector_in_state(&state->base, connector,
+						   old_conn_state,
+						   new_conn_state, i) {
+			if (new_conn_state->writeback_job) {
+				intel_crtc->wb.e = crtc_state->event;
+				crtc_state->event = NULL;
+			}
+		}
+
+		if (crtc_state->event) {
+			crtc_state->no_vblank = true;
+			drm_atomic_helper_fake_vblank(&state->base);
+		}
+	}
+}
+
+void intel_wb_handle_isr(struct drm_i915_private *i915)
+{
+	u32 iir_value = 0;
+	struct intel_encoder *encoder;
+	struct intel_wb *intel_wb;
+
+	iir_value = intel_de_read(i915, WD_IIR(TRANSCODER_WD_0));
+
+	for_each_intel_encoder(&i915->drm, encoder) {
+		if (encoder->type != INTEL_OUTPUT_WB)
+			continue;
+
+		intel_wb = enc_to_intel_wb(encoder);
+		if (!intel_wb->wb_crtc) {
+			drm_err(&i915->drm, "NO CRTC attached with WD\n");
+			goto clear_iir;
+		}
+	}
+
+	if (iir_value & WD_FRAME_COMPLETE_INT)
+		return;
+
+clear_iir:
+	intel_de_write(i915, WD_IIR(TRANSCODER_WD_0), iir_value);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_wb.h b/drivers/gpu/drm/i915/display/intel_wb.h
new file mode 100644
index 000000000000..7719c03bba15
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_wb.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: MIT*/
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef _INTEL_WB_H
+#define _INTEL_WB_H
+
+#include <drm/drm_crtc.h>
+
+#include "intel_display_types.h"
+
+#define I915_MAX_WD_TANSCODERS 2
+
+struct intel_wb {
+	struct intel_encoder base;
+	struct drm_writeback_connector wb_conn;
+	struct intel_crtc *wb_crtc;
+	intel_wakeref_t io_wakeref[I915_MAX_WD_TANSCODERS];
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
+static inline struct intel_wb *enc_to_intel_wb(struct intel_encoder *encoder)
+{
+	return container_of(&encoder->base, struct intel_wb, base.base);
+}
+
+static inline struct intel_wb *wb_conn_to_intel_wb(struct drm_writeback_connector *wb_conn)
+{
+	return container_of(wb_conn, struct intel_wb, wb_conn);
+}
+
+void intel_wb_init(struct drm_i915_private *dev_priv, enum transcoder trans);
+void intel_wb_enable_capture(struct intel_crtc_state *pipe_config,
+			     struct drm_connector_state *conn_state);
+void intel_wb_handle_isr(struct drm_i915_private *dev_priv);
+void intel_wb_set_vblank_event(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc,
+			       struct intel_crtc_state *crtc_state);
+struct drm_writeback_job *intel_get_writeback_job_from_queue(struct intel_wb *intel_wb);
+#endif/* _INTEL_WB_H */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 05b3300cc4ed..b120edf73e09 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -34,6 +34,7 @@
 
 #include <linux/pm_qos.h>
 
+#include <drm/drm_writeback.h>
 #include <drm/ttm/ttm_device.h>
 
 #include "display/intel_display.h"
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 6c20817f8967..d5af3a464eb7 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -42,6 +42,7 @@
 #include "display/intel_hotplug.h"
 #include "display/intel_lpe_audio.h"
 #include "display/intel_psr.h"
+#include "display/intel_wb.h"
 
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_gt.h"
@@ -2328,6 +2329,11 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 		found = true;
 	}
 
+	if (iir & GEN8_DE_MISC_WD0) {
+		intel_wb_handle_isr(dev_priv);
+		found = true;
+	}
+
 	if (iir & GEN8_DE_EDP_PSR) {
 		struct intel_encoder *encoder;
 		u32 psr_iir;
@@ -3712,7 +3718,7 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	u32 de_pipe_enables;
 	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
 	u32 de_port_enables;
-	u32 de_misc_masked = GEN8_DE_EDP_PSR;
+	u32 de_misc_masked = GEN8_DE_EDP_PSR | GEN8_DE_MISC_WD0;
 	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
 	enum pipe pipe;
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 211913be40ce..6715e14fe6c2 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -869,7 +869,8 @@ static const struct intel_device_info jsl_info = {
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
-		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1) | \
+		BIT(TRANSCODER_WD_0), \
 	.display.pipe_offsets = { \
 		[TRANSCODER_A] = PIPE_A_OFFSET, \
 		[TRANSCODER_B] = PIPE_B_OFFSET, \
@@ -877,6 +878,8 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_D] = PIPE_D_OFFSET, \
 		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
+		[TRANSCODER_WD_0] = PIPE_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = PIPE_WD1_OFFSET, \
 	}, \
 	.display.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
@@ -885,6 +888,8 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_D] = TRANSCODER_D_OFFSET, \
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
+		[TRANSCODER_WD_0] = TRANSCODER_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = TRANSCODER_WD1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
 	.has_global_mocs = 1, \
-- 
2.25.1

