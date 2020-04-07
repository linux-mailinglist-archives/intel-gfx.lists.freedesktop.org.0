Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A911A093F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 10:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974676E5C6;
	Tue,  7 Apr 2020 08:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B4C6E591
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 08:22:53 +0000 (UTC)
IronPort-SDR: VN4t6xysRtVnezKhj9SO44thCPAMtkG1HjG3wNYBo0MeIE5qK7kpbP+YalP/Oe4qfLS2HLGiD3
 gB4lDu/X5zvw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 01:22:52 -0700
IronPort-SDR: fVCzylEDQ767kB1z6BdQ5jO9BcO2ICVtvem6GKcejYm3XLgpR64whs2IM6wQ4GY4LqIkQU2fdw
 AmjhsZGPNJsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="451148167"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by fmsmga005.fm.intel.com with ESMTP; 07 Apr 2020 01:22:51 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 14:20:38 +0530
Message-Id: <20200407085038.11602-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Enable DP Display Audio WA
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
Cc: kai.vehmanen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable Display Audio WA #1406928334 for 4k+VDSC usecase
on DP encoders.

v2: Fixed build failures on 32bit machine.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 113 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h            |  16 +++
 2 files changed, 129 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 950160f1a89f..ae896d75596b 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -512,6 +512,115 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	mutex_unlock(&dev_priv->av_mutex);
 }
 
+static void enable_audio_dsc_wa(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+	u64 link_clks_available, link_clks_required, link_clk;
+	u64 tu_data, tu_line, link_clks_active;
+	u64 hblank_rise, hblank_early_prog, samples_room;
+	u64 h_active, h_total, hblank_delta, pixel_clk, v_total, lanes;
+	u64 vdsc_bpp, fec_coeff, refresh_rate, cdclk;
+	u64 rounding_factor = 100000;
+	u32 val;
+
+	val = intel_de_read(dev_priv, AUD_CONFIG_BE);
+
+	if (INTEL_GEN(dev_priv) == 11)
+		val |= HBLANK_EARLY_ENABLE_ICL(pipe);
+	else if (INTEL_GEN(dev_priv) >= 12)
+		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
+
+	if (crtc_state->dsc.compression_enable &&
+	    (crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
+	     crtc_state->hw.adjusted_mode.vdisplay >= 2160)) {
+		h_active = crtc_state->hw.adjusted_mode.hdisplay;
+		h_total = crtc_state->hw.adjusted_mode.htotal;
+		v_total = crtc_state->hw.adjusted_mode.vtotal;
+		hblank_rise = crtc_state->hw.adjusted_mode.hsync_start;
+		pixel_clk = crtc_state->hw.adjusted_mode.clock;
+		link_clk = crtc_state->port_clock;
+		lanes = crtc_state->lane_count;
+		vdsc_bpp = crtc_state->pipe_bpp;
+		refresh_rate = crtc_state->hw.adjusted_mode.vrefresh;
+		cdclk = dev_priv->cdclk.hw.cdclk;
+		/* fec= 0.972261, using rounding multiplier of 1000000 */
+		fec_coeff = 972261;
+
+		if (!(h_active && link_clk && lanes && vdsc_bpp && cdclk)) {
+			drm_err(&dev_priv->drm, "Null Parameters received\n");
+			return;
+		}
+
+		drm_dbg_kms(&dev_priv->drm, "h_active = %llu link_clk = %llu :"
+			    "lanes = %llu vdsc_bpp = %llu cdclk = %llu\n",
+			    h_active, link_clk, lanes, vdsc_bpp, cdclk);
+
+		link_clks_available = ((((h_total - h_active) *
+				       ((link_clk * rounding_factor) /
+				       pixel_clk)) / rounding_factor) - 28);
+
+		link_clks_required = DIV_ROUND_UP_ULL(192000, (refresh_rate *
+						      v_total)) *
+						      ((48 / lanes) + 2);
+
+		if (link_clks_available > link_clks_required)
+			hblank_delta = 32;
+		else
+			hblank_delta = DIV_ROUND_UP_ULL(((((5 *
+							rounding_factor) /
+							link_clk) + ((5 *
+							rounding_factor) /
+							cdclk)) * pixel_clk),
+							rounding_factor);
+
+		tu_data = (pixel_clk * vdsc_bpp * 8) / ((link_clk *
+							lanes * fec_coeff) /
+							1000000);
+		tu_line = (((h_active * link_clk * fec_coeff) / 1000000) /
+			   (64 * pixel_clk));
+		link_clks_active  = (tu_line - 1) * 64 + tu_data;
+		hblank_rise = ((link_clks_active + 6 *
+				DIV_ROUND_UP_ULL(link_clks_active, 250) + 4) *
+						 ((pixel_clk *
+						 rounding_factor) /
+						 link_clk)) / rounding_factor;
+
+		hblank_early_prog = h_active - hblank_rise + hblank_delta;
+
+		if (hblank_early_prog < 32) {
+			val &= ~HBLANK_START_COUNT_MASK(pipe);
+			val |= HBLANK_START_COUNT(HBLANK_START_COUNT_32, pipe);
+		} else if (hblank_early_prog < 64) {
+			val &= ~HBLANK_START_COUNT_MASK(pipe);
+			val |= HBLANK_START_COUNT(HBLANK_START_COUNT_64, pipe);
+		} else if (hblank_early_prog < 96) {
+			val &= ~HBLANK_START_COUNT_MASK(pipe);
+			val |= HBLANK_START_COUNT(HBLANK_START_COUNT_96, pipe);
+		} else {
+			val &= ~HBLANK_START_COUNT_MASK(pipe);
+			val |= HBLANK_START_COUNT(HBLANK_START_COUNT_128, pipe);
+		}
+
+		samples_room = ((((h_total - h_active) *
+					 ((link_clk * rounding_factor) /
+					 pixel_clk)) / rounding_factor) - 12) /
+					 ((48 / lanes) + 2);
+
+		if (samples_room < 3) {
+			val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
+			val |= NUMBER_SAMPLES_PER_LINE(samples_room, pipe);
+		} else {
+			val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
+			val |= NUMBER_SAMPLES_PER_LINE(0x0, pipe);
+		}
+	}
+
+	intel_de_write(dev_priv, AUD_CONFIG_BE, val);
+}
+
 static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct drm_connector_state *conn_state)
@@ -529,6 +638,10 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 
 	mutex_lock(&dev_priv->av_mutex);
 
+	/* Enable Audio WA for 4k DSC usecases */
+	if (encoder->type == INTEL_OUTPUT_DP)
+		enable_audio_dsc_wa(encoder, crtc_state);
+
 	/* Enable audio presence detect, invalidate ELD */
 	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
 	tmp |= AUDIO_OUTPUT_ENABLE(cpu_transcoder);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8cebb7a86b8c..ff293e9d5a63 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9395,6 +9395,22 @@ enum {
 #define AUD_PIN_BUF_CTL		_MMIO(0x48414)
 #define   AUD_PIN_BUF_ENABLE		REG_BIT(31)
 
+/* Display Audio Config Reg */
+#define AUD_CONFIG_BE			_MMIO(0x65ef0)
+#define HBLANK_EARLY_ENABLE_ICL(pipe)		(0x1 << (20 - (pipe)))
+#define HBLANK_EARLY_ENABLE_TGL(pipe)		(0x1 << (24 + (pipe)))
+#define HBLANK_START_COUNT_MASK(pipe)		(0x7 << (3 + ((pipe) * 6)))
+#define HBLANK_START_COUNT(val, pipe)		(((val) & 0x7) << (3 + ((pipe)) * 6))
+#define NUMBER_SAMPLES_PER_LINE_MASK(pipe)	(0x3 << ((pipe) * 6))
+#define NUMBER_SAMPLES_PER_LINE(val, pipe)	(((val) & 0x3) << ((pipe) * 6))
+
+#define HBLANK_START_COUNT_8	0x0
+#define HBLANK_START_COUNT_16	0x1
+#define HBLANK_START_COUNT_32	0x2
+#define HBLANK_START_COUNT_64	0x3
+#define HBLANK_START_COUNT_96	0x4
+#define HBLANK_START_COUNT_128	0x5
+
 /*
  * HSW - ICL power wells
  *
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
