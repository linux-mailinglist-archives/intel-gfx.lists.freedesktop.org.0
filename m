Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF362D70D6
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 08:29:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5CD6EC67;
	Fri, 11 Dec 2020 07:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7158A6EC8F
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:37 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-200-_TbAlfbyMci9pE17TK0o_w-1; Fri, 11 Dec 2020 02:29:34 -0500
X-MC-Unique: _TbAlfbyMci9pE17TK0o_w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6B9780ED8B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:33 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 36D7560862
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:33 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Dec 2020 17:29:19 +1000
Message-Id: <20201211072922.19101-9-airlied@gmail.com>
In-Reply-To: <20201211072922.19101-1-airlied@gmail.com>
References: <20201211072922.19101-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: migrate hsw fdi code to new
 file.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

Daniel asked for this, but it's a bit messy and I'm not sure
how best to clean it up yet.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c | 151 +----------------------
 drivers/gpu/drm/i915/display/intel_ddi.h |  14 ++-
 drivers/gpu/drm/i915/display/intel_fdi.c | 147 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fdi.h |   3 +
 5 files changed, 168 insertions(+), 148 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 4934edd51cb0..077ebc7e6396 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -38,6 +38,7 @@
 #include "intel_crt.h"
 #include "intel_ddi.h"
 #include "intel_display_types.h"
+#include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6863236df1d0..2d903962f9dd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -51,12 +51,6 @@
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 
-struct ddi_buf_trans {
-	u32 trans1;	/* balance leg enable, de-emph level */
-	u32 trans2;	/* vref sel, vswing */
-	u8 i_boost;	/* SKL: I_boost; valid: 0x0, 0x1, 0x3, 0x7 */
-};
-
 static const u8 index_to_dp_signal_levels[] = {
 	[0] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_0,
 	[1] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_1,
@@ -1398,8 +1392,8 @@ static int intel_ddi_hdmi_level(struct intel_encoder *encoder,
  * values in advance. This function programs the correct values for
  * DP/eDP/FDI use cases.
  */
-static void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
-					 const struct intel_crtc_state *crtc_state)
+void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 iboost_bit = 0;
@@ -1461,8 +1455,8 @@ static void intel_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 		       ddi_translations[level].trans2);
 }
 
-static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
-				    enum port port)
+void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
+			     enum port port)
 {
 	if (IS_BROXTON(dev_priv)) {
 		udelay(16);
@@ -1490,7 +1484,7 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 			port_name(port));
 }
 
-static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
+u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
 {
 	switch (pll->info->id) {
 	case DPLL_ID_WRPLL1:
@@ -1550,141 +1544,6 @@ static u32 icl_pll_to_ddi_clk_sel(struct intel_encoder *encoder,
 	}
 }
 
-/* Starting with Haswell, different DDI ports can work in FDI mode for
- * connection to the PCH-located connectors. For this, it is necessary to train
- * both the DDI port and PCH receiver for the desired DDI buffer settings.
- *
- * The recommended port to work in FDI mode is DDI E, which we use here. Also,
- * please note that when FDI mode is active on DDI E, it shares 2 lines with
- * DDI A (which is used for eDP)
- */
-
-void hsw_fdi_link_train(struct intel_encoder *encoder,
-			const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 temp, i, rx_ctl_val, ddi_pll_sel;
-
-	intel_prepare_dp_ddi_buffers(encoder, crtc_state);
-
-	/* Set the FDI_RX_MISC pwrdn lanes and the 2 workarounds listed at the
-	 * mode set "sequence for CRT port" document:
-	 * - TP1 to TP2 time with the default value
-	 * - FDI delay to 90h
-	 *
-	 * WaFDIAutoLinkSetTimingOverrride:hsw
-	 */
-	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A),
-		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
-
-	/* Enable the PCH Receiver FDI PLL */
-	rx_ctl_val = dev_priv->fdi_rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
-		     FDI_RX_PLL_ENABLE |
-		     FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
-	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
-	intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
-	udelay(220);
-
-	/* Switch from Rawclk to PCDclk */
-	rx_ctl_val |= FDI_PCDCLK;
-	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
-
-	/* Configure Port Clock Select */
-	ddi_pll_sel = hsw_pll_to_ddi_pll_sel(crtc_state->shared_dpll);
-	intel_de_write(dev_priv, PORT_CLK_SEL(PORT_E), ddi_pll_sel);
-	drm_WARN_ON(&dev_priv->drm, ddi_pll_sel != PORT_CLK_SEL_SPLL);
-
-	/* Start the training iterating through available voltages and emphasis,
-	 * testing each value twice. */
-	for (i = 0; i < ARRAY_SIZE(hsw_ddi_translations_fdi) * 2; i++) {
-		/* Configure DP_TP_CTL with auto-training */
-		intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
-			       DP_TP_CTL_FDI_AUTOTRAIN |
-			       DP_TP_CTL_ENHANCED_FRAME_ENABLE |
-			       DP_TP_CTL_LINK_TRAIN_PAT1 |
-			       DP_TP_CTL_ENABLE);
-
-		/* Configure and enable DDI_BUF_CTL for DDI E with next voltage.
-		 * DDI E does not support port reversal, the functionality is
-		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
-		 * port reversal bit */
-		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
-			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));
-		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
-
-		udelay(600);
-
-		/* Program PCH FDI Receiver TU */
-		intel_de_write(dev_priv, FDI_RX_TUSIZE1(PIPE_A), TU_SIZE(64));
-
-		/* Enable PCH FDI Receiver with auto-training */
-		rx_ctl_val |= FDI_RX_ENABLE | FDI_LINK_TRAIN_AUTO;
-		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
-		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
-
-		/* Wait for FDI receiver lane calibration */
-		udelay(30);
-
-		/* Unset FDI_RX_MISC pwrdn lanes */
-		temp = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
-		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
-		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
-		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
-
-		/* Wait for FDI auto training time */
-		udelay(5);
-
-		temp = intel_de_read(dev_priv, DP_TP_STATUS(PORT_E));
-		if (temp & DP_TP_STATUS_AUTOTRAIN_DONE) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "FDI link training done on step %d\n", i);
-			break;
-		}
-
-		/*
-		 * Leave things enabled even if we failed to train FDI.
-		 * Results in less fireworks from the state checker.
-		 */
-		if (i == ARRAY_SIZE(hsw_ddi_translations_fdi) * 2 - 1) {
-			drm_err(&dev_priv->drm, "FDI link training failed!\n");
-			break;
-		}
-
-		rx_ctl_val &= ~FDI_RX_ENABLE;
-		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
-		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
-
-		temp = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
-		temp &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
-		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
-
-		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
-		temp = intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
-		temp &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
-		temp |= DP_TP_CTL_LINK_TRAIN_PAT1;
-		intel_de_write(dev_priv, DP_TP_CTL(PORT_E), temp);
-		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
-
-		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
-
-		/* Reset FDI_RX_MISC pwrdn lanes */
-		temp = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
-		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
-		temp |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
-		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
-		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
-	}
-
-	/* Enable normal pixel sending for FDI */
-	intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
-		       DP_TP_CTL_FDI_AUTOTRAIN |
-		       DP_TP_CTL_LINK_TRAIN_NORMAL |
-		       DP_TP_CTL_ENHANCED_FRAME_ENABLE |
-		       DP_TP_CTL_ENABLE);
-}
-
 static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index dcc711cfe4fe..e42b6bd05e01 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -9,6 +9,12 @@
 #include "intel_display.h"
 #include "i915_reg.h"
 
+struct ddi_buf_trans {
+	u32 trans1;	/* balance leg enable, de-emph level */
+	u32 trans2;	/* vref sel, vswing */
+	u8 i_boost;	/* SKL: I_boost; valid: 0x0, 0x1, 0x3, 0x7 */
+};
+
 struct drm_connector_state;
 struct drm_i915_private;
 struct intel_connector;
@@ -17,6 +23,7 @@ struct intel_crtc_state;
 struct intel_dp;
 struct intel_dpll_hw_state;
 struct intel_encoder;
+struct intel_shared_dpll;
 enum transcoder;
 
 i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
@@ -27,8 +34,11 @@ void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
 				struct intel_encoder *intel_encoder,
 				const struct intel_crtc_state *old_crtc_state,
 				const struct drm_connector_state *old_conn_state);
-void hsw_fdi_link_train(struct intel_encoder *encoder,
-			const struct intel_crtc_state *crtc_state);
+u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll);
+void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state);
+void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
+			     enum port port);
 void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port);
 bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
 void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index b2eb96ae10a2..0a97f9864e1c 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -5,6 +5,19 @@
 #include "intel_atomic.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
+#include "intel_ddi.h"
+
+static const struct ddi_buf_trans hsw_ddi_translations_fdi[] = {
+	{ 0x00FFFFFF, 0x0007000E, 0x0 },
+	{ 0x00D75FFF, 0x000F000A, 0x0 },
+	{ 0x00C30FFF, 0x00060006, 0x0 },
+	{ 0x00AAAFFF, 0x001E0000, 0x0 },
+	{ 0x00FFFFFF, 0x000F000A, 0x0 },
+	{ 0x00D75FFF, 0x00160004, 0x0 },
+	{ 0x00C30FFF, 0x001E0000, 0x0 },
+	{ 0x00FFFFFF, 0x00060006, 0x0 },
+	{ 0x00D75FFF, 0x001E0000, 0x0 },
+};
 
 /* units of 100MHz */
 static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
@@ -550,6 +563,140 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 	drm_dbg_kms(&dev_priv->drm, "FDI train done.\n");
 }
 
+/* Starting with Haswell, different DDI ports can work in FDI mode for
+ * connection to the PCH-located connectors. For this, it is necessary to train
+ * both the DDI port and PCH receiver for the desired DDI buffer settings.
+ *
+ * The recommended port to work in FDI mode is DDI E, which we use here. Also,
+ * please note that when FDI mode is active on DDI E, it shares 2 lines with
+ * DDI A (which is used for eDP)
+ */
+void hsw_fdi_link_train(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 temp, i, rx_ctl_val, ddi_pll_sel;
+
+	intel_prepare_dp_ddi_buffers(encoder, crtc_state);
+
+	/* Set the FDI_RX_MISC pwrdn lanes and the 2 workarounds listed at the
+	 * mode set "sequence for CRT port" document:
+	 * - TP1 to TP2 time with the default value
+	 * - FDI delay to 90h
+	 *
+	 * WaFDIAutoLinkSetTimingOverrride:hsw
+	 */
+	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A),
+		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
+
+	/* Enable the PCH Receiver FDI PLL */
+	rx_ctl_val = dev_priv->fdi_rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
+		     FDI_RX_PLL_ENABLE |
+		     FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
+	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+	intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
+	udelay(220);
+
+	/* Switch from Rawclk to PCDclk */
+	rx_ctl_val |= FDI_PCDCLK;
+	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+
+	/* Configure Port Clock Select */
+	ddi_pll_sel = hsw_pll_to_ddi_pll_sel(crtc_state->shared_dpll);
+	intel_de_write(dev_priv, PORT_CLK_SEL(PORT_E), ddi_pll_sel);
+	drm_WARN_ON(&dev_priv->drm, ddi_pll_sel != PORT_CLK_SEL_SPLL);
+
+	/* Start the training iterating through available voltages and emphasis,
+	 * testing each value twice. */
+	for (i = 0; i < ARRAY_SIZE(hsw_ddi_translations_fdi) * 2; i++) {
+		/* Configure DP_TP_CTL with auto-training */
+		intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
+			       DP_TP_CTL_FDI_AUTOTRAIN |
+			       DP_TP_CTL_ENHANCED_FRAME_ENABLE |
+			       DP_TP_CTL_LINK_TRAIN_PAT1 |
+			       DP_TP_CTL_ENABLE);
+
+		/* Configure and enable DDI_BUF_CTL for DDI E with next voltage.
+		 * DDI E does not support port reversal, the functionality is
+		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
+		 * port reversal bit */
+		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
+			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));
+		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
+
+		udelay(600);
+
+		/* Program PCH FDI Receiver TU */
+		intel_de_write(dev_priv, FDI_RX_TUSIZE1(PIPE_A), TU_SIZE(64));
+
+		/* Enable PCH FDI Receiver with auto-training */
+		rx_ctl_val |= FDI_RX_ENABLE | FDI_LINK_TRAIN_AUTO;
+		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
+
+		/* Wait for FDI receiver lane calibration */
+		udelay(30);
+
+		/* Unset FDI_RX_MISC pwrdn lanes */
+		temp = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
+		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
+		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
+		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
+
+		/* Wait for FDI auto training time */
+		udelay(5);
+
+		temp = intel_de_read(dev_priv, DP_TP_STATUS(PORT_E));
+		if (temp & DP_TP_STATUS_AUTOTRAIN_DONE) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "FDI link training done on step %d\n", i);
+			break;
+		}
+
+		/*
+		 * Leave things enabled even if we failed to train FDI.
+		 * Results in less fireworks from the state checker.
+		 */
+		if (i == ARRAY_SIZE(hsw_ddi_translations_fdi) * 2 - 1) {
+			drm_err(&dev_priv->drm, "FDI link training failed!\n");
+			break;
+		}
+
+		rx_ctl_val &= ~FDI_RX_ENABLE;
+		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
+
+		temp = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		temp &= ~DDI_BUF_CTL_ENABLE;
+		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
+		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
+
+		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
+		temp = intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
+		temp &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
+		temp |= DP_TP_CTL_LINK_TRAIN_PAT1;
+		intel_de_write(dev_priv, DP_TP_CTL(PORT_E), temp);
+		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
+
+		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
+
+		/* Reset FDI_RX_MISC pwrdn lanes */
+		temp = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
+		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
+		temp |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
+		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
+		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
+	}
+
+	/* Enable normal pixel sending for FDI */
+	intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
+		       DP_TP_CTL_FDI_AUTOTRAIN |
+		       DP_TP_CTL_LINK_TRAIN_NORMAL |
+		       DP_TP_CTL_ENHANCED_FRAME_ENABLE |
+		       DP_TP_CTL_ENABLE);
+}
+
 void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index 7441fb1ce370..3b8bab236bd7 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -8,6 +8,7 @@
 
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_encoder;
 
 #define I915_DISPLAY_CONFIG_RETRY 1
 int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
@@ -17,5 +18,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc);
 void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc);
 void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state);
 void intel_fdi_init_hook(struct drm_i915_private *dev_priv);
+void hsw_fdi_link_train(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state);
 
 #endif
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
