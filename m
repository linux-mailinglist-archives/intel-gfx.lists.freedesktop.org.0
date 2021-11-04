Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A50544559E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:45:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09356E4F4;
	Thu,  4 Nov 2021 14:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E906E4D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:45:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231964930"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="231964930"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:45:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="468484852"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 04 Nov 2021 07:45:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:10 +0200
Message-Id: <20211104144520.22605-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/17] drm/i915/fbc: Introduce .nuke() vfunc
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

Eliminate yet another if-ladder by adding .nuke() vfunc.

We also rename all *_recompress() stuff to *_nuke() since
that's the terminology the spec uses. Also "recompress"
is a bit confusing by perhaps implying that this triggers
an immediate recompression. Depending on the hardware that
may definitely not be the case, and in general we don't
specifically know when the hardware decides to compress.
So all we do is "nuke" the current compressed framebuffer
and leave it up to the hardware to recompress later if it
so chooses.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 145 +++++++++++++----------
 1 file changed, 84 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a2e09b6d21c7..be89404840d2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -53,6 +53,7 @@ struct intel_fbc_funcs {
 	void (*deactivate)(struct drm_i915_private *i915);
 	bool (*is_active)(struct drm_i915_private *i915);
 	bool (*is_compressing)(struct drm_i915_private *i915);
+	void (*nuke)(struct drm_i915_private *i915);
 };
 
 /*
@@ -243,11 +244,42 @@ static bool i8xx_fbc_is_compressing(struct drm_i915_private *i915)
 		(FBC_STAT_COMPRESSING | FBC_STAT_COMPRESSED);
 }
 
+static void i8xx_fbc_nuke(struct drm_i915_private *dev_priv)
+{
+	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
+	enum i9xx_plane_id i9xx_plane = params->crtc.i9xx_plane;
+
+	spin_lock_irq(&dev_priv->uncore.lock);
+	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
+			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
+	spin_unlock_irq(&dev_priv->uncore.lock);
+}
+
 static const struct intel_fbc_funcs i8xx_fbc_funcs = {
 	.activate = i8xx_fbc_activate,
 	.deactivate = i8xx_fbc_deactivate,
 	.is_active = i8xx_fbc_is_active,
 	.is_compressing = i8xx_fbc_is_compressing,
+	.nuke = i8xx_fbc_nuke,
+};
+
+static void i965_fbc_nuke(struct drm_i915_private *dev_priv)
+{
+	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
+	enum i9xx_plane_id i9xx_plane = params->crtc.i9xx_plane;
+
+	spin_lock_irq(&dev_priv->uncore.lock);
+	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
+			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
+	spin_unlock_irq(&dev_priv->uncore.lock);
+}
+
+static const struct intel_fbc_funcs i965_fbc_funcs = {
+	.activate = i8xx_fbc_activate,
+	.deactivate = i8xx_fbc_deactivate,
+	.is_active = i8xx_fbc_is_active,
+	.is_compressing = i8xx_fbc_is_compressing,
+	.nuke = i965_fbc_nuke,
 };
 
 static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *i915)
@@ -324,70 +356,13 @@ static const struct intel_fbc_funcs g4x_fbc_funcs = {
 	.deactivate = g4x_fbc_deactivate,
 	.is_active = g4x_fbc_is_active,
 	.is_compressing = g4x_fbc_is_compressing,
+	.nuke = i965_fbc_nuke,
 };
 
-static void i8xx_fbc_recompress(struct drm_i915_private *dev_priv)
-{
-	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
-	enum i9xx_plane_id i9xx_plane = params->crtc.i9xx_plane;
-
-	spin_lock_irq(&dev_priv->uncore.lock);
-	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
-			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
-	spin_unlock_irq(&dev_priv->uncore.lock);
-}
-
-static void i965_fbc_recompress(struct drm_i915_private *dev_priv)
-{
-	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
-	enum i9xx_plane_id i9xx_plane = params->crtc.i9xx_plane;
-
-	spin_lock_irq(&dev_priv->uncore.lock);
-	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
-			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
-	spin_unlock_irq(&dev_priv->uncore.lock);
-}
-
-/* This function forces a CFB recompression through the nuke operation. */
-static void snb_fbc_recompress(struct drm_i915_private *dev_priv)
-{
-	intel_de_write(dev_priv, MSG_FBC_REND_STATE, FBC_REND_NUKE);
-	intel_de_posting_read(dev_priv, MSG_FBC_REND_STATE);
-}
-
-static void intel_fbc_recompress(struct drm_i915_private *dev_priv)
-{
-	struct intel_fbc *fbc = &dev_priv->fbc;
-
-	trace_intel_fbc_nuke(fbc->crtc);
-
-	if (DISPLAY_VER(dev_priv) >= 6)
-		snb_fbc_recompress(dev_priv);
-	else if (DISPLAY_VER(dev_priv) >= 4)
-		i965_fbc_recompress(dev_priv);
-	else
-		i8xx_fbc_recompress(dev_priv);
-}
-
-static void snb_fbc_program_fence(struct drm_i915_private *i915)
-{
-	const struct intel_fbc_reg_params *params = &i915->fbc.params;
-	u32 ctl = 0;
-
-	if (params->fence_id >= 0)
-		ctl = SNB_CPU_FENCE_ENABLE | params->fence_id;
-
-	intel_de_write(i915, SNB_DPFC_CTL_SA, ctl);
-	intel_de_write(i915, DPFC_CPU_FENCE_OFFSET, params->fence_y_offset);
-}
-
 static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
 {
 	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
 
-	if (IS_SANDYBRIDGE(dev_priv))
-		snb_fbc_program_fence(dev_priv);
-
 	intel_de_write(dev_priv, ILK_DPFC_FENCE_YOFF,
 		       params->fence_y_offset);
 
@@ -422,6 +397,40 @@ static const struct intel_fbc_funcs ilk_fbc_funcs = {
 	.deactivate = ilk_fbc_deactivate,
 	.is_active = ilk_fbc_is_active,
 	.is_compressing = ilk_fbc_is_compressing,
+	.nuke = i965_fbc_nuke,
+};
+
+static void snb_fbc_program_fence(struct drm_i915_private *i915)
+{
+	const struct intel_fbc_reg_params *params = &i915->fbc.params;
+	u32 ctl = 0;
+
+	if (params->fence_id >= 0)
+		ctl = SNB_CPU_FENCE_ENABLE | params->fence_id;
+
+	intel_de_write(i915, SNB_DPFC_CTL_SA, ctl);
+	intel_de_write(i915, DPFC_CPU_FENCE_OFFSET, params->fence_y_offset);
+}
+
+static void snb_fbc_activate(struct drm_i915_private *dev_priv)
+{
+	snb_fbc_program_fence(dev_priv);
+
+	ilk_fbc_activate(dev_priv);
+}
+
+static void snb_fbc_nuke(struct drm_i915_private *dev_priv)
+{
+	intel_de_write(dev_priv, MSG_FBC_REND_STATE, FBC_REND_NUKE);
+	intel_de_posting_read(dev_priv, MSG_FBC_REND_STATE);
+}
+
+static const struct intel_fbc_funcs snb_fbc_funcs = {
+	.activate = snb_fbc_activate,
+	.deactivate = ilk_fbc_deactivate,
+	.is_active = ilk_fbc_is_active,
+	.is_compressing = ilk_fbc_is_compressing,
+	.nuke = snb_fbc_nuke,
 };
 
 static void glk_fbc_program_cfb_stride(struct drm_i915_private *i915)
@@ -499,6 +508,7 @@ static const struct intel_fbc_funcs gen7_fbc_funcs = {
 	.deactivate = ilk_fbc_deactivate,
 	.is_active = ilk_fbc_is_active,
 	.is_compressing = gen7_fbc_is_compressing,
+	.nuke = snb_fbc_nuke,
 };
 
 static bool intel_fbc_hw_is_active(struct drm_i915_private *dev_priv)
@@ -538,6 +548,15 @@ bool intel_fbc_is_compressing(struct drm_i915_private *i915)
 	return fbc->funcs->is_compressing(i915);
 }
 
+static void intel_fbc_nuke(struct drm_i915_private *i915)
+{
+	struct intel_fbc *fbc = &i915->fbc;
+
+	trace_intel_fbc_nuke(fbc->crtc);
+
+	fbc->funcs->nuke(i915);
+}
+
 /**
  * intel_fbc_is_active - Is FBC active?
  * @dev_priv: i915 device instance
@@ -555,7 +574,7 @@ bool intel_fbc_is_active(struct drm_i915_private *dev_priv)
 static void intel_fbc_activate(struct drm_i915_private *dev_priv)
 {
 	intel_fbc_hw_activate(dev_priv);
-	intel_fbc_recompress(dev_priv);
+	intel_fbc_nuke(dev_priv);
 }
 
 static void intel_fbc_deactivate(struct drm_i915_private *dev_priv,
@@ -1318,7 +1337,7 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
 	if (!fbc->busy_bits && fbc->crtc &&
 	    (frontbuffer_bits & intel_fbc_get_frontbuffer_bit(fbc))) {
 		if (fbc->active)
-			intel_fbc_recompress(dev_priv);
+			intel_fbc_nuke(dev_priv);
 		else if (!fbc->flip_pending)
 			__intel_fbc_post_update(fbc->crtc);
 	}
@@ -1667,10 +1686,14 @@ void intel_fbc_init(struct drm_i915_private *dev_priv)
 
 	if (DISPLAY_VER(dev_priv) >= 7)
 		fbc->funcs = &gen7_fbc_funcs;
-	else if (DISPLAY_VER(dev_priv) >= 5)
+	else if (DISPLAY_VER(dev_priv) == 6)
+		fbc->funcs = &snb_fbc_funcs;
+	else if (DISPLAY_VER(dev_priv) == 5)
 		fbc->funcs = &ilk_fbc_funcs;
 	else if (IS_G4X(dev_priv))
 		fbc->funcs = &g4x_fbc_funcs;
+	else if (DISPLAY_VER(dev_priv) == 4)
+		fbc->funcs = &i965_fbc_funcs;
 	else
 		fbc->funcs = &i8xx_fbc_funcs;
 
-- 
2.32.0

