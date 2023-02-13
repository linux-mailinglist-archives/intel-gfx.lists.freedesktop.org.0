Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2626695425
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E6E10E76E;
	Mon, 13 Feb 2023 22:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4714F10E766
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328806; x=1707864806;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qiiO0/wUNNX8xX/MDSQvjAqg60Cor2lxeicEoiIA2Ds=;
 b=RMaqCBV5WDE4ylimq05IzXpkcal1hzFJ4V0cYhkMo7Scq3S6CpJ8cn6C
 mViWO6arrt6Qws4SAuiSKcHeepQNPZBtKzMpwYv49JHuykX0p+EuI0f7A
 GLTYyLyQryyOjkPS14nKi66R+pkQ7R/L7w/pft1JFNaei7UxD//oJjs+e
 +XRZFflCoZWsn4gvWKlBnlfc45qGLmjVljGmW8xJnVS+6MjxmROHaqfcK
 vagMNBDLSUlif8Zvd+25z9OORepv91u0rE09gFc12/19Aa5BJz6px1GIs
 8IYxW4MUI2o+CoFojgN1PTKV69rqTao+VkywfDYAWqc9sr43srrEQ5Ku/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237415"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237415"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766440"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766440"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:55 +0200
Message-Id: <20230213225258.2127-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/12] drm/i915: Define transcoder timing
 register bitmasks
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Define the contents of the transcoder timing registers using
REG_GENMASK() & co. For ease of maintenance let's just define
the bitmasks with the full 16bit width (also used by the
current hand rolled stuff) even though not all bits are actually
used. None of the unsued bits have ever contained anything.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 10 +--
 drivers/gpu/drm/i915/display/intel_crt.c     | 13 ++--
 drivers/gpu/drm/i915/display/intel_display.c | 64 ++++++++++++--------
 drivers/gpu/drm/i915/i915_reg.h              | 24 ++++++++
 4 files changed, 75 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 07897d6f9c53..def3aff4d717 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -888,7 +888,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
 		intel_de_write(dev_priv, TRANS_HTOTAL(dsi_trans),
-			       (hactive - 1) | ((htotal - 1) << 16));
+			       HACTIVE(hactive - 1) | HTOTAL(htotal - 1));
 	}
 
 	/* TRANS_HSYNC register to be programmed only for video mode */
@@ -911,7 +911,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
 			intel_de_write(dev_priv, TRANS_HSYNC(dsi_trans),
-				       (hsync_start - 1) | ((hsync_end - 1) << 16));
+				       HSYNC_START(hsync_start - 1) | HSYNC_END(hsync_end - 1));
 		}
 	}
 
@@ -925,7 +925,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		 * For interlace mode: program required pixel minus 2
 		 */
 		intel_de_write(dev_priv, TRANS_VTOTAL(dsi_trans),
-			       (vactive - 1) | ((vtotal - 1) << 16));
+			       VACTIVE(vactive - 1) | VTOTAL(vtotal - 1));
 	}
 
 	if (vsync_end < vsync_start || vsync_end > vtotal)
@@ -939,7 +939,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
 			intel_de_write(dev_priv, TRANS_VSYNC(dsi_trans),
-				       (vsync_start - 1) | ((vsync_end - 1) << 16));
+				       VSYNC_START(vsync_start - 1) | VSYNC_END(vsync_end - 1));
 		}
 	}
 
@@ -962,7 +962,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
 			intel_de_write(dev_priv, TRANS_VBLANK(dsi_trans),
-				       (vactive - 1) | ((vtotal - 1) << 16));
+				       VBLANK_START(vactive - 1) | VBLANK_END(vtotal - 1));
 		}
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index ef0c7f5b0ad6..8f2ebead0826 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -698,11 +698,11 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	save_vtotal = intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
 	vblank = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
 
-	vtotal = ((save_vtotal >> 16) & 0xfff) + 1;
-	vactive = (save_vtotal & 0x7ff) + 1;
+	vtotal = REG_FIELD_GET(VTOTAL_MASK, save_vtotal) + 1;
+	vactive = REG_FIELD_GET(VACTIVE_MASK, save_vtotal) + 1;
 
-	vblank_start = (vblank & 0xfff) + 1;
-	vblank_end = ((vblank >> 16) & 0xfff) + 1;
+	vblank_start = REG_FIELD_GET(VBLANK_START_MASK, vblank) + 1;
+	vblank_end = REG_FIELD_GET(VBLANK_END_MASK, vblank) + 1;
 
 	/* Set the border color to purple. */
 	intel_de_write(dev_priv, BCLRPAT(cpu_transcoder), 0x500050);
@@ -732,11 +732,12 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		*/
 		if (vblank_start <= vactive && vblank_end >= vtotal) {
 			u32 vsync = intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
-			u32 vsync_start = (vsync & 0xffff) + 1;
+			u32 vsync_start = REG_FIELD_GET(VSYNC_START_MASK, vsync) + 1;
 
 			vblank_start = vsync_start;
 			intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
-				       (vblank_start - 1) | ((vblank_end - 1) << 16));
+				       VBLANK_START(vblank_start - 1) |
+				       VBLANK_END(vblank_end - 1));
 			restore_vblank = true;
 		}
 		/* sample in the vertical border, selecting the larger one */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ac021ca88e3c..1d92a789baab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2848,18 +2848,24 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 			       vsyncshift);
 
 	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder),
-		       (adjusted_mode->crtc_hdisplay - 1) | ((adjusted_mode->crtc_htotal - 1) << 16));
+		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
+		       HTOTAL(adjusted_mode->crtc_htotal - 1));
 	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
-		       (adjusted_mode->crtc_hblank_start - 1) | ((adjusted_mode->crtc_hblank_end - 1) << 16));
+		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
+		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
 	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
-		       (adjusted_mode->crtc_hsync_start - 1) | ((adjusted_mode->crtc_hsync_end - 1) << 16));
+		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
+		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
 	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
-		       (adjusted_mode->crtc_vdisplay - 1) | ((crtc_vtotal - 1) << 16));
+		       VACTIVE(adjusted_mode->crtc_vdisplay - 1) |
+		       VTOTAL(crtc_vtotal - 1));
 	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
-		       (adjusted_mode->crtc_vblank_start - 1) | ((crtc_vblank_end - 1) << 16));
+		       VBLANK_START(adjusted_mode->crtc_vblank_start - 1) |
+		       VBLANK_END(crtc_vblank_end - 1));
 	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
-		       (adjusted_mode->crtc_vsync_start - 1) | ((adjusted_mode->crtc_vsync_end - 1) << 16));
+		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
+		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 
 	/* Workaround: when the EDP input selection is B, the VTOTAL_B must be
 	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
@@ -2912,30 +2918,31 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	u32 tmp;
 
 	tmp = intel_de_read(dev_priv, TRANS_HTOTAL(cpu_transcoder));
-	adjusted_mode->crtc_hdisplay = (tmp & 0xffff) + 1;
-	adjusted_mode->crtc_htotal = ((tmp >> 16) & 0xffff) + 1;
+	adjusted_mode->crtc_hdisplay = REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
+	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
 		tmp = intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder));
-		adjusted_mode->crtc_hblank_start = (tmp & 0xffff) + 1;
-		adjusted_mode->crtc_hblank_end = ((tmp >> 16) & 0xffff) + 1;
+		adjusted_mode->crtc_hblank_start = REG_FIELD_GET(HBLANK_START_MASK, tmp) + 1;
+		adjusted_mode->crtc_hblank_end = REG_FIELD_GET(HBLANK_END_MASK, tmp) + 1;
 	}
+
 	tmp = intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder));
-	adjusted_mode->crtc_hsync_start = (tmp & 0xffff) + 1;
-	adjusted_mode->crtc_hsync_end = ((tmp >> 16) & 0xffff) + 1;
+	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
+	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
 
 	tmp = intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
-	adjusted_mode->crtc_vdisplay = (tmp & 0xffff) + 1;
-	adjusted_mode->crtc_vtotal = ((tmp >> 16) & 0xffff) + 1;
+	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
+	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
 		tmp = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
-		adjusted_mode->crtc_vblank_start = (tmp & 0xffff) + 1;
-		adjusted_mode->crtc_vblank_end = ((tmp >> 16) & 0xffff) + 1;
+		adjusted_mode->crtc_vblank_start = REG_FIELD_GET(VBLANK_START_MASK, tmp) + 1;
+		adjusted_mode->crtc_vblank_end = REG_FIELD_GET(VBLANK_END_MASK, tmp) + 1;
 	}
 	tmp = intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
-	adjusted_mode->crtc_vsync_start = (tmp & 0xffff) + 1;
-	adjusted_mode->crtc_vsync_end = ((tmp >> 16) & 0xffff) + 1;
+	adjusted_mode->crtc_vsync_start = REG_FIELD_GET(VSYNC_START_MASK, tmp) + 1;
+	adjusted_mode->crtc_vsync_end = REG_FIELD_GET(VSYNC_END_MASK, tmp) + 1;
 
 	if (intel_pipe_is_interlaced(pipe_config)) {
 		adjusted_mode->flags |= DRM_MODE_FLAG_INTERLACE;
@@ -8816,13 +8823,20 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		PLL_REF_INPUT_DREFCLK |
 		DPLL_VCO_ENABLE;
 
-	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder), (640 - 1) | ((800 - 1) << 16));
-	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder), (640 - 1) | ((800 - 1) << 16));
-	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder), (656 - 1) | ((752 - 1) << 16));
-	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder), (480 - 1) | ((525 - 1) << 16));
-	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder), (480 - 1) | ((525 - 1) << 16));
-	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder), (490 - 1) | ((492 - 1) << 16));
-	intel_de_write(dev_priv, PIPESRC(pipe), ((640 - 1) << 16) | (480 - 1));
+	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder),
+		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
+	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
+		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
+	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
+		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
+	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
+		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
+	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
+		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
+	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
+		       VSYNC_START(490 - 1) | VSYNC_END(492 - 1));
+	intel_de_write(dev_priv, PIPESRC(pipe),
+		       PIPESRC_WIDTH(640 - 1) | PIPESRC_HEIGHT(480 - 1));
 
 	intel_de_write(dev_priv, FP0(pipe), fp);
 	intel_de_write(dev_priv, FP1(pipe), fp);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 23886356af35..c5e073af983a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1913,11 +1913,35 @@
 
 /* Pipe/transcoder A timing regs */
 #define _TRANS_HTOTAL_A		0x60000
+#define   HTOTAL_MASK			REG_GENMASK(31, 16)
+#define   HTOTAL(htotal)		REG_FIELD_PREP(HTOTAL_MASK, (htotal))
+#define   HACTIVE_MASK			REG_GENMASK(15, 0)
+#define   HACTIVE(hdisplay)		REG_FIELD_PREP(HACTIVE_MASK, (hdisplay))
 #define _TRANS_HBLANK_A		0x60004
+#define   HBLANK_END_MASK		REG_GENMASK(31, 16)
+#define   HBLANK_END(hblank_end)	REG_FIELD_PREP(HBLANK_END_MASK, (hblank_end))
+#define   HBLANK_START_MASK		REG_GENMASK(15, 0)
+#define   HBLANK_START(hblank_start)	REG_FIELD_PREP(HBLANK_START_MASK, (hblank_start))
 #define _TRANS_HSYNC_A		0x60008
+#define   HSYNC_END_MASK		REG_GENMASK(31, 16)
+#define   HSYNC_END(hsync_end)		REG_FIELD_PREP(HSYNC_END_MASK, (hsync_end))
+#define   HSYNC_START_MASK		REG_GENMASK(15, 0)
+#define   HSYNC_START(hsync_start)	REG_FIELD_PREP(HSYNC_START_MASK, (hsync_start))
 #define _TRANS_VTOTAL_A		0x6000c
+#define   VTOTAL_MASK			REG_GENMASK(31, 16)
+#define   VTOTAL(vtotal)		REG_FIELD_PREP(VTOTAL_MASK, (vtotal))
+#define   VACTIVE_MASK			REG_GENMASK(15, 0)
+#define   VACTIVE(vdisplay)		REG_FIELD_PREP(VACTIVE_MASK, (vdisplay))
 #define _TRANS_VBLANK_A		0x60010
+#define   VBLANK_END_MASK		REG_GENMASK(31, 16)
+#define   VBLANK_END(vblank_end)	REG_FIELD_PREP(VBLANK_END_MASK, (vblank_end))
+#define   VBLANK_START_MASK		REG_GENMASK(15, 0)
+#define   VBLANK_START(vblank_start)	REG_FIELD_PREP(VBLANK_START_MASK, (vblank_start))
 #define _TRANS_VSYNC_A		0x60014
+#define   VSYNC_END_MASK		REG_GENMASK(31, 16)
+#define   VSYNC_END(vsync_end)		REG_FIELD_PREP(VSYNC_END_MASK, (vsync_end))
+#define   VSYNC_START_MASK		REG_GENMASK(15, 0)
+#define   VSYNC_START(vsync_start)	REG_FIELD_PREP(VSYNC_START_MASK, (vsync_start))
 #define _TRANS_EXITLINE_A	0x60018
 #define _PIPEASRC		0x6001c
 #define   PIPESRC_WIDTH_MASK	REG_GENMASK(31, 16)
-- 
2.39.1

