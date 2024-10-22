Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BBF9AB2EF
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 17:58:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E4410E6BC;
	Tue, 22 Oct 2024 15:58:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kbk3cBAz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420A110E6BC;
 Tue, 22 Oct 2024 15:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729612706; x=1761148706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e+oH+PW1FhIOLJvF1IbuSnlr4ANNA8P5P4A7xKsxzQo=;
 b=kbk3cBAzjZdWUJrZPL1+Ha428LowQNfVQKuychWDn8q7Ima79luN+KEC
 7qCKBVYYtEqwDyP5xM2SDrrTHohU/p54XaJkfN7Va0LOCo9u1KtZI+zmh
 4GEwUrEC+wdtk7MXRzub9ZR7zhKvoOB54+6aRaPUCwnJsg4qCHtf/BTkd
 E4oyLh8y93Yz4FVKQnNLbpvJlUhbg/q6LxxeI2FFpYJo8aa1k2taZ+7+C
 eu9MC/j1fmKkVCATUBfIKwHbf2w9DC5Q0atGcm3cZDl2OrTgR78Jz/F7g
 WTU+QxIzVeNVdImXoLqhzF57v6Pi1pXeAcNYt1YKRqzslIu34hc2BsMHz A==;
X-CSE-ConnectionGUID: OMnJKv1NRAyF2xDNtcoEXg==
X-CSE-MsgGUID: KUBuzkMVRpeCIeDXOJ8ftQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="28612897"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="28612897"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:58:25 -0700
X-CSE-ConnectionGUID: jbLJwVh5SmaV2VjstWOhPg==
X-CSE-MsgGUID: eH9kD2kUSy6gJW4/1+VSaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="83891891"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:58:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/11] drm/i915/dsi: convert to struct intel_display
Date: Tue, 22 Oct 2024 18:57:27 +0300
Message-Id: <5385635d9c8b83bad7b47c0832cd992c8387899c.1729612605.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729612605.git.jani.nikula@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

struct intel_display will replace struct drm_i915_private as the main
device pointer for display code. Switch ICL DSI code over to it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c   | 444 ++++++++++++-----------
 drivers/gpu/drm/i915/display/icl_dsi.h   |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c |   2 +-
 3 files changed, 227 insertions(+), 223 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 87a27d91d15d..b61f2363d5c2 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -51,38 +51,38 @@
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
-static int header_credits_available(struct drm_i915_private *dev_priv,
+static int header_credits_available(struct intel_display *display,
 				    enum transcoder dsi_trans)
 {
-	return (intel_de_read(dev_priv, DSI_CMD_TXCTL(dsi_trans)) & FREE_HEADER_CREDIT_MASK)
+	return (intel_de_read(display, DSI_CMD_TXCTL(dsi_trans)) & FREE_HEADER_CREDIT_MASK)
 		>> FREE_HEADER_CREDIT_SHIFT;
 }
 
-static int payload_credits_available(struct drm_i915_private *dev_priv,
+static int payload_credits_available(struct intel_display *display,
 				     enum transcoder dsi_trans)
 {
-	return (intel_de_read(dev_priv, DSI_CMD_TXCTL(dsi_trans)) & FREE_PLOAD_CREDIT_MASK)
+	return (intel_de_read(display, DSI_CMD_TXCTL(dsi_trans)) & FREE_PLOAD_CREDIT_MASK)
 		>> FREE_PLOAD_CREDIT_SHIFT;
 }
 
-static bool wait_for_header_credits(struct drm_i915_private *dev_priv,
+static bool wait_for_header_credits(struct intel_display *display,
 				    enum transcoder dsi_trans, int hdr_credit)
 {
-	if (wait_for_us(header_credits_available(dev_priv, dsi_trans) >=
+	if (wait_for_us(header_credits_available(display, dsi_trans) >=
 			hdr_credit, 100)) {
-		drm_err(&dev_priv->drm, "DSI header credits not released\n");
+		drm_err(display->drm, "DSI header credits not released\n");
 		return false;
 	}
 
 	return true;
 }
 
-static bool wait_for_payload_credits(struct drm_i915_private *dev_priv,
+static bool wait_for_payload_credits(struct intel_display *display,
 				     enum transcoder dsi_trans, int payld_credit)
 {
-	if (wait_for_us(payload_credits_available(dev_priv, dsi_trans) >=
+	if (wait_for_us(payload_credits_available(display, dsi_trans) >=
 			payld_credit, 100)) {
-		drm_err(&dev_priv->drm, "DSI payload credits not released\n");
+		drm_err(display->drm, "DSI payload credits not released\n");
 		return false;
 	}
 
@@ -99,7 +99,7 @@ static enum transcoder dsi_port_to_transcoder(enum port port)
 
 static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct mipi_dsi_device *dsi;
 	enum port port;
@@ -109,8 +109,8 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 	/* wait for header/payload credits to be released */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		wait_for_header_credits(dev_priv, dsi_trans, MAX_HEADER_CREDIT);
-		wait_for_payload_credits(dev_priv, dsi_trans, MAX_PLOAD_CREDIT);
+		wait_for_header_credits(display, dsi_trans, MAX_HEADER_CREDIT);
+		wait_for_payload_credits(display, dsi_trans, MAX_PLOAD_CREDIT);
 	}
 
 	/* send nop DCS command */
@@ -120,22 +120,22 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 		dsi->channel = 0;
 		ret = mipi_dsi_dcs_nop(dsi);
 		if (ret < 0)
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"error sending DCS NOP command\n");
 	}
 
 	/* wait for header credits to be released */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		wait_for_header_credits(dev_priv, dsi_trans, MAX_HEADER_CREDIT);
+		wait_for_header_credits(display, dsi_trans, MAX_HEADER_CREDIT);
 	}
 
 	/* wait for LP TX in progress bit to be cleared */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		if (wait_for_us(!(intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans)) &
+		if (wait_for_us(!(intel_de_read(display, DSI_LP_MSG(dsi_trans)) &
 				  LPTX_IN_PROGRESS), 20))
-			drm_err(&dev_priv->drm, "LPTX bit not cleared\n");
+			drm_err(display->drm, "LPTX bit not cleared\n");
 	}
 }
 
@@ -143,7 +143,7 @@ static int dsi_send_pkt_payld(struct intel_dsi_host *host,
 			      const struct mipi_dsi_packet *packet)
 {
 	struct intel_dsi *intel_dsi = host->intel_dsi;
-	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
 	const u8 *data = packet->payload;
 	u32 len = packet->payload_length;
@@ -151,20 +151,20 @@ static int dsi_send_pkt_payld(struct intel_dsi_host *host,
 
 	/* payload queue can accept *256 bytes*, check limit */
 	if (len > MAX_PLOAD_CREDIT * 4) {
-		drm_err(&i915->drm, "payload size exceeds max queue limit\n");
+		drm_err(display->drm, "payload size exceeds max queue limit\n");
 		return -EINVAL;
 	}
 
 	for (i = 0; i < len; i += 4) {
 		u32 tmp = 0;
 
-		if (!wait_for_payload_credits(i915, dsi_trans, 1))
+		if (!wait_for_payload_credits(display, dsi_trans, 1))
 			return -EBUSY;
 
 		for (j = 0; j < min_t(u32, len - i, 4); j++)
 			tmp |= *data++ << 8 * j;
 
-		intel_de_write(i915, DSI_CMD_TXPYLD(dsi_trans), tmp);
+		intel_de_write(display, DSI_CMD_TXPYLD(dsi_trans), tmp);
 	}
 
 	return 0;
@@ -175,14 +175,14 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 			    bool enable_lpdt)
 {
 	struct intel_dsi *intel_dsi = host->intel_dsi;
-	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
 	u32 tmp;
 
-	if (!wait_for_header_credits(dev_priv, dsi_trans, 1))
+	if (!wait_for_header_credits(display, dsi_trans, 1))
 		return -EBUSY;
 
-	tmp = intel_de_read(dev_priv, DSI_CMD_TXHDR(dsi_trans));
+	tmp = intel_de_read(display, DSI_CMD_TXHDR(dsi_trans));
 
 	if (packet->payload)
 		tmp |= PAYLOAD_PRESENT;
@@ -201,15 +201,14 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 	tmp |= ((packet->header[0] & DT_MASK) << DT_SHIFT);
 	tmp |= (packet->header[1] << PARAM_WC_LOWER_SHIFT);
 	tmp |= (packet->header[2] << PARAM_WC_UPPER_SHIFT);
-	intel_de_write(dev_priv, DSI_CMD_TXHDR(dsi_trans), tmp);
+	intel_de_write(display, DSI_CMD_TXHDR(dsi_trans), tmp);
 
 	return 0;
 }
 
 void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	u32 mode_flags;
 	enum port port;
 
@@ -227,12 +226,13 @@ void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
 	else
 		return;
 
-	intel_de_rmw(dev_priv, DSI_CMD_FRMCTL(port), 0, DSI_FRAME_UPDATE_REQUEST);
+	intel_de_rmw(display, DSI_CMD_FRMCTL(port), 0,
+		     DSI_FRAME_UPDATE_REQUEST);
 }
 
 static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum phy phy;
 	u32 tmp, mask, val;
@@ -246,31 +246,31 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 		mask = SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK;
 		val = SCALING_MODE_SEL(0x2) | TAP2_DISABLE | TAP3_DISABLE |
 		      RTERM_SELECT(0x6);
-		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
+		tmp = intel_de_read(display, ICL_PORT_TX_DW5_LN(0, phy));
 		tmp &= ~mask;
 		tmp |= val;
-		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW5_AUX(phy), mask, val);
+		intel_de_write(display, ICL_PORT_TX_DW5_GRP(phy), tmp);
+		intel_de_rmw(display, ICL_PORT_TX_DW5_AUX(phy), mask, val);
 
 		mask = SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
 		       RCOMP_SCALAR_MASK;
 		val = SWING_SEL_UPPER(0x2) | SWING_SEL_LOWER(0x2) |
 		      RCOMP_SCALAR(0x98);
-		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
+		tmp = intel_de_read(display, ICL_PORT_TX_DW2_LN(0, phy));
 		tmp &= ~mask;
 		tmp |= val;
-		intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), tmp);
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW2_AUX(phy), mask, val);
+		intel_de_write(display, ICL_PORT_TX_DW2_GRP(phy), tmp);
+		intel_de_rmw(display, ICL_PORT_TX_DW2_AUX(phy), mask, val);
 
 		mask = POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
 		       CURSOR_COEFF_MASK;
 		val = POST_CURSOR_1(0x0) | POST_CURSOR_2(0x0) |
 		      CURSOR_COEFF(0x3f);
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_AUX(phy), mask, val);
+		intel_de_rmw(display, ICL_PORT_TX_DW4_AUX(phy), mask, val);
 
 		/* Bspec: must not use GRP register for write */
 		for (lane = 0; lane <= 3; lane++)
-			intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_LN(lane, phy),
+			intel_de_rmw(display, ICL_PORT_TX_DW4_LN(lane, phy),
 				     mask, val);
 	}
 }
@@ -278,13 +278,13 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 static void configure_dual_link_mode(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
 	u32 dss_ctl1;
 
 	/* FIXME: Move all DSS handling to intel_vdsc.c */
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 
 		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(crtc->pipe);
@@ -294,7 +294,7 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
 		dss_ctl2_reg = DSS_CTL2;
 	}
 
-	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg);
+	dss_ctl1 = intel_de_read(display, dss_ctl1_reg);
 	dss_ctl1 |= SPLITTER_ENABLE;
 	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
 	dss_ctl1 |= OVERLAP_PIXELS(intel_dsi->pixel_overlap);
@@ -309,19 +309,19 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
 		dl_buffer_depth = hactive / 2 + intel_dsi->pixel_overlap;
 
 		if (dl_buffer_depth > MAX_DL_BUFFER_TARGET_DEPTH)
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"DL buffer depth exceed max value\n");
 
 		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
 		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
-		intel_de_rmw(dev_priv, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
+		intel_de_rmw(display, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
 			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
 	} else {
 		/* Interleave */
 		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
 	}
 
-	intel_de_write(dev_priv, dss_ctl1_reg, dss_ctl1);
+	intel_de_write(display, dss_ctl1_reg, dss_ctl1);
 }
 
 /* aka DSI 8X clock */
@@ -342,6 +342,7 @@ static int afe_clk(struct intel_encoder *encoder,
 static void gen11_dsi_program_esc_clk_div(struct intel_encoder *encoder,
 					  const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
@@ -361,33 +362,34 @@ static void gen11_dsi_program_esc_clk_div(struct intel_encoder *encoder,
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		intel_de_write(dev_priv, ICL_DSI_ESC_CLK_DIV(port),
+		intel_de_write(display, ICL_DSI_ESC_CLK_DIV(port),
 			       esc_clk_div_m & ICL_ESC_CLK_DIV_MASK);
-		intel_de_posting_read(dev_priv, ICL_DSI_ESC_CLK_DIV(port));
+		intel_de_posting_read(display, ICL_DSI_ESC_CLK_DIV(port));
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		intel_de_write(dev_priv, ICL_DPHY_ESC_CLK_DIV(port),
+		intel_de_write(display, ICL_DPHY_ESC_CLK_DIV(port),
 			       esc_clk_div_m & ICL_ESC_CLK_DIV_MASK);
-		intel_de_posting_read(dev_priv, ICL_DPHY_ESC_CLK_DIV(port));
+		intel_de_posting_read(display, ICL_DPHY_ESC_CLK_DIV(port));
 	}
 
 	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) {
 		for_each_dsi_port(port, intel_dsi->ports) {
-			intel_de_write(dev_priv, ADL_MIPIO_DW(port, 8),
+			intel_de_write(display, ADL_MIPIO_DW(port, 8),
 				       esc_clk_div_m_phy & TX_ESC_CLK_DIV_PHY);
-			intel_de_posting_read(dev_priv, ADL_MIPIO_DW(port, 8));
+			intel_de_posting_read(display, ADL_MIPIO_DW(port, 8));
 		}
 	}
 }
 
-static void get_dsi_io_power_domains(struct drm_i915_private *dev_priv,
-				     struct intel_dsi *intel_dsi)
+static void get_dsi_io_power_domains(struct intel_dsi *intel_dsi)
 {
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		drm_WARN_ON(&dev_priv->drm, intel_dsi->io_wakeref[port]);
+		drm_WARN_ON(display->drm, intel_dsi->io_wakeref[port]);
 		intel_dsi->io_wakeref[port] =
 			intel_display_power_get(dev_priv,
 						port == PORT_A ?
@@ -398,15 +400,15 @@ static void get_dsi_io_power_domains(struct drm_i915_private *dev_priv,
 
 static void gen11_dsi_enable_io_power(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_rmw(dev_priv, ICL_DSI_IO_MODECTL(port),
+		intel_de_rmw(display, ICL_DSI_IO_MODECTL(port),
 			     0, COMBO_PHY_MODE_DSI);
 
-	get_dsi_io_power_domains(dev_priv, intel_dsi);
+	get_dsi_io_power_domains(intel_dsi);
 }
 
 static void gen11_dsi_power_up_lanes(struct intel_encoder *encoder)
@@ -422,6 +424,7 @@ static void gen11_dsi_power_up_lanes(struct intel_encoder *encoder)
 
 static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum phy phy;
@@ -430,32 +433,33 @@ static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
 
 	/* Step 4b(i) set loadgen select for transmit and aux lanes */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_AUX(phy), LOADGEN_SELECT, 0);
+		intel_de_rmw(display, ICL_PORT_TX_DW4_AUX(phy),
+			     LOADGEN_SELECT, 0);
 		for (lane = 0; lane <= 3; lane++)
-			intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_LN(lane, phy),
+			intel_de_rmw(display, ICL_PORT_TX_DW4_LN(lane, phy),
 				     LOADGEN_SELECT, lane != 2 ? LOADGEN_SELECT : 0);
 	}
 
 	/* Step 4b(ii) set latency optimization for transmit and aux lanes */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW2_AUX(phy),
+		intel_de_rmw(display, ICL_PORT_TX_DW2_AUX(phy),
 			     FRC_LATENCY_OPTIM_MASK, FRC_LATENCY_OPTIM_VAL(0x5));
-		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
+		tmp = intel_de_read(display, ICL_PORT_TX_DW2_LN(0, phy));
 		tmp &= ~FRC_LATENCY_OPTIM_MASK;
 		tmp |= FRC_LATENCY_OPTIM_VAL(0x5);
-		intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), tmp);
+		intel_de_write(display, ICL_PORT_TX_DW2_GRP(phy), tmp);
 
 		/* For EHL, TGL, set latency optimization for PCS_DW1 lanes */
 		if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv) ||
-		    (DISPLAY_VER(dev_priv) >= 12)) {
-			intel_de_rmw(dev_priv, ICL_PORT_PCS_DW1_AUX(phy),
+		    (DISPLAY_VER(display) >= 12)) {
+			intel_de_rmw(display, ICL_PORT_PCS_DW1_AUX(phy),
 				     LATENCY_OPTIM_MASK, LATENCY_OPTIM_VAL(0));
 
-			tmp = intel_de_read(dev_priv,
+			tmp = intel_de_read(display,
 					    ICL_PORT_PCS_DW1_LN(0, phy));
 			tmp &= ~LATENCY_OPTIM_MASK;
 			tmp |= LATENCY_OPTIM_VAL(0x1);
-			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy),
+			intel_de_write(display, ICL_PORT_PCS_DW1_GRP(phy),
 				       tmp);
 		}
 	}
@@ -464,17 +468,17 @@ static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
 
 static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	u32 tmp;
 	enum phy phy;
 
 	/* clear common keeper enable bit */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
+		tmp = intel_de_read(display, ICL_PORT_PCS_DW1_LN(0, phy));
 		tmp &= ~COMMON_KEEPER_EN;
-		intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), tmp);
-		intel_de_rmw(dev_priv, ICL_PORT_PCS_DW1_AUX(phy), COMMON_KEEPER_EN, 0);
+		intel_de_write(display, ICL_PORT_PCS_DW1_GRP(phy), tmp);
+		intel_de_rmw(display, ICL_PORT_PCS_DW1_AUX(phy), COMMON_KEEPER_EN, 0);
 	}
 
 	/*
@@ -483,14 +487,15 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
 	 * as part of lane phy sequence configuration
 	 */
 	for_each_dsi_phy(phy, intel_dsi->phys)
-		intel_de_rmw(dev_priv, ICL_PORT_CL_DW5(phy), 0, SUS_CLOCK_CONFIG);
+		intel_de_rmw(display, ICL_PORT_CL_DW5(phy), 0,
+			     SUS_CLOCK_CONFIG);
 
 	/* Clear training enable to change swing values */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
+		tmp = intel_de_read(display, ICL_PORT_TX_DW5_LN(0, phy));
 		tmp &= ~TX_TRAINING_EN;
-		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW5_AUX(phy), TX_TRAINING_EN, 0);
+		intel_de_write(display, ICL_PORT_TX_DW5_GRP(phy), tmp);
+		intel_de_rmw(display, ICL_PORT_TX_DW5_AUX(phy), TX_TRAINING_EN, 0);
 	}
 
 	/* Program swing and de-emphasis */
@@ -498,26 +503,26 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
 
 	/* Set training enable to trigger update */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
+		tmp = intel_de_read(display, ICL_PORT_TX_DW5_LN(0, phy));
 		tmp |= TX_TRAINING_EN;
-		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
-		intel_de_rmw(dev_priv, ICL_PORT_TX_DW5_AUX(phy), 0, TX_TRAINING_EN);
+		intel_de_write(display, ICL_PORT_TX_DW5_GRP(phy), tmp);
+		intel_de_rmw(display, ICL_PORT_TX_DW5_AUX(phy), 0, TX_TRAINING_EN);
 	}
 }
 
 static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		intel_de_rmw(dev_priv, DDI_BUF_CTL(port), 0, DDI_BUF_CTL_ENABLE);
+		intel_de_rmw(display, DDI_BUF_CTL(port), 0, DDI_BUF_CTL_ENABLE);
 
-		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+		if (wait_for_us(!(intel_de_read(display, DDI_BUF_CTL(port)) &
 				  DDI_BUF_IS_IDLE),
 				  500))
-			drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
+			drm_err(display->drm, "DDI port:%c buffer idle\n",
 				port_name(port));
 	}
 }
@@ -526,6 +531,7 @@ static void
 gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
@@ -533,12 +539,12 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 
 	/* Program DPHY clock lanes timings */
 	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_write(dev_priv, DPHY_CLK_TIMING_PARAM(port),
+		intel_de_write(display, DPHY_CLK_TIMING_PARAM(port),
 			       intel_dsi->dphy_reg);
 
 	/* Program DPHY data lanes timings */
 	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_write(dev_priv, DPHY_DATA_TIMING_PARAM(port),
+		intel_de_write(display, DPHY_DATA_TIMING_PARAM(port),
 			       intel_dsi->dphy_data_lane_reg);
 
 	/*
@@ -547,10 +553,10 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 	 * a value '0' inside TA_PARAM_REGISTERS otherwise
 	 * leave all fields at HW default values.
 	 */
-	if (DISPLAY_VER(dev_priv) == 11) {
+	if (DISPLAY_VER(display) == 11) {
 		if (afe_clk(encoder, crtc_state) <= 800000) {
 			for_each_dsi_port(port, intel_dsi->ports)
-				intel_de_rmw(dev_priv, DPHY_TA_TIMING_PARAM(port),
+				intel_de_rmw(display, DPHY_TA_TIMING_PARAM(port),
 					     TA_SURE_MASK,
 					     TA_SURE_OVERRIDE | TA_SURE(0));
 		}
@@ -558,7 +564,7 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 
 	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 		for_each_dsi_phy(phy, intel_dsi->phys)
-			intel_de_rmw(dev_priv, ICL_DPHY_CHKN(phy),
+			intel_de_rmw(display, ICL_DPHY_CHKN(phy),
 				     0, ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP);
 	}
 }
@@ -567,30 +573,30 @@ static void
 gen11_dsi_setup_timings(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
 	/* Program T-INIT master registers */
 	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_rmw(dev_priv, ICL_DSI_T_INIT_MASTER(port),
+		intel_de_rmw(display, ICL_DSI_T_INIT_MASTER(port),
 			     DSI_T_INIT_MASTER_MASK, intel_dsi->init_count);
 
 	/* shadow register inside display core */
 	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_write(dev_priv, DSI_CLK_TIMING_PARAM(port),
+		intel_de_write(display, DSI_CLK_TIMING_PARAM(port),
 			       intel_dsi->dphy_reg);
 
 	/* shadow register inside display core */
 	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_write(dev_priv, DSI_DATA_TIMING_PARAM(port),
+		intel_de_write(display, DSI_DATA_TIMING_PARAM(port),
 			       intel_dsi->dphy_data_lane_reg);
 
 	/* shadow register inside display core */
-	if (DISPLAY_VER(dev_priv) == 11) {
+	if (DISPLAY_VER(display) == 11) {
 		if (afe_clk(encoder, crtc_state) <= 800000) {
 			for_each_dsi_port(port, intel_dsi->ports) {
-				intel_de_rmw(dev_priv, DSI_TA_TIMING_PARAM(port),
+				intel_de_rmw(display, DSI_TA_TIMING_PARAM(port),
 					     TA_SURE_MASK,
 					     TA_SURE_OVERRIDE | TA_SURE(0));
 			}
@@ -600,45 +606,45 @@ gen11_dsi_setup_timings(struct intel_encoder *encoder,
 
 static void gen11_dsi_gate_clocks(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	u32 tmp;
 	enum phy phy;
 
-	mutex_lock(&dev_priv->display.dpll.lock);
-	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
+	mutex_lock(&display->dpll.lock);
+	tmp = intel_de_read(display, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys)
 		tmp |= ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 
-	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
-	mutex_unlock(&dev_priv->display.dpll.lock);
+	intel_de_write(display, ICL_DPCLKA_CFGCR0, tmp);
+	mutex_unlock(&display->dpll.lock);
 }
 
 static void gen11_dsi_ungate_clocks(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	u32 tmp;
 	enum phy phy;
 
-	mutex_lock(&dev_priv->display.dpll.lock);
-	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
+	mutex_lock(&display->dpll.lock);
+	tmp = intel_de_read(display, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys)
 		tmp &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 
-	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
-	mutex_unlock(&dev_priv->display.dpll.lock);
+	intel_de_write(display, ICL_DPCLKA_CFGCR0, tmp);
+	mutex_unlock(&display->dpll.lock);
 }
 
 static bool gen11_dsi_is_clock_enabled(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	bool clock_enabled = false;
 	enum phy phy;
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
+	tmp = intel_de_read(display, ICL_DPCLKA_CFGCR0);
 
 	for_each_dsi_phy(phy, intel_dsi->phys) {
 		if (!(tmp & ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)))
@@ -651,36 +657,36 @@ static bool gen11_dsi_is_clock_enabled(struct intel_encoder *encoder)
 static void gen11_dsi_map_pll(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	enum phy phy;
 	u32 val;
 
-	mutex_lock(&dev_priv->display.dpll.lock);
+	mutex_lock(&display->dpll.lock);
 
-	val = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
+	val = intel_de_read(display, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys) {
 		val &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
 		val |= ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
 	}
-	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
+	intel_de_write(display, ICL_DPCLKA_CFGCR0, val);
 
 	for_each_dsi_phy(phy, intel_dsi->phys) {
 		val &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 	}
-	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
+	intel_de_write(display, ICL_DPCLKA_CFGCR0, val);
 
-	intel_de_posting_read(dev_priv, ICL_DPCLKA_CFGCR0);
+	intel_de_posting_read(display, ICL_DPCLKA_CFGCR0);
 
-	mutex_unlock(&dev_priv->display.dpll.lock);
+	mutex_unlock(&display->dpll.lock);
 }
 
 static void
 gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
@@ -690,7 +696,7 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		tmp = intel_de_read(dev_priv, DSI_TRANS_FUNC_CONF(dsi_trans));
+		tmp = intel_de_read(display, DSI_TRANS_FUNC_CONF(dsi_trans));
 
 		if (intel_dsi->eotp_pkt)
 			tmp &= ~EOTP_DISABLED;
@@ -746,7 +752,7 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 			}
 		}
 
-		if (DISPLAY_VER(dev_priv) >= 12) {
+		if (DISPLAY_VER(display) >= 12) {
 			if (is_vid_mode(intel_dsi))
 				tmp |= BLANKING_PACKET_ENABLE;
 		}
@@ -779,15 +785,15 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 			tmp |= TE_SOURCE_GPIO;
 		}
 
-		intel_de_write(dev_priv, DSI_TRANS_FUNC_CONF(dsi_trans), tmp);
+		intel_de_write(display, DSI_TRANS_FUNC_CONF(dsi_trans), tmp);
 	}
 
 	/* enable port sync mode if dual link */
 	if (intel_dsi->dual_link) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_rmw(dev_priv,
-				     TRANS_DDI_FUNC_CTL2(dev_priv, dsi_trans),
+			intel_de_rmw(display,
+				     TRANS_DDI_FUNC_CTL2(display, dsi_trans),
 				     0, PORT_SYNC_MODE_ENABLE);
 		}
 
@@ -799,8 +805,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		dsi_trans = dsi_port_to_transcoder(port);
 
 		/* select data lane width */
-		tmp = intel_de_read(dev_priv,
-				    TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
+		tmp = intel_de_read(display,
+				    TRANS_DDI_FUNC_CTL(display, dsi_trans));
 		tmp &= ~DDI_PORT_WIDTH_MASK;
 		tmp |= DDI_PORT_WIDTH(intel_dsi->lane_count);
 
@@ -826,16 +832,16 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 
 		/* enable DDI buffer */
 		tmp |= TRANS_DDI_FUNC_ENABLE;
-		intel_de_write(dev_priv,
-			       TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans), tmp);
+		intel_de_write(display,
+			       TRANS_DDI_FUNC_CTL(display, dsi_trans), tmp);
 	}
 
 	/* wait for link ready */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		if (wait_for_us((intel_de_read(dev_priv, DSI_TRANS_FUNC_CONF(dsi_trans)) &
+		if (wait_for_us((intel_de_read(display, DSI_TRANS_FUNC_CONF(dsi_trans)) &
 				 LINK_READY), 2500))
-			drm_err(&dev_priv->drm, "DSI link not ready\n");
+			drm_err(display->drm, "DSI link not ready\n");
 	}
 }
 
@@ -843,7 +849,7 @@ static void
 gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
@@ -910,17 +916,17 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 
 	/* minimum hactive as per bspec: 256 pixels */
 	if (adjusted_mode->crtc_hdisplay < 256)
-		drm_err(&dev_priv->drm, "hactive is less then 256 pixels\n");
+		drm_err(display->drm, "hactive is less then 256 pixels\n");
 
 	/* if RGB666 format, then hactive must be multiple of 4 pixels */
 	if (intel_dsi->pixel_format == MIPI_DSI_FMT_RGB666 && hactive % 4 != 0)
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"hactive pixels are not multiple of 4\n");
 
 	/* program TRANS_HTOTAL register */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, dsi_trans),
+		intel_de_write(display, TRANS_HTOTAL(display, dsi_trans),
 			       HACTIVE(hactive - 1) | HTOTAL(htotal - 1));
 	}
 
@@ -929,12 +935,12 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		if (intel_dsi->video_mode == NON_BURST_SYNC_PULSE) {
 			/* BSPEC: hsync size should be atleast 16 pixels */
 			if (hsync_size < 16)
-				drm_err(&dev_priv->drm,
+				drm_err(display->drm,
 					"hsync size < 16 pixels\n");
 		}
 
 		if (hback_porch < 16)
-			drm_err(&dev_priv->drm, "hback porch < 16 pixels\n");
+			drm_err(display->drm, "hback porch < 16 pixels\n");
 
 		if (intel_dsi->dual_link) {
 			hsync_start /= 2;
@@ -943,8 +949,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv,
-				       TRANS_HSYNC(dev_priv, dsi_trans),
+			intel_de_write(display,
+				       TRANS_HSYNC(display, dsi_trans),
 				       HSYNC_START(hsync_start - 1) | HSYNC_END(hsync_end - 1));
 		}
 	}
@@ -958,22 +964,22 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		 * struct drm_display_mode.
 		 * For interlace mode: program required pixel minus 2
 		 */
-		intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, dsi_trans),
+		intel_de_write(display, TRANS_VTOTAL(display, dsi_trans),
 			       VACTIVE(vactive - 1) | VTOTAL(vtotal - 1));
 	}
 
 	if (vsync_end < vsync_start || vsync_end > vtotal)
-		drm_err(&dev_priv->drm, "Invalid vsync_end value\n");
+		drm_err(display->drm, "Invalid vsync_end value\n");
 
 	if (vsync_start < vactive)
-		drm_err(&dev_priv->drm, "vsync_start less than vactive\n");
+		drm_err(display->drm, "vsync_start less than vactive\n");
 
 	/* program TRANS_VSYNC register for video mode only */
 	if (is_vid_mode(intel_dsi)) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv,
-				       TRANS_VSYNC(dev_priv, dsi_trans),
+			intel_de_write(display,
+				       TRANS_VSYNC(display, dsi_trans),
 				       VSYNC_START(vsync_start - 1) | VSYNC_END(vsync_end - 1));
 		}
 	}
@@ -987,8 +993,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	if (is_vid_mode(intel_dsi)) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv,
-				       TRANS_VSYNCSHIFT(dev_priv, dsi_trans),
+			intel_de_write(display,
+				       TRANS_VSYNCSHIFT(display, dsi_trans),
 				       vsync_shift);
 		}
 	}
@@ -999,11 +1005,11 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	 * FIXME get rid of these local hacks and do it right,
 	 * this will not handle eg. delayed vblank correctly.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv,
-				       TRANS_VBLANK(dev_priv, dsi_trans),
+			intel_de_write(display,
+				       TRANS_VBLANK(display, dsi_trans),
 				       VBLANK_START(vactive - 1) | VBLANK_END(vtotal - 1));
 		}
 	}
@@ -1011,20 +1017,20 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 
 static void gen11_dsi_enable_transcoder(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 	enum transcoder dsi_trans;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		intel_de_rmw(dev_priv, TRANSCONF(dev_priv, dsi_trans), 0,
+		intel_de_rmw(display, TRANSCONF(display, dsi_trans), 0,
 			     TRANSCONF_ENABLE);
 
 		/* wait for transcoder to be enabled */
-		if (intel_de_wait_for_set(dev_priv, TRANSCONF(dev_priv, dsi_trans),
+		if (intel_de_wait_for_set(display, TRANSCONF(display, dsi_trans),
 					  TRANSCONF_STATE_ENABLE, 10))
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"DSI transcoder not enabled\n");
 	}
 }
@@ -1032,7 +1038,7 @@ static void gen11_dsi_enable_transcoder(struct intel_encoder *encoder)
 static void gen11_dsi_setup_timeouts(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 	enum transcoder dsi_trans;
@@ -1056,21 +1062,21 @@ static void gen11_dsi_setup_timeouts(struct intel_encoder *encoder,
 		dsi_trans = dsi_port_to_transcoder(port);
 
 		/* program hst_tx_timeout */
-		intel_de_rmw(dev_priv, DSI_HSTX_TO(dsi_trans),
+		intel_de_rmw(display, DSI_HSTX_TO(dsi_trans),
 			     HSTX_TIMEOUT_VALUE_MASK,
 			     HSTX_TIMEOUT_VALUE(hs_tx_timeout));
 
 		/* FIXME: DSI_CALIB_TO */
 
 		/* program lp_rx_host timeout */
-		intel_de_rmw(dev_priv, DSI_LPRX_HOST_TO(dsi_trans),
+		intel_de_rmw(display, DSI_LPRX_HOST_TO(dsi_trans),
 			     LPRX_TIMEOUT_VALUE_MASK,
 			     LPRX_TIMEOUT_VALUE(lp_rx_timeout));
 
 		/* FIXME: DSI_PWAIT_TO */
 
 		/* program turn around timeout */
-		intel_de_rmw(dev_priv, DSI_TA_TO(dsi_trans),
+		intel_de_rmw(display, DSI_TA_TO(dsi_trans),
 			     TA_TIMEOUT_VALUE_MASK,
 			     TA_TIMEOUT_VALUE(ta_timeout));
 	}
@@ -1079,7 +1085,7 @@ static void gen11_dsi_setup_timeouts(struct intel_encoder *encoder,
 static void gen11_dsi_config_util_pin(struct intel_encoder *encoder,
 				      bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	u32 tmp;
 
@@ -1091,7 +1097,7 @@ static void gen11_dsi_config_util_pin(struct intel_encoder *encoder,
 	if (is_vid_mode(intel_dsi) || (intel_dsi->ports & BIT(PORT_B)))
 		return;
 
-	tmp = intel_de_read(dev_priv, UTIL_PIN_CTL);
+	tmp = intel_de_read(display, UTIL_PIN_CTL);
 
 	if (enable) {
 		tmp |= UTIL_PIN_DIRECTION_INPUT;
@@ -1099,7 +1105,7 @@ static void gen11_dsi_config_util_pin(struct intel_encoder *encoder,
 	} else {
 		tmp &= ~UTIL_PIN_ENABLE;
 	}
-	intel_de_write(dev_priv, UTIL_PIN_CTL, tmp);
+	intel_de_write(display, UTIL_PIN_CTL, tmp);
 }
 
 static void
@@ -1137,7 +1143,7 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
 
 static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct mipi_dsi_device *dsi;
 	enum port port;
@@ -1153,14 +1159,14 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 		 * FIXME: This uses the number of DW's currently in the payload
 		 * receive queue. This is probably not what we want here.
 		 */
-		tmp = intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans));
+		tmp = intel_de_read(display, DSI_CMD_RXCTL(dsi_trans));
 		tmp &= NUMBER_RX_PLOAD_DW_MASK;
 		/* multiply "Number Rx Payload DW" by 4 to get max value */
 		tmp = tmp * 4;
 		dsi = intel_dsi->dsi_hosts[port]->device;
 		ret = mipi_dsi_set_maximum_return_packet_size(dsi, tmp);
 		if (ret < 0)
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"error setting max return pkt size%d\n", tmp);
 	}
 
@@ -1220,10 +1226,10 @@ static void gen11_dsi_pre_enable(struct intel_atomic_state *state,
 static void icl_apply_kvmr_pipe_a_wa(struct intel_encoder *encoder,
 				     enum pipe pipe, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (DISPLAY_VER(dev_priv) == 11 && pipe == PIPE_B)
-		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
+	if (DISPLAY_VER(display) == 11 && pipe == PIPE_B)
+		intel_de_rmw(display, CHICKEN_PAR1_1,
 			     IGNORE_KVMR_PIPE_A,
 			     enable ? IGNORE_KVMR_PIPE_A : 0);
 }
@@ -1236,13 +1242,13 @@ static void icl_apply_kvmr_pipe_a_wa(struct intel_encoder *encoder,
  */
 static void adlp_set_lp_hs_wakeup_gb(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
-	if (DISPLAY_VER(i915) == 13) {
+	if (DISPLAY_VER(display) == 13) {
 		for_each_dsi_port(port, intel_dsi->ports)
-			intel_de_rmw(i915, TGL_DSI_CHKN_REG(port),
+			intel_de_rmw(display, TGL_DSI_CHKN_REG(port),
 				     TGL_DSI_CHKN_LSHS_GB_MASK,
 				     TGL_DSI_CHKN_LSHS_GB(4));
 	}
@@ -1276,7 +1282,7 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 
 static void gen11_dsi_disable_transcoder(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 	enum transcoder dsi_trans;
@@ -1285,13 +1291,13 @@ static void gen11_dsi_disable_transcoder(struct intel_encoder *encoder)
 		dsi_trans = dsi_port_to_transcoder(port);
 
 		/* disable transcoder */
-		intel_de_rmw(dev_priv, TRANSCONF(dev_priv, dsi_trans),
+		intel_de_rmw(display, TRANSCONF(display, dsi_trans),
 			     TRANSCONF_ENABLE, 0);
 
 		/* wait for transcoder to be disabled */
-		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(dev_priv, dsi_trans),
+		if (intel_de_wait_for_clear(display, TRANSCONF(display, dsi_trans),
 					    TRANSCONF_STATE_ENABLE, 50))
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"DSI trancoder not disabled\n");
 	}
 }
@@ -1308,7 +1314,7 @@ static void gen11_dsi_powerdown_panel(struct intel_encoder *encoder)
 
 static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 	enum transcoder dsi_trans;
@@ -1317,29 +1323,29 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 	/* disable periodic update mode */
 	if (is_cmd_mode(intel_dsi)) {
 		for_each_dsi_port(port, intel_dsi->ports)
-			intel_de_rmw(dev_priv, DSI_CMD_FRMCTL(port),
+			intel_de_rmw(display, DSI_CMD_FRMCTL(port),
 				     DSI_PERIODIC_FRAME_UPDATE_ENABLE, 0);
 	}
 
 	/* put dsi link in ULPS */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		tmp = intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans));
+		tmp = intel_de_read(display, DSI_LP_MSG(dsi_trans));
 		tmp |= LINK_ENTER_ULPS;
 		tmp &= ~LINK_ULPS_TYPE_LP11;
-		intel_de_write(dev_priv, DSI_LP_MSG(dsi_trans), tmp);
+		intel_de_write(display, DSI_LP_MSG(dsi_trans), tmp);
 
-		if (wait_for_us((intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans)) &
+		if (wait_for_us((intel_de_read(display, DSI_LP_MSG(dsi_trans)) &
 				 LINK_IN_ULPS),
 				10))
-			drm_err(&dev_priv->drm, "DSI link not in ULPS\n");
+			drm_err(display->drm, "DSI link not in ULPS\n");
 	}
 
 	/* disable ddi function */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		intel_de_rmw(dev_priv,
-			     TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans),
+		intel_de_rmw(display,
+			     TRANS_DDI_FUNC_CTL(display, dsi_trans),
 			     TRANS_DDI_FUNC_ENABLE, 0);
 	}
 
@@ -1347,8 +1353,8 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 	if (intel_dsi->dual_link) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_rmw(dev_priv,
-				     TRANS_DDI_FUNC_CTL2(dev_priv, dsi_trans),
+			intel_de_rmw(display,
+				     TRANS_DDI_FUNC_CTL2(display, dsi_trans),
 				     PORT_SYNC_MODE_ENABLE, 0);
 		}
 	}
@@ -1356,18 +1362,18 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 
 static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
 	gen11_dsi_ungate_clocks(encoder);
 	for_each_dsi_port(port, intel_dsi->ports) {
-		intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
+		intel_de_rmw(display, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
 
-		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+		if (wait_for_us((intel_de_read(display, DDI_BUF_CTL(port)) &
 				 DDI_BUF_IS_IDLE),
 				 8))
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"DDI port:%c buffer not idle\n",
 				port_name(port));
 	}
@@ -1376,6 +1382,7 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 
 static void gen11_dsi_disable_io_power(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
@@ -1393,7 +1400,7 @@ static void gen11_dsi_disable_io_power(struct intel_encoder *encoder)
 
 	/* set mode to DDI */
 	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_rmw(dev_priv, ICL_DSI_IO_MODECTL(port),
+		intel_de_rmw(display, ICL_DSI_IO_MODECTL(port),
 			     COMBO_PHY_MODE_DSI, 0);
 }
 
@@ -1505,8 +1512,7 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
 
 static bool gen11_dsi_is_periodic_cmd_mode(struct intel_dsi *intel_dsi)
 {
-	struct drm_device *dev = intel_dsi->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	enum transcoder dsi_trans;
 	u32 val;
 
@@ -1515,7 +1521,7 @@ static bool gen11_dsi_is_periodic_cmd_mode(struct intel_dsi *intel_dsi)
 	else
 		dsi_trans = TRANSCODER_DSI_0;
 
-	val = intel_de_read(dev_priv, DSI_TRANS_FUNC_CONF(dsi_trans));
+	val = intel_de_read(display, DSI_TRANS_FUNC_CONF(dsi_trans));
 	return (val & DSI_PERIODIC_FRAME_UPDATE_ENABLE);
 }
 
@@ -1558,7 +1564,7 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
 static void gen11_dsi_sync_state(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *intel_crtc;
 	enum pipe pipe;
 
@@ -1569,9 +1575,9 @@ static void gen11_dsi_sync_state(struct intel_encoder *encoder,
 	pipe = intel_crtc->pipe;
 
 	/* wa verify 1409054076:icl,jsl,ehl */
-	if (DISPLAY_VER(dev_priv) == 11 && pipe == PIPE_B &&
-	    !(intel_de_read(dev_priv, CHICKEN_PAR1_1) & IGNORE_KVMR_PIPE_A))
-		drm_dbg_kms(&dev_priv->drm,
+	if (DISPLAY_VER(display) == 11 && pipe == PIPE_B &&
+	    !(intel_de_read(display, CHICKEN_PAR1_1) & IGNORE_KVMR_PIPE_A))
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] BIOS left IGNORE_KVMR_PIPE_A cleared with pipe B enabled\n",
 			    encoder->base.base.id,
 			    encoder->base.name);
@@ -1580,9 +1586,9 @@ static void gen11_dsi_sync_state(struct intel_encoder *encoder,
 static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 					struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
-	int dsc_max_bpc = DISPLAY_VER(dev_priv) >= 12 ? 12 : 10;
+	int dsc_max_bpc = DISPLAY_VER(display) >= 12 ? 12 : 10;
 	bool use_dsc;
 	int ret;
 
@@ -1607,12 +1613,12 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 		return ret;
 
 	/* DSI specific sanity checks on the common code */
-	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->vbr_enable);
-	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->simple_422);
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm, vdsc_cfg->vbr_enable);
+	drm_WARN_ON(display->drm, vdsc_cfg->simple_422);
+	drm_WARN_ON(display->drm,
 		    vdsc_cfg->pic_width % vdsc_cfg->slice_width);
-	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->slice_height < 8);
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm, vdsc_cfg->slice_height < 8);
+	drm_WARN_ON(display->drm,
 		    vdsc_cfg->pic_height % vdsc_cfg->slice_height);
 
 	ret = drm_dsc_compute_rc_parameters(vdsc_cfg);
@@ -1628,7 +1634,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config,
 				    struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_connector *intel_connector = intel_dsi->attached_connector;
 	struct drm_display_mode *adjusted_mode =
@@ -1662,7 +1668,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 	pipe_config->clock_set = true;
 
 	if (gen11_dsi_dsc_compute_config(encoder, pipe_config))
-		drm_dbg_kms(&i915->drm, "Attempting to use DSC failed\n");
+		drm_dbg_kms(display->drm, "Attempting to use DSC failed\n");
 
 	pipe_config->port_clock = afe_clk(encoder, pipe_config) / 5;
 
@@ -1680,15 +1686,13 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 static void gen11_dsi_get_power_domains(struct intel_encoder *encoder,
 					struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	get_dsi_io_power_domains(i915,
-				 enc_to_intel_dsi(encoder));
+	get_dsi_io_power_domains(enc_to_intel_dsi(encoder));
 }
 
 static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 				   enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum transcoder dsi_trans;
@@ -1704,8 +1708,8 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		tmp = intel_de_read(dev_priv,
-				    TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
+		tmp = intel_de_read(display,
+				    TRANS_DDI_FUNC_CTL(display, dsi_trans));
 		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
 		case TRANS_DDI_EDP_INPUT_A_ON:
 			*pipe = PIPE_A;
@@ -1720,11 +1724,11 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 			*pipe = PIPE_D;
 			break;
 		default:
-			drm_err(&dev_priv->drm, "Invalid PIPE input\n");
+			drm_err(display->drm, "Invalid PIPE input\n");
 			goto out;
 		}
 
-		tmp = intel_de_read(dev_priv, TRANSCONF(dev_priv, dsi_trans));
+		tmp = intel_de_read(display, TRANSCONF(display, dsi_trans));
 		ret = tmp & TRANSCONF_ENABLE;
 	}
 out:
@@ -1834,8 +1838,7 @@ static const struct mipi_dsi_host_ops gen11_dsi_host_ops = {
 
 static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 {
-	struct drm_device *dev = intel_dsi->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	u32 tlpx_ns;
@@ -1859,7 +1862,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	 */
 	prepare_cnt = DIV_ROUND_UP(ths_prepare_ns * 4, tlpx_ns);
 	if (prepare_cnt > ICL_PREPARE_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm, "prepare_cnt out of range (%d)\n",
+		drm_dbg_kms(display->drm, "prepare_cnt out of range (%d)\n",
 			    prepare_cnt);
 		prepare_cnt = ICL_PREPARE_CNT_MAX;
 	}
@@ -1868,7 +1871,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	clk_zero_cnt = DIV_ROUND_UP(mipi_config->tclk_prepare_clkzero -
 				    ths_prepare_ns, tlpx_ns);
 	if (clk_zero_cnt > ICL_CLK_ZERO_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "clk_zero_cnt out of range (%d)\n", clk_zero_cnt);
 		clk_zero_cnt = ICL_CLK_ZERO_CNT_MAX;
 	}
@@ -1876,7 +1879,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	/* trail cnt in escape clocks*/
 	trail_cnt = DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
 	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm, "trail_cnt out of range (%d)\n",
+		drm_dbg_kms(display->drm, "trail_cnt out of range (%d)\n",
 			    trail_cnt);
 		trail_cnt = ICL_TRAIL_CNT_MAX;
 	}
@@ -1884,7 +1887,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	/* tclk pre count in escape clocks */
 	tclk_pre_cnt = DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
 	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "tclk_pre_cnt out of range (%d)\n", tclk_pre_cnt);
 		tclk_pre_cnt = ICL_TCLK_PRE_CNT_MAX;
 	}
@@ -1893,7 +1896,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	hs_zero_cnt = DIV_ROUND_UP(mipi_config->ths_prepare_hszero -
 				   ths_prepare_ns, tlpx_ns);
 	if (hs_zero_cnt > ICL_HS_ZERO_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm, "hs_zero_cnt out of range (%d)\n",
+		drm_dbg_kms(display->drm, "hs_zero_cnt out of range (%d)\n",
 			    hs_zero_cnt);
 		hs_zero_cnt = ICL_HS_ZERO_CNT_MAX;
 	}
@@ -1901,7 +1904,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	/* hs exit zero cnt in escape clocks */
 	exit_zero_cnt = DIV_ROUND_UP(mipi_config->ths_exit, tlpx_ns);
 	if (exit_zero_cnt > ICL_EXIT_ZERO_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "exit_zero_cnt out of range (%d)\n",
 			    exit_zero_cnt);
 		exit_zero_cnt = ICL_EXIT_ZERO_CNT_MAX;
@@ -1943,10 +1946,9 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
 						       fixed_mode->vdisplay);
 }
 
-void icl_dsi_init(struct drm_i915_private *dev_priv,
+void icl_dsi_init(struct intel_display *display,
 		  const struct intel_bios_encoder_data *devdata)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_dsi *intel_dsi;
 	struct intel_encoder *encoder;
 	struct intel_connector *intel_connector;
@@ -1974,7 +1976,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv,
 	encoder->devdata = devdata;
 
 	/* register DSI encoder with DRM subsystem */
-	drm_encoder_init(&dev_priv->drm, &encoder->base, &gen11_dsi_encoder_funcs,
+	drm_encoder_init(display->drm, &encoder->base,
+			 &gen11_dsi_encoder_funcs,
 			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
 
 	encoder->pre_pll_enable = gen11_dsi_pre_pll_enable;
@@ -1999,7 +2002,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv,
 	encoder->shutdown = intel_dsi_shutdown;
 
 	/* register DSI connector with DRM subsystem */
-	drm_connector_init(&dev_priv->drm, connector, &gen11_dsi_connector_funcs,
+	drm_connector_init(display->drm, connector,
+			   &gen11_dsi_connector_funcs,
 			   DRM_MODE_CONNECTOR_DSI);
 	drm_connector_helper_add(connector, &gen11_dsi_connector_helper_funcs);
 	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
@@ -2012,12 +2016,12 @@ void icl_dsi_init(struct drm_i915_private *dev_priv,
 
 	intel_bios_init_panel_late(display, &intel_connector->panel, encoder->devdata, NULL);
 
-	mutex_lock(&dev_priv->drm.mode_config.mutex);
+	mutex_lock(&display->drm->mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
-	mutex_unlock(&dev_priv->drm.mode_config.mutex);
+	mutex_unlock(&display->drm->mode_config.mutex);
 
 	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
-		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
+		drm_err(display->drm, "DSI fixed mode info missing\n");
 		goto err;
 	}
 
@@ -2030,10 +2034,10 @@ void icl_dsi_init(struct drm_i915_private *dev_priv,
 	else
 		intel_dsi->ports = BIT(port);
 
-	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
+	if (drm_WARN_ON(display->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
 		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
 
-	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
+	if (drm_WARN_ON(display->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
 		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
@@ -2047,7 +2051,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv,
 	}
 
 	if (!intel_dsi_vbt_init(intel_dsi, MIPI_DSI_GENERIC_PANEL_ID)) {
-		drm_dbg_kms(&dev_priv->drm, "no device found\n");
+		drm_dbg_kms(display->drm, "no device found\n");
 		goto err;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.h b/drivers/gpu/drm/i915/display/icl_dsi.h
index 43fa7d72eeb1..099fc50e35b4 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.h
+++ b/drivers/gpu/drm/i915/display/icl_dsi.h
@@ -6,11 +6,11 @@
 #ifndef __ICL_DSI_H__
 #define __ICL_DSI_H__
 
-struct drm_i915_private;
 struct intel_bios_encoder_data;
 struct intel_crtc_state;
+struct intel_display;
 
-void icl_dsi_init(struct drm_i915_private *dev_priv,
+void icl_dsi_init(struct intel_display *display,
 		  const struct intel_bios_encoder_data *devdata);
 void icl_dsi_frame_update(struct intel_crtc_state *crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ff4c633c8546..2bd14e2134be 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4885,7 +4885,7 @@ void intel_ddi_init(struct intel_display *display,
 		if (!assert_has_icl_dsi(dev_priv))
 			return;
 
-		icl_dsi_init(dev_priv, devdata);
+		icl_dsi_init(display, devdata);
 		return;
 	}
 
-- 
2.39.5

