Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FE4144303
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 18:20:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28AB36EDE4;
	Tue, 21 Jan 2020 17:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 970726ECE9;
 Tue, 21 Jan 2020 13:19:43 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id z7so3098884wrl.13;
 Tue, 21 Jan 2020 05:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=CvR/vjWPObBLABu1L7h7iJw3AiNvoL3K/aAHg91ip2I=;
 b=stbdo2SrVbCTEW+n5FxJyNttWoWE+CcBJVSFy5n3t/7zfMQuisVuowijbYXhvDxlwX
 2pP8YM7TJfEZ2cqiVdmJcWDcC1NY3rOA/7Vj6YgCnBcrbrekykgu05VMjqVxoeRQXtCi
 HwF8JuOF+phzt5R3VkA8gmMSdnPeyQW9Zdaa+IeDcSnMaYLaQd+BGS29Ta18UxkzpnML
 nyw1HKMBgQpKkoF8CsPQ3tM6AaJ8nfAV0glI2FLbm+aQ80NK2AaaVPrH0CNscti2YIkU
 rWwxSnwInkjlZqQmtGrrCY3FcaVbBlWk0ovZDfZmsqhKpqnlvNw43/i6mZTrFk5aKP1o
 L67Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=CvR/vjWPObBLABu1L7h7iJw3AiNvoL3K/aAHg91ip2I=;
 b=BviSZOI5MX+6H+wSzxuAsAipg9Ylz0cMwNykS23u6OnnchMzafLqMN42AXbSA2vO83
 z4FMPymSXAq7aX0vsnJ10htm4XiPKeeJ1WLZdIZPj/xa3BnpW9VVeFWxXB5w2nZzn0XY
 mtH/MvDTNcZmVC3Cwoo3Ncd5kdgda+XBL/wROQOFXQEJDADBEkqER2kIxS2iPkrBfCQr
 QPqQPgEfnv7BwUslv+e8VPyQldeeF3YShyWVSHUwOGX3+/oMoI5kJpQ6i8ktRJlG7/4e
 2+3fAuaVtxhYtdBI7fLGdzqC9gNN8R/GS1XcG67J4kBeSw7Zk9JCDv/wMoERTDkZv2/F
 L86g==
X-Gm-Message-State: APjAAAWn44ngYcIjhKLTNyjsF1naa9OV0xrO0Huf8AEu+dowfNllodsO
 0pA2re46PtKMdfvXE6l0xWo=
X-Google-Smtp-Source: APXvYqxeUrRe3lM+7UNoe9As5g1esEZKxiz8WZ5eUgnbC4SXM97mylhk4kk+DajLbPwnVHk7ldze0A==
X-Received: by 2002:adf:a109:: with SMTP id o9mr5292127wro.189.1579612780930; 
 Tue, 21 Jan 2020 05:19:40 -0800 (PST)
Received: from localhost.localdomain ([197.254.95.38])
 by smtp.googlemail.com with ESMTPSA id v62sm4122783wmg.3.2020.01.21.05.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 05:19:40 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Tue, 21 Jan 2020 16:19:33 +0300
Message-Id: <20200121131933.14731-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Tue, 21 Jan 2020 17:20:38 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/display: convert to struct drm_device
 logging macros.
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

This patch converts various instances of the printk based logging macros
in drm/i915/display/intel_display.c to the new struct drm_device based
logging macros.
In some instances, this involves extracting the struct drm_i915_private
device from various intel types and using it in the macros.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1021 ++++++++++--------
 1 file changed, 596 insertions(+), 425 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 76c17341df2b..0b844eeff9dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -235,7 +235,8 @@ static void intel_update_czclk(struct drm_i915_private *dev_priv)
 	dev_priv->czclk_freq = vlv_get_cck_clock_hpll(dev_priv, "czclk",
 						      CCK_CZ_CLOCK_CONTROL);
 
-	DRM_DEBUG_DRIVER("CZ clock rate: %d kHz\n", dev_priv->czclk_freq);
+	drm_dbg(&dev_priv->drm, "CZ clock rate: %d kHz\n",
+		dev_priv->czclk_freq);
 }
 
 static inline u32 /* units of 100MHz */
@@ -1063,8 +1064,9 @@ static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool state)
 
 	/* Wait for the display line to settle/start moving */
 	if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) == state, 100))
-		DRM_ERROR("pipe %c scanline %s wait timed out\n",
-			  pipe_name(pipe), onoff(state));
+		drm_err(&dev_priv->drm,
+			"pipe %c scanline %s wait timed out\n",
+			pipe_name(pipe), onoff(state));
 }
 
 static void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc)
@@ -1397,7 +1399,7 @@ static void _vlv_enable_pll(struct intel_crtc *crtc,
 	udelay(150);
 
 	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
-		DRM_ERROR("DPLL %d failed to lock\n", pipe);
+		drm_err(&dev_priv->drm, "DPLL %d failed to lock\n", pipe);
 }
 
 static void vlv_enable_pll(struct intel_crtc *crtc,
@@ -1446,7 +1448,7 @@ static void _chv_enable_pll(struct intel_crtc *crtc,
 
 	/* Check PLL is locked */
 	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
-		DRM_ERROR("PLL %d failed to lock\n", pipe);
+		drm_err(&dev_priv->drm, "PLL %d failed to lock\n", pipe);
 }
 
 static void chv_enable_pll(struct intel_crtc *crtc,
@@ -1694,7 +1696,8 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 
 	I915_WRITE(reg, val | TRANS_ENABLE);
 	if (intel_de_wait_for_set(dev_priv, reg, TRANS_STATE_ENABLE, 100))
-		DRM_ERROR("failed to enable transcoder %c\n", pipe_name(pipe));
+		drm_err(&dev_priv->drm, "failed to enable transcoder %c\n",
+			pipe_name(pipe));
 }
 
 static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
@@ -1726,7 +1729,7 @@ static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
 	I915_WRITE(LPT_TRANSCONF, val);
 	if (intel_de_wait_for_set(dev_priv, LPT_TRANSCONF,
 				  TRANS_STATE_ENABLE, 100))
-		DRM_ERROR("Failed to enable PCH transcoder\n");
+		drm_err(&dev_priv->drm, "Failed to enable PCH transcoder\n");
 }
 
 static void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
@@ -1748,7 +1751,8 @@ static void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
 	I915_WRITE(reg, val);
 	/* wait for PCH transcoder off, transcoder state */
 	if (intel_de_wait_for_clear(dev_priv, reg, TRANS_STATE_ENABLE, 50))
-		DRM_ERROR("failed to disable transcoder %c\n", pipe_name(pipe));
+		drm_err(&dev_priv->drm, "failed to disable transcoder %c\n",
+			pipe_name(pipe));
 
 	if (HAS_PCH_CPT(dev_priv)) {
 		/* Workaround: Clear the timing override chicken bit again. */
@@ -1769,7 +1773,7 @@ void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
 	/* wait for PCH transcoder off, transcoder state */
 	if (intel_de_wait_for_clear(dev_priv, LPT_TRANSCONF,
 				    TRANS_STATE_ENABLE, 50))
-		DRM_ERROR("Failed to disable PCH transcoder\n");
+		drm_err(&dev_priv->drm, "Failed to disable PCH transcoder\n");
 
 	/* Workaround: clear timing override bit. */
 	val = I915_READ(TRANS_CHICKEN2(PIPE_A));
@@ -1834,7 +1838,7 @@ static void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state)
 	i915_reg_t reg;
 	u32 val;
 
-	DRM_DEBUG_KMS("enabling pipe %c\n", pipe_name(pipe));
+	drm_dbg_kms(&dev_priv->drm, "enabling pipe %c\n", pipe_name(pipe));
 
 	assert_planes_disabled(crtc);
 
@@ -1892,7 +1896,7 @@ void intel_disable_pipe(const struct intel_crtc_state *old_crtc_state)
 	i915_reg_t reg;
 	u32 val;
 
-	DRM_DEBUG_KMS("disabling pipe %c\n", pipe_name(pipe));
+	drm_dbg_kms(&dev_priv->drm, "disabling pipe %c\n", pipe_name(pipe));
 
 	/*
 	 * Make sure planes won't keep trying to pump pixels to us,
@@ -2537,8 +2541,9 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 		alignment = 0;
 
 	if (alignment != 0 && fb->offsets[color_plane] % alignment) {
-		DRM_DEBUG_KMS("Misaligned offset 0x%08x for color plane %d\n",
-			      fb->offsets[color_plane], color_plane);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Misaligned offset 0x%08x for color plane %d\n",
+			    fb->offsets[color_plane], color_plane);
 		return -EINVAL;
 	}
 
@@ -2548,9 +2553,10 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 	/* Catch potential overflows early */
 	if (add_overflows_t(u32, mul_u32_u32(height, fb->pitches[color_plane]),
 			    fb->offsets[color_plane])) {
-		DRM_DEBUG_KMS("Bad offset 0x%08x or pitch %d for color plane %d\n",
-			      fb->offsets[color_plane], fb->pitches[color_plane],
-			      color_plane);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Bad offset 0x%08x or pitch %d for color plane %d\n",
+			    fb->offsets[color_plane], fb->pitches[color_plane],
+			    color_plane);
 		return -ERANGE;
 	}
 
@@ -3034,8 +3040,9 @@ intel_fill_fb_info(struct drm_i915_private *dev_priv,
 
 		ret = intel_fb_offset_to_xy(&x, &y, fb, i);
 		if (ret) {
-			DRM_DEBUG_KMS("bad fb plane %d offset: 0x%x\n",
-				      i, fb->offsets[i]);
+			drm_dbg_kms(&dev_priv->drm,
+				    "bad fb plane %d offset: 0x%x\n",
+				    i, fb->offsets[i]);
 			return ret;
 		}
 
@@ -3054,8 +3061,9 @@ intel_fill_fb_info(struct drm_i915_private *dev_priv,
 		 */
 		if (i == 0 && i915_gem_object_is_tiled(obj) &&
 		    (x + width) * cpp > fb->pitches[i]) {
-			DRM_DEBUG_KMS("bad fb plane %d offset: 0x%x\n",
-				      i, fb->offsets[i]);
+			drm_dbg_kms(&dev_priv->drm,
+				    "bad fb plane %d offset: 0x%x\n",
+				     i, fb->offsets[i]);
 			return -EINVAL;
 		}
 
@@ -3111,8 +3119,9 @@ intel_fill_fb_info(struct drm_i915_private *dev_priv,
 	}
 
 	if (mul_u32_u32(max_size, tile_size) > obj->base.size) {
-		DRM_DEBUG_KMS("fb too big for bo (need %llu bytes, have %zu bytes)\n",
-			      mul_u32_u32(max_size, tile_size), obj->base.size);
+		drm_dbg_kms(&dev_priv->drm,
+			    "fb too big for bo (need %llu bytes, have %zu bytes)\n",
+			    mul_u32_u32(max_size, tile_size), obj->base.size);
 		return -EINVAL;
 	}
 
@@ -3408,8 +3417,9 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	case I915_FORMAT_MOD_Y_TILED:
 		break;
 	default:
-		DRM_DEBUG_DRIVER("Unsupported modifier for initial FB: 0x%llx\n",
-				 fb->modifier);
+		drm_dbg(&dev_priv->drm,
+			"Unsupported modifier for initial FB: 0x%llx\n",
+			fb->modifier);
 		return false;
 	}
 
@@ -3440,12 +3450,12 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	mode_cmd.flags = DRM_MODE_FB_MODIFIERS;
 
 	if (intel_framebuffer_init(to_intel_framebuffer(fb), obj, &mode_cmd)) {
-		DRM_DEBUG_KMS("intel fb init failed\n");
+		drm_dbg_kms(&dev_priv->drm, "intel fb init failed\n");
 		goto out;
 	}
 
 
-	DRM_DEBUG_KMS("initial plane fb obj %p\n", obj);
+	drm_dbg_kms(&dev_priv->drm, "initial plane fb obj %p\n", obj);
 	ret = true;
 out:
 	i915_gem_object_put(obj);
@@ -3493,9 +3503,10 @@ static void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
 
-	DRM_DEBUG_KMS("Disabling [PLANE:%d:%s] on [CRTC:%d:%s]\n",
-		      plane->base.base.id, plane->base.name,
-		      crtc->base.base.id, crtc->base.name);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Disabling [PLANE:%d:%s] on [CRTC:%d:%s]\n",
+		    plane->base.base.id, plane->base.name,
+		    crtc->base.base.id, crtc->base.name);
 
 	intel_set_plane_visible(crtc_state, plane_state, false);
 	fixup_active_planes(crtc_state);
@@ -3606,8 +3617,9 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 					   intel_plane_uses_fence(intel_state),
 					   &intel_state->flags);
 	if (IS_ERR(intel_state->vma)) {
-		DRM_ERROR("failed to pin boot fb on pipe %d: %li\n",
-			  intel_crtc->pipe, PTR_ERR(intel_state->vma));
+		drm_err(&dev_priv->drm,
+			"failed to pin boot fb on pipe %d: %li\n",
+			intel_crtc->pipe, PTR_ERR(intel_state->vma));
 
 		intel_state->vma = NULL;
 		drm_framebuffer_put(fb);
@@ -3798,8 +3810,9 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 		max_height = skl_max_plane_height();
 
 	if (w > max_width || h > max_height) {
-		DRM_DEBUG_KMS("requested Y/RGB source size %dx%d too big (limit %dx%d)\n",
-			      w, h, max_width, max_height);
+		drm_dbg_kms(&dev_priv->drm,
+			    "requested Y/RGB source size %dx%d too big (limit %dx%d)\n",
+			    w, h, max_width, max_height);
 		return -EINVAL;
 	}
 
@@ -3829,7 +3842,8 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 
 		while ((x + w) * cpp > plane_state->color_plane[0].stride) {
 			if (offset == 0) {
-				DRM_DEBUG_KMS("Unable to find suitable display surface offset due to X-tiling\n");
+				drm_dbg_kms(&dev_priv->drm,
+					    "Unable to find suitable display surface offset due to X-tiling\n");
 				return -EINVAL;
 			}
 
@@ -3854,7 +3868,8 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 
 		if (x != plane_state->color_plane[aux_plane].x ||
 		    y != plane_state->color_plane[aux_plane].y) {
-			DRM_DEBUG_KMS("Unable to find suitable display surface offset due to CCS\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "Unable to find suitable display surface offset due to CCS\n");
 			return -EINVAL;
 		}
 	}
@@ -3875,6 +3890,7 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 
 static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 {
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 	int uv_plane = 1;
@@ -3892,8 +3908,9 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 
 	/* FIXME not quite sure how/if these apply to the chroma plane */
 	if (w > max_width || h > max_height) {
-		DRM_DEBUG_KMS("CbCr source size %dx%d too big (limit %dx%d)\n",
-			      w, h, max_width, max_height);
+		drm_dbg_kms(&i915->drm,
+			    "CbCr source size %dx%d too big (limit %dx%d)\n",
+			    w, h, max_width, max_height);
 		return -EINVAL;
 	}
 
@@ -3922,7 +3939,8 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 
 		if (x != plane_state->color_plane[ccs_plane].x ||
 		    y != plane_state->color_plane[ccs_plane].y) {
-			DRM_DEBUG_KMS("Unable to find suitable display surface offset due to CCS\n");
+			drm_dbg_kms(&i915->drm,
+				    "Unable to find suitable display surface offset due to CCS\n");
 			return -EINVAL;
 		}
 	}
@@ -4819,7 +4837,8 @@ void intel_prepare_reset(struct drm_i915_private *dev_priv)
 	wake_up_bit(&dev_priv->gt.reset.flags, I915_RESET_MODESET);
 
 	if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
-		DRM_DEBUG_KMS("Modeset potentially stuck, unbreaking through wedging\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Modeset potentially stuck, unbreaking through wedging\n");
 		intel_gt_set_wedged(&dev_priv->gt);
 	}
 
@@ -4843,13 +4862,15 @@ void intel_prepare_reset(struct drm_i915_private *dev_priv)
 	state = drm_atomic_helper_duplicate_state(dev, ctx);
 	if (IS_ERR(state)) {
 		ret = PTR_ERR(state);
-		DRM_ERROR("Duplicating state failed with %i\n", ret);
+		drm_err(&dev_priv->drm, "Duplicating state failed with %i\n",
+			ret);
 		return;
 	}
 
 	ret = drm_atomic_helper_disable_all(dev, ctx);
 	if (ret) {
-		DRM_ERROR("Suspending crtc's failed with %i\n", ret);
+		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
+			ret);
 		drm_atomic_state_put(state);
 		return;
 	}
@@ -4878,7 +4899,8 @@ void intel_finish_reset(struct drm_i915_private *dev_priv)
 		/* for testing only restore the display */
 		ret = __intel_display_resume(dev, state, ctx);
 		if (ret)
-			DRM_ERROR("Restoring old state failed with %i\n", ret);
+			drm_err(&dev_priv->drm,
+				"Restoring old state failed with %i\n", ret);
 	} else {
 		/*
 		 * The display has been reset as well,
@@ -4895,7 +4917,8 @@ void intel_finish_reset(struct drm_i915_private *dev_priv)
 
 		ret = __intel_display_resume(dev, state, ctx);
 		if (ret)
-			DRM_ERROR("Restoring old state failed with %i\n", ret);
+			drm_err(&dev_priv->drm,
+				"Restoring old state failed with %i\n", ret);
 
 		intel_hpd_init(dev_priv);
 	}
@@ -5053,16 +5076,16 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 	reg = FDI_RX_IIR(pipe);
 	for (tries = 0; tries < 5; tries++) {
 		temp = I915_READ(reg);
-		DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
+		drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
 
 		if ((temp & FDI_RX_BIT_LOCK)) {
-			DRM_DEBUG_KMS("FDI train 1 done.\n");
+			drm_dbg_kms(&dev_priv->drm, "FDI train 1 done.\n");
 			I915_WRITE(reg, temp | FDI_RX_BIT_LOCK);
 			break;
 		}
 	}
 	if (tries == 5)
-		DRM_ERROR("FDI train 1 fail!\n");
+		drm_err(&dev_priv->drm, "FDI train 1 fail!\n");
 
 	/* Train 2 */
 	reg = FDI_TX_CTL(pipe);
@@ -5083,18 +5106,18 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 	reg = FDI_RX_IIR(pipe);
 	for (tries = 0; tries < 5; tries++) {
 		temp = I915_READ(reg);
-		DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
+		drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
 
 		if (temp & FDI_RX_SYMBOL_LOCK) {
 			I915_WRITE(reg, temp | FDI_RX_SYMBOL_LOCK);
-			DRM_DEBUG_KMS("FDI train 2 done.\n");
+			drm_dbg_kms(&dev_priv->drm, "FDI train 2 done.\n");
 			break;
 		}
 	}
 	if (tries == 5)
-		DRM_ERROR("FDI train 2 fail!\n");
+		drm_err(&dev_priv->drm, "FDI train 2 fail!\n");
 
-	DRM_DEBUG_KMS("FDI train done\n");
+	drm_dbg_kms(&dev_priv->drm, "FDI train done\n");
 
 }
 
@@ -5168,10 +5191,11 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 		for (retry = 0; retry < 5; retry++) {
 			reg = FDI_RX_IIR(pipe);
 			temp = I915_READ(reg);
-			DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
+			drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
 			if (temp & FDI_RX_BIT_LOCK) {
 				I915_WRITE(reg, temp | FDI_RX_BIT_LOCK);
-				DRM_DEBUG_KMS("FDI train 1 done.\n");
+				drm_dbg_kms(&dev_priv->drm,
+					    "FDI train 1 done.\n");
 				break;
 			}
 			udelay(50);
@@ -5180,7 +5204,7 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 			break;
 	}
 	if (i == 4)
-		DRM_ERROR("FDI train 1 fail!\n");
+		drm_err(&dev_priv->drm, "FDI train 1 fail!\n");
 
 	/* Train 2 */
 	reg = FDI_TX_CTL(pipe);
@@ -5221,10 +5245,11 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 		for (retry = 0; retry < 5; retry++) {
 			reg = FDI_RX_IIR(pipe);
 			temp = I915_READ(reg);
-			DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
+			drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
 			if (temp & FDI_RX_SYMBOL_LOCK) {
 				I915_WRITE(reg, temp | FDI_RX_SYMBOL_LOCK);
-				DRM_DEBUG_KMS("FDI train 2 done.\n");
+				drm_dbg_kms(&dev_priv->drm,
+					    "FDI train 2 done.\n");
 				break;
 			}
 			udelay(50);
@@ -5233,9 +5258,9 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 			break;
 	}
 	if (i == 4)
-		DRM_ERROR("FDI train 2 fail!\n");
+		drm_err(&dev_priv->drm, "FDI train 2 fail!\n");
 
-	DRM_DEBUG_KMS("FDI train done.\n");
+	drm_dbg_kms(&dev_priv->drm, "FDI train done.\n");
 }
 
 /* Manual link training for Ivy Bridge A0 parts */
@@ -5259,8 +5284,8 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 	POSTING_READ(reg);
 	udelay(150);
 
-	DRM_DEBUG_KMS("FDI_RX_IIR before link train 0x%x\n",
-		      I915_READ(FDI_RX_IIR(pipe)));
+	drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR before link train 0x%x\n",
+		    I915_READ(FDI_RX_IIR(pipe)));
 
 	/* Try each vswing and preemphasis setting twice before moving on */
 	for (j = 0; j < ARRAY_SIZE(snb_b_fdi_train_param) * 2; j++) {
@@ -5304,19 +5329,21 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 		for (i = 0; i < 4; i++) {
 			reg = FDI_RX_IIR(pipe);
 			temp = I915_READ(reg);
-			DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
+			drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
 
 			if (temp & FDI_RX_BIT_LOCK ||
 			    (I915_READ(reg) & FDI_RX_BIT_LOCK)) {
 				I915_WRITE(reg, temp | FDI_RX_BIT_LOCK);
-				DRM_DEBUG_KMS("FDI train 1 done, level %i.\n",
-					      i);
+				drm_dbg_kms(&dev_priv->drm,
+					    "FDI train 1 done, level %i.\n",
+					    i);
 				break;
 			}
 			udelay(1); /* should be 0.5us */
 		}
 		if (i == 4) {
-			DRM_DEBUG_KMS("FDI train 1 fail on vswing %d\n", j / 2);
+			drm_dbg_kms(&dev_priv->drm,
+				    "FDI train 1 fail on vswing %d\n", j / 2);
 			continue;
 		}
 
@@ -5339,23 +5366,25 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 		for (i = 0; i < 4; i++) {
 			reg = FDI_RX_IIR(pipe);
 			temp = I915_READ(reg);
-			DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
+			drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
 
 			if (temp & FDI_RX_SYMBOL_LOCK ||
 			    (I915_READ(reg) & FDI_RX_SYMBOL_LOCK)) {
 				I915_WRITE(reg, temp | FDI_RX_SYMBOL_LOCK);
-				DRM_DEBUG_KMS("FDI train 2 done, level %i.\n",
-					      i);
+				drm_dbg_kms(&dev_priv->drm,
+					    "FDI train 2 done, level %i.\n",
+					    i);
 				goto train_done;
 			}
 			udelay(2); /* should be 1.5us */
 		}
 		if (i == 4)
-			DRM_DEBUG_KMS("FDI train 2 fail on vswing %d\n", j / 2);
+			drm_dbg_kms(&dev_priv->drm,
+				    "FDI train 2 fail on vswing %d\n", j / 2);
 	}
 
 train_done:
-	DRM_DEBUG_KMS("FDI train done.\n");
+	drm_dbg_kms(&dev_priv->drm, "FDI train done.\n");
 }
 
 static void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
@@ -5557,12 +5586,9 @@ static void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 	WARN_ON(SBI_SSCDIVINTPHASE_DIR(phasedir) &
 		~SBI_SSCDIVINTPHASE_INCVAL_MASK);
 
-	DRM_DEBUG_KMS("iCLKIP clock: found settings for %dKHz refresh rate: auxdiv=%x, divsel=%x, phasedir=%x, phaseinc=%x\n",
-			clock,
-			auxdiv,
-			divsel,
-			phasedir,
-			phaseinc);
+	drm_dbg_kms(&dev_priv->drm,
+		    "iCLKIP clock: found settings for %dKHz refresh rate: auxdiv=%x, divsel=%x, phasedir=%x, phaseinc=%x\n",
+		    clock, auxdiv, divsel, phasedir, phaseinc);
 
 	mutex_lock(&dev_priv->sb_lock);
 
@@ -5671,7 +5697,8 @@ static void cpt_set_fdi_bc_bifurcation(struct drm_i915_private *dev_priv, bool e
 	if (enable)
 		temp |= FDI_BC_BIFURCATION_SELECT;
 
-	DRM_DEBUG_KMS("%sabling fdi C rx\n", enable ? "en" : "dis");
+	drm_dbg_kms(&dev_priv->drm, "%sabling fdi C rx\n",
+		    enable ? "en" : "dis");
 	I915_WRITE(SOUTH_CHICKEN1, temp);
 	POSTING_READ(SOUTH_CHICKEN1);
 }
@@ -5848,7 +5875,9 @@ static void cpt_verify_modeset(struct drm_i915_private *dev_priv,
 	udelay(500);
 	if (wait_for(I915_READ(dslreg) != temp, 5)) {
 		if (wait_for(I915_READ(dslreg) != temp, 5))
-			DRM_ERROR("mode set failed: pipe %c stuck\n", pipe_name(pipe));
+			drm_err(&dev_priv->drm,
+				"mode set failed: pipe %c stuck\n",
+				pipe_name(pipe));
 	}
 }
 
@@ -5963,7 +5992,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	 */
 	if (INTEL_GEN(dev_priv) >= 9 && crtc_state->hw.enable &&
 	    need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
-		DRM_DEBUG_KMS("Pipe/Plane scaling not supported with IF-ID mode\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Pipe/Plane scaling not supported with IF-ID mode\n");
 		return -EINVAL;
 	}
 
@@ -5982,10 +6012,11 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 			scaler_state->scaler_users &= ~(1 << scaler_user);
 			scaler_state->scalers[*scaler_id].in_use = 0;
 
-			DRM_DEBUG_KMS("scaler_user index %u.%u: "
-				"Staged freeing scaler id %d scaler_users = 0x%x\n",
-				intel_crtc->pipe, scaler_user, *scaler_id,
-				scaler_state->scaler_users);
+			drm_dbg_kms(&dev_priv->drm,
+				    "scaler_user index %u.%u: "
+				    "Staged freeing scaler id %d scaler_users = 0x%x\n",
+				    intel_crtc->pipe, scaler_user, *scaler_id,
+				    scaler_state->scaler_users);
 			*scaler_id = -1;
 		}
 		return 0;
@@ -5993,7 +6024,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 
 	if (format && intel_format_info_is_yuv_semiplanar(format, modifier) &&
 	    (src_h < SKL_MIN_YUV_420_SRC_H || src_w < SKL_MIN_YUV_420_SRC_W)) {
-		DRM_DEBUG_KMS("Planar YUV: src dimensions not met\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Planar YUV: src dimensions not met\n");
 		return -EINVAL;
 	}
 
@@ -6006,18 +6038,20 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	    (INTEL_GEN(dev_priv) < 11 &&
 	     (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
 	      dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))	{
-		DRM_DEBUG_KMS("scaler_user index %u.%u: src %ux%u dst %ux%u "
-			"size is out of scaler range\n",
-			intel_crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h);
+		drm_dbg_kms(&dev_priv->drm,
+			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
+			    "size is out of scaler range\n",
+			    intel_crtc->pipe, scaler_user, src_w, src_h,
+			    dst_w, dst_h);
 		return -EINVAL;
 	}
 
 	/* mark this plane as a scaler user in crtc_state */
 	scaler_state->scaler_users |= (1 << scaler_user);
-	DRM_DEBUG_KMS("scaler_user index %u.%u: "
-		"staged scaling request for %ux%u->%ux%u scaler_users = 0x%x\n",
-		intel_crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h,
-		scaler_state->scaler_users);
+	drm_dbg_kms(&dev_priv->drm, "scaler_user index %u.%u: "
+		    "staged scaling request for %ux%u->%ux%u scaler_users = 0x%x\n",
+		    intel_crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h,
+		    scaler_state->scaler_users);
 
 	return 0;
 }
@@ -6088,9 +6122,10 @@ static int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 
 	/* check colorkey */
 	if (plane_state->ckey.flags) {
-		DRM_DEBUG_KMS("[PLANE:%d:%s] scaling with color key not allowed",
-			      intel_plane->base.base.id,
-			      intel_plane->base.name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "[PLANE:%d:%s] scaling with color key not allowed",
+			    intel_plane->base.base.id,
+			    intel_plane->base.name);
 		return -EINVAL;
 	}
 
@@ -6128,9 +6163,10 @@ static int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 			break;
 		/* fall through */
 	default:
-		DRM_DEBUG_KMS("[PLANE:%d:%s] FB:%d unsupported scaling format 0x%x\n",
-			      intel_plane->base.base.id, intel_plane->base.name,
-			      fb->base.id, fb->format->format);
+		drm_dbg_kms(&dev_priv->drm,
+			    "[PLANE:%d:%s] FB:%d unsupported scaling format 0x%x\n",
+			    intel_plane->base.base.id, intel_plane->base.name,
+			    fb->base.id, fb->format->format);
 		return -EINVAL;
 	}
 
@@ -6236,7 +6272,8 @@ void hsw_enable_ips(const struct intel_crtc_state *crtc_state)
 		 * the HW state readout code will complain that the expected
 		 * IPS_CTL value is not the one we read. */
 		if (intel_de_wait_for_set(dev_priv, IPS_CTL, IPS_ENABLE, 50))
-			DRM_ERROR("Timed out waiting for IPS enable\n");
+			drm_err(&dev_priv->drm,
+				"Timed out waiting for IPS enable\n");
 	}
 }
 
@@ -6257,7 +6294,8 @@ void hsw_disable_ips(const struct intel_crtc_state *crtc_state)
 		 * instead.
 		 */
 		if (intel_de_wait_for_clear(dev_priv, IPS_CTL, IPS_ENABLE, 100))
-			DRM_ERROR("Timed out waiting for IPS disable\n");
+			drm_err(&dev_priv->drm,
+				"Timed out waiting for IPS disable\n");
 	} else {
 		I915_WRITE(IPS_CTL, 0);
 		POSTING_READ(IPS_CTL);
@@ -7410,8 +7448,8 @@ static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 
 	assert_pipe_disabled(dev_priv, old_crtc_state->cpu_transcoder);
 
-	DRM_DEBUG_KMS("disabling pfit, current: 0x%08x\n",
-		      I915_READ(PFIT_CONTROL));
+	drm_dbg_kms(&dev_priv->drm, "disabling pfit, current: 0x%08x\n",
+		    I915_READ(PFIT_CONTROL));
 	I915_WRITE(PFIT_CONTROL, 0);
 }
 
@@ -7492,8 +7530,9 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 
 	state = drm_atomic_state_alloc(&dev_priv->drm);
 	if (!state) {
-		DRM_DEBUG_KMS("failed to disable [CRTC:%d:%s], out of memory",
-			      crtc->base.base.id, crtc->base.name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "failed to disable [CRTC:%d:%s], out of memory",
+			    crtc->base.base.id, crtc->base.name);
 		return;
 	}
 
@@ -7509,8 +7548,9 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 
 	drm_atomic_state_put(state);
 
-	DRM_DEBUG_KMS("[CRTC:%d:%s] hw state adjusted, was enabled, now disabled\n",
-		      crtc->base.base.id, crtc->base.name);
+	drm_dbg_kms(&dev_priv->drm,
+		    "[CRTC:%d:%s] hw state adjusted, was enabled, now disabled\n",
+		    crtc->base.base.id, crtc->base.name);
 
 	crtc->active = false;
 	crtc->base.enabled = false;
@@ -7555,7 +7595,8 @@ int intel_display_suspend(struct drm_device *dev)
 	state = drm_atomic_helper_suspend(dev);
 	ret = PTR_ERR_OR_ZERO(state);
 	if (ret)
-		DRM_ERROR("Suspending crtc's failed with %i\n", ret);
+		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
+			ret);
 	else
 		dev_priv->modeset_restore_state = state;
 	return ret;
@@ -7575,10 +7616,10 @@ static void intel_connector_verify_state(struct intel_crtc_state *crtc_state,
 					 struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
-		      connector->base.base.id,
-		      connector->base.name);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
+		    connector->base.base.id, connector->base.name);
 
 	if (connector->get_hw_state(connector)) {
 		struct intel_encoder *encoder = connector->encoder;
@@ -7624,18 +7665,21 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 	struct intel_crtc *other_crtc;
 	struct intel_crtc_state *other_crtc_state;
 
-	DRM_DEBUG_KMS("checking fdi config on pipe %c, lanes %i\n",
-		      pipe_name(pipe), pipe_config->fdi_lanes);
+	drm_dbg_kms(&dev_priv->drm,
+		    "checking fdi config on pipe %c, lanes %i\n",
+		    pipe_name(pipe), pipe_config->fdi_lanes);
 	if (pipe_config->fdi_lanes > 4) {
-		DRM_DEBUG_KMS("invalid fdi lane config on pipe %c: %i lanes\n",
-			      pipe_name(pipe), pipe_config->fdi_lanes);
+		drm_dbg_kms(&dev_priv->drm,
+			    "invalid fdi lane config on pipe %c: %i lanes\n",
+			    pipe_name(pipe), pipe_config->fdi_lanes);
 		return -EINVAL;
 	}
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		if (pipe_config->fdi_lanes > 2) {
-			DRM_DEBUG_KMS("only 2 lanes on haswell, required: %i lanes\n",
-				      pipe_config->fdi_lanes);
+			drm_dbg_kms(&dev_priv->drm,
+				    "only 2 lanes on haswell, required: %i lanes\n",
+				    pipe_config->fdi_lanes);
 			return -EINVAL;
 		} else {
 			return 0;
@@ -7660,15 +7704,17 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 			return PTR_ERR(other_crtc_state);
 
 		if (pipe_required_fdi_lanes(other_crtc_state) > 0) {
-			DRM_DEBUG_KMS("invalid shared fdi lane config on pipe %c: %i lanes\n",
-				      pipe_name(pipe), pipe_config->fdi_lanes);
+			drm_dbg_kms(&dev_priv->drm,
+				    "invalid shared fdi lane config on pipe %c: %i lanes\n",
+				    pipe_name(pipe), pipe_config->fdi_lanes);
 			return -EINVAL;
 		}
 		return 0;
 	case PIPE_C:
 		if (pipe_config->fdi_lanes > 2) {
-			DRM_DEBUG_KMS("only 2 lanes on pipe %c: required %i lanes\n",
-				      pipe_name(pipe), pipe_config->fdi_lanes);
+			drm_dbg_kms(&dev_priv->drm,
+				    "only 2 lanes on pipe %c: required %i lanes\n",
+				    pipe_name(pipe), pipe_config->fdi_lanes);
 			return -EINVAL;
 		}
 
@@ -7679,7 +7725,8 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 			return PTR_ERR(other_crtc_state);
 
 		if (pipe_required_fdi_lanes(other_crtc_state) > 2) {
-			DRM_DEBUG_KMS("fdi link B uses too many lanes to enable link C\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "fdi link B uses too many lanes to enable link C\n");
 			return -EINVAL;
 		}
 		return 0;
@@ -7693,6 +7740,7 @@ static int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
 				  struct intel_crtc_state *pipe_config)
 {
 	struct drm_device *dev = intel_crtc->base.dev;
+	struct drm_i915_private *i915 = to_i915(dev);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int lane, link_bw, fdi_dotclock, ret;
 	bool needs_recompute = false;
@@ -7705,7 +7753,7 @@ static int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
 	 * Hence the bw of each lane in terms of the mode signal
 	 * is:
 	 */
-	link_bw = intel_fdi_link_freq(to_i915(dev), pipe_config);
+	link_bw = intel_fdi_link_freq(i915, pipe_config);
 
 	fdi_dotclock = adjusted_mode->crtc_clock;
 
@@ -7723,8 +7771,9 @@ static int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
 
 	if (ret == -EINVAL && pipe_config->pipe_bpp > 6*3) {
 		pipe_config->pipe_bpp -= 2*3;
-		DRM_DEBUG_KMS("fdi link bw constraint, reducing pipe bpp to %i\n",
-			      pipe_config->pipe_bpp);
+		drm_dbg_kms(&i915->drm,
+			    "fdi link bw constraint, reducing pipe bpp to %i\n",
+			    pipe_config->pipe_bpp);
 		needs_recompute = true;
 		pipe_config->bw_constrained = true;
 
@@ -7876,9 +7925,10 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 	}
 
 	if (adjusted_mode->crtc_clock > clock_limit) {
-		DRM_DEBUG_KMS("requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
-			      adjusted_mode->crtc_clock, clock_limit,
-			      yesno(pipe_config->double_wide));
+		drm_dbg_kms(&dev_priv->drm,
+			    "requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
+			    adjusted_mode->crtc_clock, clock_limit,
+			    yesno(pipe_config->double_wide));
 		return -EINVAL;
 	}
 
@@ -7890,7 +7940,8 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		 * for output conversion from RGB->YCBCR. So if CTM is already
 		 * applied we can't support YCBCR420 output.
 		 */
-		DRM_DEBUG_KMS("YCBCR420 and CTM together are not possible\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "YCBCR420 and CTM together are not possible\n");
 		return -EINVAL;
 	}
 
@@ -7902,13 +7953,15 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 	 */
 	if (pipe_config->pipe_src_w & 1) {
 		if (pipe_config->double_wide) {
-			DRM_DEBUG_KMS("Odd pipe source width not supported with double wide pipe\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "Odd pipe source width not supported with double wide pipe\n");
 			return -EINVAL;
 		}
 
 		if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_LVDS) &&
 		    intel_is_dual_link_lvds(dev_priv)) {
-			DRM_DEBUG_KMS("Odd pipe source width not supported with dual link LVDS\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "Odd pipe source width not supported with dual link LVDS\n");
 			return -EINVAL;
 		}
 	}
@@ -7993,9 +8046,10 @@ static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
 			DREF_SSC1_ENABLE;
 
 		if (dev_priv->vbt.lvds_use_ssc != bios_lvds_use_ssc) {
-			DRM_DEBUG_KMS("SSC %s by BIOS, overriding VBT which says %s\n",
-				      enableddisabled(bios_lvds_use_ssc),
-				      enableddisabled(dev_priv->vbt.lvds_use_ssc));
+			drm_dbg_kms(&dev_priv->drm,
+				    "SSC %s by BIOS, overriding VBT which says %s\n",
+				    enableddisabled(bios_lvds_use_ssc),
+				    enableddisabled(dev_priv->vbt.lvds_use_ssc));
 			dev_priv->vbt.lvds_use_ssc = bios_lvds_use_ssc;
 		}
 	}
@@ -8138,6 +8192,7 @@ static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state, enum link_m_n_set m_n)
 {
 	const struct intel_link_m_n *dp_m_n, *dp_m2_n2 = NULL;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (m_n == M1_N1) {
 		dp_m_n = &crtc_state->dp_m_n;
@@ -8150,7 +8205,7 @@ void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state, enum link_m_n_s
 		 */
 		dp_m_n = &crtc_state->dp_m2_n2;
 	} else {
-		DRM_ERROR("Unsupported divider value\n");
+		drm_err(&i915->drm, "Unsupported divider value\n");
 		return;
 	}
 
@@ -8825,7 +8880,9 @@ static int i8xx_crtc_compute_clock(struct intel_crtc *crtc,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
 			refclk = dev_priv->vbt.lvds_ssc_freq;
-			DRM_DEBUG_KMS("using SSC reference clock of %d kHz\n", refclk);
+			drm_dbg_kms(&dev_priv->drm,
+				    "using SSC reference clock of %d kHz\n",
+				    refclk);
 		}
 
 		limit = &intel_limits_i8xx_lvds;
@@ -8838,7 +8895,8 @@ static int i8xx_crtc_compute_clock(struct intel_crtc *crtc,
 	if (!crtc_state->clock_set &&
 	    !i9xx_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
 				 refclk, NULL, &crtc_state->dpll)) {
-		DRM_ERROR("Couldn't find PLL settings for mode!\n");
+		drm_err(&dev_priv->drm,
+			"Couldn't find PLL settings for mode!\n");
 		return -EINVAL;
 	}
 
@@ -8860,7 +8918,9 @@ static int g4x_crtc_compute_clock(struct intel_crtc *crtc,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
 			refclk = dev_priv->vbt.lvds_ssc_freq;
-			DRM_DEBUG_KMS("using SSC reference clock of %d kHz\n", refclk);
+			drm_dbg_kms(&dev_priv->drm,
+				    "using SSC reference clock of %d kHz\n",
+				    refclk);
 		}
 
 		if (intel_is_dual_link_lvds(dev_priv))
@@ -8880,7 +8940,8 @@ static int g4x_crtc_compute_clock(struct intel_crtc *crtc,
 	if (!crtc_state->clock_set &&
 	    !g4x_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
 				refclk, NULL, &crtc_state->dpll)) {
-		DRM_ERROR("Couldn't find PLL settings for mode!\n");
+		drm_err(&dev_priv->drm,
+			"Couldn't find PLL settings for mode!\n");
 		return -EINVAL;
 	}
 
@@ -8903,7 +8964,9 @@ static int pnv_crtc_compute_clock(struct intel_crtc *crtc,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
 			refclk = dev_priv->vbt.lvds_ssc_freq;
-			DRM_DEBUG_KMS("using SSC reference clock of %d kHz\n", refclk);
+			drm_dbg_kms(&dev_priv->drm,
+				    "using SSC reference clock of %d kHz\n",
+				    refclk);
 		}
 
 		limit = &pnv_limits_lvds;
@@ -8914,7 +8977,8 @@ static int pnv_crtc_compute_clock(struct intel_crtc *crtc,
 	if (!crtc_state->clock_set &&
 	    !pnv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
 				refclk, NULL, &crtc_state->dpll)) {
-		DRM_ERROR("Couldn't find PLL settings for mode!\n");
+		drm_err(&dev_priv->drm,
+			"Couldn't find PLL settings for mode!\n");
 		return -EINVAL;
 	}
 
@@ -8937,7 +9001,9 @@ static int i9xx_crtc_compute_clock(struct intel_crtc *crtc,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
 			refclk = dev_priv->vbt.lvds_ssc_freq;
-			DRM_DEBUG_KMS("using SSC reference clock of %d kHz\n", refclk);
+			drm_dbg_kms(&dev_priv->drm,
+				    "using SSC reference clock of %d kHz\n",
+				    refclk);
 		}
 
 		limit = &intel_limits_i9xx_lvds;
@@ -8948,7 +9014,8 @@ static int i9xx_crtc_compute_clock(struct intel_crtc *crtc,
 	if (!crtc_state->clock_set &&
 	    !i9xx_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
 				 refclk, NULL, &crtc_state->dpll)) {
-		DRM_ERROR("Couldn't find PLL settings for mode!\n");
+		drm_err(&dev_priv->drm,
+			"Couldn't find PLL settings for mode!\n");
 		return -EINVAL;
 	}
 
@@ -8962,6 +9029,7 @@ static int chv_crtc_compute_clock(struct intel_crtc *crtc,
 {
 	int refclk = 100000;
 	const struct intel_limit *limit = &intel_limits_chv;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
@@ -8969,7 +9037,7 @@ static int chv_crtc_compute_clock(struct intel_crtc *crtc,
 	if (!crtc_state->clock_set &&
 	    !chv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
 				refclk, NULL, &crtc_state->dpll)) {
-		DRM_ERROR("Couldn't find PLL settings for mode!\n");
+		drm_err(&i915->drm, "Couldn't find PLL settings for mode!\n");
 		return -EINVAL;
 	}
 
@@ -8983,6 +9051,7 @@ static int vlv_crtc_compute_clock(struct intel_crtc *crtc,
 {
 	int refclk = 100000;
 	const struct intel_limit *limit = &intel_limits_vlv;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
@@ -8990,7 +9059,7 @@ static int vlv_crtc_compute_clock(struct intel_crtc *crtc,
 	if (!crtc_state->clock_set &&
 	    !vlv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
 				refclk, NULL, &crtc_state->dpll)) {
-		DRM_ERROR("Couldn't find PLL settings for mode!\n");
+		drm_err(&i915->drm,  "Couldn't find PLL settings for mode!\n");
 		return -EINVAL;
 	}
 
@@ -9083,7 +9152,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 
 	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
 	if (!intel_fb) {
-		DRM_DEBUG_KMS("failed to alloc fb\n");
+		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
 		return;
 	}
 
@@ -9136,10 +9205,11 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 
 	plane_config->size = fb->pitches[0] * aligned_height;
 
-	DRM_DEBUG_KMS("%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
-		      crtc->base.name, plane->base.name, fb->width, fb->height,
-		      fb->format->cpp[0] * 8, base, fb->pitches[0],
-		      plane_config->size);
+	drm_dbg_kms(&dev_priv->drm,
+		    "%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
+		    crtc->base.name, plane->base.name, fb->width, fb->height,
+		    fb->format->cpp[0] * 8, base, fb->pitches[0],
+		    plane_config->size);
 
 	plane_config->fb = intel_fb;
 }
@@ -9386,8 +9456,9 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	DRM_DEBUG_KMS("has_panel %d has_lvds %d has_ck505 %d using_ssc_source %d\n",
-		      has_panel, has_lvds, has_ck505, using_ssc_source);
+	drm_dbg_kms(&dev_priv->drm,
+		    "has_panel %d has_lvds %d has_ck505 %d using_ssc_source %d\n",
+		    has_panel, has_lvds, has_ck505, using_ssc_source);
 
 	/* Ironlake: try to setup display ref clock before DPLL
 	 * enabling. This is only under driver's control after
@@ -9446,7 +9517,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 
 		/* SSC must be turned on before enabling the CPU output  */
 		if (intel_panel_use_ssc(dev_priv) && can_ssc) {
-			DRM_DEBUG_KMS("Using SSC on panel\n");
+			drm_dbg_kms(&dev_priv->drm, "Using SSC on panel\n");
 			val |= DREF_SSC1_ENABLE;
 		} else
 			val &= ~DREF_SSC1_ENABLE;
@@ -9461,7 +9532,8 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		/* Enable CPU source on CPU attached eDP */
 		if (has_cpu_edp) {
 			if (intel_panel_use_ssc(dev_priv) && can_ssc) {
-				DRM_DEBUG_KMS("Using SSC on eDP\n");
+				drm_dbg_kms(&dev_priv->drm,
+					    "Using SSC on eDP\n");
 				val |= DREF_CPU_SOURCE_OUTPUT_DOWNSPREAD;
 			} else
 				val |= DREF_CPU_SOURCE_OUTPUT_NONSPREAD;
@@ -9472,7 +9544,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		POSTING_READ(PCH_DREF_CONTROL);
 		udelay(200);
 	} else {
-		DRM_DEBUG_KMS("Disabling CPU source output\n");
+		drm_dbg_kms(&dev_priv->drm, "Disabling CPU source output\n");
 
 		val &= ~DREF_CPU_SOURCE_OUTPUT_MASK;
 
@@ -9484,7 +9556,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		udelay(200);
 
 		if (!using_ssc_source) {
-			DRM_DEBUG_KMS("Disabling SSC source\n");
+			drm_dbg_kms(&dev_priv->drm, "Disabling SSC source\n");
 
 			/* Turn off the SSC source */
 			val &= ~DREF_SSC_SOURCE_MASK;
@@ -9512,7 +9584,7 @@ static void lpt_reset_fdi_mphy(struct drm_i915_private *dev_priv)
 
 	if (wait_for_us(I915_READ(SOUTH_CHICKEN2) &
 			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
-		DRM_ERROR("FDI mPHY reset assert timeout\n");
+		drm_err(&dev_priv->drm, "FDI mPHY reset assert timeout\n");
 
 	tmp = I915_READ(SOUTH_CHICKEN2);
 	tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
@@ -9520,7 +9592,7 @@ static void lpt_reset_fdi_mphy(struct drm_i915_private *dev_priv)
 
 	if (wait_for_us((I915_READ(SOUTH_CHICKEN2) &
 			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
-		DRM_ERROR("FDI mPHY reset de-assert timeout\n");
+		drm_err(&dev_priv->drm, "FDI mPHY reset de-assert timeout\n");
 }
 
 /* WaMPhyProgramming:hsw */
@@ -9802,17 +9874,17 @@ static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
 	dev_priv->pch_ssc_use = 0;
 
 	if (spll_uses_pch_ssc(dev_priv)) {
-		DRM_DEBUG_KMS("SPLL using PCH SSC\n");
+		drm_dbg_kms(&dev_priv->drm, "SPLL using PCH SSC\n");
 		dev_priv->pch_ssc_use |= BIT(DPLL_ID_SPLL);
 	}
 
 	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL1)) {
-		DRM_DEBUG_KMS("WRPLL1 using PCH SSC\n");
+		drm_dbg_kms(&dev_priv->drm, "WRPLL1 using PCH SSC\n");
 		dev_priv->pch_ssc_use |= BIT(DPLL_ID_WRPLL1);
 	}
 
 	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL2)) {
-		DRM_DEBUG_KMS("WRPLL2 using PCH SSC\n");
+		drm_dbg_kms(&dev_priv->drm, "WRPLL2 using PCH SSC\n");
 		dev_priv->pch_ssc_use |= BIT(DPLL_ID_WRPLL2);
 	}
 
@@ -10118,8 +10190,9 @@ static int ilk_crtc_compute_clock(struct intel_crtc *crtc,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
-			DRM_DEBUG_KMS("using SSC reference clock of %d kHz\n",
-				      dev_priv->vbt.lvds_ssc_freq);
+			drm_dbg_kms(&dev_priv->drm,
+				    "using SSC reference clock of %d kHz\n",
+				    dev_priv->vbt.lvds_ssc_freq);
 			refclk = dev_priv->vbt.lvds_ssc_freq;
 		}
 
@@ -10141,15 +10214,17 @@ static int ilk_crtc_compute_clock(struct intel_crtc *crtc,
 	if (!crtc_state->clock_set &&
 	    !g4x_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
 				refclk, NULL, &crtc_state->dpll)) {
-		DRM_ERROR("Couldn't find PLL settings for mode!\n");
+		drm_err(&dev_priv->drm,
+			"Couldn't find PLL settings for mode!\n");
 		return -EINVAL;
 	}
 
 	ilk_compute_dpll(crtc, crtc_state, NULL);
 
 	if (!intel_reserve_shared_dplls(state, crtc, NULL)) {
-		DRM_DEBUG_KMS("failed to find PLL for pipe %c\n",
-			      pipe_name(crtc->pipe));
+		drm_dbg_kms(&dev_priv->drm,
+			    "failed to find PLL for pipe %c\n",
+			    pipe_name(crtc->pipe));
 		return -EINVAL;
 	}
 
@@ -10280,7 +10355,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
 	if (!intel_fb) {
-		DRM_DEBUG_KMS("failed to alloc fb\n");
+		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
 		return;
 	}
 
@@ -10377,10 +10452,11 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	plane_config->size = fb->pitches[0] * aligned_height;
 
-	DRM_DEBUG_KMS("%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
-		      crtc->base.name, plane->base.name, fb->width, fb->height,
-		      fb->format->cpp[0] * 8, base, fb->pitches[0],
-		      plane_config->size);
+	drm_dbg_kms(&dev_priv->drm,
+		    "%s/%s with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
+		    crtc->base.name, plane->base.name, fb->width, fb->height,
+		    fb->format->cpp[0] * 8, base, fb->pitches[0],
+		    plane_config->size);
 
 	plane_config->fb = intel_fb;
 	return;
@@ -10544,8 +10620,9 @@ static int hsw_crtc_compute_clock(struct intel_crtc *crtc,
 			intel_get_crtc_new_encoder(state, crtc_state);
 
 		if (!intel_reserve_shared_dplls(state, crtc, encoder)) {
-			DRM_DEBUG_KMS("failed to find PLL for pipe %c\n",
-				      pipe_name(crtc->pipe));
+			drm_dbg_kms(&dev_priv->drm,
+				    "failed to find PLL for pipe %c\n",
+				    pipe_name(crtc->pipe));
 			return -EINVAL;
 		}
 	}
@@ -10621,7 +10698,7 @@ static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
 		id = DPLL_ID_SKL_DPLL2;
 		break;
 	default:
-		DRM_ERROR("Incorrect port type\n");
+		drm_err(&dev_priv->drm, "Incorrect port type\n");
 		return;
 	}
 
@@ -11142,7 +11219,8 @@ static int intel_cursor_check_surface(struct intel_plane_state *plane_state)
 						    plane_state, 0);
 
 	if (src_x != 0 || src_y != 0) {
-		DRM_DEBUG_KMS("Arbitrary cursor panning not supported\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Arbitrary cursor panning not supported\n");
 		return -EINVAL;
 	}
 
@@ -11173,10 +11251,11 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 			      struct intel_plane_state *plane_state)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	int ret;
 
 	if (fb && fb->modifier != DRM_FORMAT_MOD_LINEAR) {
-		DRM_DEBUG_KMS("cursor cannot be tiled\n");
+		drm_dbg_kms(&i915->drm, "cursor cannot be tiled\n");
 		return -EINVAL;
 	}
 
@@ -11247,6 +11326,7 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 			     struct intel_plane_state *plane_state)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	int ret;
 
 	ret = intel_check_cursor(crtc_state, plane_state);
@@ -11259,9 +11339,10 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 
 	/* Check for which cursor types we support */
 	if (!i845_cursor_size_ok(plane_state)) {
-		DRM_DEBUG("Cursor dimension %dx%d not supported\n",
-			  drm_rect_width(&plane_state->uapi.dst),
-			  drm_rect_height(&plane_state->uapi.dst));
+		drm_dbg_kms(&i915->drm,
+			    "Cursor dimension %dx%d not supported\n",
+			    drm_rect_width(&plane_state->uapi.dst),
+			    drm_rect_height(&plane_state->uapi.dst));
 		return -EINVAL;
 	}
 
@@ -11275,8 +11356,8 @@ static int i845_check_cursor(struct intel_crtc_state *crtc_state,
 	case 2048:
 		break;
 	default:
-		DRM_DEBUG_KMS("Invalid cursor stride (%u)\n",
-			      fb->pitches[0]);
+		 drm_dbg_kms(&i915->drm, "Invalid cursor stride (%u)\n",
+			     fb->pitches[0]);
 		return -EINVAL;
 	}
 
@@ -11475,9 +11556,10 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 
 	/* Check for which cursor types we support */
 	if (!i9xx_cursor_size_ok(plane_state)) {
-		DRM_DEBUG("Cursor dimension %dx%d not supported\n",
-			  drm_rect_width(&plane_state->uapi.dst),
-			  drm_rect_height(&plane_state->uapi.dst));
+		drm_dbg(&dev_priv->drm,
+			"Cursor dimension %dx%d not supported\n",
+			drm_rect_width(&plane_state->uapi.dst),
+			drm_rect_height(&plane_state->uapi.dst));
 		return -EINVAL;
 	}
 
@@ -11486,9 +11568,10 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 
 	if (fb->pitches[0] !=
 	    drm_rect_width(&plane_state->uapi.dst) * fb->format->cpp[0]) {
-		DRM_DEBUG_KMS("Invalid cursor stride (%u) (cursor width %d)\n",
-			      fb->pitches[0],
-			      drm_rect_width(&plane_state->uapi.dst));
+		drm_dbg_kms(&dev_priv->drm,
+			    "Invalid cursor stride (%u) (cursor width %d)\n",
+			    fb->pitches[0],
+			    drm_rect_width(&plane_state->uapi.dst));
 		return -EINVAL;
 	}
 
@@ -11504,7 +11587,8 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	 */
 	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_C &&
 	    plane_state->uapi.visible && plane_state->uapi.dst.x1 < 0) {
-		DRM_DEBUG_KMS("CHV cursor C not allowed to straddle the left screen edge\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "CHV cursor C not allowed to straddle the left screen edge\n");
 		return -EINVAL;
 	}
 
@@ -11692,9 +11776,9 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
 	struct intel_crtc_state *crtc_state;
 	int ret, i = -1;
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
-		      connector->base.id, connector->name,
-		      encoder->base.id, encoder->name);
+	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
+		    connector->base.id, connector->name,
+		    encoder->base.id, encoder->name);
 
 	old->restore_state = NULL;
 
@@ -11745,7 +11829,8 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
 	 * If we didn't find an unused CRTC, don't use any.
 	 */
 	if (!crtc) {
-		DRM_DEBUG_KMS("no pipe available for load-detect\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "no pipe available for load-detect\n");
 		ret = -ENODEV;
 		goto fail;
 	}
@@ -11796,13 +11881,16 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
 	if (!ret)
 		ret = drm_atomic_add_affected_planes(restore_state, crtc);
 	if (ret) {
-		DRM_DEBUG_KMS("Failed to create a copy of old state to restore: %i\n", ret);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Failed to create a copy of old state to restore: %i\n",
+			    ret);
 		goto fail;
 	}
 
 	ret = drm_atomic_commit(state);
 	if (ret) {
-		DRM_DEBUG_KMS("failed to set mode on load-detect pipe\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "failed to set mode on load-detect pipe\n");
 		goto fail;
 	}
 
@@ -11835,20 +11923,22 @@ void intel_release_load_detect_pipe(struct drm_connector *connector,
 {
 	struct intel_encoder *intel_encoder =
 		intel_attached_encoder(to_intel_connector(connector));
+	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
 	struct drm_encoder *encoder = &intel_encoder->base;
 	struct drm_atomic_state *state = old->restore_state;
 	int ret;
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
-		      connector->base.id, connector->name,
-		      encoder->base.id, encoder->name);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
+		    connector->base.id, connector->name,
+		    encoder->base.id, encoder->name);
 
 	if (!state)
 		return;
 
 	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
 	if (ret)
-		DRM_DEBUG_KMS("Couldn't release load detect pipe: %i\n", ret);
+		drm_dbg_kms(&i915->drm,
+			    "Couldn't release load detect pipe: %i\n", ret);
 	drm_atomic_state_put(state);
 }
 
@@ -11913,8 +12003,9 @@ static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 				7 : 14;
 			break;
 		default:
-			DRM_DEBUG_KMS("Unknown DPLL mode %08x in programmed "
-				  "mode\n", (int)(dpll & DPLL_MODE_MASK));
+			drm_dbg_kms(&dev_priv->drm,
+				    "Unknown DPLL mode %08x in programmed "
+				    "mode\n", (int)(dpll & DPLL_MODE_MASK));
 			return;
 		}
 
@@ -12160,11 +12251,12 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 	turn_off = was_visible && (!visible || mode_changed);
 	turn_on = visible && (!was_visible || mode_changed);
 
-	DRM_DEBUG_ATOMIC("[CRTC:%d:%s] with [PLANE:%d:%s] visible %i -> %i, off %i, on %i, ms %i\n",
-			 crtc->base.base.id, crtc->base.name,
-			 plane->base.base.id, plane->base.name,
-			 was_visible, visible,
-			 turn_off, turn_on, mode_changed);
+	drm_dbg_atomic(&dev_priv->drm,
+		       "[CRTC:%d:%s] with [PLANE:%d:%s] visible %i -> %i, off %i, on %i, ms %i\n",
+		       crtc->base.base.id, crtc->base.name,
+		       plane->base.base.id, plane->base.name,
+		       was_visible, visible,
+		       turn_off, turn_on, mode_changed);
 
 	if (turn_on) {
 		if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv))
@@ -12341,8 +12433,9 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 		}
 
 		if (!linked_state) {
-			DRM_DEBUG_KMS("Need %d free Y planes for planar YUV\n",
-				      hweight8(crtc_state->nv12_planes));
+			drm_dbg_kms(&dev_priv->drm,
+				    "Need %d free Y planes for planar YUV\n",
+				    hweight8(crtc_state->nv12_planes));
 
 			return -EINVAL;
 		}
@@ -12353,7 +12446,8 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 		linked_state->planar_linked_plane = plane;
 		crtc_state->active_planes |= BIT(linked->id);
 		crtc_state->update_planes |= BIT(linked->id);
-		DRM_DEBUG_KMS("Using %s as Y plane for %s\n", linked->base.name, plane->base.name);
+		drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
+			    linked->base.name, plane->base.name);
 
 		/* Copy parameters to slave plane */
 		linked_state->ctl = plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
@@ -12486,8 +12580,9 @@ static int icl_compute_port_sync_crtc_state(struct drm_connector *connector,
 	drm_connector_list_iter_end(&conn_iter);
 
 	if (!master_crtc) {
-		DRM_DEBUG_KMS("Could not find Master CRTC for Slave CRTC %d\n",
-			      crtc->base.id);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Could not find Master CRTC for Slave CRTC %d\n",
+			    crtc->base.id);
 		return -EINVAL;
 	}
 
@@ -12500,10 +12595,11 @@ static int icl_compute_port_sync_crtc_state(struct drm_connector *connector,
 	crtc_state->master_transcoder = master_pipe_config->cpu_transcoder;
 	master_pipe_config->sync_mode_slaves_mask |=
 		BIT(crtc_state->cpu_transcoder);
-	DRM_DEBUG_KMS("Master Transcoder = %s added for Slave CRTC = %d, slave transcoder bitmask = %d\n",
-		      transcoder_name(crtc_state->master_transcoder),
-		      crtc->base.id,
-		      master_pipe_config->sync_mode_slaves_mask);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Master Transcoder = %s added for Slave CRTC = %d, slave transcoder bitmask = %d\n",
+		    transcoder_name(crtc_state->master_transcoder),
+		    crtc->base.id,
+		    master_pipe_config->sync_mode_slaves_mask);
 
 	return 0;
 }
@@ -12547,7 +12643,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (dev_priv->display.compute_pipe_wm) {
 		ret = dev_priv->display.compute_pipe_wm(crtc_state);
 		if (ret) {
-			DRM_DEBUG_KMS("Target pipe watermarks are invalid\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "Target pipe watermarks are invalid\n");
 			return ret;
 		}
 	}
@@ -12563,7 +12660,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		 */
 		ret = dev_priv->display.compute_intermediate_wm(crtc_state);
 		if (ret) {
-			DRM_DEBUG_KMS("No valid intermediate pipe watermarks are possible\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "No valid intermediate pipe watermarks are possible\n");
 			return ret;
 		}
 	}
@@ -12612,6 +12710,7 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 		      struct intel_crtc_state *pipe_config)
 {
 	struct drm_connector *connector = conn_state->connector;
+	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
 	const struct drm_display_info *info = &connector->display_info;
 	int bpp;
 
@@ -12633,11 +12732,13 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 	}
 
 	if (bpp < pipe_config->pipe_bpp) {
-		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Limiting display bpp to %d instead of "
-			      "EDID bpp %d, requested bpp %d, max platform bpp %d\n",
-			      connector->base.id, connector->name,
-			      bpp, 3 * info->bpc, 3 * conn_state->max_requested_bpc,
-			      pipe_config->pipe_bpp);
+		drm_dbg_kms(&i915->drm,
+			    "[CONNECTOR:%d:%s] Limiting display bpp to %d instead of "
+			    "EDID bpp %d, requested bpp %d, max platform bpp %d\n",
+			    connector->base.id, connector->name,
+			    bpp, 3 * info->bpc,
+			    3 * conn_state->max_requested_bpc,
+			    pipe_config->pipe_bpp);
 
 		pipe_config->pipe_bpp = bpp;
 	}
@@ -12697,10 +12798,13 @@ intel_dump_m_n_config(const struct intel_crtc_state *pipe_config,
 		      const char *id, unsigned int lane_count,
 		      const struct intel_link_m_n *m_n)
 {
-	DRM_DEBUG_KMS("%s: lanes: %i; gmch_m: %u, gmch_n: %u, link_m: %u, link_n: %u, tu: %u\n",
-		      id, lane_count,
-		      m_n->gmch_m, m_n->gmch_n,
-		      m_n->link_m, m_n->link_n, m_n->tu);
+	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
+
+	drm_dbg_kms(&i915->drm,
+		    "%s: lanes: %i; gmch_m: %u, gmch_n: %u, link_m: %u, link_n: %u, tu: %u\n",
+		    id, lane_count,
+		    m_n->gmch_m, m_n->gmch_n,
+		    m_n->link_m, m_n->link_n, m_n->tu);
 }
 
 static void
@@ -12776,27 +12880,31 @@ static const char *output_formats(enum intel_output_format format)
 static void intel_dump_plane_state(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct drm_format_name_buf format_name;
 
 	if (!fb) {
-		DRM_DEBUG_KMS("[PLANE:%d:%s] fb: [NOFB], visible: %s\n",
-			      plane->base.base.id, plane->base.name,
-			      yesno(plane_state->uapi.visible));
+		drm_dbg_kms(&i915->drm,
+			    "[PLANE:%d:%s] fb: [NOFB], visible: %s\n",
+			    plane->base.base.id, plane->base.name,
+			    yesno(plane_state->uapi.visible));
 		return;
 	}
 
-	DRM_DEBUG_KMS("[PLANE:%d:%s] fb: [FB:%d] %ux%u format = %s, visible: %s\n",
-		      plane->base.base.id, plane->base.name,
-		      fb->base.id, fb->width, fb->height,
-		      drm_get_format_name(fb->format->format, &format_name),
-		      yesno(plane_state->uapi.visible));
-	DRM_DEBUG_KMS("\trotation: 0x%x, scaler: %d\n",
-		      plane_state->hw.rotation, plane_state->scaler_id);
+	drm_dbg_kms(&i915->drm,
+		    "[PLANE:%d:%s] fb: [FB:%d] %ux%u format = %s, visible: %s\n",
+		    plane->base.base.id, plane->base.name,
+		    fb->base.id, fb->width, fb->height,
+		    drm_get_format_name(fb->format->format, &format_name),
+		    yesno(plane_state->uapi.visible));
+	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d\n",
+		    plane_state->hw.rotation, plane_state->scaler_id);
 	if (plane_state->uapi.visible)
-		DRM_DEBUG_KMS("\tsrc: " DRM_RECT_FP_FMT " dst: " DRM_RECT_FMT "\n",
-			      DRM_RECT_FP_ARG(&plane_state->uapi.src),
-			      DRM_RECT_ARG(&plane_state->uapi.dst));
+		drm_dbg_kms(&i915->drm,
+			    "\tsrc: " DRM_RECT_FP_FMT " dst: " DRM_RECT_FMT "\n",
+			    DRM_RECT_FP_ARG(&plane_state->uapi.src),
+			    DRM_RECT_ARG(&plane_state->uapi.dst));
 }
 
 static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
@@ -12810,22 +12918,24 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 	char buf[64];
 	int i;
 
-	DRM_DEBUG_KMS("[CRTC:%d:%s] enable: %s %s\n",
-		      crtc->base.base.id, crtc->base.name,
-		      yesno(pipe_config->hw.enable), context);
+	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] enable: %s %s\n",
+		    crtc->base.base.id, crtc->base.name,
+		    yesno(pipe_config->hw.enable), context);
 
 	if (!pipe_config->hw.enable)
 		goto dump_planes;
 
 	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
-	DRM_DEBUG_KMS("active: %s, output_types: %s (0x%x), output format: %s\n",
-		      yesno(pipe_config->hw.active),
-		      buf, pipe_config->output_types,
-		      output_formats(pipe_config->output_format));
+	drm_dbg_kms(&dev_priv->drm,
+		    "active: %s, output_types: %s (0x%x), output format: %s\n",
+		    yesno(pipe_config->hw.active),
+		    buf, pipe_config->output_types,
+		    output_formats(pipe_config->output_format));
 
-	DRM_DEBUG_KMS("cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
-		      transcoder_name(pipe_config->cpu_transcoder),
-		      pipe_config->pipe_bpp, pipe_config->dither);
+	drm_dbg_kms(&dev_priv->drm,
+		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
+		    transcoder_name(pipe_config->cpu_transcoder),
+		    pipe_config->pipe_bpp, pipe_config->dither);
 
 	if (pipe_config->has_pch_encoder)
 		intel_dump_m_n_config(pipe_config, "fdi",
@@ -12841,13 +12951,15 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 					      &pipe_config->dp_m2_n2);
 	}
 
-	DRM_DEBUG_KMS("audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
-		      pipe_config->has_audio, pipe_config->has_infoframe,
-		      pipe_config->infoframes.enable);
+	drm_dbg_kms(&dev_priv->drm,
+		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
+		    pipe_config->has_audio, pipe_config->has_infoframe,
+		    pipe_config->infoframes.enable);
 
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL))
-		DRM_DEBUG_KMS("GCP: 0x%x\n", pipe_config->infoframes.gcp);
+		drm_dbg_kms(&dev_priv->drm, "GCP: 0x%x\n",
+			    pipe_config->infoframes.gcp);
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI))
 		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.avi);
@@ -12858,50 +12970,56 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_VENDOR))
 		intel_dump_infoframe(dev_priv, &pipe_config->infoframes.hdmi);
 
-	DRM_DEBUG_KMS("requested mode:\n");
+	drm_dbg_kms(&dev_priv->drm, "requested mode:\n");
 	drm_mode_debug_printmodeline(&pipe_config->hw.mode);
-	DRM_DEBUG_KMS("adjusted mode:\n");
+	drm_dbg_kms(&dev_priv->drm, "adjusted mode:\n");
 	drm_mode_debug_printmodeline(&pipe_config->hw.adjusted_mode);
 	intel_dump_crtc_timings(&pipe_config->hw.adjusted_mode);
-	DRM_DEBUG_KMS("port clock: %d, pipe src size: %dx%d, pixel rate %d\n",
-		      pipe_config->port_clock,
-		      pipe_config->pipe_src_w, pipe_config->pipe_src_h,
-		      pipe_config->pixel_rate);
+	drm_dbg_kms(&dev_priv->drm,
+		    "port clock: %d, pipe src size: %dx%d, pixel rate %d\n",
+		    pipe_config->port_clock,
+		    pipe_config->pipe_src_w, pipe_config->pipe_src_h,
+		    pipe_config->pixel_rate);
 
 	if (INTEL_GEN(dev_priv) >= 9)
-		DRM_DEBUG_KMS("num_scalers: %d, scaler_users: 0x%x, scaler_id: %d\n",
-			      crtc->num_scalers,
-			      pipe_config->scaler_state.scaler_users,
-		              pipe_config->scaler_state.scaler_id);
+		drm_dbg_kms(&dev_priv->drm,
+			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d\n",
+			    crtc->num_scalers,
+			    pipe_config->scaler_state.scaler_users,
+			    pipe_config->scaler_state.scaler_id);
 
 	if (HAS_GMCH(dev_priv))
-		DRM_DEBUG_KMS("gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
-			      pipe_config->gmch_pfit.control,
-			      pipe_config->gmch_pfit.pgm_ratios,
-			      pipe_config->gmch_pfit.lvds_border_bits);
+		drm_dbg_kms(&dev_priv->drm,
+			    "gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
+			    pipe_config->gmch_pfit.control,
+			    pipe_config->gmch_pfit.pgm_ratios,
+			    pipe_config->gmch_pfit.lvds_border_bits);
 	else
-		DRM_DEBUG_KMS("pch pfit: pos: 0x%08x, size: 0x%08x, %s, force thru: %s\n",
-			      pipe_config->pch_pfit.pos,
-			      pipe_config->pch_pfit.size,
-			      enableddisabled(pipe_config->pch_pfit.enabled),
-			      yesno(pipe_config->pch_pfit.force_thru));
+		drm_dbg_kms(&dev_priv->drm,
+			    "pch pfit: pos: 0x%08x, size: 0x%08x, %s, force thru: %s\n",
+			    pipe_config->pch_pfit.pos,
+			    pipe_config->pch_pfit.size,
+			    enableddisabled(pipe_config->pch_pfit.enabled),
+			    yesno(pipe_config->pch_pfit.force_thru));
 
-	DRM_DEBUG_KMS("ips: %i, double wide: %i\n",
-		      pipe_config->ips_enabled, pipe_config->double_wide);
+	drm_dbg_kms(&dev_priv->drm, "ips: %i, double wide: %i\n",
+		    pipe_config->ips_enabled, pipe_config->double_wide);
 
 	intel_dpll_dump_hw_state(dev_priv, &pipe_config->dpll_hw_state);
 
 	if (IS_CHERRYVIEW(dev_priv))
-		DRM_DEBUG_KMS("cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
-			      pipe_config->cgm_mode, pipe_config->gamma_mode,
-			      pipe_config->gamma_enable, pipe_config->csc_enable);
+		drm_dbg_kms(&dev_priv->drm,
+			    "cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
+			    pipe_config->cgm_mode, pipe_config->gamma_mode,
+			    pipe_config->gamma_enable, pipe_config->csc_enable);
 	else
-		DRM_DEBUG_KMS("csc_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
-			      pipe_config->csc_mode, pipe_config->gamma_mode,
-			      pipe_config->gamma_enable, pipe_config->csc_enable);
+		drm_dbg_kms(&dev_priv->drm,
+			    "csc_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
+			    pipe_config->csc_mode, pipe_config->gamma_mode,
+			    pipe_config->gamma_enable, pipe_config->csc_enable);
 
-	DRM_DEBUG_KMS("MST master transcoder: %s\n",
-		      transcoder_name(pipe_config->mst_master_transcoder));
+	drm_dbg_kms(&dev_priv->drm, "MST master transcoder: %s\n",
+		    transcoder_name(pipe_config->mst_master_transcoder));
 
 dump_planes:
 	if (!state)
@@ -13070,6 +13188,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 {
 	struct drm_crtc *crtc = pipe_config->uapi.crtc;
 	struct drm_atomic_state *state = pipe_config->uapi.state;
+	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
 	int base_bpp, ret;
@@ -13119,7 +13238,8 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 			continue;
 
 		if (!check_single_encoder_cloning(state, to_intel_crtc(crtc), encoder)) {
-			DRM_DEBUG_KMS("rejecting invalid cloning configuration\n");
+			drm_dbg_kms(&i915->drm,
+				    "rejecting invalid cloning configuration\n");
 			return -EINVAL;
 		}
 
@@ -13176,8 +13296,9 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 		ret = icl_compute_port_sync_crtc_state(connector, pipe_config,
 						       num_tiled_conns);
 		if (ret) {
-			DRM_DEBUG_KMS("Cannot assign Sync Mode CRTCs: %d\n",
-				      ret);
+			drm_dbg_kms(&i915->drm,
+				    "Cannot assign Sync Mode CRTCs: %d\n",
+				    ret);
 			return ret;
 		}
 
@@ -13185,8 +13306,9 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 					      connector_state);
 		if (ret < 0) {
 			if (ret != -EDEADLK)
-				DRM_DEBUG_KMS("Encoder config failure: %d\n",
-					      ret);
+				drm_dbg_kms(&i915->drm,
+					    "Encoder config failure: %d\n",
+					    ret);
 			return ret;
 		}
 	}
@@ -13201,7 +13323,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 	if (ret == -EDEADLK)
 		return ret;
 	if (ret < 0) {
-		DRM_DEBUG_KMS("CRTC fixup failed\n");
+		drm_dbg_kms(&i915->drm, "CRTC fixup failed\n");
 		return ret;
 	}
 
@@ -13209,7 +13331,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 		if (WARN(!retry, "loop in pipe configuration computation\n"))
 			return -EINVAL;
 
-		DRM_DEBUG_KMS("CRTC bw constrained, retrying\n");
+		drm_dbg_kms(&i915->drm, "CRTC bw constrained, retrying\n");
 		retry = false;
 		goto encoder_retry;
 	}
@@ -13220,8 +13342,9 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 	 */
 	pipe_config->dither = (pipe_config->pipe_bpp == 6*3) &&
 		!pipe_config->dither_force_disable;
-	DRM_DEBUG_KMS("hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
-		      base_bpp, pipe_config->pipe_bpp, pipe_config->dither);
+	drm_dbg_kms(&i915->drm,
+		    "hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
+		    base_bpp, pipe_config->pipe_bpp, pipe_config->dither);
 
 	/*
 	 * Make drm_calc_timestamping_constants in
@@ -13310,16 +13433,17 @@ pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
 		if (!drm_debug_enabled(DRM_UT_KMS))
 			return;
 
-		DRM_DEBUG_KMS("fastset mismatch in %s infoframe\n", name);
-		DRM_DEBUG_KMS("expected:\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "fastset mismatch in %s infoframe\n", name);
+		drm_dbg_kms(&dev_priv->drm, "expected:\n");
 		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
-		DRM_DEBUG_KMS("found:\n");
+		drm_dbg_kms(&dev_priv->drm, "found:\n");
 		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, b);
 	} else {
-		DRM_ERROR("mismatch in %s infoframe\n", name);
-		DRM_ERROR("expected:\n");
+		drm_err(&dev_priv->drm, "mismatch in %s infoframe\n", name);
+		drm_err(&dev_priv->drm, "expected:\n");
 		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, a);
-		DRM_ERROR("found:\n");
+		drm_err(&dev_priv->drm, "found:\n");
 		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, b);
 	}
 }
@@ -13328,6 +13452,7 @@ static void __printf(4, 5)
 pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
 		     const char *name, const char *format, ...)
 {
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct va_format vaf;
 	va_list args;
 
@@ -13336,11 +13461,12 @@ pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
 	vaf.va = &args;
 
 	if (fastset)
-		DRM_DEBUG_KMS("[CRTC:%d:%s] fastset mismatch in %s %pV\n",
-			      crtc->base.base.id, crtc->base.name, name, &vaf);
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] fastset mismatch in %s %pV\n",
+			    crtc->base.base.id, crtc->base.name, name, &vaf);
 	else
-		DRM_ERROR("[CRTC:%d:%s] mismatch in %s %pV\n",
-			  crtc->base.base.id, crtc->base.name, name, &vaf);
+		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s %pV\n",
+			crtc->base.base.id, crtc->base.name, name, &vaf);
 
 	va_end(args);
 }
@@ -13376,7 +13502,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		!(pipe_config->hw.mode.private_flags & I915_MODE_FLAG_INHERITED);
 
 	if (fixup_inherited && !fastboot_enabled(dev_priv)) {
-		DRM_DEBUG_KMS("initial modeset and fastboot not set\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "initial modeset and fastboot not set\n");
 		ret = false;
 	}
 
@@ -13770,9 +13897,10 @@ static void verify_wm_state(struct intel_crtc *crtc,
 
 	if (INTEL_GEN(dev_priv) >= 11 &&
 	    hw->ddb.enabled_slices != sw_ddb->enabled_slices)
-		DRM_ERROR("mismatch in DBUF Slices (expected %u, got %u)\n",
-			  sw_ddb->enabled_slices,
-			  hw->ddb.enabled_slices);
+		drm_err(&dev_priv->drm,
+			"mismatch in DBUF Slices (expected %u, got %u)\n",
+			sw_ddb->enabled_slices,
+			hw->ddb.enabled_slices);
 
 	/* planes */
 	for_each_universal_plane(dev_priv, pipe, plane) {
@@ -13787,26 +13915,28 @@ static void verify_wm_state(struct intel_crtc *crtc,
 						&sw_plane_wm->wm[level]))
 				continue;
 
-			DRM_ERROR("mismatch in WM pipe %c plane %d level %d (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				  pipe_name(pipe), plane + 1, level,
-				  sw_plane_wm->wm[level].plane_en,
-				  sw_plane_wm->wm[level].plane_res_b,
-				  sw_plane_wm->wm[level].plane_res_l,
-				  hw_plane_wm->wm[level].plane_en,
-				  hw_plane_wm->wm[level].plane_res_b,
-				  hw_plane_wm->wm[level].plane_res_l);
+			drm_err(&dev_priv->drm,
+				"mismatch in WM pipe %c plane %d level %d (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				pipe_name(pipe), plane + 1, level,
+				sw_plane_wm->wm[level].plane_en,
+				sw_plane_wm->wm[level].plane_res_b,
+				sw_plane_wm->wm[level].plane_res_l,
+				hw_plane_wm->wm[level].plane_en,
+				hw_plane_wm->wm[level].plane_res_b,
+				hw_plane_wm->wm[level].plane_res_l);
 		}
 
 		if (!skl_wm_level_equals(&hw_plane_wm->trans_wm,
 					 &sw_plane_wm->trans_wm)) {
-			DRM_ERROR("mismatch in trans WM pipe %c plane %d (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				  pipe_name(pipe), plane + 1,
-				  sw_plane_wm->trans_wm.plane_en,
-				  sw_plane_wm->trans_wm.plane_res_b,
-				  sw_plane_wm->trans_wm.plane_res_l,
-				  hw_plane_wm->trans_wm.plane_en,
-				  hw_plane_wm->trans_wm.plane_res_b,
-				  hw_plane_wm->trans_wm.plane_res_l);
+			drm_err(&dev_priv->drm,
+				"mismatch in trans WM pipe %c plane %d (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				pipe_name(pipe), plane + 1,
+				sw_plane_wm->trans_wm.plane_en,
+				sw_plane_wm->trans_wm.plane_res_b,
+				sw_plane_wm->trans_wm.plane_res_l,
+				hw_plane_wm->trans_wm.plane_en,
+				hw_plane_wm->trans_wm.plane_res_b,
+				hw_plane_wm->trans_wm.plane_res_l);
 		}
 
 		/* DDB */
@@ -13814,10 +13944,11 @@ static void verify_wm_state(struct intel_crtc *crtc,
 		sw_ddb_entry = &new_crtc_state->wm.skl.plane_ddb_y[plane];
 
 		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
-			DRM_ERROR("mismatch in DDB state pipe %c plane %d (expected (%u,%u), found (%u,%u))\n",
-				  pipe_name(pipe), plane + 1,
-				  sw_ddb_entry->start, sw_ddb_entry->end,
-				  hw_ddb_entry->start, hw_ddb_entry->end);
+			drm_err(&dev_priv->drm,
+				"mismatch in DDB state pipe %c plane %d (expected (%u,%u), found (%u,%u))\n",
+				pipe_name(pipe), plane + 1,
+				sw_ddb_entry->start, sw_ddb_entry->end,
+				hw_ddb_entry->start, hw_ddb_entry->end);
 		}
 	}
 
@@ -13839,26 +13970,28 @@ static void verify_wm_state(struct intel_crtc *crtc,
 						&sw_plane_wm->wm[level]))
 				continue;
 
-			DRM_ERROR("mismatch in WM pipe %c cursor level %d (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				  pipe_name(pipe), level,
-				  sw_plane_wm->wm[level].plane_en,
-				  sw_plane_wm->wm[level].plane_res_b,
-				  sw_plane_wm->wm[level].plane_res_l,
-				  hw_plane_wm->wm[level].plane_en,
-				  hw_plane_wm->wm[level].plane_res_b,
-				  hw_plane_wm->wm[level].plane_res_l);
+			drm_err(&dev_priv->drm,
+				"mismatch in WM pipe %c cursor level %d (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				pipe_name(pipe), level,
+				sw_plane_wm->wm[level].plane_en,
+				sw_plane_wm->wm[level].plane_res_b,
+				sw_plane_wm->wm[level].plane_res_l,
+				hw_plane_wm->wm[level].plane_en,
+				hw_plane_wm->wm[level].plane_res_b,
+				hw_plane_wm->wm[level].plane_res_l);
 		}
 
 		if (!skl_wm_level_equals(&hw_plane_wm->trans_wm,
 					 &sw_plane_wm->trans_wm)) {
-			DRM_ERROR("mismatch in trans WM pipe %c cursor (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				  pipe_name(pipe),
-				  sw_plane_wm->trans_wm.plane_en,
-				  sw_plane_wm->trans_wm.plane_res_b,
-				  sw_plane_wm->trans_wm.plane_res_l,
-				  hw_plane_wm->trans_wm.plane_en,
-				  hw_plane_wm->trans_wm.plane_res_b,
-				  hw_plane_wm->trans_wm.plane_res_l);
+			drm_err(&dev_priv->drm,
+				"mismatch in trans WM pipe %c cursor (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				pipe_name(pipe),
+				sw_plane_wm->trans_wm.plane_en,
+				sw_plane_wm->trans_wm.plane_res_b,
+				sw_plane_wm->trans_wm.plane_res_l,
+				hw_plane_wm->trans_wm.plane_en,
+				hw_plane_wm->trans_wm.plane_res_b,
+				hw_plane_wm->trans_wm.plane_res_l);
 		}
 
 		/* DDB */
@@ -13866,10 +13999,11 @@ static void verify_wm_state(struct intel_crtc *crtc,
 		sw_ddb_entry = &new_crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR];
 
 		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
-			DRM_ERROR("mismatch in DDB state pipe %c cursor (expected (%u,%u), found (%u,%u))\n",
-				  pipe_name(pipe),
-				  sw_ddb_entry->start, sw_ddb_entry->end,
-				  hw_ddb_entry->start, hw_ddb_entry->end);
+			drm_err(&dev_priv->drm,
+				"mismatch in DDB state pipe %c cursor (expected (%u,%u), found (%u,%u))\n",
+				pipe_name(pipe),
+				sw_ddb_entry->start, sw_ddb_entry->end,
+				hw_ddb_entry->start, hw_ddb_entry->end);
 		}
 	}
 
@@ -13913,9 +14047,9 @@ verify_encoder_state(struct drm_i915_private *dev_priv, struct intel_atomic_stat
 		bool enabled = false, found = false;
 		enum pipe pipe;
 
-		DRM_DEBUG_KMS("[ENCODER:%d:%s]\n",
-			      encoder->base.base.id,
-			      encoder->base.name);
+		drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s]\n",
+			    encoder->base.base.id,
+			    encoder->base.name);
 
 		for_each_oldnew_connector_in_state(&state->base, connector, old_conn_state,
 						   new_conn_state, i) {
@@ -13967,7 +14101,8 @@ verify_crtc_state(struct intel_crtc *crtc,
 	intel_crtc_state_reset(old_crtc_state, crtc);
 	old_crtc_state->uapi.state = state;
 
-	DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.base.id, crtc->base.name);
+	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s]\n", crtc->base.base.id,
+		    crtc->base.name);
 
 	active = dev_priv->display.get_pipe_config(crtc, pipe_config);
 
@@ -14042,7 +14177,7 @@ verify_single_dpll_state(struct drm_i915_private *dev_priv,
 
 	memset(&dpll_hw_state, 0, sizeof(dpll_hw_state));
 
-	DRM_DEBUG_KMS("%s\n", pll->info->name);
+	drm_dbg_kms(&dev_priv->drm, "%s\n", pll->info->name);
 
 	active = pll->info->funcs->get_hw_state(dev_priv, pll, &dpll_hw_state);
 
@@ -14409,8 +14544,9 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state,
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
 		ret = intel_plane_atomic_check(state, plane);
 		if (ret) {
-			DRM_DEBUG_ATOMIC("[PLANE:%d:%s] atomic driver check failed\n",
-					 plane->base.base.id, plane->base.name);
+			drm_dbg_atomic(&dev_priv->drm,
+				       "[PLANE:%d:%s] atomic driver check failed\n",
+				       plane->base.base.id, plane->base.name);
 			return ret;
 		}
 	}
@@ -14461,9 +14597,11 @@ static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		int ret = intel_crtc_atomic_check(state, crtc);
+		struct drm_i915_private *i915 = to_i915(intel_crtc->base.dev);
 		if (ret) {
-			DRM_DEBUG_ATOMIC("[CRTC:%d:%s] atomic driver check failed\n",
-					 crtc->base.base.id, crtc->base.name);
+			drm_dbg_atomic(&i915->drm,
+				       "[CRTC:%d:%s] atomic driver check failed\n",
+				       crtc->base.base.id, crtc->base.name);
 			return ret;
 		}
 	}
@@ -14672,7 +14810,8 @@ static int intel_atomic_check(struct drm_device *dev,
 	}
 
 	if (any_ms && !check_digital_port_conflicts(state)) {
-		DRM_DEBUG_KMS("rejecting conflicting digital port configuration\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "rejecting conflicting digital port configuration\n");
 		ret = EINVAL;
 		goto fail;
 	}
@@ -15054,6 +15193,7 @@ static void intel_update_trans_port_sync_crtcs(struct intel_crtc *crtc,
 					       struct intel_crtc_state *old_crtc_state,
 					       struct intel_crtc_state *new_crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc *slave_crtc = intel_get_slave_crtc(new_crtc_state);
 	struct intel_crtc_state *new_slave_crtc_state =
 		intel_atomic_get_new_crtc_state(state, slave_crtc);
@@ -15063,9 +15203,10 @@ static void intel_update_trans_port_sync_crtcs(struct intel_crtc *crtc,
 	WARN_ON(!slave_crtc || !new_slave_crtc_state ||
 		!old_slave_crtc_state);
 
-	DRM_DEBUG_KMS("Updating Transcoder Port Sync Master CRTC = %d %s and Slave CRTC %d %s\n",
-		      crtc->base.base.id, crtc->base.name, slave_crtc->base.base.id,
-		      slave_crtc->base.name);
+	drm_dbg_kms(&i915->drm,
+		    "Updating Transcoder Port Sync Master CRTC = %d %s and Slave CRTC %d %s\n",
+		    crtc->base.base.id, crtc->base.name,
+		    slave_crtc->base.base.id, slave_crtc->base.name);
 
 	/* Enable seq for slave with with DP_TP_CTL left Idle until the
 	 * master is ready
@@ -15558,7 +15699,8 @@ static int intel_atomic_commit(struct drm_device *dev,
 
 	ret = intel_atomic_prepare_commit(state);
 	if (ret) {
-		DRM_DEBUG_ATOMIC("Preparing state failed with %i\n", ret);
+		drm_dbg_atomic(&dev_priv->drm,
+			       "Preparing state failed with %i\n", ret);
 		i915_sw_fence_commit(&state->commit_ready);
 		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
 		return ret;
@@ -16782,10 +16924,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_crt_init(dev_priv);
 
 		if (I915_READ(GEN3_SDVOB) & SDVO_DETECTED) {
-			DRM_DEBUG_KMS("probing SDVOB\n");
+			drm_dbg_kms(&dev_priv->drm, "probing SDVOB\n");
 			found = intel_sdvo_init(dev_priv, GEN3_SDVOB, PORT_B);
 			if (!found && IS_G4X(dev_priv)) {
-				DRM_DEBUG_KMS("probing HDMI on SDVOB\n");
+				drm_dbg_kms(&dev_priv->drm,
+					    "probing HDMI on SDVOB\n");
 				intel_hdmi_init(dev_priv, GEN4_HDMIB, PORT_B);
 			}
 
@@ -16796,14 +16939,15 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		/* Before G4X SDVOC doesn't have its own detect register */
 
 		if (I915_READ(GEN3_SDVOB) & SDVO_DETECTED) {
-			DRM_DEBUG_KMS("probing SDVOC\n");
+			drm_dbg_kms(&dev_priv->drm, "probing SDVOC\n");
 			found = intel_sdvo_init(dev_priv, GEN3_SDVOC, PORT_C);
 		}
 
 		if (!found && (I915_READ(GEN3_SDVOC) & SDVO_DETECTED)) {
 
 			if (IS_G4X(dev_priv)) {
-				DRM_DEBUG_KMS("probing HDMI on SDVOC\n");
+				drm_dbg_kms(&dev_priv->drm,
+					    "probing HDMI on SDVOC\n");
 				intel_hdmi_init(dev_priv, GEN4_HDMIC, PORT_C);
 			}
 			if (IS_G4X(dev_priv))
@@ -16852,9 +16996,11 @@ static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
 						unsigned int *handle)
 {
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
 	if (obj->userptr.mm) {
-		DRM_DEBUG("attempting to use a userptr for a framebuffer, denied\n");
+		drm_dbg(&i915->drm,
+			"attempting to use a userptr for a framebuffer, denied\n");
 		return -EINVAL;
 	}
 
@@ -16908,14 +17054,16 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		 */
 		if (tiling != I915_TILING_NONE &&
 		    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
-			DRM_DEBUG_KMS("tiling_mode doesn't match fb modifier\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "tiling_mode doesn't match fb modifier\n");
 			goto err;
 		}
 	} else {
 		if (tiling == I915_TILING_X) {
 			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
 		} else if (tiling == I915_TILING_Y) {
-			DRM_DEBUG_KMS("No Y tiling for legacy addfb\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "No Y tiling for legacy addfb\n");
 			goto err;
 		}
 	}
@@ -16925,10 +17073,11 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 				      mode_cmd->modifier[0])) {
 		struct drm_format_name_buf format_name;
 
-		DRM_DEBUG_KMS("unsupported pixel format %s / modifier 0x%llx\n",
-			      drm_get_format_name(mode_cmd->pixel_format,
-						  &format_name),
-			      mode_cmd->modifier[0]);
+		drm_dbg_kms(&dev_priv->drm,
+			    "unsupported pixel format %s / modifier 0x%llx\n",
+			    drm_get_format_name(mode_cmd->pixel_format,
+						&format_name),
+			    mode_cmd->modifier[0]);
 		goto err;
 	}
 
@@ -16938,17 +17087,19 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	 */
 	if (INTEL_GEN(dev_priv) < 4 &&
 	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
-		DRM_DEBUG_KMS("tiling_mode must match fb modifier exactly on gen2/3\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "tiling_mode must match fb modifier exactly on gen2/3\n");
 		goto err;
 	}
 
 	max_stride = intel_fb_max_stride(dev_priv, mode_cmd->pixel_format,
 					 mode_cmd->modifier[0]);
 	if (mode_cmd->pitches[0] > max_stride) {
-		DRM_DEBUG_KMS("%s pitch (%u) must be at most %d\n",
-			      mode_cmd->modifier[0] != DRM_FORMAT_MOD_LINEAR ?
-			      "tiled" : "linear",
-			      mode_cmd->pitches[0], max_stride);
+		drm_dbg_kms(&dev_priv->drm,
+			    "%s pitch (%u) must be at most %d\n",
+			    mode_cmd->modifier[0] != DRM_FORMAT_MOD_LINEAR ?
+			    "tiled" : "linear",
+			    mode_cmd->pitches[0], max_stride);
 		goto err;
 	}
 
@@ -16957,15 +17108,17 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	 * the fb pitch and fence stride match.
 	 */
 	if (tiling != I915_TILING_NONE && mode_cmd->pitches[0] != stride) {
-		DRM_DEBUG_KMS("pitch (%d) must match tiling stride (%d)\n",
-			      mode_cmd->pitches[0], stride);
+		drm_dbg_kms(&dev_priv->drm,
+			    "pitch (%d) must match tiling stride (%d)\n",
+			    mode_cmd->pitches[0], stride);
 		goto err;
 	}
 
 	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
 	if (mode_cmd->offsets[0] != 0) {
-		DRM_DEBUG_KMS("plane 0 offset (0x%08x) must be 0\n",
-			      mode_cmd->offsets[0]);
+		drm_dbg_kms(&dev_priv->drm,
+			    "plane 0 offset (0x%08x) must be 0\n",
+			    mode_cmd->offsets[0]);
 		goto err;
 	}
 
@@ -16975,14 +17128,16 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		u32 stride_alignment;
 
 		if (mode_cmd->handles[i] != mode_cmd->handles[0]) {
-			DRM_DEBUG_KMS("bad plane %d handle\n", i);
+			drm_dbg_kms(&dev_priv->drm, "bad plane %d handle\n",
+				    i);
 			goto err;
 		}
 
 		stride_alignment = intel_fb_stride_alignment(fb, i);
 		if (fb->pitches[i] & (stride_alignment - 1)) {
-			DRM_DEBUG_KMS("plane %d pitch (%d) must be at least %u byte aligned\n",
-				      i, fb->pitches[i], stride_alignment);
+			drm_dbg_kms(&dev_priv->drm,
+				    "plane %d pitch (%d) must be at least %u byte aligned\n",
+				    i, fb->pitches[i], stride_alignment);
 			goto err;
 		}
 
@@ -16990,9 +17145,10 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			int ccs_aux_stride = gen12_ccs_aux_stride(fb, i);
 
 			if (fb->pitches[i] != ccs_aux_stride) {
-				DRM_DEBUG_KMS("ccs aux plane %d pitch (%d) must be %d\n",
-					      i,
-					      fb->pitches[i], ccs_aux_stride);
+				drm_dbg_kms(&dev_priv->drm,
+					    "ccs aux plane %d pitch (%d) must be %d\n",
+					    i,
+					    fb->pitches[i], ccs_aux_stride);
 				goto err;
 			}
 		}
@@ -17006,7 +17162,7 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 	ret = drm_framebuffer_init(&dev_priv->drm, fb, &intel_fb_funcs);
 	if (ret) {
-		DRM_ERROR("framebuffer init failed %d\n", ret);
+		drm_err(&dev_priv->drm, "framebuffer init failed %d\n", ret);
 		goto err;
 	}
 
@@ -17381,7 +17537,7 @@ static void intel_update_fdi_pll_freq(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	DRM_DEBUG_DRIVER("FDI PLL freq=%d\n", dev_priv->fdi_pll_freq);
+	drm_dbg(&dev_priv->drm, "FDI PLL freq=%d\n", dev_priv->fdi_pll_freq);
 }
 
 static int intel_initial_commit(struct drm_device *dev)
@@ -17518,9 +17674,9 @@ int intel_modeset_init(struct drm_i915_private *i915)
 
 	intel_gmbus_setup(i915);
 
-	DRM_DEBUG_KMS("%d display pipe%s available.\n",
-		      INTEL_NUM_PIPES(i915),
-		      INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
+	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
+		    INTEL_NUM_PIPES(i915),
+		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
 
 	if (HAS_DISPLAY(i915) && INTEL_DISPLAY_ENABLED(i915)) {
 		for_each_pipe(i915, pipe) {
@@ -17589,7 +17745,7 @@ int intel_modeset_init(struct drm_i915_private *i915)
 	 */
 	ret = intel_initial_commit(dev);
 	if (ret)
-		DRM_DEBUG_KMS("Initial commit in probe failed.\n");
+		drm_dbg_kms(&i915->drm, "Initial commit in probe failed.\n");
 
 	return 0;
 }
@@ -17610,8 +17766,9 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	WARN_ON(i9xx_calc_dpll_params(48000, &clock) != 25154);
 
-	DRM_DEBUG_KMS("enabling pipe %c due to force quirk (vco=%d dot=%d)\n",
-		      pipe_name(pipe), clock.vco, clock.dot);
+	drm_dbg_kms(&dev_priv->drm,
+		    "enabling pipe %c due to force quirk (vco=%d dot=%d)\n",
+		    pipe_name(pipe), clock.vco, clock.dot);
 
 	fp = i9xx_dpll_compute_fp(&clock);
 	dpll = DPLL_DVO_2X_MODE |
@@ -17668,8 +17825,8 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
 	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
 
-	DRM_DEBUG_KMS("disabling pipe %c due to force quirk\n",
-		      pipe_name(pipe));
+	drm_dbg_kms(&dev_priv->drm, "disabling pipe %c due to force quirk\n",
+		    pipe_name(pipe));
 
 	WARN_ON(I915_READ(DSPCNTR(PLANE_A)) & DISPLAY_PLANE_ENABLE);
 	WARN_ON(I915_READ(DSPCNTR(PLANE_B)) & DISPLAY_PLANE_ENABLE);
@@ -17706,8 +17863,9 @@ intel_sanitize_plane_mapping(struct drm_i915_private *dev_priv)
 		if (pipe == crtc->pipe)
 			continue;
 
-		DRM_DEBUG_KMS("[PLANE:%d:%s] attached to the wrong pipe, disabling plane\n",
-			      plane->base.base.id, plane->base.name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "[PLANE:%d:%s] attached to the wrong pipe, disabling plane\n",
+			    plane->base.base.id, plane->base.name);
 
 		plane_crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
 		intel_plane_disable_noatomic(plane_crtc, plane);
@@ -17896,16 +18054,18 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 		crtc_state->hw.active;
 
 	if (crtc_state && has_bogus_dpll_config(crtc_state)) {
-		DRM_DEBUG_KMS("BIOS has misprogrammed the hardware. Disabling pipe %c\n",
-			      pipe_name(crtc->pipe));
+		drm_dbg_kms(&dev_priv->drm,
+			    "BIOS has misprogrammed the hardware. Disabling pipe %c\n",
+			    pipe_name(crtc->pipe));
 		has_active_crtc = false;
 	}
 
 	connector = intel_encoder_find_connector(encoder);
 	if (connector && !has_active_crtc) {
-		DRM_DEBUG_KMS("[ENCODER:%d:%s] has active connectors but no active pipe!\n",
-			      encoder->base.base.id,
-			      encoder->base.name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "[ENCODER:%d:%s] has active connectors but no active pipe!\n",
+			    encoder->base.base.id,
+			    encoder->base.name);
 
 		/* Connector is active, but has no active pipe. This is
 		 * fallout from our resume register restoring. Disable
@@ -17913,9 +18073,10 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 		if (crtc_state) {
 			struct drm_encoder *best_encoder;
 
-			DRM_DEBUG_KMS("[ENCODER:%d:%s] manually disabled\n",
-				      encoder->base.base.id,
-				      encoder->base.name);
+			drm_dbg_kms(&dev_priv->drm,
+				    "[ENCODER:%d:%s] manually disabled\n",
+				    encoder->base.base.id,
+				    encoder->base.name);
 
 			/* avoid oopsing in case the hooks consult best_encoder */
 			best_encoder = connector->base.state->best_encoder;
@@ -17968,9 +18129,10 @@ static void readout_plane_state(struct drm_i915_private *dev_priv)
 
 		intel_set_plane_visible(crtc_state, plane_state, visible);
 
-		DRM_DEBUG_KMS("[PLANE:%d:%s] hw state readout: %s, pipe %c\n",
-			      plane->base.base.id, plane->base.name,
-			      enableddisabled(visible), pipe_name(pipe));
+		drm_dbg_kms(&dev_priv->drm,
+			    "[PLANE:%d:%s] hw state readout: %s, pipe %c\n",
+			    plane->base.base.id, plane->base.name,
+			    enableddisabled(visible), pipe_name(pipe));
 	}
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
@@ -18010,9 +18172,10 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		if (crtc_state->hw.active)
 			dev_priv->active_pipes |= BIT(crtc->pipe);
 
-		DRM_DEBUG_KMS("[CRTC:%d:%s] hw state readout: %s\n",
-			      crtc->base.base.id, crtc->base.name,
-			      enableddisabled(crtc_state->hw.active));
+		drm_dbg_kms(&dev_priv->drm,
+			    "[CRTC:%d:%s] hw state readout: %s\n",
+			    crtc->base.base.id, crtc->base.name,
+			    enableddisabled(crtc_state->hw.active));
 	}
 
 	readout_plane_state(dev_priv);
@@ -18040,8 +18203,9 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		}
 		pll->active_mask = pll->state.crtc_mask;
 
-		DRM_DEBUG_KMS("%s hw state readout: crtc_mask 0x%08x, on %i\n",
-			      pll->info->name, pll->state.crtc_mask, pll->on);
+		drm_dbg_kms(&dev_priv->drm,
+			    "%s hw state readout: crtc_mask 0x%08x, on %i\n",
+			    pll->info->name, pll->state.crtc_mask, pll->on);
 	}
 
 	for_each_intel_encoder(dev, encoder) {
@@ -18059,10 +18223,11 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			encoder->base.crtc = NULL;
 		}
 
-		DRM_DEBUG_KMS("[ENCODER:%d:%s] hw state readout: %s, pipe %c\n",
-			      encoder->base.base.id, encoder->base.name,
-			      enableddisabled(encoder->base.crtc),
-			      pipe_name(pipe));
+		drm_dbg_kms(&dev_priv->drm,
+			    "[ENCODER:%d:%s] hw state readout: %s, pipe %c\n",
+			    encoder->base.base.id, encoder->base.name,
+			    enableddisabled(encoder->base.crtc),
+			    pipe_name(pipe));
 	}
 
 	drm_connector_list_iter_begin(dev, &conn_iter);
@@ -18094,9 +18259,10 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			connector->base.dpms = DRM_MODE_DPMS_OFF;
 			connector->base.encoder = NULL;
 		}
-		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] hw state readout: %s\n",
-			      connector->base.base.id, connector->base.name,
-			      enableddisabled(connector->base.encoder));
+		drm_dbg_kms(&dev_priv->drm,
+			    "[CONNECTOR:%d:%s] hw state readout: %s\n",
+			    connector->base.base.id, connector->base.name,
+			    enableddisabled(connector->base.encoder));
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
@@ -18160,9 +18326,10 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 					crtc_state->min_cdclk[plane->id] =
 						crtc_state->pixel_rate;
 			}
-			DRM_DEBUG_KMS("[PLANE:%d:%s] min_cdclk %d kHz\n",
-				      plane->base.base.id, plane->base.name,
-				      crtc_state->min_cdclk[plane->id]);
+			drm_dbg_kms(&dev_priv->drm,
+				    "[PLANE:%d:%s] min_cdclk %d kHz\n",
+				    plane->base.base.id, plane->base.name,
+				    crtc_state->min_cdclk[plane->id]);
 		}
 
 		if (crtc_state->hw.active) {
@@ -18233,8 +18400,9 @@ static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_priv,
 	    (val & SDVO_PIPE_SEL_MASK) == SDVO_PIPE_SEL(PIPE_A))
 		return;
 
-	DRM_DEBUG_KMS("Sanitizing transcoder select for HDMI %c\n",
-		      port_name(port));
+	drm_dbg_kms(&dev_priv->drm,
+		    "Sanitizing transcoder select for HDMI %c\n",
+		    port_name(port));
 
 	val &= ~SDVO_PIPE_SEL_MASK;
 	val |= SDVO_PIPE_SEL(PIPE_A);
@@ -18251,8 +18419,9 @@ static void ibx_sanitize_pch_dp_port(struct drm_i915_private *dev_priv,
 	    (val & DP_PIPE_SEL_MASK) == DP_PIPE_SEL(PIPE_A))
 		return;
 
-	DRM_DEBUG_KMS("Sanitizing transcoder select for DP %c\n",
-		      port_name(port));
+	drm_dbg_kms(&dev_priv->drm,
+		    "Sanitizing transcoder select for DP %c\n",
+		    port_name(port));
 
 	val &= ~DP_PIPE_SEL_MASK;
 	val |= DP_PIPE_SEL(PIPE_A);
@@ -18353,8 +18522,9 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 		if (!pll->on || pll->active_mask)
 			continue;
 
-		DRM_DEBUG_KMS("%s enabled but not in use, disabling\n",
-			      pll->info->name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "%s enabled but not in use, disabling\n",
+			    pll->info->name);
 
 		pll->info->funcs->disable(dev_priv, pll);
 		pll->on = false;
@@ -18414,7 +18584,8 @@ void intel_display_resume(struct drm_device *dev)
 	drm_modeset_acquire_fini(&ctx);
 
 	if (ret)
-		DRM_ERROR("Restoring old state failed with %i\n", ret);
+		drm_err(&dev_priv->drm,
+			"Restoring old state failed with %i\n", ret);
 	if (state)
 		drm_atomic_state_put(state);
 }
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
