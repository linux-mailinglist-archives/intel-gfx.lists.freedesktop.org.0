Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEC444559D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4D96E4AF;
	Thu,  4 Nov 2021 14:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 662316E4AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:45:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="218618369"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="218618369"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:45:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="532287757"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 04 Nov 2021 07:45:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:09 +0200
Message-Id: <20211104144520.22605-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/17] drm/i915/fbc: Introduce intel_fbc_funcs
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

Replace the "if-ladders everywhere" approach with vfuncs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 80 +++++++++++++++---------
 drivers/gpu/drm/i915/i915_drv.h          |  3 +
 2 files changed, 55 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index fbb96f6aaacd..a2e09b6d21c7 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -48,6 +48,13 @@
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
 
+struct intel_fbc_funcs {
+	void (*activate)(struct drm_i915_private *i915);
+	void (*deactivate)(struct drm_i915_private *i915);
+	bool (*is_active)(struct drm_i915_private *i915);
+	bool (*is_compressing)(struct drm_i915_private *i915);
+};
+
 /*
  * For SKL+, the plane source size used by the hardware is based on the value we
  * write to the PLANE_SIZE register. For BDW-, the hardware looks at the value
@@ -236,6 +243,13 @@ static bool i8xx_fbc_is_compressing(struct drm_i915_private *i915)
 		(FBC_STAT_COMPRESSING | FBC_STAT_COMPRESSED);
 }
 
+static const struct intel_fbc_funcs i8xx_fbc_funcs = {
+	.activate = i8xx_fbc_activate,
+	.deactivate = i8xx_fbc_deactivate,
+	.is_active = i8xx_fbc_is_active,
+	.is_compressing = i8xx_fbc_is_compressing,
+};
+
 static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *i915)
 {
 	switch (i915->fbc.limit) {
@@ -305,6 +319,13 @@ static bool g4x_fbc_is_compressing(struct drm_i915_private *i915)
 	return intel_de_read(i915, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
 }
 
+static const struct intel_fbc_funcs g4x_fbc_funcs = {
+	.activate = g4x_fbc_activate,
+	.deactivate = g4x_fbc_deactivate,
+	.is_active = g4x_fbc_is_active,
+	.is_compressing = g4x_fbc_is_compressing,
+};
+
 static void i8xx_fbc_recompress(struct drm_i915_private *dev_priv)
 {
 	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
@@ -396,6 +417,13 @@ static bool ilk_fbc_is_compressing(struct drm_i915_private *i915)
 	return intel_de_read(i915, ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
 }
 
+static const struct intel_fbc_funcs ilk_fbc_funcs = {
+	.activate = ilk_fbc_activate,
+	.deactivate = ilk_fbc_deactivate,
+	.is_active = ilk_fbc_is_active,
+	.is_compressing = ilk_fbc_is_compressing,
+};
+
 static void glk_fbc_program_cfb_stride(struct drm_i915_private *i915)
 {
 	struct intel_fbc *fbc = &i915->fbc;
@@ -466,14 +494,18 @@ static bool gen7_fbc_is_compressing(struct drm_i915_private *i915)
 		return intel_de_read(i915, IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
 }
 
+static const struct intel_fbc_funcs gen7_fbc_funcs = {
+	.activate = gen7_fbc_activate,
+	.deactivate = ilk_fbc_deactivate,
+	.is_active = ilk_fbc_is_active,
+	.is_compressing = gen7_fbc_is_compressing,
+};
+
 static bool intel_fbc_hw_is_active(struct drm_i915_private *dev_priv)
 {
-	if (DISPLAY_VER(dev_priv) >= 5)
-		return ilk_fbc_is_active(dev_priv);
-	else if (IS_GM45(dev_priv))
-		return g4x_fbc_is_active(dev_priv);
-	else
-		return i8xx_fbc_is_active(dev_priv);
+	struct intel_fbc *fbc = &dev_priv->fbc;
+
+	return fbc->funcs->is_active(dev_priv);
 }
 
 static void intel_fbc_hw_activate(struct drm_i915_private *dev_priv)
@@ -485,14 +517,7 @@ static void intel_fbc_hw_activate(struct drm_i915_private *dev_priv)
 	fbc->active = true;
 	fbc->activated = true;
 
-	if (DISPLAY_VER(dev_priv) >= 7)
-		gen7_fbc_activate(dev_priv);
-	else if (DISPLAY_VER(dev_priv) >= 5)
-		ilk_fbc_activate(dev_priv);
-	else if (IS_GM45(dev_priv))
-		g4x_fbc_activate(dev_priv);
-	else
-		i8xx_fbc_activate(dev_priv);
+	fbc->funcs->activate(dev_priv);
 }
 
 static void intel_fbc_hw_deactivate(struct drm_i915_private *dev_priv)
@@ -503,24 +528,14 @@ static void intel_fbc_hw_deactivate(struct drm_i915_private *dev_priv)
 
 	fbc->active = false;
 
-	if (DISPLAY_VER(dev_priv) >= 5)
-		ilk_fbc_deactivate(dev_priv);
-	else if (IS_GM45(dev_priv))
-		g4x_fbc_deactivate(dev_priv);
-	else
-		i8xx_fbc_deactivate(dev_priv);
+	fbc->funcs->deactivate(dev_priv);
 }
 
 bool intel_fbc_is_compressing(struct drm_i915_private *i915)
 {
-	if (DISPLAY_VER(i915) >= 7)
-		return gen7_fbc_is_compressing(i915);
-	else if (DISPLAY_VER(i915) >= 5)
-		return ilk_fbc_is_compressing(i915);
-	else if (IS_G4X(i915))
-		return g4x_fbc_is_compressing(i915);
-	else
-		return i8xx_fbc_is_compressing(i915);
+	struct intel_fbc *fbc = &i915->fbc;
+
+	return fbc->funcs->is_compressing(i915);
 }
 
 /**
@@ -1650,6 +1665,15 @@ void intel_fbc_init(struct drm_i915_private *dev_priv)
 		return;
 	}
 
+	if (DISPLAY_VER(dev_priv) >= 7)
+		fbc->funcs = &gen7_fbc_funcs;
+	else if (DISPLAY_VER(dev_priv) >= 5)
+		fbc->funcs = &ilk_fbc_funcs;
+	else if (IS_G4X(dev_priv))
+		fbc->funcs = &g4x_fbc_funcs;
+	else
+		fbc->funcs = &i8xx_fbc_funcs;
+
 	/* We still don't have any sort of hardware state readout for FBC, so
 	 * deactivate it in case the BIOS activated it to make sure software
 	 * matches the hardware state. */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e967cd08f23e..e5d57c2a8506 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -409,10 +409,13 @@ struct drm_i915_display_funcs {
 	void (*commit_modeset_enables)(struct intel_atomic_state *state);
 };
 
+struct intel_fbc_funcs;
 
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
 struct intel_fbc {
+	const struct intel_fbc_funcs *funcs;
+
 	/* This is always the inner lock when overlapping with struct_mutex and
 	 * it's the outer lock when overlapping with stolen_lock. */
 	struct mutex lock;
-- 
2.32.0

