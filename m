Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5F7150705
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:21:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423BD6E34C;
	Mon,  3 Feb 2020 13:21:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E92F56E364
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 13:21:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 05:21:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="231020897"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 03 Feb 2020 05:21:45 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 18:17:30 +0530
Message-Id: <20200203124735.365-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200203124735.365-1-vandita.kulkarni@intel.com>
References: <20200203124735.365-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V7 4/9] drm/i915/dsi: Add check for periodic command
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

v2: Fix sparse error, pass only intel_dsi (Jani)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 04df45d627b2..776d9feb8481 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1419,6 +1419,22 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
 	adjusted_mode->crtc_vblank_end = adjusted_mode->crtc_vtotal;
 }
 
+static bool gen11_dsi_is_periodic_cmd_mode(struct intel_dsi *intel_dsi)
+{
+	struct drm_device *dev = intel_dsi->base.base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum transcoder dsi_trans;
+	u32 val;
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
@@ -1439,6 +1455,10 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
 	gen11_dsi_get_timings(encoder, pipe_config);
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_DSI);
 	pipe_config->pipe_bpp = bdw_get_pipemisc_bpp(crtc);
+
+	if (gen11_dsi_is_periodic_cmd_mode(intel_dsi))
+		pipe_config->hw.adjusted_mode.private_flags |=
+					I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE;
 }
 
 static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
@@ -1522,6 +1542,10 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->port_clock = afe_clk(encoder, pipe_config) / 5;
 
+	/* We would not operate in periodic command mode */
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
