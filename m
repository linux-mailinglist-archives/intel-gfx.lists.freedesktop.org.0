Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CB0389112
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 16:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1F76EDCF;
	Wed, 19 May 2021 14:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47C5C6EDCF
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 14:34:58 +0000 (UTC)
IronPort-SDR: TnLpCDZt4VzSQK/guo+7khGGA7Q/J1PUX7iwfDnqpOkO+fv4mpGdj5S71jxWx1UfMDf26QOr/H
 UmJFScm8Sg1w==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264904591"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="264904591"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:27:56 -0700
IronPort-SDR: GhtWOrfuKB3vga0hulWg5JHgjDZeVOt9gIkqhBec3SrR3hCHpwSt/IAJjdVD6HwyGhdYmq8iuf
 qYHeCfAlCaJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473519601"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga001.jf.intel.com with ESMTP; 19 May 2021 07:27:54 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org,
	mahesh.meena@intel.com
Date: Wed, 19 May 2021 19:48:21 +0530
Message-Id: <20210519141821.227950-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V3] drm/i915/jsl: Add W/A 1409054076 for JSL
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

Changes since V2:
	- Used REG_BIT, ignored pipe A and used sw state check - Jani
	- Made function wrapper - Jani
Changes since V1:
        - ./dim checkpatch errors addressed

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h        |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ce544e20f35c..799cacf4cf6e 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1236,15 +1236,34 @@ static void gen11_dsi_pre_enable(struct intel_atomic_state *state,
 	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
 }
 
+/*
+ * WA 1409054076:JSL,EHL
+ * When pipe A is disabled and MIPI DSI is enabled on pipe B,
+ * the AMT KVMR feature will incorrectly see pipe A as enabled.
+ * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
+ * it set while DSI is enabled on pipe B
+ */
+static void wa_1409054076(struct intel_encoder *encoder,
+			  enum pipe pipe, bool enable)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	if (IS_JSL_EHL(dev_priv) && pipe == PIPE_B)
+		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
+			     enable ? 0 : IGNORE_KVMR_PIPE_A,
+			     enable ? IGNORE_KVMR_PIPE_A : 0);
+}
 static void gen11_dsi_enable(struct intel_atomic_state *state,
 			     struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+	struct intel_crtc *crtc = to_intel_crtc(conn_state->crtc);
 
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
+	wa_1409054076(encoder, crtc->pipe, true);
 	/* step6d: enable dsi transcoder */
 	gen11_dsi_enable_transcoder(encoder);
 
@@ -1398,7 +1417,9 @@ static void gen11_dsi_disable(struct intel_atomic_state *state,
 			      const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+	struct intel_crtc *crtc = to_intel_crtc(old_conn_state->crtc);
 
+	wa_1409054076(encoder, crtc->pipe, false);
 	/* step1: turn off backlight */
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
 	intel_panel_disable_backlight(old_conn_state);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 089b5a59bed3..fe01c6e05a45 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8041,6 +8041,7 @@ enum {
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
