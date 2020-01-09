Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4E5135840
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 12:42:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67AFD6E909;
	Thu,  9 Jan 2020 11:42:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3F976E8F9
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 11:42:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 03:42:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="223264660"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga006.jf.intel.com with ESMTP; 09 Jan 2020 03:42:01 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 16:38:33 +0530
Message-Id: <20200109110835.29764-8-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200109110835.29764-1-vandita.kulkarni@intel.com>
References: <20200109110835.29764-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V6 7/9] drm/i915/dsi: Add TE handler for dsi cmd mode.
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

In case of dual link, we get the TE on slave.
So clear the TE on slave DSI IIR.

v2: Pass only relevant masked bits to the handler (Jani)

v3: Fix the check for cmd mode in TE handler function.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 64 +++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 3f6159708def..028d4d66da8a 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2230,6 +2230,62 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 		DRM_ERROR("Unexpected DE Misc interrupt\n");
 }
 
+void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
+				    u32 te_trigger)
+{
+	enum pipe pipe = INVALID_PIPE;
+	enum transcoder dsi_trans;
+	enum port port;
+	u32 val, tmp;
+
+	/*
+	 * Incase of dual link, TE comes from DSI_1
+	 * this is to check if dual link is enabled
+	 */
+	val = I915_READ(TRANS_DDI_FUNC_CTL2(TRANSCODER_DSI_0));
+	val &= PORT_SYNC_MODE_ENABLE;
+
+	/*
+	 * if dual link is enabled, then read DSI_0
+	 * transcoder registers
+	 */
+	port = ((te_trigger & DSI1_TE && val) || (te_trigger & DSI0_TE)) ?
+						  PORT_A : PORT_B;
+	dsi_trans = (port == PORT_A) ? TRANSCODER_DSI_0 : TRANSCODER_DSI_1;
+
+	/* Check if DSI configured in command mode */
+	val = I915_READ(DSI_TRANS_FUNC_CONF(dsi_trans));
+	val = val & OP_MODE_MASK;
+
+	if ((val != CMD_MODE_NO_GATE) && (val != CMD_MODE_TE_GATE)) {
+		DRM_ERROR("DSI trancoder not configured in command mode\n");
+		return;
+	}
+
+	/* Get PIPE for handling VBLANK event */
+	val = I915_READ(TRANS_DDI_FUNC_CTL(dsi_trans));
+	switch (val & TRANS_DDI_EDP_INPUT_MASK) {
+	case TRANS_DDI_EDP_INPUT_A_ON:
+		pipe = PIPE_A;
+		break;
+	case TRANS_DDI_EDP_INPUT_B_ONOFF:
+		pipe = PIPE_B;
+		break;
+	case TRANS_DDI_EDP_INPUT_C_ONOFF:
+		pipe = PIPE_C;
+		break;
+	default:
+		DRM_ERROR("Invalid PIPE\n");
+	}
+
+	/* clear TE in dsi IIR */
+	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
+	tmp = I915_READ(DSI_INTR_IDENT_REG(port));
+	I915_WRITE(DSI_INTR_IDENT_REG(port), tmp);
+
+	drm_handle_vblank(&dev_priv->drm, pipe);
+}
+
 static irqreturn_t
 gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 {
@@ -2294,6 +2350,14 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 				found = true;
 			}
 
+			if (INTEL_GEN(dev_priv) >= 11) {
+				tmp_mask = iir & (DSI0_TE | DSI1_TE);
+				if (tmp_mask) {
+					gen11_dsi_te_interrupt_handler(dev_priv, tmp_mask);
+					found = true;
+				}
+			}
+
 			if (!found)
 				DRM_ERROR("Unexpected DE Port interrupt\n");
 		}
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
