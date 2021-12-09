Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA2E46F2E6
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 19:21:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D09010E1C7;
	Thu,  9 Dec 2021 18:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4305D10E1C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 18:21:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="324437919"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="324437919"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 10:21:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="601653271"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 09 Dec 2021 10:21:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 20:21:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 20:21:07 +0200
Message-Id: <20211209182109.29786-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211209182109.29786-1-ville.syrjala@linux.intel.com>
References: <20211209182109.29786-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/fbc: Parametrize FBC register
 offsets
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

Parametrize ilk+ FBC register offsets based on the FBC instance.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 34 +++++++++++++-----------
 drivers/gpu/drm/i915/display/intel_fbc.h |  6 +++++
 drivers/gpu/drm/i915/i915_reg.h          | 34 ++++++++++++------------
 drivers/gpu/drm/i915/intel_pm.c          | 31 ++++++++++++---------
 4 files changed, 60 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 8be01b93015f..8376f819071e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -85,6 +85,8 @@ struct intel_fbc {
 	struct drm_mm_node compressed_fb;
 	struct drm_mm_node compressed_llb;
 
+	enum fbc_id id;
+
 	u8 limit;
 
 	bool false_color;
@@ -454,10 +456,10 @@ static void ilk_fbc_activate(struct intel_fbc *fbc)
 	struct intel_fbc_state *fbc_state = &fbc->state;
 	struct drm_i915_private *i915 = fbc->i915;
 
-	intel_de_write(i915, ILK_DPFC_FENCE_YOFF,
+	intel_de_write(i915, ILK_DPFC_FENCE_YOFF(fbc->id),
 		       fbc_state->fence_y_offset);
 
-	intel_de_write(i915, ILK_DPFC_CONTROL,
+	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
 		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
 }
 
@@ -467,28 +469,28 @@ static void ilk_fbc_deactivate(struct intel_fbc *fbc)
 	u32 dpfc_ctl;
 
 	/* Disable compression */
-	dpfc_ctl = intel_de_read(i915, ILK_DPFC_CONTROL);
+	dpfc_ctl = intel_de_read(i915, ILK_DPFC_CONTROL(fbc->id));
 	if (dpfc_ctl & DPFC_CTL_EN) {
 		dpfc_ctl &= ~DPFC_CTL_EN;
-		intel_de_write(i915, ILK_DPFC_CONTROL, dpfc_ctl);
+		intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
 	}
 }
 
 static bool ilk_fbc_is_active(struct intel_fbc *fbc)
 {
-	return intel_de_read(fbc->i915, ILK_DPFC_CONTROL) & DPFC_CTL_EN;
+	return intel_de_read(fbc->i915, ILK_DPFC_CONTROL(fbc->id)) & DPFC_CTL_EN;
 }
 
 static bool ilk_fbc_is_compressing(struct intel_fbc *fbc)
 {
-	return intel_de_read(fbc->i915, ILK_DPFC_STATUS) & DPFC_COMP_SEG_MASK;
+	return intel_de_read(fbc->i915, ILK_DPFC_STATUS(fbc->id)) & DPFC_COMP_SEG_MASK;
 }
 
 static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
 
-	intel_de_write(i915, ILK_DPFC_CB_BASE, fbc->compressed_fb.start);
+	intel_de_write(i915, ILK_DPFC_CB_BASE(fbc->id), fbc->compressed_fb.start);
 }
 
 static const struct intel_fbc_funcs ilk_fbc_funcs = {
@@ -524,8 +526,8 @@ static void snb_fbc_nuke(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
 
-	intel_de_write(i915, MSG_FBC_REND_STATE, FBC_REND_NUKE);
-	intel_de_posting_read(i915, MSG_FBC_REND_STATE);
+	intel_de_write(i915, MSG_FBC_REND_STATE(fbc->id), FBC_REND_NUKE);
+	intel_de_posting_read(i915, MSG_FBC_REND_STATE(fbc->id));
 }
 
 static const struct intel_fbc_funcs snb_fbc_funcs = {
@@ -547,7 +549,7 @@ static void glk_fbc_program_cfb_stride(struct intel_fbc *fbc)
 		val |= FBC_STRIDE_OVERRIDE |
 			FBC_STRIDE(fbc_state->override_cfb_stride / fbc->limit);
 
-	intel_de_write(i915, GLK_FBC_STRIDE, val);
+	intel_de_write(i915, GLK_FBC_STRIDE(fbc->id), val);
 }
 
 static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
@@ -598,19 +600,19 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
 	if (i915->ggtt.num_fences)
 		snb_fbc_program_fence(fbc);
 
-	intel_de_write(i915, ILK_DPFC_CONTROL,
+	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
 		       DPFC_CTL_EN | ivb_dpfc_ctl(fbc));
 }
 
 static bool ivb_fbc_is_compressing(struct intel_fbc *fbc)
 {
-	return intel_de_read(fbc->i915, ILK_DPFC_STATUS2) & DPFC_COMP_SEG_MASK_IVB;
+	return intel_de_read(fbc->i915, ILK_DPFC_STATUS2(fbc->id)) & DPFC_COMP_SEG_MASK_IVB;
 }
 
 static void ivb_fbc_set_false_color(struct intel_fbc *fbc,
 				    bool enable)
 {
-	intel_de_rmw(fbc->i915, ILK_DPFC_CONTROL,
+	intel_de_rmw(fbc->i915, ILK_DPFC_CONTROL(fbc->id),
 		     DPFC_CTL_FALSE_COLOR, enable ? DPFC_CTL_FALSE_COLOR : 0);
 }
 
@@ -1620,7 +1622,8 @@ void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane)
 	fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
 }
 
-static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915)
+static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915,
+					  enum fbc_id fbc_id)
 {
 	struct intel_fbc *fbc;
 
@@ -1628,6 +1631,7 @@ static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915)
 	if (!fbc)
 		return NULL;
 
+	fbc->id = fbc_id;
 	fbc->i915 = i915;
 	INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
 	mutex_init(&fbc->lock);
@@ -1671,7 +1675,7 @@ void intel_fbc_init(struct drm_i915_private *i915)
 	if (!HAS_FBC(i915))
 		return;
 
-	fbc = intel_fbc_create(i915);
+	fbc = intel_fbc_create(i915, FBC_A);
 	if (!fbc)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index b8d9cda85cfc..6ea269866aeb 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -18,6 +18,12 @@ struct intel_fbc;
 struct intel_plane;
 struct intel_plane_state;
 
+enum fbc_id {
+	FBC_A,
+
+	I915_MAX_FBCS,
+};
+
 int intel_fbc_atomic_check(struct intel_atomic_state *state);
 bool intel_fbc_pre_update(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d27ba273cc68..698a023e70f5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3386,10 +3386,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define FBC_LL_SIZE		(1536)
 
 /* Framebuffer compression for GM45+ */
-#define DPFC_CB_BASE		_MMIO(0x3200)
-#define ILK_DPFC_CB_BASE	_MMIO(0x43200)
-#define DPFC_CONTROL		_MMIO(0x3208)
-#define ILK_DPFC_CONTROL	_MMIO(0x43208)
+#define DPFC_CB_BASE			_MMIO(0x3200)
+#define ILK_DPFC_CB_BASE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43200, 0x43240)
+#define DPFC_CONTROL			_MMIO(0x3208)
+#define ILK_DPFC_CONTROL(fbc_id)	_MMIO_PIPE((fbc_id), 0x43208, 0x43248)
 #define   DPFC_CTL_EN				REG_BIT(31)
 #define   DPFC_CTL_PLANE_MASK_G4X		REG_BIT(30) /* g4x-snb */
 #define   DPFC_CTL_PLANE_G4X(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_G4X, (i9xx_plane))
@@ -3407,28 +3407,28 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   DPFC_CTL_LIMIT_4X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 2)
 #define   DPFC_CTL_FENCENO_MASK			REG_GENMASK(3, 0)
 #define   DPFC_CTL_FENCENO(fence)		REG_FIELD_PREP(DPFC_CTL_FENCENO_MASK, (fence))
-#define DPFC_RECOMP_CTL		_MMIO(0x320c)
-#define ILK_DPFC_RECOMP_CTL	_MMIO(0x4320c)
+#define DPFC_RECOMP_CTL			_MMIO(0x320c)
+#define ILK_DPFC_RECOMP_CTL(fbc_id)	_MMIO_PIPE((fbc_id), 0x4320c, 0x4324c)
 #define   DPFC_RECOMP_STALL_EN			REG_BIT(27)
 #define   DPFC_RECOMP_STALL_WM_MASK		REG_GENMASK(26, 16)
 #define   DPFC_RECOMP_TIMER_COUNT_MASK		REG_GENMASK(5, 0)
-#define DPFC_STATUS		_MMIO(0x3210)
-#define ILK_DPFC_STATUS		_MMIO(0x43210)
+#define DPFC_STATUS			_MMIO(0x3210)
+#define ILK_DPFC_STATUS(fbc_id)		_MMIO_PIPE((fbc_id), 0x43210, 0x43250)
 #define   DPFC_INVAL_SEG_MASK			REG_GENMASK(26, 16)
 #define   DPFC_COMP_SEG_MASK			REG_GENMASK(10, 0)
-#define DPFC_STATUS2		_MMIO(0x3214)
-#define ILK_DPFC_STATUS2		_MMIO(0x43214)
+#define DPFC_STATUS2			_MMIO(0x3214)
+#define ILK_DPFC_STATUS2(fbc_id)	_MMIO_PIPE((fbc_id), 0x43214, 0x43254)
 #define   DPFC_COMP_SEG_MASK_IVB		REG_GENMASK(11, 0)
-#define DPFC_FENCE_YOFF		_MMIO(0x3218)
-#define ILK_DPFC_FENCE_YOFF	_MMIO(0x43218)
-#define DPFC_CHICKEN		_MMIO(0x3224)
-#define ILK_DPFC_CHICKEN	_MMIO(0x43224)
+#define DPFC_FENCE_YOFF			_MMIO(0x3218)
+#define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
+#define DPFC_CHICKEN			_MMIO(0x3224)
+#define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
 #define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
 #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
 #define   DPFC_CHICKEN_COMP_DUMMY_PIXEL		REG_BIT(14) /* glk+ */
 #define   DPFC_DISABLE_DUMMY0			REG_BIT(8) /* ivb+ */
 
-#define GLK_FBC_STRIDE		_MMIO(0x43228)
+#define GLK_FBC_STRIDE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43228, 0x43268)
 #define   FBC_STRIDE_OVERRIDE	REG_BIT(15)
 #define   FBC_STRIDE_MASK	REG_GENMASK(14, 0)
 #define   FBC_STRIDE(x)		REG_FIELD_PREP(FBC_STRIDE_MASK, (x))
@@ -3471,9 +3471,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define IPS_CTL		_MMIO(0x43408)
 #define   IPS_ENABLE	(1 << 31)
 
-#define MSG_FBC_REND_STATE	_MMIO(0x50380)
+#define MSG_FBC_REND_STATE(fbc_id)	_MMIO_PIPE((fbc_id), 0x50380, 0x50384)
 #define   FBC_REND_NUKE			REG_BIT(2)
-#define   FBC_REND_CACHE_CLEAN			REG_BIT(1)
+#define   FBC_REND_CACHE_CLEAN		REG_BIT(1)
 
 /*
  * GPIO regs
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 434b1f8b7fe3..ac285b3e179b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -160,8 +160,9 @@ static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * WaFbcHighMemBwCorruptionAvoidance:bxt
 	 * Display WA #0883: bxt
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
-		   DPFC_DISABLE_DUMMY0);
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A),
+			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A)) |
+			   DPFC_DISABLE_DUMMY0);
 }
 
 static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -7451,8 +7452,8 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
 static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	/* Wa_1409120013:icl,ehl */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
-		   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A),
+			   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
 	/*Wa_14010594013:icl, ehl */
 	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
@@ -7464,7 +7465,7 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
 	/* Wa_1409120013:tgl,rkl,adl-s,dg1,dg2 */
 	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
 	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv) || IS_DG2(dev_priv))
-		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
+		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A),
 				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
 	/* Wa_1409825376:tgl (pre-prod)*/
@@ -7549,8 +7550,9 @@ static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * WaFbcNukeOnHostModify:cfl
 	 * Display WA #0873: cfl
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
-		   DPFC_NUKE_ON_ANY_MODIFICATION);
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A),
+			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A)) |
+			   DPFC_NUKE_ON_ANY_MODIFICATION);
 }
 
 static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -7582,8 +7584,9 @@ static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * WaFbcNukeOnHostModify:kbl
 	 * Display WA #0873: kbl
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
-		   DPFC_NUKE_ON_ANY_MODIFICATION);
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A),
+			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A)) |
+			   DPFC_NUKE_ON_ANY_MODIFICATION);
 }
 
 static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -7609,15 +7612,17 @@ static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * WaFbcNukeOnHostModify:skl
 	 * Display WA #0873: skl
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
-		   DPFC_NUKE_ON_ANY_MODIFICATION);
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A),
+			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A)) |
+			   DPFC_NUKE_ON_ANY_MODIFICATION);
 
 	/*
 	 * WaFbcHighMemBwCorruptionAvoidance:skl
 	 * Display WA #0883: skl
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
-		   DPFC_DISABLE_DUMMY0);
+	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A),
+			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(FBC_A)) |
+			   DPFC_DISABLE_DUMMY0);
 }
 
 static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.32.0

