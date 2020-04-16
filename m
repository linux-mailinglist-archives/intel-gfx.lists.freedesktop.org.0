Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 367031ABDCF
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 12:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85D266EB37;
	Thu, 16 Apr 2020 10:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 556346EB37
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 10:26:14 +0000 (UTC)
IronPort-SDR: lRu45FTmWhKkM3pDo/9hTlzyi0qz1+L6VEuYGMzd7rTKTanbbIIKg60PjCQ4ODL5UON7W1Fb0s
 5WKfc2eODEGg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 03:26:13 -0700
IronPort-SDR: DbMEu27ZXqG/y5JVTguQyD5PGtW/QpResNdmIVkX2wE30xU/ovFKIuQiQoHm7MS8C3bma0SZC6
 U2j6ZmsKKHVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,390,1580803200"; d="scan'208";a="272026091"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga002.jf.intel.com with ESMTP; 16 Apr 2020 03:26:11 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Apr 2020 16:24:19 +0530
Message-Id: <20200416105419.9664-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v6] drm/i915/display: Enable DP Display Audio WA
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

For certain DP VDSC bpp settings, hblank asserts before hblank_early,
leading to a bad audio state. Driver need to program "hblank early
enable" and "samples per line" parameters in AUDIO_CONFIG_BE
register.

This is Display Audio WA #1406928334 for 4k+VDSC usecase
applicable on DP encoders. Implemented the same.

v2: Fixed build failures on 32bit machine.

v3: Dropped u64, added helpers for sample room calculation,
    other general comments as per Jani Nikula's feedback.
    Also fixed connector type check (spotted by Anshuman)

v4: Addressed Jani Nikula and Kai's review comments.

v5: Addressed Anshuman's review comment and used crtc_* variable
    to get timings.

v6: Dropped a redundant initialization.

Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 146 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h            |  16 +++
 2 files changed, 162 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 57b80971ae78..dc311bb227f1 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -514,6 +514,148 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	mutex_unlock(&dev_priv->av_mutex);
 }
 
+/* Add a factor to take care of rounding and truncations */
+#define ROUNDING_FACTOR 10000
+
+static unsigned int get_hblank_early_enable_config(struct intel_encoder *encoder,
+						   const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	unsigned int link_clks_available, link_clks_required;
+	unsigned int tu_data, tu_line, link_clks_active;
+	unsigned int hblank_rise, hblank_early_prog;
+	unsigned int h_active, h_total, hblank_delta, pixel_clk, v_total;
+	unsigned int fec_coeff, refresh_rate, cdclk, vdsc_bpp;
+
+	h_active = crtc_state->hw.adjusted_mode.crtc_hdisplay;
+	h_total = crtc_state->hw.adjusted_mode.crtc_htotal;
+	v_total = crtc_state->hw.adjusted_mode.crtc_vtotal;
+	pixel_clk = crtc_state->hw.adjusted_mode.crtc_clock;
+	refresh_rate = crtc_state->hw.adjusted_mode.vrefresh;
+	vdsc_bpp = crtc_state->dsc.compressed_bpp;
+	cdclk = i915->cdclk.hw.cdclk;
+	/* fec= 0.972261, using rounding multiplier of 1000000 */
+	fec_coeff = 972261;
+
+	drm_dbg_kms(&i915->drm, "h_active = %u link_clk = %u :"
+		    "lanes = %u vdsc_bpp = %u cdclk = %u\n",
+		    h_active, crtc_state->port_clock, crtc_state->lane_count,
+		    vdsc_bpp, cdclk);
+
+	link_clks_available = ((((h_total - h_active) *
+			       ((crtc_state->port_clock * ROUNDING_FACTOR) /
+				pixel_clk)) / ROUNDING_FACTOR) - 28);
+
+	link_clks_required = DIV_ROUND_UP(192000, (refresh_rate *
+					  v_total)) * ((48 /
+					  crtc_state->lane_count) + 2);
+
+	if (link_clks_available > link_clks_required)
+		hblank_delta = 32;
+	else
+		hblank_delta = DIV_ROUND_UP(((((5 * ROUNDING_FACTOR) /
+					    crtc_state->port_clock) + ((5 *
+					    ROUNDING_FACTOR) /
+					    cdclk)) * pixel_clk),
+					    ROUNDING_FACTOR);
+
+	tu_data = (pixel_clk * vdsc_bpp * 8) / ((crtc_state->port_clock *
+		   crtc_state->lane_count * fec_coeff) / 1000000);
+	tu_line = (((h_active * crtc_state->port_clock * fec_coeff) /
+		   1000000) / (64 * pixel_clk));
+	link_clks_active  = (tu_line - 1) * 64 + tu_data;
+
+	hblank_rise = ((link_clks_active + 6 * DIV_ROUND_UP(link_clks_active,
+			250) + 4) * ((pixel_clk * ROUNDING_FACTOR) /
+			crtc_state->port_clock)) / ROUNDING_FACTOR;
+
+	hblank_early_prog = h_active - hblank_rise + hblank_delta;
+
+	return hblank_early_prog;
+}
+
+static unsigned int get_sample_room_req_config(const struct intel_crtc_state *crtc_state)
+{
+	unsigned int h_active, h_total, pixel_clk;
+	unsigned int samples_room;
+
+	h_active = crtc_state->hw.adjusted_mode.hdisplay;
+	h_total = crtc_state->hw.adjusted_mode.htotal;
+	pixel_clk = crtc_state->hw.adjusted_mode.clock;
+
+	samples_room = ((((h_total - h_active) * ((crtc_state->port_clock *
+			ROUNDING_FACTOR) / pixel_clk)) /
+			ROUNDING_FACTOR) - 12) / ((48 /
+			crtc_state->lane_count) + 2);
+
+	return samples_room;
+}
+
+static void enable_audio_dsc_wa(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+	unsigned int hblank_early_prog, samples_room, h_active;
+	unsigned int val;
+
+	if (INTEL_GEN(i915) < 11)
+		return;
+
+	h_active = crtc_state->hw.adjusted_mode.hdisplay;
+
+	if (!(h_active && crtc_state->port_clock && crtc_state->lane_count &&
+	      crtc_state->dsc.compressed_bpp && i915->cdclk.hw.cdclk)) {
+		drm_err(&i915->drm, "Null Params rcvd for hblank early enabling\n");
+		WARN_ON(1);
+		return;
+	}
+
+	val = intel_de_read(i915, AUD_CONFIG_BE);
+
+	if (INTEL_GEN(i915) == 11)
+		val |= HBLANK_EARLY_ENABLE_ICL(pipe);
+	else if (INTEL_GEN(i915) >= 12)
+		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
+
+	if (crtc_state->dsc.compression_enable &&
+	    (crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
+	    crtc_state->hw.adjusted_mode.vdisplay >= 2160)) {
+		/* Get hblank early enable value required */
+		hblank_early_prog = get_hblank_early_enable_config(encoder,
+								   crtc_state);
+		if (hblank_early_prog < 32) {
+			val &= ~HBLANK_START_COUNT_MASK(pipe);
+			val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_32);
+		} else if (hblank_early_prog < 64) {
+			val &= ~HBLANK_START_COUNT_MASK(pipe);
+			val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_64);
+		} else if (hblank_early_prog < 96) {
+			val &= ~HBLANK_START_COUNT_MASK(pipe);
+			val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_96);
+		} else {
+			val &= ~HBLANK_START_COUNT_MASK(pipe);
+			val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_128);
+		}
+
+		/* Get samples room value required */
+		samples_room = get_sample_room_req_config(crtc_state);
+		if (samples_room < 3) {
+			val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
+			val |= NUMBER_SAMPLES_PER_LINE(pipe, samples_room);
+		} else {
+			/* Program 0 i.e "All Samples available in buffer" */
+			val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
+			val |= NUMBER_SAMPLES_PER_LINE(pipe, 0x0);
+		}
+	}
+
+	intel_de_write(i915, AUD_CONFIG_BE, val);
+}
+
+#undef ROUNDING_FACTOR
+
 static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct drm_connector_state *conn_state)
@@ -531,6 +673,10 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 
 	mutex_lock(&dev_priv->av_mutex);
 
+	/* Enable Audio WA for 4k DSC usecases */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
+		enable_audio_dsc_wa(encoder, crtc_state);
+
 	/* Enable audio presence detect, invalidate ELD */
 	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
 	tmp |= AUDIO_OUTPUT_ENABLE(cpu_transcoder);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0b39b9abf8a4..8ce79ec53bad 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9396,6 +9396,22 @@ enum {
 #define AUD_PIN_BUF_CTL		_MMIO(0x48414)
 #define   AUD_PIN_BUF_ENABLE		REG_BIT(31)
 
+/* Display Audio Config Reg */
+#define AUD_CONFIG_BE			_MMIO(0x65ef0)
+#define HBLANK_EARLY_ENABLE_ICL(pipe)		(0x1 << (20 - (pipe)))
+#define HBLANK_EARLY_ENABLE_TGL(pipe)		(0x1 << (24 + (pipe)))
+#define HBLANK_START_COUNT_MASK(pipe)		(0x7 << (3 + ((pipe) * 6)))
+#define HBLANK_START_COUNT(pipe, val)		(((val) & 0x7) << (3 + ((pipe)) * 6))
+#define NUMBER_SAMPLES_PER_LINE_MASK(pipe)	(0x3 << ((pipe) * 6))
+#define NUMBER_SAMPLES_PER_LINE(pipe, val)	(((val) & 0x3) << ((pipe) * 6))
+
+#define HBLANK_START_COUNT_8	0
+#define HBLANK_START_COUNT_16	1
+#define HBLANK_START_COUNT_32	2
+#define HBLANK_START_COUNT_64	3
+#define HBLANK_START_COUNT_96	4
+#define HBLANK_START_COUNT_128	5
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
