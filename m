Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E569134597
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 16:03:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 742E76E895;
	Wed,  8 Jan 2020 15:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A506E8A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 15:03:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 07:03:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="215975819"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga008.jf.intel.com with ESMTP; 08 Jan 2020 07:03:24 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 20:00:01 +0530
Message-Id: <20200108143002.13695-9-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200108143002.13695-1-vandita.kulkarni@intel.com>
References: <20200108143002.13695-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V5 8/9] drm/i915/dsi: Initiate fame request in cmd mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In TE Gate mode, on every flip we need to set the
frame update request bit. After this  bit is set
transcoder hardware will automatically send the
frame data to the panel when it receives the TE event.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 26 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++
 drivers/gpu/drm/i915/display/intel_dsi.h     |  3 +++
 3 files changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 92faaedd6123..20d136203de7 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -199,6 +199,32 @@ static int dsi_send_pkt_payld(struct intel_dsi_host *host,
 	return 0;
 }
 
+void gen11_dsi_frame_update(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 tmp, private_flags;
+	enum port port;
+
+	private_flags = crtc_state->hw.adjusted_mode.private_flags;
+
+	/*
+	 * case 1 also covers dual link
+	 * In case of dual link, frame update should be set on
+	 * DSI_0
+	 */
+	if (private_flags & I915_MODE_FLAG_DSI_USE_TE0)
+		port = PORT_A;
+	else if (private_flags & I915_MODE_FLAG_DSI_USE_TE1)
+		port = PORT_B;
+	else
+		return;
+
+	tmp = I915_READ(DSI_CMD_FRMCTL(port));
+	tmp |= DSI_FRAME_UPDATE_REQUEST;
+	I915_WRITE(DSI_CMD_FRMCTL(port), tmp);
+}
+
 static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 59c375879186..76cfd39300ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15411,6 +15411,18 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 			intel_color_load_luts(new_crtc_state);
 	}
 
+	/*
+	 * Incase of mipi dsi command mode, we need to set frame update
+	 * for every commit
+	 */
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if ((INTEL_GEN(dev_priv) >= 11) &&
+		    (intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))) {
+			if (new_crtc_state->hw.active)
+				gen11_dsi_frame_update(new_crtc_state);
+		}
+	}
+
 	/*
 	 * Now that the vblank has passed, we can go ahead and program the
 	 * optimal watermarks on platforms that need two-step watermark
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index 7481a5aa3084..6e64d3d2cd0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -202,6 +202,9 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 		     struct intel_crtc_state *config);
 void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
 
+/* icl_dsi.c */
+void gen11_dsi_frame_update(struct intel_crtc_state *crtc_state);
+
 /* intel_dsi_vbt.c */
 bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id);
 void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on);
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
