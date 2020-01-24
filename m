Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A869E148614
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:27:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66E872A94;
	Fri, 24 Jan 2020 13:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F330572A93
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:27:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:27:02 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="260243974"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:27:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:50 +0200
Message-Id: <6e6238e75f5a4155b1021736937b1fd7a0756a00.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 29/33] drm/i915/tv: use intel_de_*() functions for
 register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tv.c | 138 ++++++++++++------------
 1 file changed, 72 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index c75e0ceecee6..fa155a028e2b 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -907,7 +907,7 @@ static bool
 intel_tv_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 tmp = I915_READ(TV_CTL);
+	u32 tmp = intel_de_read(dev_priv, TV_CTL);
 
 	*pipe = (tmp & TV_ENC_PIPE_SEL_MASK) >> TV_ENC_PIPE_SEL_SHIFT;
 
@@ -926,7 +926,8 @@ intel_enable_tv(struct intel_encoder *encoder,
 	intel_wait_for_vblank(dev_priv,
 			      to_intel_crtc(pipe_config->uapi.crtc)->pipe);
 
-	I915_WRITE(TV_CTL, I915_READ(TV_CTL) | TV_ENC_ENABLE);
+	intel_de_write(dev_priv, TV_CTL,
+		       intel_de_read(dev_priv, TV_CTL) | TV_ENC_ENABLE);
 }
 
 static void
@@ -937,7 +938,8 @@ intel_disable_tv(struct intel_encoder *encoder,
 	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
-	I915_WRITE(TV_CTL, I915_READ(TV_CTL) & ~TV_ENC_ENABLE);
+	intel_de_write(dev_priv, TV_CTL,
+		       intel_de_read(dev_priv, TV_CTL) & ~TV_ENC_ENABLE);
 }
 
 static const struct tv_mode *intel_tv_mode_find(const struct drm_connector_state *conn_state)
@@ -1095,11 +1097,11 @@ intel_tv_get_config(struct intel_encoder *encoder,
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_TVOUT);
 
-	tv_ctl = I915_READ(TV_CTL);
-	hctl1 = I915_READ(TV_H_CTL_1);
-	hctl3 = I915_READ(TV_H_CTL_3);
-	vctl1 = I915_READ(TV_V_CTL_1);
-	vctl2 = I915_READ(TV_V_CTL_2);
+	tv_ctl = intel_de_read(dev_priv, TV_CTL);
+	hctl1 = intel_de_read(dev_priv, TV_H_CTL_1);
+	hctl3 = intel_de_read(dev_priv, TV_H_CTL_3);
+	vctl1 = intel_de_read(dev_priv, TV_V_CTL_1);
+	vctl2 = intel_de_read(dev_priv, TV_V_CTL_2);
 
 	tv_mode.htotal = (hctl1 & TV_HTOTAL_MASK) >> TV_HTOTAL_SHIFT;
 	tv_mode.hsync_end = (hctl1 & TV_HSYNC_END_MASK) >> TV_HSYNC_END_SHIFT;
@@ -1134,11 +1136,11 @@ intel_tv_get_config(struct intel_encoder *encoder,
 		break;
 	}
 
-	tmp = I915_READ(TV_WIN_POS);
+	tmp = intel_de_read(dev_priv, TV_WIN_POS);
 	xpos = tmp >> 16;
 	ypos = tmp & 0xffff;
 
-	tmp = I915_READ(TV_WIN_SIZE);
+	tmp = intel_de_read(dev_priv, TV_WIN_SIZE);
 	xsize = tmp >> 16;
 	ysize = tmp & 0xffff;
 
@@ -1380,16 +1382,16 @@ set_tv_mode_timings(struct drm_i915_private *dev_priv,
 	vctl7 = (tv_mode->vburst_start_f4 << TV_VBURST_START_F4_SHIFT) |
 		(tv_mode->vburst_end_f4 << TV_VBURST_END_F4_SHIFT);
 
-	I915_WRITE(TV_H_CTL_1, hctl1);
-	I915_WRITE(TV_H_CTL_2, hctl2);
-	I915_WRITE(TV_H_CTL_3, hctl3);
-	I915_WRITE(TV_V_CTL_1, vctl1);
-	I915_WRITE(TV_V_CTL_2, vctl2);
-	I915_WRITE(TV_V_CTL_3, vctl3);
-	I915_WRITE(TV_V_CTL_4, vctl4);
-	I915_WRITE(TV_V_CTL_5, vctl5);
-	I915_WRITE(TV_V_CTL_6, vctl6);
-	I915_WRITE(TV_V_CTL_7, vctl7);
+	intel_de_write(dev_priv, TV_H_CTL_1, hctl1);
+	intel_de_write(dev_priv, TV_H_CTL_2, hctl2);
+	intel_de_write(dev_priv, TV_H_CTL_3, hctl3);
+	intel_de_write(dev_priv, TV_V_CTL_1, vctl1);
+	intel_de_write(dev_priv, TV_V_CTL_2, vctl2);
+	intel_de_write(dev_priv, TV_V_CTL_3, vctl3);
+	intel_de_write(dev_priv, TV_V_CTL_4, vctl4);
+	intel_de_write(dev_priv, TV_V_CTL_5, vctl5);
+	intel_de_write(dev_priv, TV_V_CTL_6, vctl6);
+	intel_de_write(dev_priv, TV_V_CTL_7, vctl7);
 }
 
 static void set_color_conversion(struct drm_i915_private *dev_priv,
@@ -1398,18 +1400,18 @@ static void set_color_conversion(struct drm_i915_private *dev_priv,
 	if (!color_conversion)
 		return;
 
-	I915_WRITE(TV_CSC_Y, (color_conversion->ry << 16) |
-		   color_conversion->gy);
-	I915_WRITE(TV_CSC_Y2, (color_conversion->by << 16) |
-		   color_conversion->ay);
-	I915_WRITE(TV_CSC_U, (color_conversion->ru << 16) |
-		   color_conversion->gu);
-	I915_WRITE(TV_CSC_U2, (color_conversion->bu << 16) |
-		   color_conversion->au);
-	I915_WRITE(TV_CSC_V, (color_conversion->rv << 16) |
-		   color_conversion->gv);
-	I915_WRITE(TV_CSC_V2, (color_conversion->bv << 16) |
-		   color_conversion->av);
+	intel_de_write(dev_priv, TV_CSC_Y,
+		       (color_conversion->ry << 16) | color_conversion->gy);
+	intel_de_write(dev_priv, TV_CSC_Y2,
+		       (color_conversion->by << 16) | color_conversion->ay);
+	intel_de_write(dev_priv, TV_CSC_U,
+		       (color_conversion->ru << 16) | color_conversion->gu);
+	intel_de_write(dev_priv, TV_CSC_U2,
+		       (color_conversion->bu << 16) | color_conversion->au);
+	intel_de_write(dev_priv, TV_CSC_V,
+		       (color_conversion->rv << 16) | color_conversion->gv);
+	intel_de_write(dev_priv, TV_CSC_V2,
+		       (color_conversion->bv << 16) | color_conversion->av);
 }
 
 static void intel_tv_pre_enable(struct intel_encoder *encoder,
@@ -1434,7 +1436,7 @@ static void intel_tv_pre_enable(struct intel_encoder *encoder,
 	if (!tv_mode)
 		return;	/* can't happen (mode_prepare prevents this) */
 
-	tv_ctl = I915_READ(TV_CTL);
+	tv_ctl = intel_de_read(dev_priv, TV_CTL);
 	tv_ctl &= TV_CTL_SAVE;
 
 	switch (intel_tv->type) {
@@ -1511,21 +1513,20 @@ static void intel_tv_pre_enable(struct intel_encoder *encoder,
 
 	set_tv_mode_timings(dev_priv, tv_mode, burst_ena);
 
-	I915_WRITE(TV_SC_CTL_1, scctl1);
-	I915_WRITE(TV_SC_CTL_2, scctl2);
-	I915_WRITE(TV_SC_CTL_3, scctl3);
+	intel_de_write(dev_priv, TV_SC_CTL_1, scctl1);
+	intel_de_write(dev_priv, TV_SC_CTL_2, scctl2);
+	intel_de_write(dev_priv, TV_SC_CTL_3, scctl3);
 
 	set_color_conversion(dev_priv, color_conversion);
 
 	if (INTEL_GEN(dev_priv) >= 4)
-		I915_WRITE(TV_CLR_KNOBS, 0x00404000);
+		intel_de_write(dev_priv, TV_CLR_KNOBS, 0x00404000);
 	else
-		I915_WRITE(TV_CLR_KNOBS, 0x00606000);
+		intel_de_write(dev_priv, TV_CLR_KNOBS, 0x00606000);
 
 	if (video_levels)
-		I915_WRITE(TV_CLR_LEVEL,
-			   ((video_levels->black << TV_BLACK_LEVEL_SHIFT) |
-			    (video_levels->blank << TV_BLANK_LEVEL_SHIFT)));
+		intel_de_write(dev_priv, TV_CLR_LEVEL,
+			       ((video_levels->black << TV_BLACK_LEVEL_SHIFT) | (video_levels->blank << TV_BLANK_LEVEL_SHIFT)));
 
 	assert_pipe_disabled(dev_priv, pipe_config->cpu_transcoder);
 
@@ -1533,7 +1534,7 @@ static void intel_tv_pre_enable(struct intel_encoder *encoder,
 	tv_filter_ctl = TV_AUTO_SCALE;
 	if (tv_conn_state->bypass_vfilter)
 		tv_filter_ctl |= TV_V_FILTER_BYPASS;
-	I915_WRITE(TV_FILTER_CTL_1, tv_filter_ctl);
+	intel_de_write(dev_priv, TV_FILTER_CTL_1, tv_filter_ctl);
 
 	xsize = tv_mode->hblank_start - tv_mode->hblank_end;
 	ysize = intel_tv_mode_vdisplay(tv_mode);
@@ -1544,20 +1545,25 @@ static void intel_tv_pre_enable(struct intel_encoder *encoder,
 		  conn_state->tv.margins.right);
 	ysize -= (tv_conn_state->margins.top +
 		  tv_conn_state->margins.bottom);
-	I915_WRITE(TV_WIN_POS, (xpos<<16)|ypos);
-	I915_WRITE(TV_WIN_SIZE, (xsize<<16)|ysize);
+	intel_de_write(dev_priv, TV_WIN_POS, (xpos << 16) | ypos);
+	intel_de_write(dev_priv, TV_WIN_SIZE, (xsize << 16) | ysize);
 
 	j = 0;
 	for (i = 0; i < 60; i++)
-		I915_WRITE(TV_H_LUMA(i), tv_mode->filter_table[j++]);
+		intel_de_write(dev_priv, TV_H_LUMA(i),
+			       tv_mode->filter_table[j++]);
 	for (i = 0; i < 60; i++)
-		I915_WRITE(TV_H_CHROMA(i), tv_mode->filter_table[j++]);
+		intel_de_write(dev_priv, TV_H_CHROMA(i),
+			       tv_mode->filter_table[j++]);
 	for (i = 0; i < 43; i++)
-		I915_WRITE(TV_V_LUMA(i), tv_mode->filter_table[j++]);
+		intel_de_write(dev_priv, TV_V_LUMA(i),
+			       tv_mode->filter_table[j++]);
 	for (i = 0; i < 43; i++)
-		I915_WRITE(TV_V_CHROMA(i), tv_mode->filter_table[j++]);
-	I915_WRITE(TV_DAC, I915_READ(TV_DAC) & TV_DAC_SAVE);
-	I915_WRITE(TV_CTL, tv_ctl);
+		intel_de_write(dev_priv, TV_V_CHROMA(i),
+			       tv_mode->filter_table[j++]);
+	intel_de_write(dev_priv, TV_DAC,
+		       intel_de_read(dev_priv, TV_DAC) & TV_DAC_SAVE);
+	intel_de_write(dev_priv, TV_CTL, tv_ctl);
 }
 
 static int
@@ -1581,8 +1587,8 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 		spin_unlock_irq(&dev_priv->irq_lock);
 	}
 
-	save_tv_dac = tv_dac = I915_READ(TV_DAC);
-	save_tv_ctl = tv_ctl = I915_READ(TV_CTL);
+	save_tv_dac = tv_dac = intel_de_read(dev_priv, TV_DAC);
+	save_tv_ctl = tv_ctl = intel_de_read(dev_priv, TV_CTL);
 
 	/* Poll for TV detection */
 	tv_ctl &= ~(TV_ENC_ENABLE | TV_ENC_PIPE_SEL_MASK | TV_TEST_MODE_MASK);
@@ -1608,14 +1614,14 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 		tv_dac &= ~(TVDAC_STATE_CHG_EN | TVDAC_A_SENSE_CTL |
 			    TVDAC_B_SENSE_CTL | TVDAC_C_SENSE_CTL);
 
-	I915_WRITE(TV_CTL, tv_ctl);
-	I915_WRITE(TV_DAC, tv_dac);
-	POSTING_READ(TV_DAC);
+	intel_de_write(dev_priv, TV_CTL, tv_ctl);
+	intel_de_write(dev_priv, TV_DAC, tv_dac);
+	intel_de_posting_read(dev_priv, TV_DAC);
 
 	intel_wait_for_vblank(dev_priv, intel_crtc->pipe);
 
 	type = -1;
-	tv_dac = I915_READ(TV_DAC);
+	tv_dac = intel_de_read(dev_priv, TV_DAC);
 	DRM_DEBUG_KMS("TV detected: %x, %x\n", tv_ctl, tv_dac);
 	/*
 	 *  A B C
@@ -1637,9 +1643,9 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 		type = -1;
 	}
 
-	I915_WRITE(TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
-	I915_WRITE(TV_CTL, save_tv_ctl);
-	POSTING_READ(TV_CTL);
+	intel_de_write(dev_priv, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
+	intel_de_write(dev_priv, TV_CTL, save_tv_ctl);
+	intel_de_posting_read(dev_priv, TV_CTL);
 
 	/* For unknown reasons the hw barfs if we don't do this vblank wait. */
 	intel_wait_for_vblank(dev_priv, intel_crtc->pipe);
@@ -1870,7 +1876,7 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	int i, initial_mode = 0;
 	struct drm_connector_state *state;
 
-	if ((I915_READ(TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
+	if ((intel_de_read(dev_priv, TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
 		return;
 
 	if (!intel_bios_is_tv_present(dev_priv)) {
@@ -1882,15 +1888,15 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	 * Sanity check the TV output by checking to see if the
 	 * DAC register holds a value
 	 */
-	save_tv_dac = I915_READ(TV_DAC);
+	save_tv_dac = intel_de_read(dev_priv, TV_DAC);
 
-	I915_WRITE(TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
-	tv_dac_on = I915_READ(TV_DAC);
+	intel_de_write(dev_priv, TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
+	tv_dac_on = intel_de_read(dev_priv, TV_DAC);
 
-	I915_WRITE(TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
-	tv_dac_off = I915_READ(TV_DAC);
+	intel_de_write(dev_priv, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
+	tv_dac_off = intel_de_read(dev_priv, TV_DAC);
 
-	I915_WRITE(TV_DAC, save_tv_dac);
+	intel_de_write(dev_priv, TV_DAC, save_tv_dac);
 
 	/*
 	 * If the register does not hold the state change enable
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
