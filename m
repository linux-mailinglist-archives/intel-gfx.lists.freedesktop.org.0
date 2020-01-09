Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBF313583D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 12:42:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F3526E3FB;
	Thu,  9 Jan 2020 11:41:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF1A6E408
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 11:41:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 03:41:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="223264626"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga006.jf.intel.com with ESMTP; 09 Jan 2020 03:41:56 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 16:38:30 +0530
Message-Id: <20200109110835.29764-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200109110835.29764-1-vandita.kulkarni@intel.com>
References: <20200109110835.29764-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V6 4/9] drm/i915/dsi: Add check for periodic command
 mode
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

If the GOP has programmed periodic command mode,
we need to disable that which would need a
deconfigure and configure sequence.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 66dc8be672b8..3ad8cedb5211 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1378,6 +1378,21 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
 	adjusted_mode->crtc_vblank_end = adjusted_mode->crtc_vtotal;
 }
 
+bool gen11_dsi_is_periodic_cmd_mode(struct drm_i915_private *dev_priv,
+				    struct intel_dsi *intel_dsi)
+{
+	u32 val;
+	enum transcoder dsi_trans;
+
+	if (intel_dsi->ports == BIT(PORT_B))
+		dsi_trans = TRANSCODER_DSI_1;
+	else
+		dsi_trans = TRANSCODER_DSI_0;
+
+	val = I915_READ(DSI_TRANS_FUNC_CONF(dsi_trans));
+	return (val & DSI_PERIODIC_FRAME_UPDATE_ENABLE);
+}
+
 static void gen11_dsi_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
@@ -1398,6 +1413,10 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
 	gen11_dsi_get_timings(encoder, pipe_config);
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_DSI);
 	pipe_config->pipe_bpp = bdw_get_pipemisc_bpp(crtc);
+
+	if (gen11_dsi_is_periodic_cmd_mode(dev_priv, intel_dsi))
+		pipe_config->hw.adjusted_mode.private_flags |=
+					I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE;
 }
 
 static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
@@ -1479,6 +1498,10 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->port_clock = afe_clk(encoder, pipe_config) / 5;
 
+	/* We would not opereate in peridoc command mode */
+	pipe_config->hw.adjusted_mode.private_flags &=
+					~I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE;
+
 	return 0;
 }
 
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
