Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4271828D1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 07:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E871B6EA2F;
	Thu, 12 Mar 2020 06:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1290C6EA2E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 06:14:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 23:14:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="242923099"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2020 23:14:27 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Mar 2020 11:08:36 +0530
Message-Id: <20200312053841.2794-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200312053841.2794-1-vandita.kulkarni@intel.com>
References: <20200312053841.2794-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V8 4/9] drm/i915/dsi: Add check for periodic command
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
v3: Use intel_de_read

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 17aa3fd780a8..949f4867402b 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1423,6 +1423,22 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
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
+	val = intel_de_read(dev_priv, DSI_TRANS_FUNC_CONF(dsi_trans));
+	return (val & DSI_PERIODIC_FRAME_UPDATE_ENABLE);
+}
+
 static void gen11_dsi_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
@@ -1443,6 +1459,10 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
 	gen11_dsi_get_timings(encoder, pipe_config);
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_DSI);
 	pipe_config->pipe_bpp = bdw_get_pipemisc_bpp(crtc);
+
+	if (gen11_dsi_is_periodic_cmd_mode(intel_dsi))
+		pipe_config->hw.adjusted_mode.private_flags |=
+					I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE;
 }
 
 static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
@@ -1526,6 +1546,10 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 
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
