Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BB74455A3
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79C3D89BCD;
	Thu,  4 Nov 2021 14:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B7289B45
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:46:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231564002"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="231564002"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:45:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="639365023"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 04 Nov 2021 07:45:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:15 +0200
Message-Id: <20211104144520.22605-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/17] drm/i915/fbc: Clean up all register
 defines
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

The FBC register defines are a mess:
- namespace changes between DPFC_, FBC_, and some platform
  specific prefix at a whim
- ilk+ reuses most g4x bits but still has some separate bit
  defines elsewhere
- it's not clear from the defines that the bit defines are
  shared

So let's clean it up:
- both g4x and ilk register share the same defines now
- only defines which conflict have a _PLATFORM suffix, everyone
  else just gets comments to indicate which platforms do what
- namespace is consistent DPFC_ now
- SNB system agent fence registers also get a consistent namespace
- REG_BIT() & co. for everything

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 24 +++----
 drivers/gpu/drm/i915/i915_reg.h          | 85 ++++++++++++------------
 drivers/gpu/drm/i915/intel_pm.c          | 14 ++--
 3 files changed, 62 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1193e86690e5..1c9ada22b4de 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -322,16 +322,16 @@ static u32 g4x_dpfc_ctl(struct drm_i915_private *i915)
 	u32 dpfc_ctl;
 
 	dpfc_ctl = g4x_dpfc_ctl_limit(i915) |
-		DPFC_CTL_PLANE(params->crtc.i9xx_plane);
+		DPFC_CTL_PLANE_G4X(params->crtc.i9xx_plane);
 
 	if (IS_G4X(i915))
-		dpfc_ctl |= DPFC_SR_EN;
+		dpfc_ctl |= DPFC_CTL_SR_EN;
 
 	if (params->fence_id >= 0) {
-		dpfc_ctl |= DPFC_CTL_FENCE_EN;
+		dpfc_ctl |= DPFC_CTL_FENCE_EN_G4X;
 
 		if (DISPLAY_VER(i915) < 6)
-			dpfc_ctl |= params->fence_id;
+			dpfc_ctl |= DPFC_CTL_FENCENO(params->fence_id);
 	}
 
 	return dpfc_ctl;
@@ -416,7 +416,7 @@ static bool ilk_fbc_is_active(struct drm_i915_private *dev_priv)
 
 static bool ilk_fbc_is_compressing(struct drm_i915_private *i915)
 {
-	return intel_de_read(i915, ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
+	return intel_de_read(i915, ILK_DPFC_STATUS) & DPFC_COMP_SEG_MASK;
 }
 
 static void ilk_fbc_program_cfb(struct drm_i915_private *i915)
@@ -441,10 +441,10 @@ static void snb_fbc_program_fence(struct drm_i915_private *i915)
 	u32 ctl = 0;
 
 	if (params->fence_id >= 0)
-		ctl = SNB_CPU_FENCE_ENABLE | params->fence_id;
+		ctl = SNB_DPFC_FENCE_EN | SNB_DPFC_FENCENO(params->fence_id);
 
 	intel_de_write(i915, SNB_DPFC_CTL_SA, ctl);
-	intel_de_write(i915, DPFC_CPU_FENCE_OFFSET, params->fence_y_offset);
+	intel_de_write(i915, SNB_DPFC_CPU_FENCE_OFFSET, params->fence_y_offset);
 }
 
 static void snb_fbc_activate(struct drm_i915_private *dev_priv)
@@ -506,13 +506,13 @@ static u32 ivb_dpfc_ctl(struct drm_i915_private *i915)
 	dpfc_ctl = g4x_dpfc_ctl_limit(i915);
 
 	if (IS_IVYBRIDGE(i915))
-		dpfc_ctl |= IVB_DPFC_CTL_PLANE(params->crtc.i9xx_plane);
+		dpfc_ctl |= DPFC_CTL_PLANE_IVB(params->crtc.i9xx_plane);
 
 	if (params->fence_id >= 0)
-		dpfc_ctl |= IVB_DPFC_CTL_FENCE_EN;
+		dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
 
 	if (i915->fbc.false_color)
-		dpfc_ctl |= FBC_CTL_FALSE_COLOR;
+		dpfc_ctl |= DPFC_CTL_FALSE_COLOR;
 
 	return dpfc_ctl;
 }
@@ -533,14 +533,14 @@ static void ivb_fbc_activate(struct drm_i915_private *dev_priv)
 
 static bool ivb_fbc_is_compressing(struct drm_i915_private *i915)
 {
-	return intel_de_read(i915, IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
+	return intel_de_read(i915, ILK_DPFC_STATUS2) & DPFC_COMP_SEG_MASK_IVB;
 }
 
 static void ivb_fbc_set_false_color(struct drm_i915_private *i915,
 				    bool enable)
 {
 	intel_de_rmw(i915, ILK_DPFC_CONTROL,
-		     FBC_CTL_FALSE_COLOR, enable ? FBC_CTL_FALSE_COLOR : 0);
+		     DPFC_CTL_FALSE_COLOR, enable ? DPFC_CTL_FALSE_COLOR : 0);
 }
 
 static const struct intel_fbc_funcs ivb_fbc_funcs = {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1e99fe8dc253..d937958e7a6b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3345,56 +3345,55 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 /* Framebuffer compression for GM45+ */
 #define DPFC_CB_BASE		_MMIO(0x3200)
+#define ILK_DPFC_CB_BASE	_MMIO(0x43200)
 #define DPFC_CONTROL		_MMIO(0x3208)
-#define   DPFC_CTL_EN		(1 << 31)
-#define   DPFC_CTL_PLANE(plane)	((plane) << 30)
-#define   IVB_DPFC_CTL_PLANE(plane)	((plane) << 29)
-#define   DPFC_CTL_FENCE_EN	(1 << 29)
-#define   IVB_DPFC_CTL_FENCE_EN	(1 << 28)
-#define   DPFC_CTL_PERSISTENT_MODE	(1 << 25)
-#define   DPFC_SR_EN		(1 << 10)
-#define   DPFC_CTL_LIMIT_1X	(0 << 6)
-#define   DPFC_CTL_LIMIT_2X	(1 << 6)
-#define   DPFC_CTL_LIMIT_4X	(2 << 6)
+#define ILK_DPFC_CONTROL	_MMIO(0x43208)
+#define   DPFC_CTL_EN				REG_BIT(31)
+#define   DPFC_CTL_PLANE_MASK_G4X		REG_BIT(30) /* g4x-snb */
+#define   DPFC_CTL_PLANE_G4X(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_G4X, (i9xx_plane))
+#define   DPFC_CTL_FENCE_EN_G4X			REG_BIT(29) /* g4x-snb */
+#define   DPFC_CTL_PLANE_MASK_IVB		REG_GENMASK(30, 29) /* ivb only */
+#define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
+#define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
+#define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
+#define   DPFC_CTL_FALSE_COLOR			REG_BIT(10) /* ivb+ */
+#define   DPFC_CTL_SR_EN			REG_BIT(10) /* g4x only */
+#define   DPFC_CTL_SR_EXIT_DIS			REG_BIT(9) /* g4x only */
+#define   DPFC_CTL_LIMIT_MASK			REG_GENMASK(7, 6)
+#define   DPFC_CTL_LIMIT_1X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 0)
+#define   DPFC_CTL_LIMIT_2X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 1)
+#define   DPFC_CTL_LIMIT_4X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 2)
+#define   DPFC_CTL_FENCENO_MASK			REG_GENMASK(3, 0)
+#define   DPFC_CTL_FENCENO(fence)		REG_FIELD_PREP(DPFC_CTL_FENCENO_MASK, (fence))
 #define DPFC_RECOMP_CTL		_MMIO(0x320c)
-#define   DPFC_RECOMP_STALL_EN	(1 << 27)
-#define   DPFC_RECOMP_STALL_WM_SHIFT (16)
-#define   DPFC_RECOMP_STALL_WM_MASK (0x07ff0000)
-#define   DPFC_RECOMP_TIMER_COUNT_SHIFT (0)
-#define   DPFC_RECOMP_TIMER_COUNT_MASK (0x0000003f)
+#define ILK_DPFC_RECOMP_CTL	_MMIO(0x4320c)
+#define   DPFC_RECOMP_STALL_EN			REG_BIT(27)
+#define   DPFC_RECOMP_STALL_WM_MASK		REG_GENMASK(26, 16)
+#define   DPFC_RECOMP_TIMER_COUNT_MASK		REG_GENMASK(5, 0)
 #define DPFC_STATUS		_MMIO(0x3210)
-#define   DPFC_INVAL_SEG_SHIFT  (16)
-#define   DPFC_INVAL_SEG_MASK	(0x07ff0000)
-#define   DPFC_COMP_SEG_SHIFT	(0)
-#define   DPFC_COMP_SEG_MASK	(0x000007ff)
+#define ILK_DPFC_STATUS		_MMIO(0x43210)
+#define   DPFC_INVAL_SEG_MASK			REG_GENMASK(26, 16)
+#define   DPFC_COMP_SEG_MASK			REG_GENMASK(10, 0)
 #define DPFC_STATUS2		_MMIO(0x3214)
+#define ILK_DPFC_STATUS2		_MMIO(0x43214)
+#define   DPFC_COMP_SEG_MASK_IVB		REG_GENMASK(11, 0)
 #define DPFC_FENCE_YOFF		_MMIO(0x3218)
-#define DPFC_CHICKEN		_MMIO(0x3224)
-#define   DPFC_HT_MODIFY	(1 << 31)
-
-/* Framebuffer compression for Ironlake */
-#define ILK_DPFC_CB_BASE	_MMIO(0x43200)
-#define ILK_DPFC_CONTROL	_MMIO(0x43208)
-#define   FBC_CTL_FALSE_COLOR	(1 << 10)
-/* The bit 28-8 is reserved */
-#define   DPFC_RESERVED		(0x1FFFFF00)
-#define ILK_DPFC_RECOMP_CTL	_MMIO(0x4320c)
-#define ILK_DPFC_STATUS		_MMIO(0x43210)
-#define  ILK_DPFC_COMP_SEG_MASK	0x7ff
-#define IVB_FBC_STATUS2		_MMIO(0x43214)
-#define  IVB_FBC_COMP_SEG_MASK	0xfff
 #define ILK_DPFC_FENCE_YOFF	_MMIO(0x43218)
+#define DPFC_CHICKEN		_MMIO(0x3224)
 #define ILK_DPFC_CHICKEN	_MMIO(0x43224)
-#define   ILK_DPFC_DISABLE_DUMMY0 (1 << 8)
-#define   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL	(1 << 14)
-#define   ILK_DPFC_NUKE_ON_ANY_MODIFICATION	(1 << 23)
+#define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
+#define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
+#define   DPFC_CHICKEN_COMP_DUMMY_PIXEL		REG_BIT(14) /* glk+ */
+#define   DPFC_DISABLE_DUMMY0			REG_BIT(8) /* ivb+ */
+
 #define GLK_FBC_STRIDE		_MMIO(0x43228)
 #define   FBC_STRIDE_OVERRIDE	REG_BIT(15)
 #define   FBC_STRIDE_MASK	REG_GENMASK(14, 0)
 #define   FBC_STRIDE(x)		REG_FIELD_PREP(FBC_STRIDE_MASK, (x))
+
 #define ILK_FBC_RT_BASE		_MMIO(0x2128)
-#define   ILK_FBC_RT_VALID	(1 << 0)
-#define   SNB_FBC_FRONT_BUFFER	(1 << 1)
+#define   ILK_FBC_RT_VALID	REG_BIT(0)
+#define   SNB_FBC_FRONT_BUFFER	REG_BIT(1)
 
 #define ILK_DISPLAY_CHICKEN1	_MMIO(0x42000)
 #define   ILK_FBCQ_DIS		(1 << 22)
@@ -3418,8 +3417,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
  * The following two registers are of type GTTMMADR
  */
 #define SNB_DPFC_CTL_SA		_MMIO(0x100100)
-#define   SNB_CPU_FENCE_ENABLE	(1 << 29)
-#define DPFC_CPU_FENCE_OFFSET	_MMIO(0x100104)
+#define   SNB_DPFC_FENCE_EN		REG_BIT(29)
+#define   SNB_DPFC_FENCENO_MASK		REG_GENMASK(4, 0)
+#define   SNB_DPFC_FENCENO(fence)	REG_FIELD_PREP(SNB_DPFC_FENCENO_MASK, (fence))
+#define SNB_DPFC_CPU_FENCE_OFFSET	_MMIO(0x100104)
 
 /* Framebuffer compression for Ivybridge */
 #define IVB_FBC_RT_BASE			_MMIO(0x7020)
@@ -3429,8 +3430,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   IPS_ENABLE	(1 << 31)
 
 #define MSG_FBC_REND_STATE	_MMIO(0x50380)
-#define   FBC_REND_NUKE		(1 << 2)
-#define   FBC_REND_CACHE_CLEAN	(1 << 1)
+#define   FBC_REND_NUKE			REG_BIT(2)
+#define   FBC_REND_CACHE_CLEAN			REG_BIT(1)
 
 /*
  * GPIO regs
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 59adf0ce6719..a64f3b195448 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -161,7 +161,7 @@ static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * Display WA #0883: bxt
 	 */
 	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
-		   ILK_DPFC_DISABLE_DUMMY0);
+		   DPFC_DISABLE_DUMMY0);
 }
 
 static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -7435,7 +7435,7 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	/* Wa_1409120013:icl,ehl */
 	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
-		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
+		   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
 	/*Wa_14010594013:icl, ehl */
 	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
@@ -7448,7 +7448,7 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
 	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
 	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv))
 		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
-				   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
+				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
 	/* Wa_1409825376:tgl (pre-prod)*/
 	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
@@ -7510,7 +7510,7 @@ static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * Display WA #0873: cfl
 	 */
 	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
-		   ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
+		   DPFC_NUKE_ON_ANY_MODIFICATION);
 }
 
 static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -7543,7 +7543,7 @@ static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * Display WA #0873: kbl
 	 */
 	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
-		   ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
+		   DPFC_NUKE_ON_ANY_MODIFICATION);
 }
 
 static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -7570,14 +7570,14 @@ static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * Display WA #0873: skl
 	 */
 	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
-		   ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
+		   DPFC_NUKE_ON_ANY_MODIFICATION);
 
 	/*
 	 * WaFbcHighMemBwCorruptionAvoidance:skl
 	 * Display WA #0883: skl
 	 */
 	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
-		   ILK_DPFC_DISABLE_DUMMY0);
+		   DPFC_DISABLE_DUMMY0);
 }
 
 static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.32.0

