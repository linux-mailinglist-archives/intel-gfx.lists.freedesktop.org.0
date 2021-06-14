Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 209EA3A6628
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 13:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854A089CB5;
	Mon, 14 Jun 2021 11:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF8389CB5
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Jun 2021 11:57:57 +0000 (UTC)
IronPort-SDR: oDU3SkKHXgyS83PQWE8jNfZy/mNT54r0HmlkwjBVYLf0oHqK4wuEsf53BCp50gnKsGApAaPS+4
 72dXD4jq/6bw==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="205756764"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="205756764"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 04:57:56 -0700
IronPort-SDR: nfe2uYg5dz67E76gIrS+j1AeIjI+X0RMMBNTiVdUMFBUoRydshKuZ8DERKE7CE0ckDAcPl96He
 LvaGdjjiDZlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="478361070"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jun 2021 04:57:54 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org,
	imre.deak@intel.com
Date: Mon, 14 Jun 2021 17:18:51 +0530
Message-Id: <20210614114851.839925-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V5] drm/i915/jsl: Add W/A 1409054076 for JSL
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

When pipe A is disabled and MIPI DSI is enabled on pipe B,
the AMT KVMR feature will incorrectly see pipe A as enabled.
Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
it set while DSI is enabled on pipe B. No impact to setting
it all the time.

Changes since V4:
        - Modified function comment Wa_<number>:icl,jsl,ehl - Lucas
        - Modified debug message in sync state - Imre
Changes since V3:
        - More meaningful name to workaround - Imre
        - Remove boolean check clear flag
        - Add WA_verify hook in dsi sync_state
Changes since V2:
        - Used REG_BIT, ignored pipe A and used sw state check - Jani
        - Made function wrapper - Jani
Changes since V1:
        - ./dim checkpatch errors addressed

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 44 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h        |  1 +
 2 files changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 16812488c5dd..17e318eb1ad0 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1253,15 +1253,37 @@ static void gen11_dsi_pre_enable(struct intel_atomic_state *state,
 	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
 }
 
+/*
+ * Wa_1409054076:icl,jsl,ehl
+ * When pipe A is disabled and MIPI DSI is enabled on pipe B,
+ * the AMT KVMR feature will incorrectly see pipe A as enabled.
+ * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
+ * it set while DSI is enabled on pipe B
+ */
+static void icl_apply_kvmr_pipe_a_wa(struct intel_encoder *encoder,
+				     enum pipe pipe, bool enable)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	if ((DISPLAY_VER(dev_priv) == 11) && pipe == PIPE_B) {
+		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
+			     IGNORE_KVMR_PIPE_A,
+			     enable ? IGNORE_KVMR_PIPE_A : 0);
+	}
+}
 static void gen11_dsi_enable(struct intel_atomic_state *state,
 			     struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+	struct intel_crtc *crtc = to_intel_crtc(conn_state->crtc);
 
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
+	/* Wa_1409054076:icl,jsl,ehl */
+	icl_apply_kvmr_pipe_a_wa(encoder, crtc->pipe, true);
+
 	/* step6d: enable dsi transcoder */
 	gen11_dsi_enable_transcoder(encoder);
 
@@ -1415,6 +1437,7 @@ static void gen11_dsi_disable(struct intel_atomic_state *state,
 			      const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+	struct intel_crtc *crtc = to_intel_crtc(old_conn_state->crtc);
 
 	/* step1: turn off backlight */
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
@@ -1423,6 +1446,9 @@ static void gen11_dsi_disable(struct intel_atomic_state *state,
 	/* step2d,e: disable transcoder and wait */
 	gen11_dsi_disable_transcoder(encoder);
 
+	/* Wa_1409054076:icl,jsl,ehl */
+	icl_apply_kvmr_pipe_a_wa(encoder, crtc->pipe, false);
+
 	/* step2f,g: powerdown panel */
 	gen11_dsi_powerdown_panel(encoder);
 
@@ -1548,6 +1574,23 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
 		pipe_config->mode_flags |= I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE;
 }
 
+static void gen11_dsi_sync_state(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = intel_crtc->pipe;
+
+	/* wa verify 1409054076:icl,jsl,ehl */
+	if ((DISPLAY_VER(dev_priv) == 11) && pipe == PIPE_B &&
+	    !(intel_de_read(dev_priv, CHICKEN_PAR1_1) & IGNORE_KVMR_PIPE_A))
+		drm_dbg_kms(&dev_priv->drm,
+			    "[ENCODER:%d:%s] BIOS left IGNORE_KVMR_PIPE_A\t"
+			    "cleared with pipe B enabled\n",
+			    encoder->base.base.id,
+			    encoder->base.name);
+}
+
 static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 					struct intel_crtc_state *crtc_state)
 {
@@ -1966,6 +2009,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	encoder->post_disable = gen11_dsi_post_disable;
 	encoder->port = port;
 	encoder->get_config = gen11_dsi_get_config;
+	encoder->sync_state = gen11_dsi_sync_state;
 	encoder->update_pipe = intel_panel_update_backlight;
 	encoder->compute_config = gen11_dsi_compute_config;
 	encoder->get_hw_state = gen11_dsi_get_hw_state;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e915ec034c98..955027799d1d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8107,6 +8107,7 @@ enum {
 # define CHICKEN3_DGMG_DONE_FIX_DISABLE		(1 << 2)
 
 #define CHICKEN_PAR1_1			_MMIO(0x42080)
+#define  IGNORE_KVMR_PIPE_A		REG_BIT(23)
 #define  KBL_ARB_FILL_SPARE_22		REG_BIT(22)
 #define  DIS_RAM_BYPASS_PSR2_MAN_TRACK	(1 << 16)
 #define  SKL_DE_COMPRESSED_HASH_MODE	(1 << 15)
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
