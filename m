Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A4C146A94
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 15:01:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485FE6FCD4;
	Thu, 23 Jan 2020 14:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 158A46FCDE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 14:00:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:00:33 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="375222970"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:00:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 16:00:03 +0200
Message-Id: <20200123140004.14136-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200123140004.14136-1-jani.nikula@intel.com>
References: <20200123140004.14136-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH RESEND 5/6] drm/i915/sprite: use intel de
 functions for forcewake register access
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

Move away from I915_READ_FW() and I915_WRITE_FW() in display code, and
switch to using intel_de_read_fw() and intel_de_write_fw(),
respectively. Also switch I915_READ() and I915_WRITE() over in this file
while at it.

No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 318 +++++++++++---------
 1 file changed, 173 insertions(+), 145 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index fca77ec1e0dd..3e597ebe4f67 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -434,14 +434,16 @@ skl_program_scaler(struct intel_plane *plane,
 		uv_rgb_vphase = skl_scaler_calc_phase(1, vscale, false);
 	}
 
-	I915_WRITE_FW(SKL_PS_CTRL(pipe, scaler_id),
-		      PS_SCALER_EN | PS_PLANE_SEL(plane->id) | scaler->mode);
-	I915_WRITE_FW(SKL_PS_VPHASE(pipe, scaler_id),
-		      PS_Y_PHASE(y_vphase) | PS_UV_RGB_PHASE(uv_rgb_vphase));
-	I915_WRITE_FW(SKL_PS_HPHASE(pipe, scaler_id),
-		      PS_Y_PHASE(y_hphase) | PS_UV_RGB_PHASE(uv_rgb_hphase));
-	I915_WRITE_FW(SKL_PS_WIN_POS(pipe, scaler_id), (crtc_x << 16) | crtc_y);
-	I915_WRITE_FW(SKL_PS_WIN_SZ(pipe, scaler_id), (crtc_w << 16) | crtc_h);
+	intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, scaler_id),
+			  PS_SCALER_EN | PS_PLANE_SEL(plane->id) | scaler->mode);
+	intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, scaler_id),
+			  PS_Y_PHASE(y_vphase) | PS_UV_RGB_PHASE(uv_rgb_vphase));
+	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, scaler_id),
+			  PS_Y_PHASE(y_hphase) | PS_UV_RGB_PHASE(uv_rgb_hphase));
+	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, scaler_id),
+			  (crtc_x << 16) | crtc_y);
+	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, scaler_id),
+			  (crtc_w << 16) | crtc_h);
 }
 
 /* Preoffset values for YUV to RGB Conversion */
@@ -547,28 +549,37 @@ icl_program_input_csc(struct intel_plane *plane,
 	else
 		csc = input_csc_matrix_lr[plane_state->hw.color_encoding];
 
-	I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 0), ROFF(csc[0]) |
-		      GOFF(csc[1]));
-	I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 1), BOFF(csc[2]));
-	I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 2), ROFF(csc[3]) |
-		      GOFF(csc[4]));
-	I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 3), BOFF(csc[5]));
-	I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 4), ROFF(csc[6]) |
-		      GOFF(csc[7]));
-	I915_WRITE_FW(PLANE_INPUT_CSC_COEFF(pipe, plane_id, 5), BOFF(csc[8]));
-
-	I915_WRITE_FW(PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 0),
-		      PREOFF_YUV_TO_RGB_HI);
+	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 0),
+			  ROFF(csc[0]) | GOFF(csc[1]));
+	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 1),
+			  BOFF(csc[2]));
+	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 2),
+			  ROFF(csc[3]) | GOFF(csc[4]));
+	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 3),
+			  BOFF(csc[5]));
+	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 4),
+			  ROFF(csc[6]) | GOFF(csc[7]));
+	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 5),
+			  BOFF(csc[8]));
+
+	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 0),
+			  PREOFF_YUV_TO_RGB_HI);
 	if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
-		I915_WRITE_FW(PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1), 0);
+		intel_de_write_fw(dev_priv,
+				  PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
+				  0);
 	else
-		I915_WRITE_FW(PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
-			      PREOFF_YUV_TO_RGB_ME);
-	I915_WRITE_FW(PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 2),
-		      PREOFF_YUV_TO_RGB_LO);
-	I915_WRITE_FW(PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 0), 0x0);
-	I915_WRITE_FW(PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 1), 0x0);
-	I915_WRITE_FW(PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
+		intel_de_write_fw(dev_priv,
+				  PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
+				  PREOFF_YUV_TO_RGB_ME);
+	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 2),
+			  PREOFF_YUV_TO_RGB_LO);
+	intel_de_write_fw(dev_priv,
+			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 0), 0x0);
+	intel_de_write_fw(dev_priv,
+			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 1), 0x0);
+	intel_de_write_fw(dev_priv,
+			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
 }
 
 static void
@@ -623,44 +634,47 @@ skl_program_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(PLANE_STRIDE(pipe, plane_id), stride);
-	I915_WRITE_FW(PLANE_POS(pipe, plane_id), (crtc_y << 16) | crtc_x);
-	I915_WRITE_FW(PLANE_SIZE(pipe, plane_id), (src_h << 16) | src_w);
+	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id), stride);
+	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id), (crtc_y << 16) | crtc_x);
+	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id), (src_h << 16) | src_w);
 
 	if (INTEL_GEN(dev_priv) < 12)
 		aux_dist |= aux_stride;
-	I915_WRITE_FW(PLANE_AUX_DIST(pipe, plane_id), aux_dist);
+	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id), aux_dist);
 
 	if (icl_is_hdr_plane(dev_priv, plane_id))
-		I915_WRITE_FW(PLANE_CUS_CTL(pipe, plane_id), plane_state->cus_ctl);
+		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
+				  plane_state->cus_ctl);
 
 	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
-		I915_WRITE_FW(PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
+		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
+				  plane_color_ctl);
 
 	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
 		icl_program_input_csc(plane, crtc_state, plane_state);
 
 	skl_write_plane_wm(plane, crtc_state);
 
-	I915_WRITE_FW(PLANE_KEYVAL(pipe, plane_id), key->min_value);
-	I915_WRITE_FW(PLANE_KEYMSK(pipe, plane_id), keymsk);
-	I915_WRITE_FW(PLANE_KEYMAX(pipe, plane_id), keymax);
+	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id),
+			  key->min_value);
+	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), keymsk);
+	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), keymax);
 
-	I915_WRITE_FW(PLANE_OFFSET(pipe, plane_id), (y << 16) | x);
+	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
+			  (y << 16) | x);
 
 	if (INTEL_GEN(dev_priv) < 11)
-		I915_WRITE_FW(PLANE_AUX_OFFSET(pipe, plane_id),
-			      (plane_state->color_plane[1].y << 16) |
-			      plane_state->color_plane[1].x);
+		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
+				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1].x);
 
 	/*
 	 * The control register self-arms if the plane was previously
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	I915_WRITE_FW(PLANE_CTL(pipe, plane_id), plane_ctl);
-	I915_WRITE_FW(PLANE_SURF(pipe, plane_id),
-		      intel_plane_ggtt_offset(plane_state) + surf_addr);
+	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
+	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
+			  intel_plane_ggtt_offset(plane_state) + surf_addr);
 
 	if (plane_state->scaler_id >= 0)
 		skl_program_scaler(plane, crtc_state, plane_state);
@@ -693,12 +707,12 @@ skl_disable_plane(struct intel_plane *plane,
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	if (icl_is_hdr_plane(dev_priv, plane_id))
-		I915_WRITE_FW(PLANE_CUS_CTL(pipe, plane_id), 0);
+		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
 
 	skl_write_plane_wm(plane, crtc_state);
 
-	I915_WRITE_FW(PLANE_CTL(pipe, plane_id), 0);
-	I915_WRITE_FW(PLANE_SURF(pipe, plane_id), 0);
+	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
+	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -718,7 +732,7 @@ skl_plane_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret = I915_READ(PLANE_CTL(plane->pipe, plane_id)) & PLANE_CTL_ENABLE;
+	ret = intel_de_read(dev_priv, PLANE_CTL(plane->pipe, plane_id)) & PLANE_CTL_ENABLE;
 
 	*pipe = plane->pipe;
 
@@ -774,23 +788,36 @@ chv_update_csc(const struct intel_plane_state *plane_state)
 	if (!fb->format->is_yuv)
 		return;
 
-	I915_WRITE_FW(SPCSCYGOFF(plane_id), SPCSC_OOFF(0) | SPCSC_IOFF(0));
-	I915_WRITE_FW(SPCSCCBOFF(plane_id), SPCSC_OOFF(0) | SPCSC_IOFF(0));
-	I915_WRITE_FW(SPCSCCROFF(plane_id), SPCSC_OOFF(0) | SPCSC_IOFF(0));
-
-	I915_WRITE_FW(SPCSCC01(plane_id), SPCSC_C1(csc[1]) | SPCSC_C0(csc[0]));
-	I915_WRITE_FW(SPCSCC23(plane_id), SPCSC_C1(csc[3]) | SPCSC_C0(csc[2]));
-	I915_WRITE_FW(SPCSCC45(plane_id), SPCSC_C1(csc[5]) | SPCSC_C0(csc[4]));
-	I915_WRITE_FW(SPCSCC67(plane_id), SPCSC_C1(csc[7]) | SPCSC_C0(csc[6]));
-	I915_WRITE_FW(SPCSCC8(plane_id), SPCSC_C0(csc[8]));
-
-	I915_WRITE_FW(SPCSCYGICLAMP(plane_id), SPCSC_IMAX(1023) | SPCSC_IMIN(0));
-	I915_WRITE_FW(SPCSCCBICLAMP(plane_id), SPCSC_IMAX(512) | SPCSC_IMIN(-512));
-	I915_WRITE_FW(SPCSCCRICLAMP(plane_id), SPCSC_IMAX(512) | SPCSC_IMIN(-512));
-
-	I915_WRITE_FW(SPCSCYGOCLAMP(plane_id), SPCSC_OMAX(1023) | SPCSC_OMIN(0));
-	I915_WRITE_FW(SPCSCCBOCLAMP(plane_id), SPCSC_OMAX(1023) | SPCSC_OMIN(0));
-	I915_WRITE_FW(SPCSCCROCLAMP(plane_id), SPCSC_OMAX(1023) | SPCSC_OMIN(0));
+	intel_de_write_fw(dev_priv, SPCSCYGOFF(plane_id),
+			  SPCSC_OOFF(0) | SPCSC_IOFF(0));
+	intel_de_write_fw(dev_priv, SPCSCCBOFF(plane_id),
+			  SPCSC_OOFF(0) | SPCSC_IOFF(0));
+	intel_de_write_fw(dev_priv, SPCSCCROFF(plane_id),
+			  SPCSC_OOFF(0) | SPCSC_IOFF(0));
+
+	intel_de_write_fw(dev_priv, SPCSCC01(plane_id),
+			  SPCSC_C1(csc[1]) | SPCSC_C0(csc[0]));
+	intel_de_write_fw(dev_priv, SPCSCC23(plane_id),
+			  SPCSC_C1(csc[3]) | SPCSC_C0(csc[2]));
+	intel_de_write_fw(dev_priv, SPCSCC45(plane_id),
+			  SPCSC_C1(csc[5]) | SPCSC_C0(csc[4]));
+	intel_de_write_fw(dev_priv, SPCSCC67(plane_id),
+			  SPCSC_C1(csc[7]) | SPCSC_C0(csc[6]));
+	intel_de_write_fw(dev_priv, SPCSCC8(plane_id), SPCSC_C0(csc[8]));
+
+	intel_de_write_fw(dev_priv, SPCSCYGICLAMP(plane_id),
+			  SPCSC_IMAX(1023) | SPCSC_IMIN(0));
+	intel_de_write_fw(dev_priv, SPCSCCBICLAMP(plane_id),
+			  SPCSC_IMAX(512) | SPCSC_IMIN(-512));
+	intel_de_write_fw(dev_priv, SPCSCCRICLAMP(plane_id),
+			  SPCSC_IMAX(512) | SPCSC_IMIN(-512));
+
+	intel_de_write_fw(dev_priv, SPCSCYGOCLAMP(plane_id),
+			  SPCSC_OMAX(1023) | SPCSC_OMIN(0));
+	intel_de_write_fw(dev_priv, SPCSCCBOCLAMP(plane_id),
+			  SPCSC_OMAX(1023) | SPCSC_OMIN(0));
+	intel_de_write_fw(dev_priv, SPCSCCROCLAMP(plane_id),
+			  SPCSC_OMAX(1023) | SPCSC_OMIN(0));
 }
 
 #define SIN_0 0
@@ -829,10 +856,10 @@ vlv_update_clrc(const struct intel_plane_state *plane_state)
 	}
 
 	/* FIXME these register are single buffered :( */
-	I915_WRITE_FW(SPCLRC0(pipe, plane_id),
-		      SP_CONTRAST(contrast) | SP_BRIGHTNESS(brightness));
-	I915_WRITE_FW(SPCLRC1(pipe, plane_id),
-		      SP_SH_SIN(sh_sin) | SP_SH_COS(sh_cos));
+	intel_de_write_fw(dev_priv, SPCLRC0(pipe, plane_id),
+			  SP_CONTRAST(contrast) | SP_BRIGHTNESS(brightness));
+	intel_de_write_fw(dev_priv, SPCLRC1(pipe, plane_id),
+			  SP_SH_SIN(sh_sin) | SP_SH_COS(sh_cos));
 }
 
 static void
@@ -1019,10 +1046,8 @@ static void vlv_update_gamma(const struct intel_plane_state *plane_state)
 	/* FIXME these register are single buffered :( */
 	/* The two end points are implicit (0.0 and 1.0) */
 	for (i = 1; i < 8 - 1; i++)
-		I915_WRITE_FW(SPGAMC(pipe, plane_id, i - 1),
-			      gamma[i] << 16 |
-			      gamma[i] << 8 |
-			      gamma[i]);
+		intel_de_write_fw(dev_priv, SPGAMC(pipe, plane_id, i - 1),
+				  gamma[i] << 16 | gamma[i] << 8 | gamma[i]);
 }
 
 static void
@@ -1055,32 +1080,37 @@ vlv_update_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(SPSTRIDE(pipe, plane_id),
-		      plane_state->color_plane[0].stride);
-	I915_WRITE_FW(SPPOS(pipe, plane_id), (crtc_y << 16) | crtc_x);
-	I915_WRITE_FW(SPSIZE(pipe, plane_id), (crtc_h << 16) | crtc_w);
-	I915_WRITE_FW(SPCONSTALPHA(pipe, plane_id), 0);
+	intel_de_write_fw(dev_priv, SPSTRIDE(pipe, plane_id),
+			  plane_state->color_plane[0].stride);
+	intel_de_write_fw(dev_priv, SPPOS(pipe, plane_id),
+			  (crtc_y << 16) | crtc_x);
+	intel_de_write_fw(dev_priv, SPSIZE(pipe, plane_id),
+			  (crtc_h << 16) | crtc_w);
+	intel_de_write_fw(dev_priv, SPCONSTALPHA(pipe, plane_id), 0);
 
 	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B)
 		chv_update_csc(plane_state);
 
 	if (key->flags) {
-		I915_WRITE_FW(SPKEYMINVAL(pipe, plane_id), key->min_value);
-		I915_WRITE_FW(SPKEYMSK(pipe, plane_id), key->channel_mask);
-		I915_WRITE_FW(SPKEYMAXVAL(pipe, plane_id), key->max_value);
+		intel_de_write_fw(dev_priv, SPKEYMINVAL(pipe, plane_id),
+				  key->min_value);
+		intel_de_write_fw(dev_priv, SPKEYMSK(pipe, plane_id),
+				  key->channel_mask);
+		intel_de_write_fw(dev_priv, SPKEYMAXVAL(pipe, plane_id),
+				  key->max_value);
 	}
 
-	I915_WRITE_FW(SPLINOFF(pipe, plane_id), linear_offset);
-	I915_WRITE_FW(SPTILEOFF(pipe, plane_id), (y << 16) | x);
+	intel_de_write_fw(dev_priv, SPLINOFF(pipe, plane_id), linear_offset);
+	intel_de_write_fw(dev_priv, SPTILEOFF(pipe, plane_id), (y << 16) | x);
 
 	/*
 	 * The control register self-arms if the plane was previously
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	I915_WRITE_FW(SPCNTR(pipe, plane_id), sprctl);
-	I915_WRITE_FW(SPSURF(pipe, plane_id),
-		      intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
+	intel_de_write_fw(dev_priv, SPCNTR(pipe, plane_id), sprctl);
+	intel_de_write_fw(dev_priv, SPSURF(pipe, plane_id),
+			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
 
 	vlv_update_clrc(plane_state);
 	vlv_update_gamma(plane_state);
@@ -1099,8 +1129,8 @@ vlv_disable_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(SPCNTR(pipe, plane_id), 0);
-	I915_WRITE_FW(SPSURF(pipe, plane_id), 0);
+	intel_de_write_fw(dev_priv, SPCNTR(pipe, plane_id), 0);
+	intel_de_write_fw(dev_priv, SPSURF(pipe, plane_id), 0);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -1120,7 +1150,7 @@ vlv_plane_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret = I915_READ(SPCNTR(plane->pipe, plane_id)) & SP_ENABLE;
+	ret = intel_de_read(dev_priv, SPCNTR(plane->pipe, plane_id)) & SP_ENABLE;
 
 	*pipe = plane->pipe;
 
@@ -1424,19 +1454,17 @@ static void ivb_update_gamma(const struct intel_plane_state *plane_state)
 
 	/* FIXME these register are single buffered :( */
 	for (i = 0; i < 16; i++)
-		I915_WRITE_FW(SPRGAMC(pipe, i),
-			      gamma[i] << 20 |
-			      gamma[i] << 10 |
-			      gamma[i]);
-
-	I915_WRITE_FW(SPRGAMC16(pipe, 0), gamma[i]);
-	I915_WRITE_FW(SPRGAMC16(pipe, 1), gamma[i]);
-	I915_WRITE_FW(SPRGAMC16(pipe, 2), gamma[i]);
+		intel_de_write_fw(dev_priv, SPRGAMC(pipe, i),
+				  gamma[i] << 20 | gamma[i] << 10 | gamma[i]);
+
+	intel_de_write_fw(dev_priv, SPRGAMC16(pipe, 0), gamma[i]);
+	intel_de_write_fw(dev_priv, SPRGAMC16(pipe, 1), gamma[i]);
+	intel_de_write_fw(dev_priv, SPRGAMC16(pipe, 2), gamma[i]);
 	i++;
 
-	I915_WRITE_FW(SPRGAMC17(pipe, 0), gamma[i]);
-	I915_WRITE_FW(SPRGAMC17(pipe, 1), gamma[i]);
-	I915_WRITE_FW(SPRGAMC17(pipe, 2), gamma[i]);
+	intel_de_write_fw(dev_priv, SPRGAMC17(pipe, 0), gamma[i]);
+	intel_de_write_fw(dev_priv, SPRGAMC17(pipe, 1), gamma[i]);
+	intel_de_write_fw(dev_priv, SPRGAMC17(pipe, 2), gamma[i]);
 	i++;
 }
 
@@ -1476,25 +1504,27 @@ ivb_update_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(SPRSTRIDE(pipe), plane_state->color_plane[0].stride);
-	I915_WRITE_FW(SPRPOS(pipe), (crtc_y << 16) | crtc_x);
-	I915_WRITE_FW(SPRSIZE(pipe), (crtc_h << 16) | crtc_w);
+	intel_de_write_fw(dev_priv, SPRSTRIDE(pipe),
+			  plane_state->color_plane[0].stride);
+	intel_de_write_fw(dev_priv, SPRPOS(pipe), (crtc_y << 16) | crtc_x);
+	intel_de_write_fw(dev_priv, SPRSIZE(pipe), (crtc_h << 16) | crtc_w);
 	if (IS_IVYBRIDGE(dev_priv))
-		I915_WRITE_FW(SPRSCALE(pipe), sprscale);
+		intel_de_write_fw(dev_priv, SPRSCALE(pipe), sprscale);
 
 	if (key->flags) {
-		I915_WRITE_FW(SPRKEYVAL(pipe), key->min_value);
-		I915_WRITE_FW(SPRKEYMSK(pipe), key->channel_mask);
-		I915_WRITE_FW(SPRKEYMAX(pipe), key->max_value);
+		intel_de_write_fw(dev_priv, SPRKEYVAL(pipe), key->min_value);
+		intel_de_write_fw(dev_priv, SPRKEYMSK(pipe),
+				  key->channel_mask);
+		intel_de_write_fw(dev_priv, SPRKEYMAX(pipe), key->max_value);
 	}
 
 	/* HSW consolidates SPRTILEOFF and SPRLINOFF into a single SPROFFSET
 	 * register */
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		I915_WRITE_FW(SPROFFSET(pipe), (y << 16) | x);
+		intel_de_write_fw(dev_priv, SPROFFSET(pipe), (y << 16) | x);
 	} else {
-		I915_WRITE_FW(SPRLINOFF(pipe), linear_offset);
-		I915_WRITE_FW(SPRTILEOFF(pipe), (y << 16) | x);
+		intel_de_write_fw(dev_priv, SPRLINOFF(pipe), linear_offset);
+		intel_de_write_fw(dev_priv, SPRTILEOFF(pipe), (y << 16) | x);
 	}
 
 	/*
@@ -1502,9 +1532,9 @@ ivb_update_plane(struct intel_plane *plane,
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	I915_WRITE_FW(SPRCTL(pipe), sprctl);
-	I915_WRITE_FW(SPRSURF(pipe),
-		      intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
+	intel_de_write_fw(dev_priv, SPRCTL(pipe), sprctl);
+	intel_de_write_fw(dev_priv, SPRSURF(pipe),
+			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
 
 	ivb_update_gamma(plane_state);
 
@@ -1521,11 +1551,11 @@ ivb_disable_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(SPRCTL(pipe), 0);
+	intel_de_write_fw(dev_priv, SPRCTL(pipe), 0);
 	/* Disable the scaler */
 	if (IS_IVYBRIDGE(dev_priv))
-		I915_WRITE_FW(SPRSCALE(pipe), 0);
-	I915_WRITE_FW(SPRSURF(pipe), 0);
+		intel_de_write_fw(dev_priv, SPRSCALE(pipe), 0);
+	intel_de_write_fw(dev_priv, SPRSURF(pipe), 0);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -1544,7 +1574,7 @@ ivb_plane_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret =  I915_READ(SPRCTL(plane->pipe)) & SPRITE_ENABLE;
+	ret =  intel_de_read(dev_priv, SPRCTL(plane->pipe)) & SPRITE_ENABLE;
 
 	*pipe = plane->pipe;
 
@@ -1710,10 +1740,8 @@ static void g4x_update_gamma(const struct intel_plane_state *plane_state)
 	/* FIXME these register are single buffered :( */
 	/* The two end points are implicit (0.0 and 1.0) */
 	for (i = 1; i < 8 - 1; i++)
-		I915_WRITE_FW(DVSGAMC_G4X(pipe, i - 1),
-			      gamma[i] << 16 |
-			      gamma[i] << 8 |
-			      gamma[i]);
+		intel_de_write_fw(dev_priv, DVSGAMC_G4X(pipe, i - 1),
+				  gamma[i] << 16 | gamma[i] << 8 | gamma[i]);
 }
 
 static void ilk_sprite_linear_gamma(u16 gamma[17])
@@ -1741,14 +1769,12 @@ static void ilk_update_gamma(const struct intel_plane_state *plane_state)
 
 	/* FIXME these register are single buffered :( */
 	for (i = 0; i < 16; i++)
-		I915_WRITE_FW(DVSGAMC_ILK(pipe, i),
-			      gamma[i] << 20 |
-			      gamma[i] << 10 |
-			      gamma[i]);
-
-	I915_WRITE_FW(DVSGAMCMAX_ILK(pipe, 0), gamma[i]);
-	I915_WRITE_FW(DVSGAMCMAX_ILK(pipe, 1), gamma[i]);
-	I915_WRITE_FW(DVSGAMCMAX_ILK(pipe, 2), gamma[i]);
+		intel_de_write_fw(dev_priv, DVSGAMC_ILK(pipe, i),
+				  gamma[i] << 20 | gamma[i] << 10 | gamma[i]);
+
+	intel_de_write_fw(dev_priv, DVSGAMCMAX_ILK(pipe, 0), gamma[i]);
+	intel_de_write_fw(dev_priv, DVSGAMCMAX_ILK(pipe, 1), gamma[i]);
+	intel_de_write_fw(dev_priv, DVSGAMCMAX_ILK(pipe, 2), gamma[i]);
 	i++;
 }
 
@@ -1788,28 +1814,30 @@ g4x_update_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(DVSSTRIDE(pipe), plane_state->color_plane[0].stride);
-	I915_WRITE_FW(DVSPOS(pipe), (crtc_y << 16) | crtc_x);
-	I915_WRITE_FW(DVSSIZE(pipe), (crtc_h << 16) | crtc_w);
-	I915_WRITE_FW(DVSSCALE(pipe), dvsscale);
+	intel_de_write_fw(dev_priv, DVSSTRIDE(pipe),
+			  plane_state->color_plane[0].stride);
+	intel_de_write_fw(dev_priv, DVSPOS(pipe), (crtc_y << 16) | crtc_x);
+	intel_de_write_fw(dev_priv, DVSSIZE(pipe), (crtc_h << 16) | crtc_w);
+	intel_de_write_fw(dev_priv, DVSSCALE(pipe), dvsscale);
 
 	if (key->flags) {
-		I915_WRITE_FW(DVSKEYVAL(pipe), key->min_value);
-		I915_WRITE_FW(DVSKEYMSK(pipe), key->channel_mask);
-		I915_WRITE_FW(DVSKEYMAX(pipe), key->max_value);
+		intel_de_write_fw(dev_priv, DVSKEYVAL(pipe), key->min_value);
+		intel_de_write_fw(dev_priv, DVSKEYMSK(pipe),
+				  key->channel_mask);
+		intel_de_write_fw(dev_priv, DVSKEYMAX(pipe), key->max_value);
 	}
 
-	I915_WRITE_FW(DVSLINOFF(pipe), linear_offset);
-	I915_WRITE_FW(DVSTILEOFF(pipe), (y << 16) | x);
+	intel_de_write_fw(dev_priv, DVSLINOFF(pipe), linear_offset);
+	intel_de_write_fw(dev_priv, DVSTILEOFF(pipe), (y << 16) | x);
 
 	/*
 	 * The control register self-arms if the plane was previously
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	I915_WRITE_FW(DVSCNTR(pipe), dvscntr);
-	I915_WRITE_FW(DVSSURF(pipe),
-		      intel_plane_ggtt_offset(plane_state) + dvssurf_offset);
+	intel_de_write_fw(dev_priv, DVSCNTR(pipe), dvscntr);
+	intel_de_write_fw(dev_priv, DVSSURF(pipe),
+			  intel_plane_ggtt_offset(plane_state) + dvssurf_offset);
 
 	if (IS_G4X(dev_priv))
 		g4x_update_gamma(plane_state);
@@ -1829,10 +1857,10 @@ g4x_disable_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(DVSCNTR(pipe), 0);
+	intel_de_write_fw(dev_priv, DVSCNTR(pipe), 0);
 	/* Disable the scaler */
-	I915_WRITE_FW(DVSSCALE(pipe), 0);
-	I915_WRITE_FW(DVSSURF(pipe), 0);
+	intel_de_write_fw(dev_priv, DVSSCALE(pipe), 0);
+	intel_de_write_fw(dev_priv, DVSSURF(pipe), 0);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -1851,7 +1879,7 @@ g4x_plane_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret = I915_READ(DVSCNTR(plane->pipe)) & DVS_ENABLE;
+	ret = intel_de_read(dev_priv, DVSCNTR(plane->pipe)) & DVS_ENABLE;
 
 	*pipe = plane->pipe;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
