Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3C6144307
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 18:20:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C86C6EDEF;
	Tue, 21 Jan 2020 17:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75A96ED20;
 Tue, 21 Jan 2020 14:32:06 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id d16so3419827wre.10;
 Tue, 21 Jan 2020 06:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=BKzjh1mWJS7uNNwFhcl5hs0Za+t5SKpiQwE1FgRQkiQ=;
 b=td1MpXYYP+u4O83G5ICBFAQlKeMrKixBYsdWGrUVak43GHHbVTyjeSHz9zWTSwJykf
 cNz+R4PIR0ohFjDXpF1lVBGAmsAfJV6/F0AyQjAW5Vk2P2IIrH2e23X6uicKNa2HkhOP
 OBed30ErQP0aLGzzsG8YCy490oOcKOueQVgHgzgF+nQIyGfPQGJJyWqbB0jOZCpIDj5u
 sOlkWVTpkBNAwUx1k+L1G9anzGKz0lIWwRGz7ZZEqiSHQmXiJsXhX/p5jcWrGCEIUzph
 fk+ugL3syIKf4HUcwhRN1deguvagRbm/AWew9L1HthgO5vKtzp+JwG4voSg6LVsdWXSZ
 3U3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=BKzjh1mWJS7uNNwFhcl5hs0Za+t5SKpiQwE1FgRQkiQ=;
 b=q3ysaZh2RQi0B5ASz7xIx8P+z4AB0n91CmmXZbmfxcjLygKRJb87H1mLoTVsiJ8aZs
 CoSRjqbiKcqJXygbDMkjk2ZirFaCU/9FlK/804LXNGswfN0b6mG/cjqe2u4GhxLRXhWe
 iaudNPc0kUFnv0fRPj0AvBaAAli+NTyC+pTSod26jI+nPyFbjy9g92I6XGhL4GUjOZwX
 KfVK7iA8Cl6QImW5IL/xLAd3idmHrJXb/43xDJjEJeFjfraPu/CNDAl8o1rD5IEDs7oj
 QqvTjjXI4vZlkWPWcK6vxKwEVdMLzuHSf6utm4iKSxPxazqj8n/nS253uFW1PyIQ+OAI
 JrBQ==
X-Gm-Message-State: APjAAAWMoLospj6LySwqA5gnWi23p3ijBZv3cGrj/lR6pNFctGGvvx5c
 z/BqcPr7Zq1nIF+gmvf/2a8=
X-Google-Smtp-Source: APXvYqy/C0mpc16YxEaeK4DdXQgEaQwtt/G6BnYWePDQWWWTONNTqzUGxWBWd/Q9Xcy4KDvhpXEg6g==
X-Received: by 2002:a5d:4ed0:: with SMTP id s16mr5658252wrv.144.1579617125395; 
 Tue, 21 Jan 2020 06:32:05 -0800 (PST)
Received: from localhost.localdomain ([197.254.95.38])
 by smtp.googlemail.com with ESMTPSA id g2sm52781284wrw.76.2020.01.21.06.32.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 06:32:04 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Tue, 21 Jan 2020 17:31:50 +0300
Message-Id: <20200121143155.20856-2-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121143155.20856-1-wambui.karugax@gmail.com>
References: <20200121143155.20856-1-wambui.karugax@gmail.com>
X-Mailman-Approved-At: Tue, 21 Jan 2020 17:20:38 +0000
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/dsi: conversion to struct
 drm_device log macros
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This converts the more straightforward instances of the printk based
logging macros with the struct drm_device based logging macros.
This transformation was achieved using coccinelle and the following
script for matching an existing struct drm_i915_private device:
@rule1@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@rule2@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

New checkpatch warnings were fixed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 82 ++++++++++++++++----------
 1 file changed, 51 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index a7457303c62e..1186a5df057e 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -55,7 +55,7 @@ static void wait_for_header_credits(struct drm_i915_private *dev_priv,
 {
 	if (wait_for_us(header_credits_available(dev_priv, dsi_trans) >=
 			MAX_HEADER_CREDIT, 100))
-		DRM_ERROR("DSI header credits not released\n");
+		drm_err(&dev_priv->drm, "DSI header credits not released\n");
 }
 
 static void wait_for_payload_credits(struct drm_i915_private *dev_priv,
@@ -63,7 +63,7 @@ static void wait_for_payload_credits(struct drm_i915_private *dev_priv,
 {
 	if (wait_for_us(payload_credits_available(dev_priv, dsi_trans) >=
 			MAX_PLOAD_CREDIT, 100))
-		DRM_ERROR("DSI payload credits not released\n");
+		drm_err(&dev_priv->drm, "DSI payload credits not released\n");
 }
 
 static enum transcoder dsi_port_to_transcoder(enum port port)
@@ -97,7 +97,8 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 		dsi->channel = 0;
 		ret = mipi_dsi_dcs_nop(dsi);
 		if (ret < 0)
-			DRM_ERROR("error sending DCS NOP command\n");
+			drm_err(&dev_priv->drm,
+				"error sending DCS NOP command\n");
 	}
 
 	/* wait for header credits to be released */
@@ -111,7 +112,7 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 		dsi_trans = dsi_port_to_transcoder(port);
 		if (wait_for_us(!(I915_READ(DSI_LP_MSG(dsi_trans)) &
 				  LPTX_IN_PROGRESS), 20))
-			DRM_ERROR("LPTX bit not cleared\n");
+			drm_err(&dev_priv->drm, "LPTX bit not cleared\n");
 	}
 }
 
@@ -129,7 +130,8 @@ static bool add_payld_to_queue(struct intel_dsi_host *host, const u8 *data,
 
 		free_credits = payload_credits_available(dev_priv, dsi_trans);
 		if (free_credits < 1) {
-			DRM_ERROR("Payload credit not available\n");
+			drm_err(&dev_priv->drm,
+				"Payload credit not available\n");
 			return false;
 		}
 
@@ -154,7 +156,8 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 	/* check if header credit available */
 	free_credits = header_credits_available(dev_priv, dsi_trans);
 	if (free_credits < 1) {
-		DRM_ERROR("send pkt header failed, not enough hdr credits\n");
+		drm_err(&dev_priv->drm,
+			"send pkt header failed, not enough hdr credits\n");
 		return -1;
 	}
 
@@ -286,7 +289,8 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
 		dl_buffer_depth = hactive / 2 + intel_dsi->pixel_overlap;
 
 		if (dl_buffer_depth > MAX_DL_BUFFER_TARGET_DEPTH)
-			DRM_ERROR("DL buffer depth exceed max value\n");
+			drm_err(&dev_priv->drm,
+				"DL buffer depth exceed max value\n");
 
 		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
 		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
@@ -500,7 +504,8 @@ static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
 		if (wait_for_us(!(I915_READ(DDI_BUF_CTL(port)) &
 				  DDI_BUF_IS_IDLE),
 				  500))
-			DRM_ERROR("DDI port:%c buffer idle\n", port_name(port));
+			drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
+				port_name(port));
 	}
 }
 
@@ -780,7 +785,7 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		dsi_trans = dsi_port_to_transcoder(port);
 		if (wait_for_us((I915_READ(DSI_TRANS_FUNC_CONF(dsi_trans)) &
 				LINK_READY), 2500))
-			DRM_ERROR("DSI link not ready\n");
+			drm_err(&dev_priv->drm, "DSI link not ready\n");
 	}
 }
 
@@ -836,11 +841,12 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 
 	/* minimum hactive as per bspec: 256 pixels */
 	if (adjusted_mode->crtc_hdisplay < 256)
-		DRM_ERROR("hactive is less then 256 pixels\n");
+		drm_err(&dev_priv->drm, "hactive is less then 256 pixels\n");
 
 	/* if RGB666 format, then hactive must be multiple of 4 pixels */
 	if (intel_dsi->pixel_format == MIPI_DSI_FMT_RGB666 && hactive % 4 != 0)
-		DRM_ERROR("hactive pixels are not multiple of 4\n");
+		drm_err(&dev_priv->drm,
+			"hactive pixels are not multiple of 4\n");
 
 	/* program TRANS_HTOTAL register */
 	for_each_dsi_port(port, intel_dsi->ports) {
@@ -855,11 +861,12 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		    VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE) {
 			/* BSPEC: hsync size should be atleast 16 pixels */
 			if (hsync_size < 16)
-				DRM_ERROR("hsync size < 16 pixels\n");
+				drm_err(&dev_priv->drm,
+					"hsync size < 16 pixels\n");
 		}
 
 		if (hback_porch < 16)
-			DRM_ERROR("hback porch < 16 pixels\n");
+			drm_err(&dev_priv->drm, "hback porch < 16 pixels\n");
 
 		if (intel_dsi->dual_link) {
 			hsync_start /= 2;
@@ -887,10 +894,10 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	}
 
 	if (vsync_end < vsync_start || vsync_end > vtotal)
-		DRM_ERROR("Invalid vsync_end value\n");
+		drm_err(&dev_priv->drm, "Invalid vsync_end value\n");
 
 	if (vsync_start < vactive)
-		DRM_ERROR("vsync_start less than vactive\n");
+		drm_err(&dev_priv->drm, "vsync_start less than vactive\n");
 
 	/* program TRANS_VSYNC register */
 	for_each_dsi_port(port, intel_dsi->ports) {
@@ -937,7 +944,8 @@ static void gen11_dsi_enable_transcoder(struct intel_encoder *encoder)
 		/* wait for transcoder to be enabled */
 		if (intel_de_wait_for_set(dev_priv, PIPECONF(dsi_trans),
 					  I965_PIPECONF_ACTIVE, 10))
-			DRM_ERROR("DSI transcoder not enabled\n");
+			drm_err(&dev_priv->drm,
+				"DSI transcoder not enabled\n");
 	}
 }
 
@@ -1048,7 +1056,8 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 		dsi = intel_dsi->dsi_hosts[port]->device;
 		ret = mipi_dsi_set_maximum_return_packet_size(dsi, tmp);
 		if (ret < 0)
-			DRM_ERROR("error setting max return pkt size%d\n", tmp);
+			drm_err(&dev_priv->drm,
+				"error setting max return pkt size%d\n", tmp);
 	}
 
 	/* panel power on related mipi dsi vbt sequences */
@@ -1120,7 +1129,8 @@ static void gen11_dsi_disable_transcoder(struct intel_encoder *encoder)
 		/* wait for transcoder to be disabled */
 		if (intel_de_wait_for_clear(dev_priv, PIPECONF(dsi_trans),
 					    I965_PIPECONF_ACTIVE, 50))
-			DRM_ERROR("DSI trancoder not disabled\n");
+			drm_err(&dev_priv->drm,
+				"DSI trancoder not disabled\n");
 	}
 }
 
@@ -1155,7 +1165,7 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 		if (wait_for_us((I915_READ(DSI_LP_MSG(dsi_trans)) &
 				LINK_IN_ULPS),
 				10))
-			DRM_ERROR("DSI link not in ULPS\n");
+			drm_err(&dev_priv->drm, "DSI link not in ULPS\n");
 	}
 
 	/* disable ddi function */
@@ -1193,8 +1203,9 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 		if (wait_for_us((I915_READ(DDI_BUF_CTL(port)) &
 				 DDI_BUF_IS_IDLE),
 				 8))
-			DRM_ERROR("DDI port:%c buffer not idle\n",
-				  port_name(port));
+			drm_err(&dev_priv->drm,
+				"DDI port:%c buffer not idle\n",
+				port_name(port));
 	}
 	gen11_dsi_gate_clocks(encoder);
 }
@@ -1458,7 +1469,7 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 			*pipe = PIPE_D;
 			break;
 		default:
-			DRM_ERROR("Invalid PIPE input\n");
+			drm_err(&dev_priv->drm, "Invalid PIPE input\n");
 			goto out;
 		}
 
@@ -1582,7 +1593,8 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	 */
 	prepare_cnt = DIV_ROUND_UP(ths_prepare_ns * 4, tlpx_ns);
 	if (prepare_cnt > ICL_PREPARE_CNT_MAX) {
-		DRM_DEBUG_KMS("prepare_cnt out of range (%d)\n", prepare_cnt);
+		drm_dbg_kms(&dev_priv->drm, "prepare_cnt out of range (%d)\n",
+			    prepare_cnt);
 		prepare_cnt = ICL_PREPARE_CNT_MAX;
 	}
 
@@ -1590,28 +1602,33 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	clk_zero_cnt = DIV_ROUND_UP(mipi_config->tclk_prepare_clkzero -
 				    ths_prepare_ns, tlpx_ns);
 	if (clk_zero_cnt > ICL_CLK_ZERO_CNT_MAX) {
-		DRM_DEBUG_KMS("clk_zero_cnt out of range (%d)\n", clk_zero_cnt);
+		drm_dbg_kms(&dev_priv->drm,
+			    "clk_zero_cnt out of range (%d)\n", clk_zero_cnt);
 		clk_zero_cnt = ICL_CLK_ZERO_CNT_MAX;
 	}
 
 	/* trail cnt in escape clocks*/
 	trail_cnt = DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
 	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
-		DRM_DEBUG_KMS("trail_cnt out of range (%d)\n", trail_cnt);
+		drm_dbg_kms(&dev_priv->drm, "trail_cnt out of range (%d)\n",
+			    trail_cnt);
 		trail_cnt = ICL_TRAIL_CNT_MAX;
 	}
 
 	/* tclk pre count in escape clocks */
 	tclk_pre_cnt = DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
 	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) {
-		DRM_DEBUG_KMS("tclk_pre_cnt out of range (%d)\n", tclk_pre_cnt);
+		drm_dbg_kms(&dev_priv->drm,
+			    "tclk_pre_cnt out of range (%d)\n", tclk_pre_cnt);
 		tclk_pre_cnt = ICL_TCLK_PRE_CNT_MAX;
 	}
 
 	/* tclk post count in escape clocks */
 	tclk_post_cnt = DIV_ROUND_UP(mipi_config->tclk_post, tlpx_ns);
 	if (tclk_post_cnt > ICL_TCLK_POST_CNT_MAX) {
-		DRM_DEBUG_KMS("tclk_post_cnt out of range (%d)\n", tclk_post_cnt);
+		drm_dbg_kms(&dev_priv->drm,
+			    "tclk_post_cnt out of range (%d)\n",
+			    tclk_post_cnt);
 		tclk_post_cnt = ICL_TCLK_POST_CNT_MAX;
 	}
 
@@ -1619,14 +1636,17 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	hs_zero_cnt = DIV_ROUND_UP(mipi_config->ths_prepare_hszero -
 				   ths_prepare_ns, tlpx_ns);
 	if (hs_zero_cnt > ICL_HS_ZERO_CNT_MAX) {
-		DRM_DEBUG_KMS("hs_zero_cnt out of range (%d)\n", hs_zero_cnt);
+		drm_dbg_kms(&dev_priv->drm, "hs_zero_cnt out of range (%d)\n",
+			    hs_zero_cnt);
 		hs_zero_cnt = ICL_HS_ZERO_CNT_MAX;
 	}
 
 	/* hs exit zero cnt in escape clocks */
 	exit_zero_cnt = DIV_ROUND_UP(mipi_config->ths_exit, tlpx_ns);
 	if (exit_zero_cnt > ICL_EXIT_ZERO_CNT_MAX) {
-		DRM_DEBUG_KMS("exit_zero_cnt out of range (%d)\n", exit_zero_cnt);
+		drm_dbg_kms(&dev_priv->drm,
+			    "exit_zero_cnt out of range (%d)\n",
+			    exit_zero_cnt);
 		exit_zero_cnt = ICL_EXIT_ZERO_CNT_MAX;
 	}
 
@@ -1737,7 +1757,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev->mode_config.mutex);
 
 	if (!fixed_mode) {
-		DRM_ERROR("DSI fixed mode info missing\n");
+		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
 		goto err;
 	}
 
@@ -1763,7 +1783,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	}
 
 	if (!intel_dsi_vbt_init(intel_dsi, MIPI_DSI_GENERIC_PANEL_ID)) {
-		DRM_DEBUG_KMS("no device found\n");
+		drm_dbg_kms(&dev_priv->drm, "no device found\n");
 		goto err;
 	}
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
