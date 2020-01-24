Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5845414860A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B145672A89;
	Fri, 24 Jan 2020 13:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A90B972A8B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:28 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="228316720"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:41 +0200
Message-Id: <c89e66aaca33a1e26fa1372172be41da0ee1c62f.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 20/33] drm/i915/hdmi: use intel_de_*() functions
 for register access
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
 drivers/gpu/drm/i915/display/intel_hdmi.c | 258 +++++++++++-----------
 1 file changed, 133 insertions(+), 125 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 83d6b5ab7082..ab13cf834cc4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -72,7 +72,7 @@ assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
 
 	enabled_bits = HAS_DDI(dev_priv) ? DDI_BUF_CTL_ENABLE : SDVO_ENABLE;
 
-	WARN(I915_READ(intel_hdmi->hdmi_reg) & enabled_bits,
+	WARN(intel_de_read(dev_priv, intel_hdmi->hdmi_reg) & enabled_bits,
 	     "HDMI port enabled, expecting disabled\n");
 }
 
@@ -80,7 +80,7 @@ static void
 assert_hdmi_transcoder_func_disabled(struct drm_i915_private *dev_priv,
 				     enum transcoder cpu_transcoder)
 {
-	WARN(I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder)) &
+	WARN(intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder)) &
 	     TRANS_DDI_FUNC_ENABLE,
 	     "HDMI transcoder function enabled, expecting disabled\n");
 }
@@ -215,7 +215,7 @@ static void g4x_write_infoframe(struct intel_encoder *encoder,
 {
 	const u32 *data = frame;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val = I915_READ(VIDEO_DIP_CTL);
+	u32 val = intel_de_read(dev_priv, VIDEO_DIP_CTL);
 	int i;
 
 	WARN(!(val & VIDEO_DIP_ENABLE), "Writing DIP with CTL reg disabled\n");
@@ -225,22 +225,22 @@ static void g4x_write_infoframe(struct intel_encoder *encoder,
 
 	val &= ~g4x_infoframe_enable(type);
 
-	I915_WRITE(VIDEO_DIP_CTL, val);
+	intel_de_write(dev_priv, VIDEO_DIP_CTL, val);
 
 	for (i = 0; i < len; i += 4) {
-		I915_WRITE(VIDEO_DIP_DATA, *data);
+		intel_de_write(dev_priv, VIDEO_DIP_DATA, *data);
 		data++;
 	}
 	/* Write every possible data byte to force correct ECC calculation. */
 	for (; i < VIDEO_DIP_DATA_SIZE; i += 4)
-		I915_WRITE(VIDEO_DIP_DATA, 0);
+		intel_de_write(dev_priv, VIDEO_DIP_DATA, 0);
 
 	val |= g4x_infoframe_enable(type);
 	val &= ~VIDEO_DIP_FREQ_MASK;
 	val |= VIDEO_DIP_FREQ_VSYNC;
 
-	I915_WRITE(VIDEO_DIP_CTL, val);
-	POSTING_READ(VIDEO_DIP_CTL);
+	intel_de_write(dev_priv, VIDEO_DIP_CTL, val);
+	intel_de_posting_read(dev_priv, VIDEO_DIP_CTL);
 }
 
 static void g4x_read_infoframe(struct intel_encoder *encoder,
@@ -252,22 +252,22 @@ static void g4x_read_infoframe(struct intel_encoder *encoder,
 	u32 val, *data = frame;
 	int i;
 
-	val = I915_READ(VIDEO_DIP_CTL);
+	val = intel_de_read(dev_priv, VIDEO_DIP_CTL);
 
 	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
 	val |= g4x_infoframe_index(type);
 
-	I915_WRITE(VIDEO_DIP_CTL, val);
+	intel_de_write(dev_priv, VIDEO_DIP_CTL, val);
 
 	for (i = 0; i < len; i += 4)
-		*data++ = I915_READ(VIDEO_DIP_DATA);
+		*data++ = intel_de_read(dev_priv, VIDEO_DIP_DATA);
 }
 
 static u32 g4x_infoframes_enabled(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val = I915_READ(VIDEO_DIP_CTL);
+	u32 val = intel_de_read(dev_priv, VIDEO_DIP_CTL);
 
 	if ((val & VIDEO_DIP_ENABLE) == 0)
 		return 0;
@@ -288,7 +288,7 @@ static void ibx_write_infoframe(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	i915_reg_t reg = TVIDEO_DIP_CTL(intel_crtc->pipe);
-	u32 val = I915_READ(reg);
+	u32 val = intel_de_read(dev_priv, reg);
 	int i;
 
 	WARN(!(val & VIDEO_DIP_ENABLE), "Writing DIP with CTL reg disabled\n");
@@ -298,22 +298,23 @@ static void ibx_write_infoframe(struct intel_encoder *encoder,
 
 	val &= ~g4x_infoframe_enable(type);
 
-	I915_WRITE(reg, val);
+	intel_de_write(dev_priv, reg, val);
 
 	for (i = 0; i < len; i += 4) {
-		I915_WRITE(TVIDEO_DIP_DATA(intel_crtc->pipe), *data);
+		intel_de_write(dev_priv, TVIDEO_DIP_DATA(intel_crtc->pipe),
+			       *data);
 		data++;
 	}
 	/* Write every possible data byte to force correct ECC calculation. */
 	for (; i < VIDEO_DIP_DATA_SIZE; i += 4)
-		I915_WRITE(TVIDEO_DIP_DATA(intel_crtc->pipe), 0);
+		intel_de_write(dev_priv, TVIDEO_DIP_DATA(intel_crtc->pipe), 0);
 
 	val |= g4x_infoframe_enable(type);
 	val &= ~VIDEO_DIP_FREQ_MASK;
 	val |= VIDEO_DIP_FREQ_VSYNC;
 
-	I915_WRITE(reg, val);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, val);
+	intel_de_posting_read(dev_priv, reg);
 }
 
 static void ibx_read_infoframe(struct intel_encoder *encoder,
@@ -326,15 +327,15 @@ static void ibx_read_infoframe(struct intel_encoder *encoder,
 	u32 val, *data = frame;
 	int i;
 
-	val = I915_READ(TVIDEO_DIP_CTL(crtc->pipe));
+	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
 
 	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
 	val |= g4x_infoframe_index(type);
 
-	I915_WRITE(TVIDEO_DIP_CTL(crtc->pipe), val);
+	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
 
 	for (i = 0; i < len; i += 4)
-		*data++ = I915_READ(TVIDEO_DIP_DATA(crtc->pipe));
+		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
 }
 
 static u32 ibx_infoframes_enabled(struct intel_encoder *encoder,
@@ -343,7 +344,7 @@ static u32 ibx_infoframes_enabled(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum pipe pipe = to_intel_crtc(pipe_config->uapi.crtc)->pipe;
 	i915_reg_t reg = TVIDEO_DIP_CTL(pipe);
-	u32 val = I915_READ(reg);
+	u32 val = intel_de_read(dev_priv, reg);
 
 	if ((val & VIDEO_DIP_ENABLE) == 0)
 		return 0;
@@ -365,7 +366,7 @@ static void cpt_write_infoframe(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	i915_reg_t reg = TVIDEO_DIP_CTL(intel_crtc->pipe);
-	u32 val = I915_READ(reg);
+	u32 val = intel_de_read(dev_priv, reg);
 	int i;
 
 	WARN(!(val & VIDEO_DIP_ENABLE), "Writing DIP with CTL reg disabled\n");
@@ -378,22 +379,23 @@ static void cpt_write_infoframe(struct intel_encoder *encoder,
 	if (type != HDMI_INFOFRAME_TYPE_AVI)
 		val &= ~g4x_infoframe_enable(type);
 
-	I915_WRITE(reg, val);
+	intel_de_write(dev_priv, reg, val);
 
 	for (i = 0; i < len; i += 4) {
-		I915_WRITE(TVIDEO_DIP_DATA(intel_crtc->pipe), *data);
+		intel_de_write(dev_priv, TVIDEO_DIP_DATA(intel_crtc->pipe),
+			       *data);
 		data++;
 	}
 	/* Write every possible data byte to force correct ECC calculation. */
 	for (; i < VIDEO_DIP_DATA_SIZE; i += 4)
-		I915_WRITE(TVIDEO_DIP_DATA(intel_crtc->pipe), 0);
+		intel_de_write(dev_priv, TVIDEO_DIP_DATA(intel_crtc->pipe), 0);
 
 	val |= g4x_infoframe_enable(type);
 	val &= ~VIDEO_DIP_FREQ_MASK;
 	val |= VIDEO_DIP_FREQ_VSYNC;
 
-	I915_WRITE(reg, val);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, val);
+	intel_de_posting_read(dev_priv, reg);
 }
 
 static void cpt_read_infoframe(struct intel_encoder *encoder,
@@ -406,15 +408,15 @@ static void cpt_read_infoframe(struct intel_encoder *encoder,
 	u32 val, *data = frame;
 	int i;
 
-	val = I915_READ(TVIDEO_DIP_CTL(crtc->pipe));
+	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
 
 	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
 	val |= g4x_infoframe_index(type);
 
-	I915_WRITE(TVIDEO_DIP_CTL(crtc->pipe), val);
+	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
 
 	for (i = 0; i < len; i += 4)
-		*data++ = I915_READ(TVIDEO_DIP_DATA(crtc->pipe));
+		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
 }
 
 static u32 cpt_infoframes_enabled(struct intel_encoder *encoder,
@@ -422,7 +424,7 @@ static u32 cpt_infoframes_enabled(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum pipe pipe = to_intel_crtc(pipe_config->uapi.crtc)->pipe;
-	u32 val = I915_READ(TVIDEO_DIP_CTL(pipe));
+	u32 val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(pipe));
 
 	if ((val & VIDEO_DIP_ENABLE) == 0)
 		return 0;
@@ -441,7 +443,7 @@ static void vlv_write_infoframe(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	i915_reg_t reg = VLV_TVIDEO_DIP_CTL(intel_crtc->pipe);
-	u32 val = I915_READ(reg);
+	u32 val = intel_de_read(dev_priv, reg);
 	int i;
 
 	WARN(!(val & VIDEO_DIP_ENABLE), "Writing DIP with CTL reg disabled\n");
@@ -451,22 +453,24 @@ static void vlv_write_infoframe(struct intel_encoder *encoder,
 
 	val &= ~g4x_infoframe_enable(type);
 
-	I915_WRITE(reg, val);
+	intel_de_write(dev_priv, reg, val);
 
 	for (i = 0; i < len; i += 4) {
-		I915_WRITE(VLV_TVIDEO_DIP_DATA(intel_crtc->pipe), *data);
+		intel_de_write(dev_priv,
+			       VLV_TVIDEO_DIP_DATA(intel_crtc->pipe), *data);
 		data++;
 	}
 	/* Write every possible data byte to force correct ECC calculation. */
 	for (; i < VIDEO_DIP_DATA_SIZE; i += 4)
-		I915_WRITE(VLV_TVIDEO_DIP_DATA(intel_crtc->pipe), 0);
+		intel_de_write(dev_priv,
+			       VLV_TVIDEO_DIP_DATA(intel_crtc->pipe), 0);
 
 	val |= g4x_infoframe_enable(type);
 	val &= ~VIDEO_DIP_FREQ_MASK;
 	val |= VIDEO_DIP_FREQ_VSYNC;
 
-	I915_WRITE(reg, val);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, val);
+	intel_de_posting_read(dev_priv, reg);
 }
 
 static void vlv_read_infoframe(struct intel_encoder *encoder,
@@ -479,15 +483,16 @@ static void vlv_read_infoframe(struct intel_encoder *encoder,
 	u32 val, *data = frame;
 	int i;
 
-	val = I915_READ(VLV_TVIDEO_DIP_CTL(crtc->pipe));
+	val = intel_de_read(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe));
 
 	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
 	val |= g4x_infoframe_index(type);
 
-	I915_WRITE(VLV_TVIDEO_DIP_CTL(crtc->pipe), val);
+	intel_de_write(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe), val);
 
 	for (i = 0; i < len; i += 4)
-		*data++ = I915_READ(VLV_TVIDEO_DIP_DATA(crtc->pipe));
+		*data++ = intel_de_read(dev_priv,
+				        VLV_TVIDEO_DIP_DATA(crtc->pipe));
 }
 
 static u32 vlv_infoframes_enabled(struct intel_encoder *encoder,
@@ -495,7 +500,7 @@ static u32 vlv_infoframes_enabled(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum pipe pipe = to_intel_crtc(pipe_config->uapi.crtc)->pipe;
-	u32 val = I915_READ(VLV_TVIDEO_DIP_CTL(pipe));
+	u32 val = intel_de_read(dev_priv, VLV_TVIDEO_DIP_CTL(pipe));
 
 	if ((val & VIDEO_DIP_ENABLE) == 0)
 		return 0;
@@ -519,28 +524,30 @@ static void hsw_write_infoframe(struct intel_encoder *encoder,
 	i915_reg_t ctl_reg = HSW_TVIDEO_DIP_CTL(cpu_transcoder);
 	int data_size;
 	int i;
-	u32 val = I915_READ(ctl_reg);
+	u32 val = intel_de_read(dev_priv, ctl_reg);
 
 	data_size = hsw_dip_data_size(dev_priv, type);
 
 	WARN_ON(len > data_size);
 
 	val &= ~hsw_infoframe_enable(type);
-	I915_WRITE(ctl_reg, val);
+	intel_de_write(dev_priv, ctl_reg, val);
 
 	for (i = 0; i < len; i += 4) {
-		I915_WRITE(hsw_dip_data_reg(dev_priv, cpu_transcoder,
-					    type, i >> 2), *data);
+		intel_de_write(dev_priv,
+			       hsw_dip_data_reg(dev_priv, cpu_transcoder, type, i >> 2),
+			       *data);
 		data++;
 	}
 	/* Write every possible data byte to force correct ECC calculation. */
 	for (; i < data_size; i += 4)
-		I915_WRITE(hsw_dip_data_reg(dev_priv, cpu_transcoder,
-					    type, i >> 2), 0);
+		intel_de_write(dev_priv,
+			       hsw_dip_data_reg(dev_priv, cpu_transcoder, type, i >> 2),
+			       0);
 
 	val |= hsw_infoframe_enable(type);
-	I915_WRITE(ctl_reg, val);
-	POSTING_READ(ctl_reg);
+	intel_de_write(dev_priv, ctl_reg, val);
+	intel_de_posting_read(dev_priv, ctl_reg);
 }
 
 static void hsw_read_infoframe(struct intel_encoder *encoder,
@@ -553,18 +560,19 @@ static void hsw_read_infoframe(struct intel_encoder *encoder,
 	u32 val, *data = frame;
 	int i;
 
-	val = I915_READ(HSW_TVIDEO_DIP_CTL(cpu_transcoder));
+	val = intel_de_read(dev_priv, HSW_TVIDEO_DIP_CTL(cpu_transcoder));
 
 	for (i = 0; i < len; i += 4)
-		*data++ = I915_READ(hsw_dip_data_reg(dev_priv, cpu_transcoder,
-						     type, i >> 2));
+		*data++ = intel_de_read(dev_priv,
+				        hsw_dip_data_reg(dev_priv, cpu_transcoder, type, i >> 2));
 }
 
 static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val = I915_READ(HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
+	u32 val = intel_de_read(dev_priv,
+				HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
 	u32 mask;
 
 	mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
@@ -859,7 +867,7 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
 	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
 	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
 	i915_reg_t reg = VIDEO_DIP_CTL;
-	u32 val = I915_READ(reg);
+	u32 val = intel_de_read(dev_priv, reg);
 	u32 port = VIDEO_DIP_PORT(encoder->port);
 
 	assert_hdmi_port_disabled(intel_hdmi);
@@ -885,8 +893,8 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
 		}
 		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
 			 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_SPD);
-		I915_WRITE(reg, val);
-		POSTING_READ(reg);
+		intel_de_write(dev_priv, reg, val);
+		intel_de_posting_read(dev_priv, reg);
 		return;
 	}
 
@@ -904,8 +912,8 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
 	val &= ~(VIDEO_DIP_ENABLE_AVI |
 		 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_SPD);
 
-	I915_WRITE(reg, val);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, val);
+	intel_de_posting_read(dev_priv, reg);
 
 	intel_write_infoframe(encoder, crtc_state,
 			      HDMI_INFOFRAME_TYPE_AVI,
@@ -982,7 +990,7 @@ static bool intel_hdmi_set_gcp_infoframe(struct intel_encoder *encoder,
 	else
 		return false;
 
-	I915_WRITE(reg, crtc_state->infoframes.gcp);
+	intel_de_write(dev_priv, reg, crtc_state->infoframes.gcp);
 
 	return true;
 }
@@ -1007,7 +1015,7 @@ void intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
 	else
 		return;
 
-	crtc_state->infoframes.gcp = I915_READ(reg);
+	crtc_state->infoframes.gcp = intel_de_read(dev_priv, reg);
 }
 
 static void intel_hdmi_compute_gcp_infoframe(struct intel_encoder *encoder,
@@ -1042,7 +1050,7 @@ static void ibx_set_infoframes(struct intel_encoder *encoder,
 	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
 	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
 	i915_reg_t reg = TVIDEO_DIP_CTL(intel_crtc->pipe);
-	u32 val = I915_READ(reg);
+	u32 val = intel_de_read(dev_priv, reg);
 	u32 port = VIDEO_DIP_PORT(encoder->port);
 
 	assert_hdmi_port_disabled(intel_hdmi);
@@ -1056,8 +1064,8 @@ static void ibx_set_infoframes(struct intel_encoder *encoder,
 		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
 			 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
 			 VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
-		I915_WRITE(reg, val);
-		POSTING_READ(reg);
+		intel_de_write(dev_priv, reg, val);
+		intel_de_posting_read(dev_priv, reg);
 		return;
 	}
 
@@ -1077,8 +1085,8 @@ static void ibx_set_infoframes(struct intel_encoder *encoder,
 	if (intel_hdmi_set_gcp_infoframe(encoder, crtc_state, conn_state))
 		val |= VIDEO_DIP_ENABLE_GCP;
 
-	I915_WRITE(reg, val);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, val);
+	intel_de_posting_read(dev_priv, reg);
 
 	intel_write_infoframe(encoder, crtc_state,
 			      HDMI_INFOFRAME_TYPE_AVI,
@@ -1100,7 +1108,7 @@ static void cpt_set_infoframes(struct intel_encoder *encoder,
 	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	i915_reg_t reg = TVIDEO_DIP_CTL(intel_crtc->pipe);
-	u32 val = I915_READ(reg);
+	u32 val = intel_de_read(dev_priv, reg);
 
 	assert_hdmi_port_disabled(intel_hdmi);
 
@@ -1113,8 +1121,8 @@ static void cpt_set_infoframes(struct intel_encoder *encoder,
 		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
 			 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
 			 VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
-		I915_WRITE(reg, val);
-		POSTING_READ(reg);
+		intel_de_write(dev_priv, reg, val);
+		intel_de_posting_read(dev_priv, reg);
 		return;
 	}
 
@@ -1126,8 +1134,8 @@ static void cpt_set_infoframes(struct intel_encoder *encoder,
 	if (intel_hdmi_set_gcp_infoframe(encoder, crtc_state, conn_state))
 		val |= VIDEO_DIP_ENABLE_GCP;
 
-	I915_WRITE(reg, val);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, val);
+	intel_de_posting_read(dev_priv, reg);
 
 	intel_write_infoframe(encoder, crtc_state,
 			      HDMI_INFOFRAME_TYPE_AVI,
@@ -1149,7 +1157,7 @@ static void vlv_set_infoframes(struct intel_encoder *encoder,
 	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	i915_reg_t reg = VLV_TVIDEO_DIP_CTL(intel_crtc->pipe);
-	u32 val = I915_READ(reg);
+	u32 val = intel_de_read(dev_priv, reg);
 	u32 port = VIDEO_DIP_PORT(encoder->port);
 
 	assert_hdmi_port_disabled(intel_hdmi);
@@ -1163,8 +1171,8 @@ static void vlv_set_infoframes(struct intel_encoder *encoder,
 		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
 			 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
 			 VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
-		I915_WRITE(reg, val);
-		POSTING_READ(reg);
+		intel_de_write(dev_priv, reg, val);
+		intel_de_posting_read(dev_priv, reg);
 		return;
 	}
 
@@ -1184,8 +1192,8 @@ static void vlv_set_infoframes(struct intel_encoder *encoder,
 	if (intel_hdmi_set_gcp_infoframe(encoder, crtc_state, conn_state))
 		val |= VIDEO_DIP_ENABLE_GCP;
 
-	I915_WRITE(reg, val);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, val);
+	intel_de_posting_read(dev_priv, reg);
 
 	intel_write_infoframe(encoder, crtc_state,
 			      HDMI_INFOFRAME_TYPE_AVI,
@@ -1205,7 +1213,7 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
-	u32 val = I915_READ(reg);
+	u32 val = intel_de_read(dev_priv, reg);
 
 	assert_hdmi_transcoder_func_disabled(dev_priv,
 					     crtc_state->cpu_transcoder);
@@ -1216,16 +1224,16 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 		 VIDEO_DIP_ENABLE_DRM_GLK);
 
 	if (!enable) {
-		I915_WRITE(reg, val);
-		POSTING_READ(reg);
+		intel_de_write(dev_priv, reg, val);
+		intel_de_posting_read(dev_priv, reg);
 		return;
 	}
 
 	if (intel_hdmi_set_gcp_infoframe(encoder, crtc_state, conn_state))
 		val |= VIDEO_DIP_ENABLE_GCP_HSW;
 
-	I915_WRITE(reg, val);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, val);
+	intel_de_posting_read(dev_priv, reg);
 
 	intel_write_infoframe(encoder, crtc_state,
 			      HDMI_INFOFRAME_TYPE_AVI,
@@ -1455,7 +1463,7 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector)
 	int ret;
 
 	for (;;) {
-		scanline = I915_READ(PIPEDSL(intel_crtc->pipe));
+		scanline = intel_de_read(dev_priv, PIPEDSL(intel_crtc->pipe));
 		if (scanline > 100 && scanline < 200)
 			break;
 		usleep_range(25, 50);
@@ -1523,14 +1531,14 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	if (ret)
 		return false;
 
-	I915_WRITE(HDCP_RPRIME(dev_priv, cpu_transcoder, port), ri.reg);
+	intel_de_write(dev_priv, HDCP_RPRIME(dev_priv, cpu_transcoder, port),
+		       ri.reg);
 
 	/* Wait for Ri prime match */
-	if (wait_for(I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
+	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
 		DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
-			  I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder,
-						port)));
+			  intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
 		return false;
 	}
 	return true;
@@ -1767,8 +1775,8 @@ static void intel_hdmi_prepare(struct intel_encoder *encoder,
 	else
 		hdmi_val |= SDVO_PIPE_SEL(crtc->pipe);
 
-	I915_WRITE(intel_hdmi->hdmi_reg, hdmi_val);
-	POSTING_READ(intel_hdmi->hdmi_reg);
+	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, hdmi_val);
+	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 }
 
 static bool intel_hdmi_get_hw_state(struct intel_encoder *encoder,
@@ -1802,7 +1810,7 @@ static void intel_hdmi_get_config(struct intel_encoder *encoder,
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_HDMI);
 
-	tmp = I915_READ(intel_hdmi->hdmi_reg);
+	tmp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	if (tmp & SDVO_HSYNC_ACTIVE_HIGH)
 		flags |= DRM_MODE_FLAG_PHSYNC;
@@ -1878,14 +1886,14 @@ static void g4x_enable_hdmi(struct intel_encoder *encoder,
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	u32 temp;
 
-	temp = I915_READ(intel_hdmi->hdmi_reg);
+	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
 	if (pipe_config->has_audio)
 		temp |= HDMI_AUDIO_ENABLE;
 
-	I915_WRITE(intel_hdmi->hdmi_reg, temp);
-	POSTING_READ(intel_hdmi->hdmi_reg);
+	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	if (pipe_config->has_audio)
 		intel_enable_hdmi_audio(encoder, pipe_config, conn_state);
@@ -1900,7 +1908,7 @@ static void ibx_enable_hdmi(struct intel_encoder *encoder,
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	u32 temp;
 
-	temp = I915_READ(intel_hdmi->hdmi_reg);
+	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
 	if (pipe_config->has_audio)
@@ -1910,10 +1918,10 @@ static void ibx_enable_hdmi(struct intel_encoder *encoder,
 	 * HW workaround, need to write this twice for issue
 	 * that may result in first write getting masked.
 	 */
-	I915_WRITE(intel_hdmi->hdmi_reg, temp);
-	POSTING_READ(intel_hdmi->hdmi_reg);
-	I915_WRITE(intel_hdmi->hdmi_reg, temp);
-	POSTING_READ(intel_hdmi->hdmi_reg);
+	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	/*
 	 * HW workaround, need to toggle enable bit off and on
@@ -1924,17 +1932,18 @@ static void ibx_enable_hdmi(struct intel_encoder *encoder,
 	 */
 	if (pipe_config->pipe_bpp > 24 &&
 	    pipe_config->pixel_multiplier > 1) {
-		I915_WRITE(intel_hdmi->hdmi_reg, temp & ~SDVO_ENABLE);
-		POSTING_READ(intel_hdmi->hdmi_reg);
+		intel_de_write(dev_priv, intel_hdmi->hdmi_reg,
+		               temp & ~SDVO_ENABLE);
+		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
 		/*
 		 * HW workaround, need to write this twice for issue
 		 * that may result in first write getting masked.
 		 */
-		I915_WRITE(intel_hdmi->hdmi_reg, temp);
-		POSTING_READ(intel_hdmi->hdmi_reg);
-		I915_WRITE(intel_hdmi->hdmi_reg, temp);
-		POSTING_READ(intel_hdmi->hdmi_reg);
+		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 	}
 
 	if (pipe_config->has_audio)
@@ -1952,7 +1961,7 @@ static void cpt_enable_hdmi(struct intel_encoder *encoder,
 	enum pipe pipe = crtc->pipe;
 	u32 temp;
 
-	temp = I915_READ(intel_hdmi->hdmi_reg);
+	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
 	if (pipe_config->has_audio)
@@ -1969,27 +1978,25 @@ static void cpt_enable_hdmi(struct intel_encoder *encoder,
 	 */
 
 	if (pipe_config->pipe_bpp > 24) {
-		I915_WRITE(TRANS_CHICKEN1(pipe),
-			   I915_READ(TRANS_CHICKEN1(pipe)) |
-			   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
+		intel_de_write(dev_priv, TRANS_CHICKEN1(pipe),
+		               intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) | TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
 
 		temp &= ~SDVO_COLOR_FORMAT_MASK;
 		temp |= SDVO_COLOR_FORMAT_8bpc;
 	}
 
-	I915_WRITE(intel_hdmi->hdmi_reg, temp);
-	POSTING_READ(intel_hdmi->hdmi_reg);
+	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	if (pipe_config->pipe_bpp > 24) {
 		temp &= ~SDVO_COLOR_FORMAT_MASK;
 		temp |= HDMI_COLOR_FORMAT_12bpc;
 
-		I915_WRITE(intel_hdmi->hdmi_reg, temp);
-		POSTING_READ(intel_hdmi->hdmi_reg);
+		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
-		I915_WRITE(TRANS_CHICKEN1(pipe),
-			   I915_READ(TRANS_CHICKEN1(pipe)) &
-			   ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
+		intel_de_write(dev_priv, TRANS_CHICKEN1(pipe),
+		               intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) & ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
 	}
 
 	if (pipe_config->has_audio)
@@ -2014,11 +2021,11 @@ static void intel_disable_hdmi(struct intel_encoder *encoder,
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	u32 temp;
 
-	temp = I915_READ(intel_hdmi->hdmi_reg);
+	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	temp &= ~(SDVO_ENABLE | HDMI_AUDIO_ENABLE);
-	I915_WRITE(intel_hdmi->hdmi_reg, temp);
-	POSTING_READ(intel_hdmi->hdmi_reg);
+	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
 	/*
 	 * HW workaround for IBX, we need to move the port
@@ -2039,14 +2046,14 @@ static void intel_disable_hdmi(struct intel_encoder *encoder,
 		 * HW workaround, need to write this twice for issue
 		 * that may result in first write getting masked.
 		 */
-		I915_WRITE(intel_hdmi->hdmi_reg, temp);
-		POSTING_READ(intel_hdmi->hdmi_reg);
-		I915_WRITE(intel_hdmi->hdmi_reg, temp);
-		POSTING_READ(intel_hdmi->hdmi_reg);
+		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
 		temp &= ~SDVO_ENABLE;
-		I915_WRITE(intel_hdmi->hdmi_reg, temp);
-		POSTING_READ(intel_hdmi->hdmi_reg);
+		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
 		intel_wait_for_vblank_if_active(dev_priv, PIPE_A);
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, true);
@@ -3190,8 +3197,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 	 * generated on the port when a cable is not attached.
 	 */
 	if (IS_G45(dev_priv)) {
-		u32 temp = I915_READ(PEG_BAND_GAP_DATA);
-		I915_WRITE(PEG_BAND_GAP_DATA, (temp & ~0xf) | 0xd);
+		u32 temp = intel_de_read(dev_priv, PEG_BAND_GAP_DATA);
+		intel_de_write(dev_priv, PEG_BAND_GAP_DATA,
+		               (temp & ~0xf) | 0xd);
 	}
 
 	cec_fill_conn_info_from_drm(&conn_info, connector);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
