Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990C044559C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7579E6E49C;
	Thu,  4 Nov 2021 14:45:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB7C6E455
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:45:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="212463184"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="212463184"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:45:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="450222732"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 04 Nov 2021 07:45:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:08 +0200
Message-Id: <20211104144520.22605-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/17] drm/i915/fbc: Extract helpers to compute
 FBC control register values
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

Declutter the *_fbc_activate() functions by pulling all the
control register value computations into helpers.

I left the enable bit in *_fbc_activate() in the hopes of maybe
using the helpers in the *_fbc_deactivate() paths as well instead
of the current rmw approach. That won't be possible at least
quite yet since we clobber the fbc->params before deactivating
FBC so we could end up changing some of the values live, which
given FBC's lack of/poor double buffering would likely not go
so well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 162 +++++++++++++----------
 1 file changed, 94 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 4d7b156e46db..fbb96f6aaacd 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -142,6 +142,48 @@ static unsigned int intel_fbc_cfb_size(struct drm_i915_private *dev_priv,
 	return lines * intel_fbc_cfb_stride(dev_priv, cache);
 }
 
+static u32 i8xx_fbc_ctl(struct drm_i915_private *i915)
+{
+	struct intel_fbc *fbc = &i915->fbc;
+	const struct intel_fbc_reg_params *params = &fbc->params;
+	unsigned int cfb_stride;
+	u32 fbc_ctl;
+
+	cfb_stride = params->cfb_stride / fbc->limit;
+
+	/* FBC_CTL wants 32B or 64B units */
+	if (DISPLAY_VER(i915) == 2)
+		cfb_stride = (cfb_stride / 32) - 1;
+	else
+		cfb_stride = (cfb_stride / 64) - 1;
+
+	fbc_ctl = FBC_CTL_PERIODIC |
+		FBC_CTL_INTERVAL(params->interval) |
+		FBC_CTL_STRIDE(cfb_stride);
+
+	if (IS_I945GM(i915))
+		fbc_ctl |= FBC_CTL_C3_IDLE; /* 945 needs special SR handling */
+
+	if (params->fence_id >= 0)
+		fbc_ctl |= FBC_CTL_FENCENO(params->fence_id);
+
+	return fbc_ctl;
+}
+
+static u32 i965_fbc_ctl2(struct drm_i915_private *i915)
+{
+	const struct intel_fbc_reg_params *params = &i915->fbc.params;
+	u32 fbc_ctl2;
+
+	fbc_ctl2 = FBC_CTL_FENCE_DBL | FBC_CTL_IDLE_IMM |
+		FBC_CTL_PLANE(params->crtc.i9xx_plane);
+
+	if (params->fence_id >= 0)
+		fbc_ctl2 |= FBC_CTL_CPU_FENCE;
+
+	return fbc_ctl2;
+}
+
 static void i8xx_fbc_deactivate(struct drm_i915_private *dev_priv)
 {
 	u32 fbc_ctl;
@@ -166,44 +208,21 @@ static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
 {
 	struct intel_fbc *fbc = &dev_priv->fbc;
 	const struct intel_fbc_reg_params *params = &fbc->params;
-	int cfb_pitch;
 	int i;
-	u32 fbc_ctl;
-
-	cfb_pitch = params->cfb_stride / fbc->limit;
-
-	/* FBC_CTL wants 32B or 64B units */
-	if (DISPLAY_VER(dev_priv) == 2)
-		cfb_pitch = (cfb_pitch / 32) - 1;
-	else
-		cfb_pitch = (cfb_pitch / 64) - 1;
 
 	/* Clear old tags */
 	for (i = 0; i < (FBC_LL_SIZE / 32) + 1; i++)
 		intel_de_write(dev_priv, FBC_TAG(i), 0);
 
 	if (DISPLAY_VER(dev_priv) == 4) {
-		u32 fbc_ctl2;
-
-		/* Set it up... */
-		fbc_ctl2 = FBC_CTL_FENCE_DBL | FBC_CTL_IDLE_IMM;
-		fbc_ctl2 |= FBC_CTL_PLANE(params->crtc.i9xx_plane);
-		if (params->fence_id >= 0)
-			fbc_ctl2 |= FBC_CTL_CPU_FENCE;
-		intel_de_write(dev_priv, FBC_CONTROL2, fbc_ctl2);
+		intel_de_write(dev_priv, FBC_CONTROL2,
+			       i965_fbc_ctl2(dev_priv));
 		intel_de_write(dev_priv, FBC_FENCE_OFF,
 			       params->fence_y_offset);
 	}
 
-	/* enable it... */
-	fbc_ctl = FBC_CTL_INTERVAL(params->interval);
-	fbc_ctl |= FBC_CTL_EN | FBC_CTL_PERIODIC;
-	if (IS_I945GM(dev_priv))
-		fbc_ctl |= FBC_CTL_C3_IDLE; /* 945 needs special SR handling */
-	fbc_ctl |= FBC_CTL_STRIDE(cfb_pitch & 0xff);
-	if (params->fence_id >= 0)
-		fbc_ctl |= FBC_CTL_FENCENO(params->fence_id);
-	intel_de_write(dev_priv, FBC_CONTROL, fbc_ctl);
+	intel_de_write(dev_priv, FBC_CONTROL,
+		       FBC_CTL_EN | i8xx_fbc_ctl(dev_priv));
 }
 
 static bool i8xx_fbc_is_active(struct drm_i915_private *dev_priv)
@@ -232,23 +251,36 @@ static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *i915)
 	}
 }
 
+static u32 g4x_dpfc_ctl(struct drm_i915_private *i915)
+{
+	const struct intel_fbc_reg_params *params = &i915->fbc.params;
+	u32 dpfc_ctl;
+
+	dpfc_ctl = g4x_dpfc_ctl_limit(i915) |
+		DPFC_CTL_PLANE(params->crtc.i9xx_plane);
+
+	if (IS_G4X(i915))
+		dpfc_ctl |= DPFC_SR_EN;
+
+	if (params->fence_id >= 0) {
+		dpfc_ctl |= DPFC_CTL_FENCE_EN;
+
+		if (DISPLAY_VER(i915) < 6)
+			dpfc_ctl |= params->fence_id;
+	}
+
+	return dpfc_ctl;
+}
+
 static void g4x_fbc_activate(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
-	u32 dpfc_ctl;
-
-	dpfc_ctl = DPFC_CTL_PLANE(params->crtc.i9xx_plane) | DPFC_SR_EN;
-
-	dpfc_ctl |= g4x_dpfc_ctl_limit(dev_priv);
-
-	if (params->fence_id >= 0)
-		dpfc_ctl |= DPFC_CTL_FENCE_EN | params->fence_id;
+	const struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
 
 	intel_de_write(dev_priv, DPFC_FENCE_YOFF,
 		       params->fence_y_offset);
 
-	/* enable it... */
-	intel_de_write(dev_priv, DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
+	intel_de_write(dev_priv, DPFC_CONTROL,
+		       DPFC_CTL_EN | g4x_dpfc_ctl(dev_priv));
 }
 
 static void g4x_fbc_deactivate(struct drm_i915_private *dev_priv)
@@ -331,25 +363,15 @@ static void snb_fbc_program_fence(struct drm_i915_private *i915)
 static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
 {
 	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
-	u32 dpfc_ctl;
-
-	dpfc_ctl = DPFC_CTL_PLANE(params->crtc.i9xx_plane);
-
-	dpfc_ctl |= g4x_dpfc_ctl_limit(dev_priv);
-
-	if (params->fence_id >= 0) {
-		dpfc_ctl |= DPFC_CTL_FENCE_EN;
-		if (IS_IRONLAKE(dev_priv))
-			dpfc_ctl |= params->fence_id;
-	}
 
 	if (IS_SANDYBRIDGE(dev_priv))
 		snb_fbc_program_fence(dev_priv);
 
 	intel_de_write(dev_priv, ILK_DPFC_FENCE_YOFF,
 		       params->fence_y_offset);
-	/* enable it... */
-	intel_de_write(dev_priv, ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
+
+	intel_de_write(dev_priv, ILK_DPFC_CONTROL,
+		       DPFC_CTL_EN | g4x_dpfc_ctl(dev_priv));
 }
 
 static void ilk_fbc_deactivate(struct drm_i915_private *dev_priv)
@@ -403,33 +425,37 @@ static void skl_fbc_program_cfb_stride(struct drm_i915_private *i915)
 		     CHICKEN_FBC_STRIDE_MASK, val);
 }
 
+static u32 gen7_dpfc_ctl(struct drm_i915_private *i915)
+{
+	const struct intel_fbc_reg_params *params = &i915->fbc.params;
+	u32 dpfc_ctl;
+
+	dpfc_ctl = g4x_dpfc_ctl_limit(i915);
+
+	if (IS_IVYBRIDGE(i915))
+		dpfc_ctl |= IVB_DPFC_CTL_PLANE(params->crtc.i9xx_plane);
+
+	if (params->fence_id >= 0)
+		dpfc_ctl |= IVB_DPFC_CTL_FENCE_EN;
+
+	if (i915->fbc.false_color)
+		dpfc_ctl |= FBC_CTL_FALSE_COLOR;
+
+	return dpfc_ctl;
+}
+
 static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
-	const struct intel_fbc_reg_params *params = &fbc->params;
-	u32 dpfc_ctl;
-
 	if (DISPLAY_VER(dev_priv) >= 10)
 		glk_fbc_program_cfb_stride(dev_priv);
 	else if (DISPLAY_VER(dev_priv) == 9)
 		skl_fbc_program_cfb_stride(dev_priv);
 
-	dpfc_ctl = 0;
-	if (IS_IVYBRIDGE(dev_priv))
-		dpfc_ctl |= IVB_DPFC_CTL_PLANE(params->crtc.i9xx_plane);
-
-	dpfc_ctl |= g4x_dpfc_ctl_limit(dev_priv);
-
-	if (params->fence_id >= 0)
-		dpfc_ctl |= IVB_DPFC_CTL_FENCE_EN;
-
-	if (dev_priv->fbc.false_color)
-		dpfc_ctl |= FBC_CTL_FALSE_COLOR;
-
 	if (dev_priv->ggtt.num_fences)
 		snb_fbc_program_fence(dev_priv);
 
-	intel_de_write(dev_priv, ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
+	intel_de_write(dev_priv, ILK_DPFC_CONTROL,
+		       DPFC_CTL_EN | gen7_dpfc_ctl(dev_priv));
 }
 
 static bool gen7_fbc_is_compressing(struct drm_i915_private *i915)
-- 
2.32.0

