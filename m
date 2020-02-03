Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74781150702
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:21:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA546E343;
	Mon,  3 Feb 2020 13:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B99606E348
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 13:21:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 05:21:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="231020866"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 03 Feb 2020 05:21:38 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 18:17:27 +0530
Message-Id: <20200203124735.365-2-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200203124735.365-1-vandita.kulkarni@intel.com>
References: <20200203124735.365-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V7 1/9] drm/i915/dsi: Configure transcoder operation
 for command mode.
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

Configure the transcoder to operate in TE GATE command mode
and  take TE events from GPIO.
Also disable the periodic command mode, that GOP would have
programmed.

v2: Disable util pin (Jani)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 52 ++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index d842e280699d..ce5e38c16201 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -744,6 +744,18 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 				tmp |= VIDEO_MODE_SYNC_PULSE;
 				break;
 			}
+		} else {
+			/*
+			 * FIXME: Retrieve this info from VBT.
+			 * As per the spec when dsi transcoder is operating
+			 * in TE GATE mode, TE comes from GPIO
+			 * which is UTIL PIN for DSI 0.
+			 * Also this GPIO would not be used for other
+			 * purposes is an assumption.
+			 */
+			tmp &= ~OP_MODE_MASK;
+			tmp |= CMD_MODE_TE_GATE;
+			tmp |= TE_SOURCE_GPIO;
 		}
 
 		intel_de_write(dev_priv, DSI_TRANS_FUNC_CONF(dsi_trans), tmp);
@@ -1016,6 +1028,32 @@ static void gen11_dsi_setup_timeouts(struct intel_encoder *encoder,
 	}
 }
 
+static void gen11_dsi_config_util_pin(struct intel_encoder *encoder,
+				      bool enable)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(&encoder->base);
+	u32 tmp;
+
+	/*
+	 * used as TE i/p for DSI0,
+	 * for dual link/DSI1 TE is from slave DSI1
+	 * through GPIO.
+	 */
+	if (is_vid_mode(intel_dsi) || (intel_dsi->ports & BIT(PORT_B)))
+		return;
+
+	tmp = I915_READ(UTIL_PIN_CTL);
+
+	if (enable) {
+		tmp |= UTIL_PIN_DIRECTION_INPUT;
+		tmp |= UTIL_PIN_ENABLE;
+	} else {
+		tmp &= ~UTIL_PIN_ENABLE;
+	}
+	I915_WRITE(UTIL_PIN_CTL, tmp);
+}
+
 static void
 gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
@@ -1037,6 +1075,9 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
 	/* setup D-PHY timings */
 	gen11_dsi_setup_dphy_timings(encoder, crtc_state);
 
+	/* Since transcoder is configured to take events from GPIO */
+	gen11_dsi_config_util_pin(encoder, true);
+
 	/* step 4h: setup DSI protocol timeouts */
 	gen11_dsi_setup_timeouts(encoder, crtc_state);
 
@@ -1180,6 +1221,15 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 	enum transcoder dsi_trans;
 	u32 tmp;
 
+	/* disable periodic update mode */
+	if (is_cmd_mode(intel_dsi)) {
+		for_each_dsi_port(port, intel_dsi->ports) {
+			tmp = I915_READ(DSI_CMD_FRMCTL(port));
+			tmp &= ~DSI_PERIODIC_FRAME_UPDATE_ENABLE;
+			I915_WRITE(DSI_CMD_FRMCTL(port), tmp);
+		}
+	}
+
 	/* put dsi link in ULPS */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
@@ -1286,6 +1336,8 @@ static void gen11_dsi_disable(struct intel_encoder *encoder,
 	/* step3: disable port */
 	gen11_dsi_disable_port(encoder);
 
+	gen11_dsi_config_util_pin(encoder, false);
+
 	/* step4: disable IO power */
 	gen11_dsi_disable_io_power(encoder);
 }
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
