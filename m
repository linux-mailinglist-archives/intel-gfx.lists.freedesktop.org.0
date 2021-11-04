Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 335994455A7
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A42489FBC;
	Thu,  4 Nov 2021 14:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B082789F6F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:46:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="212463261"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="212463261"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:46:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="532287833"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 04 Nov 2021 07:46:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:46:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:19 +0200
Message-Id: <20211104144520.22605-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/17] drm/i915/fbc: Start passing around
 intel_fbc
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

In preparation for multiple FBC instances start passing around
intel_fbc pointers rather than i915 pointers. And once there are
multiple of these we can't rely on container_of() to get back to
the i915, so we toss in a fbc->i915 pointer already.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 379 +++++++++---------
 drivers/gpu/drm/i915/display/intel_fbc.h      |  14 +-
 .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/intel_pm.c               |   2 +-
 7 files changed, 200 insertions(+), 208 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 29392dfc46c8..3be82f075655 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10837,7 +10837,7 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
 	destroy_workqueue(i915->flip_wq);
 	destroy_workqueue(i915->modeset_wq);
 
-	intel_fbc_cleanup_cfb(i915);
+	intel_fbc_cleanup(i915);
 }
 
 /* part #3: call after gem init */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 1a9210739727..3f5a5e1b1c41 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -52,10 +52,10 @@ static int i915_fbc_status(struct seq_file *m, void *unused)
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 	mutex_lock(&fbc->lock);
 
-	if (intel_fbc_is_active(dev_priv)) {
+	if (intel_fbc_is_active(fbc)) {
 		seq_puts(m, "FBC enabled\n");
 		seq_printf(m, "Compressing: %s\n",
-			   yesno(intel_fbc_is_compressing(dev_priv)));
+			   yesno(intel_fbc_is_compressing(fbc)));
 	} else {
 		seq_printf(m, "FBC disabled: %s\n", fbc->no_fbc_reason);
 	}
@@ -79,7 +79,7 @@ static int i915_fbc_false_color_set(void *data, u64 val)
 {
 	struct drm_i915_private *dev_priv = data;
 
-	return intel_fbc_set_false_color(dev_priv, val);
+	return intel_fbc_set_false_color(&dev_priv->fbc, val);
 }
 
 DEFINE_SIMPLE_ATTRIBUTE(i915_fbc_false_color_fops,
@@ -2063,7 +2063,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
 			return ret;
 	}
 
-	ret = intel_fbc_reset_underrun(dev_priv);
+	ret = intel_fbc_reset_underrun(&dev_priv->fbc);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ea3968001c4b..e8235d55e76a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -49,13 +49,13 @@
 #include "intel_frontbuffer.h"
 
 struct intel_fbc_funcs {
-	void (*activate)(struct drm_i915_private *i915);
-	void (*deactivate)(struct drm_i915_private *i915);
-	bool (*is_active)(struct drm_i915_private *i915);
-	bool (*is_compressing)(struct drm_i915_private *i915);
-	void (*nuke)(struct drm_i915_private *i915);
-	void (*program_cfb)(struct drm_i915_private *i915);
-	void (*set_false_color)(struct drm_i915_private *i915, bool enable);
+	void (*activate)(struct intel_fbc *fbc);
+	void (*deactivate)(struct intel_fbc *fbc);
+	bool (*is_active)(struct intel_fbc *fbc);
+	bool (*is_compressing)(struct intel_fbc *fbc);
+	void (*nuke)(struct intel_fbc *fbc);
+	void (*program_cfb)(struct intel_fbc *fbc);
+	void (*set_false_color)(struct intel_fbc *fbc, bool enable);
 };
 
 /*
@@ -94,9 +94,10 @@ static unsigned int _intel_fbc_cfb_stride(const struct intel_fbc_state_cache *ca
 }
 
 /* minimum acceptable cfb stride in bytes, assuming 1:1 compression limit */
-static unsigned int skl_fbc_min_cfb_stride(struct drm_i915_private *i915,
+static unsigned int skl_fbc_min_cfb_stride(struct intel_fbc *fbc,
 					   const struct intel_fbc_state_cache *cache)
 {
+	struct drm_i915_private *i915 = fbc->i915;
 	unsigned int limit = 4; /* 1:4 compression limit is the worst case */
 	unsigned int cpp = 4; /* FBC always 4 bytes per pixel */
 	unsigned int height = 4; /* FBC segment is 4 lines */
@@ -123,9 +124,10 @@ static unsigned int skl_fbc_min_cfb_stride(struct drm_i915_private *i915,
 }
 
 /* properly aligned cfb stride in bytes, assuming 1:1 compression limit */
-static unsigned int intel_fbc_cfb_stride(struct drm_i915_private *i915,
+static unsigned int intel_fbc_cfb_stride(struct intel_fbc *fbc,
 					 const struct intel_fbc_state_cache *cache)
 {
+	struct drm_i915_private *i915 = fbc->i915;
 	unsigned int stride = _intel_fbc_cfb_stride(cache);
 
 	/*
@@ -134,14 +136,15 @@ static unsigned int intel_fbc_cfb_stride(struct drm_i915_private *i915,
 	 * that regardless of the compression limit we choose later.
 	 */
 	if (DISPLAY_VER(i915) >= 9)
-		return max(ALIGN(stride, 512), skl_fbc_min_cfb_stride(i915, cache));
+		return max(ALIGN(stride, 512), skl_fbc_min_cfb_stride(fbc, cache));
 	else
 		return stride;
 }
 
-static unsigned int intel_fbc_cfb_size(struct drm_i915_private *i915,
+static unsigned int intel_fbc_cfb_size(struct intel_fbc *fbc,
 				       const struct intel_fbc_state_cache *cache)
 {
+	struct drm_i915_private *i915 = fbc->i915;
 	int lines = cache->plane.src_h;
 
 	if (DISPLAY_VER(i915) == 7)
@@ -149,13 +152,13 @@ static unsigned int intel_fbc_cfb_size(struct drm_i915_private *i915,
 	else if (DISPLAY_VER(i915) >= 8)
 		lines = min(lines, 2560);
 
-	return lines * intel_fbc_cfb_stride(i915, cache);
+	return lines * intel_fbc_cfb_stride(fbc, cache);
 }
 
-static u32 i8xx_fbc_ctl(struct drm_i915_private *i915)
+static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
 	const struct intel_fbc_reg_params *params = &fbc->params;
+	struct drm_i915_private *i915 = fbc->i915;
 	unsigned int cfb_stride;
 	u32 fbc_ctl;
 
@@ -180,9 +183,9 @@ static u32 i8xx_fbc_ctl(struct drm_i915_private *i915)
 	return fbc_ctl;
 }
 
-static u32 i965_fbc_ctl2(struct drm_i915_private *i915)
+static u32 i965_fbc_ctl2(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &i915->fbc.params;
+	const struct intel_fbc_reg_params *params = &fbc->params;
 	u32 fbc_ctl2;
 
 	fbc_ctl2 = FBC_CTL_FENCE_DBL | FBC_CTL_IDLE_IMM |
@@ -194,8 +197,9 @@ static u32 i965_fbc_ctl2(struct drm_i915_private *i915)
 	return fbc_ctl2;
 }
 
-static void i8xx_fbc_deactivate(struct drm_i915_private *i915)
+static void i8xx_fbc_deactivate(struct intel_fbc *fbc)
 {
+	struct drm_i915_private *i915 = fbc->i915;
 	u32 fbc_ctl;
 
 	/* Disable compression */
@@ -214,10 +218,10 @@ static void i8xx_fbc_deactivate(struct drm_i915_private *i915)
 	}
 }
 
-static void i8xx_fbc_activate(struct drm_i915_private *i915)
+static void i8xx_fbc_activate(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
 	const struct intel_fbc_reg_params *params = &fbc->params;
+	struct drm_i915_private *i915 = fbc->i915;
 	int i;
 
 	/* Clear old tags */
@@ -226,30 +230,31 @@ static void i8xx_fbc_activate(struct drm_i915_private *i915)
 
 	if (DISPLAY_VER(i915) == 4) {
 		intel_de_write(i915, FBC_CONTROL2,
-			       i965_fbc_ctl2(i915));
+			       i965_fbc_ctl2(fbc));
 		intel_de_write(i915, FBC_FENCE_OFF,
 			       params->fence_y_offset);
 	}
 
 	intel_de_write(i915, FBC_CONTROL,
-		       FBC_CTL_EN | i8xx_fbc_ctl(i915));
+		       FBC_CTL_EN | i8xx_fbc_ctl(fbc));
 }
 
-static bool i8xx_fbc_is_active(struct drm_i915_private *i915)
+static bool i8xx_fbc_is_active(struct intel_fbc *fbc)
 {
-	return intel_de_read(i915, FBC_CONTROL) & FBC_CTL_EN;
+	return intel_de_read(fbc->i915, FBC_CONTROL) & FBC_CTL_EN;
 }
 
-static bool i8xx_fbc_is_compressing(struct drm_i915_private *i915)
+static bool i8xx_fbc_is_compressing(struct intel_fbc *fbc)
 {
-	return intel_de_read(i915, FBC_STATUS) &
+	return intel_de_read(fbc->i915, FBC_STATUS) &
 		(FBC_STAT_COMPRESSING | FBC_STAT_COMPRESSED);
 }
 
-static void i8xx_fbc_nuke(struct drm_i915_private *dev_priv)
+static void i8xx_fbc_nuke(struct intel_fbc *fbc)
 {
-	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
+	struct intel_fbc_reg_params *params = &fbc->params;
 	enum i9xx_plane_id i9xx_plane = params->crtc.i9xx_plane;
+	struct drm_i915_private *dev_priv = fbc->i915;
 
 	spin_lock_irq(&dev_priv->uncore.lock);
 	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
@@ -257,9 +262,9 @@ static void i8xx_fbc_nuke(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->uncore.lock);
 }
 
-static void i8xx_fbc_program_cfb(struct drm_i915_private *i915)
+static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 
 	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.start,
 					 fbc->compressed_fb.start, U32_MAX));
@@ -281,10 +286,11 @@ static const struct intel_fbc_funcs i8xx_fbc_funcs = {
 	.program_cfb = i8xx_fbc_program_cfb,
 };
 
-static void i965_fbc_nuke(struct drm_i915_private *dev_priv)
+static void i965_fbc_nuke(struct intel_fbc *fbc)
 {
-	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
+	struct intel_fbc_reg_params *params = &fbc->params;
 	enum i9xx_plane_id i9xx_plane = params->crtc.i9xx_plane;
+	struct drm_i915_private *dev_priv = fbc->i915;
 
 	spin_lock_irq(&dev_priv->uncore.lock);
 	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
@@ -301,11 +307,11 @@ static const struct intel_fbc_funcs i965_fbc_funcs = {
 	.program_cfb = i8xx_fbc_program_cfb,
 };
 
-static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *i915)
+static u32 g4x_dpfc_ctl_limit(struct intel_fbc *fbc)
 {
-	switch (i915->fbc.limit) {
+	switch (fbc->limit) {
 	default:
-		MISSING_CASE(i915->fbc.limit);
+		MISSING_CASE(fbc->limit);
 		fallthrough;
 	case 1:
 		return DPFC_CTL_LIMIT_1X;
@@ -316,12 +322,13 @@ static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *i915)
 	}
 }
 
-static u32 g4x_dpfc_ctl(struct drm_i915_private *i915)
+static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &i915->fbc.params;
+	const struct intel_fbc_reg_params *params = &fbc->params;
+	struct drm_i915_private *i915 = fbc->i915;
 	u32 dpfc_ctl;
 
-	dpfc_ctl = g4x_dpfc_ctl_limit(i915) |
+	dpfc_ctl = g4x_dpfc_ctl_limit(fbc) |
 		DPFC_CTL_PLANE_G4X(params->crtc.i9xx_plane);
 
 	if (IS_G4X(i915))
@@ -337,19 +344,21 @@ static u32 g4x_dpfc_ctl(struct drm_i915_private *i915)
 	return dpfc_ctl;
 }
 
-static void g4x_fbc_activate(struct drm_i915_private *i915)
+static void g4x_fbc_activate(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &i915->fbc.params;
+	const struct intel_fbc_reg_params *params = &fbc->params;
+	struct drm_i915_private *i915 = fbc->i915;
 
 	intel_de_write(i915, DPFC_FENCE_YOFF,
 		       params->fence_y_offset);
 
 	intel_de_write(i915, DPFC_CONTROL,
-		       DPFC_CTL_EN | g4x_dpfc_ctl(i915));
+		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
 }
 
-static void g4x_fbc_deactivate(struct drm_i915_private *i915)
+static void g4x_fbc_deactivate(struct intel_fbc *fbc)
 {
+	struct drm_i915_private *i915 = fbc->i915;
 	u32 dpfc_ctl;
 
 	/* Disable compression */
@@ -360,19 +369,19 @@ static void g4x_fbc_deactivate(struct drm_i915_private *i915)
 	}
 }
 
-static bool g4x_fbc_is_active(struct drm_i915_private *i915)
+static bool g4x_fbc_is_active(struct intel_fbc *fbc)
 {
-	return intel_de_read(i915, DPFC_CONTROL) & DPFC_CTL_EN;
+	return intel_de_read(fbc->i915, DPFC_CONTROL) & DPFC_CTL_EN;
 }
 
-static bool g4x_fbc_is_compressing(struct drm_i915_private *i915)
+static bool g4x_fbc_is_compressing(struct intel_fbc *fbc)
 {
-	return intel_de_read(i915, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
+	return intel_de_read(fbc->i915, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
 }
 
-static void g4x_fbc_program_cfb(struct drm_i915_private *i915)
+static void g4x_fbc_program_cfb(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 
 	intel_de_write(i915, DPFC_CB_BASE, fbc->compressed_fb.start);
 }
@@ -386,19 +395,21 @@ static const struct intel_fbc_funcs g4x_fbc_funcs = {
 	.program_cfb = g4x_fbc_program_cfb,
 };
 
-static void ilk_fbc_activate(struct drm_i915_private *i915)
+static void ilk_fbc_activate(struct intel_fbc *fbc)
 {
-	struct intel_fbc_reg_params *params = &i915->fbc.params;
+	struct intel_fbc_reg_params *params = &fbc->params;
+	struct drm_i915_private *i915 = fbc->i915;
 
 	intel_de_write(i915, ILK_DPFC_FENCE_YOFF,
 		       params->fence_y_offset);
 
 	intel_de_write(i915, ILK_DPFC_CONTROL,
-		       DPFC_CTL_EN | g4x_dpfc_ctl(i915));
+		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
 }
 
-static void ilk_fbc_deactivate(struct drm_i915_private *i915)
+static void ilk_fbc_deactivate(struct intel_fbc *fbc)
 {
+	struct drm_i915_private *i915 = fbc->i915;
 	u32 dpfc_ctl;
 
 	/* Disable compression */
@@ -409,19 +420,19 @@ static void ilk_fbc_deactivate(struct drm_i915_private *i915)
 	}
 }
 
-static bool ilk_fbc_is_active(struct drm_i915_private *i915)
+static bool ilk_fbc_is_active(struct intel_fbc *fbc)
 {
-	return intel_de_read(i915, ILK_DPFC_CONTROL) & DPFC_CTL_EN;
+	return intel_de_read(fbc->i915, ILK_DPFC_CONTROL) & DPFC_CTL_EN;
 }
 
-static bool ilk_fbc_is_compressing(struct drm_i915_private *i915)
+static bool ilk_fbc_is_compressing(struct intel_fbc *fbc)
 {
-	return intel_de_read(i915, ILK_DPFC_STATUS) & DPFC_COMP_SEG_MASK;
+	return intel_de_read(fbc->i915, ILK_DPFC_STATUS) & DPFC_COMP_SEG_MASK;
 }
 
-static void ilk_fbc_program_cfb(struct drm_i915_private *i915)
+static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 
 	intel_de_write(i915, ILK_DPFC_CB_BASE, fbc->compressed_fb.start);
 }
@@ -435,9 +446,10 @@ static const struct intel_fbc_funcs ilk_fbc_funcs = {
 	.program_cfb = ilk_fbc_program_cfb,
 };
 
-static void snb_fbc_program_fence(struct drm_i915_private *i915)
+static void snb_fbc_program_fence(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &i915->fbc.params;
+	const struct intel_fbc_reg_params *params = &fbc->params;
+	struct drm_i915_private *i915 = fbc->i915;
 	u32 ctl = 0;
 
 	if (params->fence_id >= 0)
@@ -447,15 +459,17 @@ static void snb_fbc_program_fence(struct drm_i915_private *i915)
 	intel_de_write(i915, SNB_DPFC_CPU_FENCE_OFFSET, params->fence_y_offset);
 }
 
-static void snb_fbc_activate(struct drm_i915_private *i915)
+static void snb_fbc_activate(struct intel_fbc *fbc)
 {
-	snb_fbc_program_fence(i915);
+	snb_fbc_program_fence(fbc);
 
-	ilk_fbc_activate(i915);
+	ilk_fbc_activate(fbc);
 }
 
-static void snb_fbc_nuke(struct drm_i915_private *i915)
+static void snb_fbc_nuke(struct intel_fbc *fbc)
 {
+	struct drm_i915_private *i915 = fbc->i915;
+
 	intel_de_write(i915, MSG_FBC_REND_STATE, FBC_REND_NUKE);
 	intel_de_posting_read(i915, MSG_FBC_REND_STATE);
 }
@@ -469,10 +483,10 @@ static const struct intel_fbc_funcs snb_fbc_funcs = {
 	.program_cfb = ilk_fbc_program_cfb,
 };
 
-static void glk_fbc_program_cfb_stride(struct drm_i915_private *i915)
+static void glk_fbc_program_cfb_stride(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
 	const struct intel_fbc_reg_params *params = &fbc->params;
+	struct drm_i915_private *i915 = fbc->i915;
 	u32 val = 0;
 
 	if (params->override_cfb_stride)
@@ -482,10 +496,10 @@ static void glk_fbc_program_cfb_stride(struct drm_i915_private *i915)
 	intel_de_write(i915, GLK_FBC_STRIDE, val);
 }
 
-static void skl_fbc_program_cfb_stride(struct drm_i915_private *i915)
+static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
 	const struct intel_fbc_reg_params *params = &fbc->params;
+	struct drm_i915_private *i915 = fbc->i915;
 	u32 val = 0;
 
 	/* Display WA #0529: skl, kbl, bxt. */
@@ -498,12 +512,13 @@ static void skl_fbc_program_cfb_stride(struct drm_i915_private *i915)
 		     CHICKEN_FBC_STRIDE_MASK, val);
 }
 
-static u32 ivb_dpfc_ctl(struct drm_i915_private *i915)
+static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_reg_params *params = &i915->fbc.params;
+	const struct intel_fbc_reg_params *params = &fbc->params;
+	struct drm_i915_private *i915 = fbc->i915;
 	u32 dpfc_ctl;
 
-	dpfc_ctl = g4x_dpfc_ctl_limit(i915);
+	dpfc_ctl = g4x_dpfc_ctl_limit(fbc);
 
 	if (IS_IVYBRIDGE(i915))
 		dpfc_ctl |= DPFC_CTL_PLANE_IVB(params->crtc.i9xx_plane);
@@ -511,35 +526,37 @@ static u32 ivb_dpfc_ctl(struct drm_i915_private *i915)
 	if (params->fence_id >= 0)
 		dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
 
-	if (i915->fbc.false_color)
+	if (fbc->false_color)
 		dpfc_ctl |= DPFC_CTL_FALSE_COLOR;
 
 	return dpfc_ctl;
 }
 
-static void ivb_fbc_activate(struct drm_i915_private *i915)
+static void ivb_fbc_activate(struct intel_fbc *fbc)
 {
+	struct drm_i915_private *i915 = fbc->i915;
+
 	if (DISPLAY_VER(i915) >= 10)
-		glk_fbc_program_cfb_stride(i915);
+		glk_fbc_program_cfb_stride(fbc);
 	else if (DISPLAY_VER(i915) == 9)
-		skl_fbc_program_cfb_stride(i915);
+		skl_fbc_program_cfb_stride(fbc);
 
 	if (i915->ggtt.num_fences)
-		snb_fbc_program_fence(i915);
+		snb_fbc_program_fence(fbc);
 
 	intel_de_write(i915, ILK_DPFC_CONTROL,
-		       DPFC_CTL_EN | ivb_dpfc_ctl(i915));
+		       DPFC_CTL_EN | ivb_dpfc_ctl(fbc));
 }
 
-static bool ivb_fbc_is_compressing(struct drm_i915_private *i915)
+static bool ivb_fbc_is_compressing(struct intel_fbc *fbc)
 {
-	return intel_de_read(i915, ILK_DPFC_STATUS2) & DPFC_COMP_SEG_MASK_IVB;
+	return intel_de_read(fbc->i915, ILK_DPFC_STATUS2) & DPFC_COMP_SEG_MASK_IVB;
 }
 
-static void ivb_fbc_set_false_color(struct drm_i915_private *i915,
+static void ivb_fbc_set_false_color(struct intel_fbc *fbc,
 				    bool enable)
 {
-	intel_de_rmw(i915, ILK_DPFC_CONTROL,
+	intel_de_rmw(fbc->i915, ILK_DPFC_CONTROL,
 		     DPFC_CTL_FALSE_COLOR, enable ? DPFC_CTL_FALSE_COLOR : 0);
 }
 
@@ -553,56 +570,44 @@ static const struct intel_fbc_funcs ivb_fbc_funcs = {
 	.set_false_color = ivb_fbc_set_false_color,
 };
 
-static bool intel_fbc_hw_is_active(struct drm_i915_private *i915)
+static bool intel_fbc_hw_is_active(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
-
-	return fbc->funcs->is_active(i915);
+	return fbc->funcs->is_active(fbc);
 }
 
-static void intel_fbc_hw_activate(struct drm_i915_private *i915)
+static void intel_fbc_hw_activate(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
-
 	trace_intel_fbc_activate(fbc->crtc);
 
 	fbc->active = true;
 	fbc->activated = true;
 
-	fbc->funcs->activate(i915);
+	fbc->funcs->activate(fbc);
 }
 
-static void intel_fbc_hw_deactivate(struct drm_i915_private *i915)
+static void intel_fbc_hw_deactivate(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
-
 	trace_intel_fbc_deactivate(fbc->crtc);
 
 	fbc->active = false;
 
-	fbc->funcs->deactivate(i915);
+	fbc->funcs->deactivate(fbc);
 }
 
-bool intel_fbc_is_compressing(struct drm_i915_private *i915)
+bool intel_fbc_is_compressing(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
-
-	return fbc->funcs->is_compressing(i915);
+	return fbc->funcs->is_compressing(fbc);
 }
 
-static void intel_fbc_nuke(struct drm_i915_private *i915)
+static void intel_fbc_nuke(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
-
 	trace_intel_fbc_nuke(fbc->crtc);
 
-	fbc->funcs->nuke(i915);
+	fbc->funcs->nuke(fbc);
 }
 
-int intel_fbc_set_false_color(struct drm_i915_private *i915, bool enable)
+int intel_fbc_set_false_color(struct intel_fbc *fbc, bool enable)
 {
-	struct intel_fbc *fbc = &i915->fbc;
-
 	if (!fbc->funcs || !fbc->funcs->set_false_color)
 		return -ENODEV;
 
@@ -610,7 +615,7 @@ int intel_fbc_set_false_color(struct drm_i915_private *i915, bool enable)
 
 	fbc->false_color = enable;
 
-	fbc->funcs->set_false_color(i915, enable);
+	fbc->funcs->set_false_color(fbc, enable);
 
 	mutex_unlock(&fbc->lock);
 
@@ -626,26 +631,25 @@ int intel_fbc_set_false_color(struct drm_i915_private *i915, bool enable)
  * FIXME: This should be tracked in the plane config eventually
  * instead of queried at runtime for most callers.
  */
-bool intel_fbc_is_active(struct drm_i915_private *i915)
+bool intel_fbc_is_active(struct intel_fbc *fbc)
 {
-	return i915->fbc.active;
+	return fbc->active;
 }
 
-static void intel_fbc_activate(struct drm_i915_private *i915)
+static void intel_fbc_activate(struct intel_fbc *fbc)
 {
-	intel_fbc_hw_activate(i915);
-	intel_fbc_nuke(i915);
+	intel_fbc_hw_activate(fbc);
+	intel_fbc_nuke(fbc);
 }
 
-static void intel_fbc_deactivate(struct drm_i915_private *i915,
-				 const char *reason)
+static void intel_fbc_deactivate(struct intel_fbc *fbc, const char *reason)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 
 	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
 
 	if (fbc->active)
-		intel_fbc_hw_deactivate(i915);
+		intel_fbc_hw_deactivate(fbc);
 
 	fbc->no_fbc_reason = reason;
 }
@@ -693,10 +697,10 @@ static int intel_fbc_max_limit(struct drm_i915_private *i915)
 	return 4;
 }
 
-static int find_compression_limit(struct drm_i915_private *i915,
+static int find_compression_limit(struct intel_fbc *fbc,
 				  unsigned int size, int min_limit)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 	u64 end = intel_fbc_stolen_end(i915);
 	int ret, limit = min_limit;
 
@@ -718,10 +722,10 @@ static int find_compression_limit(struct drm_i915_private *i915,
 	return 0;
 }
 
-static int intel_fbc_alloc_cfb(struct drm_i915_private *i915,
+static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 			       unsigned int size, int min_limit)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 	int ret;
 
 	drm_WARN_ON(&i915->drm,
@@ -736,7 +740,7 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *i915,
 			goto err;
 	}
 
-	ret = find_compression_limit(i915, size, min_limit);
+	ret = find_compression_limit(fbc, size, min_limit);
 	if (!ret)
 		goto err_llb;
 	else if (ret > min_limit)
@@ -760,18 +764,16 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *i915,
 	return -ENOSPC;
 }
 
-static void intel_fbc_program_cfb(struct drm_i915_private *i915)
+static void intel_fbc_program_cfb(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
-
-	fbc->funcs->program_cfb(i915);
+	fbc->funcs->program_cfb(fbc);
 }
 
-static void __intel_fbc_cleanup_cfb(struct drm_i915_private *i915)
+static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 
-	if (WARN_ON(intel_fbc_hw_is_active(i915)))
+	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
 		return;
 
 	if (drm_mm_node_allocated(&fbc->compressed_llb))
@@ -780,7 +782,7 @@ static void __intel_fbc_cleanup_cfb(struct drm_i915_private *i915)
 		i915_gem_stolen_remove_node(i915, &fbc->compressed_fb);
 }
 
-void intel_fbc_cleanup_cfb(struct drm_i915_private *i915)
+void intel_fbc_cleanup(struct drm_i915_private *i915)
 {
 	struct intel_fbc *fbc = &i915->fbc;
 
@@ -788,7 +790,7 @@ void intel_fbc_cleanup_cfb(struct drm_i915_private *i915)
 		return;
 
 	mutex_lock(&fbc->lock);
-	__intel_fbc_cleanup_cfb(i915);
+	__intel_fbc_cleanup_cfb(fbc);
 	mutex_unlock(&fbc->lock);
 }
 
@@ -860,10 +862,10 @@ static bool rotation_is_valid(struct drm_i915_private *i915,
  * the X and Y offset registers. That's why we include the src x/y offsets
  * instead of just looking at the plane size.
  */
-static bool intel_fbc_hw_tracking_covers_screen(struct intel_crtc *crtc)
+static bool intel_fbc_hw_tracking_covers_screen(struct intel_fbc *fbc,
+						struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 	unsigned int effective_w, effective_h, max_w, max_h;
 
 	if (DISPLAY_VER(i915) >= 10) {
@@ -954,19 +956,17 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 	cache->psr2_active = crtc_state->has_psr2;
 }
 
-static bool intel_fbc_cfb_size_changed(struct drm_i915_private *i915)
+static bool intel_fbc_cfb_size_changed(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
-
-	return intel_fbc_cfb_size(i915, &fbc->state_cache) >
+	return intel_fbc_cfb_size(fbc, &fbc->state_cache) >
 		fbc->compressed_fb.size * fbc->limit;
 }
 
-static u16 intel_fbc_override_cfb_stride(struct drm_i915_private *i915,
+static u16 intel_fbc_override_cfb_stride(struct intel_fbc *fbc,
 					 const struct intel_fbc_state_cache *cache)
 {
 	unsigned int stride = _intel_fbc_cfb_stride(cache);
-	unsigned int stride_aligned = intel_fbc_cfb_stride(i915, cache);
+	unsigned int stride_aligned = intel_fbc_cfb_stride(fbc, cache);
 
 	/*
 	 * Override stride in 64 byte units per 4 line segment.
@@ -976,16 +976,16 @@ static u16 intel_fbc_override_cfb_stride(struct drm_i915_private *i915,
 	 * we always need to use the override there.
 	 */
 	if (stride != stride_aligned ||
-	    (DISPLAY_VER(i915) == 9 &&
+	    (DISPLAY_VER(fbc->i915) == 9 &&
 	     cache->fb.modifier == DRM_FORMAT_MOD_LINEAR))
 		return stride_aligned * 4 / 64;
 
 	return 0;
 }
 
-static bool intel_fbc_can_enable(struct drm_i915_private *i915)
+static bool intel_fbc_can_enable(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 
 	if (intel_vgpu_active(i915)) {
 		fbc->no_fbc_reason = "VGPU is active";
@@ -1011,7 +1011,7 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	struct intel_fbc *fbc = &i915->fbc;
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
 
-	if (!intel_fbc_can_enable(i915))
+	if (!intel_fbc_can_enable(fbc))
 		return false;
 
 	if (!cache->plane.visible) {
@@ -1032,7 +1032,7 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 		return false;
 	}
 
-	if (!intel_fbc_hw_tracking_covers_screen(crtc)) {
+	if (!intel_fbc_hw_tracking_covers_screen(fbc, crtc)) {
 		fbc->no_fbc_reason = "mode too large for compression";
 		return false;
 	}
@@ -1104,7 +1104,7 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	 * we didn't get any invalidate/deactivate calls, but this would require
 	 * a lot of tracking just for a specific case. If we conclude it's an
 	 * important case, we can implement it later. */
-	if (intel_fbc_cfb_size_changed(i915)) {
+	if (intel_fbc_cfb_size_changed(fbc)) {
 		fbc->no_fbc_reason = "CFB requirements changed";
 		return false;
 	}
@@ -1140,12 +1140,11 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	return true;
 }
 
-static void intel_fbc_get_reg_params(struct intel_crtc *crtc,
-				     struct intel_fbc_reg_params *params)
+static void intel_fbc_get_reg_params(struct intel_fbc *fbc,
+				     struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_fbc *fbc = &i915->fbc;
-	struct intel_fbc_state_cache *cache = &fbc->state_cache;
+	const struct intel_fbc_state_cache *cache = &fbc->state_cache;
+	struct intel_fbc_reg_params *params = &fbc->params;
 
 	/* Since all our fields are integer types, use memset here so the
 	 * comparison function can rely on memcmp because the padding will be
@@ -1164,9 +1163,9 @@ static void intel_fbc_get_reg_params(struct intel_crtc *crtc,
 	params->fb.modifier = cache->fb.modifier;
 	params->fb.stride = cache->fb.stride;
 
-	params->cfb_stride = intel_fbc_cfb_stride(i915, cache);
-	params->cfb_size = intel_fbc_cfb_size(i915, cache);
-	params->override_cfb_stride = intel_fbc_override_cfb_stride(i915, cache);
+	params->cfb_stride = intel_fbc_cfb_stride(fbc, cache);
+	params->cfb_size = intel_fbc_cfb_size(fbc, cache);
+	params->override_cfb_stride = intel_fbc_override_cfb_stride(fbc, cache);
 
 	params->plane_visible = cache->plane.visible;
 }
@@ -1175,7 +1174,7 @@ static bool intel_fbc_can_flip_nuke(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	const struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = &i915->fbc;
 	const struct intel_fbc_state_cache *cache = &fbc->state_cache;
 	const struct intel_fbc_reg_params *params = &fbc->params;
 
@@ -1197,13 +1196,13 @@ static bool intel_fbc_can_flip_nuke(const struct intel_crtc_state *crtc_state)
 	if (params->fb.stride != cache->fb.stride)
 		return false;
 
-	if (params->cfb_stride != intel_fbc_cfb_stride(i915, cache))
+	if (params->cfb_stride != intel_fbc_cfb_stride(fbc, cache))
 		return false;
 
-	if (params->cfb_size != intel_fbc_cfb_size(i915, cache))
+	if (params->cfb_size != intel_fbc_cfb_size(fbc, cache))
 		return false;
 
-	if (params->override_cfb_stride != intel_fbc_override_cfb_stride(i915, cache))
+	if (params->override_cfb_stride != intel_fbc_override_cfb_stride(fbc, cache))
 		return false;
 
 	return true;
@@ -1234,7 +1233,7 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 	fbc->flip_pending = true;
 
 	if (!intel_fbc_can_flip_nuke(crtc_state)) {
-		intel_fbc_deactivate(i915, reason);
+		intel_fbc_deactivate(fbc, reason);
 
 		/*
 		 * Display WA #1198: glk+
@@ -1260,16 +1259,9 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 	return need_vblank_wait;
 }
 
-/**
- * __intel_fbc_disable - disable FBC
- * @i915: i915 device instance
- *
- * This is the low level function that actually disables FBC. Callers should
- * grab the FBC lock.
- */
-static void __intel_fbc_disable(struct drm_i915_private *i915)
+static void __intel_fbc_disable(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct drm_i915_private *i915 = fbc->i915;
 	struct intel_crtc *crtc = fbc->crtc;
 
 	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
@@ -1279,7 +1271,7 @@ static void __intel_fbc_disable(struct drm_i915_private *i915)
 	drm_dbg_kms(&i915->drm, "Disabling FBC on pipe %c\n",
 		    pipe_name(crtc->pipe));
 
-	__intel_fbc_cleanup_cfb(i915);
+	__intel_fbc_cleanup_cfb(fbc);
 
 	fbc->crtc = NULL;
 }
@@ -1297,21 +1289,21 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
 	fbc->flip_pending = false;
 
 	if (!i915->params.enable_fbc) {
-		intel_fbc_deactivate(i915, "disabled at runtime per module param");
-		__intel_fbc_disable(i915);
+		intel_fbc_deactivate(fbc, "disabled at runtime per module param");
+		__intel_fbc_disable(fbc);
 
 		return;
 	}
 
-	intel_fbc_get_reg_params(crtc, &fbc->params);
+	intel_fbc_get_reg_params(fbc, crtc);
 
 	if (!intel_fbc_can_activate(crtc))
 		return;
 
 	if (!fbc->busy_bits)
-		intel_fbc_activate(i915);
+		intel_fbc_activate(fbc);
 	else
-		intel_fbc_deactivate(i915, "frontbuffer write");
+		intel_fbc_deactivate(fbc, "frontbuffer write");
 }
 
 void intel_fbc_post_update(struct intel_atomic_state *state,
@@ -1356,7 +1348,7 @@ void intel_fbc_invalidate(struct drm_i915_private *i915,
 	fbc->busy_bits |= intel_fbc_get_frontbuffer_bit(fbc) & frontbuffer_bits;
 
 	if (fbc->crtc && fbc->busy_bits)
-		intel_fbc_deactivate(i915, "frontbuffer write");
+		intel_fbc_deactivate(fbc, "frontbuffer write");
 
 	mutex_unlock(&fbc->lock);
 }
@@ -1379,7 +1371,7 @@ void intel_fbc_flush(struct drm_i915_private *i915,
 	if (!fbc->busy_bits && fbc->crtc &&
 	    (frontbuffer_bits & intel_fbc_get_frontbuffer_bit(fbc))) {
 		if (fbc->active)
-			intel_fbc_nuke(i915);
+			intel_fbc_nuke(fbc);
 		else if (!fbc->flip_pending)
 			__intel_fbc_post_update(fbc->crtc);
 	}
@@ -1416,7 +1408,7 @@ void intel_fbc_choose_crtc(struct drm_i915_private *i915,
 	    !intel_atomic_get_new_crtc_state(state, fbc->crtc))
 		goto out;
 
-	if (!intel_fbc_can_enable(i915))
+	if (!intel_fbc_can_enable(fbc))
 		goto out;
 
 	/* Simply choose the first CRTC that is compatible and has a visible
@@ -1483,10 +1475,10 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 			goto out;
 
 		if (fbc->limit >= min_limit &&
-		    !intel_fbc_cfb_size_changed(i915))
+		    !intel_fbc_cfb_size_changed(fbc))
 			goto out;
 
-		__intel_fbc_disable(i915);
+		__intel_fbc_disable(fbc);
 	}
 
 	drm_WARN_ON(&i915->drm, fbc->active);
@@ -1497,8 +1489,7 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 	if (!cache->plane.visible)
 		goto out;
 
-	if (intel_fbc_alloc_cfb(i915,
-				intel_fbc_cfb_size(i915, cache), min_limit)) {
+	if (intel_fbc_alloc_cfb(fbc, intel_fbc_cfb_size(fbc, cache), min_limit)) {
 		cache->plane.visible = false;
 		fbc->no_fbc_reason = "not enough stolen memory";
 		goto out;
@@ -1510,7 +1501,7 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 
 	fbc->crtc = crtc;
 
-	intel_fbc_program_cfb(i915);
+	intel_fbc_program_cfb(fbc);
 out:
 	mutex_unlock(&fbc->lock);
 }
@@ -1532,7 +1523,7 @@ void intel_fbc_disable(struct intel_crtc *crtc)
 
 	mutex_lock(&fbc->lock);
 	if (fbc->crtc == crtc)
-		__intel_fbc_disable(i915);
+		__intel_fbc_disable(fbc);
 	mutex_unlock(&fbc->lock);
 }
 
@@ -1574,7 +1565,7 @@ void intel_fbc_global_disable(struct drm_i915_private *i915)
 	mutex_lock(&fbc->lock);
 	if (fbc->crtc) {
 		drm_WARN_ON(&i915->drm, fbc->crtc->active);
-		__intel_fbc_disable(i915);
+		__intel_fbc_disable(fbc);
 	}
 	mutex_unlock(&fbc->lock);
 }
@@ -1594,7 +1585,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 	drm_dbg_kms(&i915->drm, "Disabling FBC due to FIFO underrun.\n");
 	fbc->underrun_detected = true;
 
-	intel_fbc_deactivate(i915, "FIFO underrun");
+	intel_fbc_deactivate(fbc, "FIFO underrun");
 out:
 	mutex_unlock(&fbc->lock);
 }
@@ -1606,24 +1597,25 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
  * See intel_fbc_handle_fifo_underrun_irq(). For automated testing we
  * want to re-enable FBC after an underrun to increase test coverage.
  */
-int intel_fbc_reset_underrun(struct drm_i915_private *i915)
+int intel_fbc_reset_underrun(struct intel_fbc *fbc)
 {
+	struct drm_i915_private *i915 = fbc->i915;
 	int ret;
 
-	cancel_work_sync(&i915->fbc.underrun_work);
+	cancel_work_sync(&fbc->underrun_work);
 
-	ret = mutex_lock_interruptible(&i915->fbc.lock);
+	ret = mutex_lock_interruptible(&fbc->lock);
 	if (ret)
 		return ret;
 
-	if (i915->fbc.underrun_detected) {
+	if (fbc->underrun_detected) {
 		drm_dbg_kms(&i915->drm,
 			    "Re-allowing FBC after fifo underrun\n");
-		i915->fbc.no_fbc_reason = "FIFO underrun cleared";
+		fbc->no_fbc_reason = "FIFO underrun cleared";
 	}
 
-	i915->fbc.underrun_detected = false;
-	mutex_unlock(&i915->fbc.lock);
+	fbc->underrun_detected = false;
+	mutex_unlock(&fbc->lock);
 
 	return 0;
 }
@@ -1642,11 +1634,9 @@ int intel_fbc_reset_underrun(struct drm_i915_private *i915)
  *
  * This function is called from the IRQ handler.
  */
-void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915)
+void intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc)
 {
-	struct intel_fbc *fbc = &i915->fbc;
-
-	if (!HAS_FBC(i915))
+	if (!HAS_FBC(fbc->i915))
 		return;
 
 	/* There's no guarantee that underrun_detected won't be set to true
@@ -1707,6 +1697,7 @@ void intel_fbc_init(struct drm_i915_private *i915)
 {
 	struct intel_fbc *fbc = &i915->fbc;
 
+	fbc->i915 = i915;
 	INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
 	mutex_init(&fbc->lock);
 	fbc->active = false;
@@ -1742,6 +1733,6 @@ void intel_fbc_init(struct drm_i915_private *i915)
 	/* We still don't have any sort of hardware state readout for FBC, so
 	 * deactivate it in case the BIOS activated it to make sure software
 	 * matches the hardware state. */
-	if (intel_fbc_hw_is_active(i915))
-		intel_fbc_hw_deactivate(i915);
+	if (intel_fbc_hw_is_active(fbc))
+		intel_fbc_hw_deactivate(fbc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 4d1f2a76ccb4..ce48a22c5e9e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -14,17 +14,19 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_fbc;
 struct intel_plane_state;
 
 void intel_fbc_choose_crtc(struct drm_i915_private *dev_priv,
 			   struct intel_atomic_state *state);
-bool intel_fbc_is_active(struct drm_i915_private *dev_priv);
-bool intel_fbc_is_compressing(struct drm_i915_private *dev_priv);
+bool intel_fbc_is_active(struct intel_fbc *fbc);
+bool intel_fbc_is_compressing(struct intel_fbc *fbc);
 bool intel_fbc_pre_update(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc);
 void intel_fbc_post_update(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc);
 void intel_fbc_init(struct drm_i915_private *dev_priv);
+void intel_fbc_cleanup(struct drm_i915_private *dev_priv);
 void intel_fbc_update(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc);
 void intel_fbc_disable(struct intel_crtc *crtc);
@@ -34,10 +36,8 @@ void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
 			  enum fb_op_origin origin);
 void intel_fbc_flush(struct drm_i915_private *dev_priv,
 		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
-void intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv);
-void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *dev_priv);
-int intel_fbc_reset_underrun(struct drm_i915_private *dev_priv);
-int intel_fbc_set_false_color(struct drm_i915_private *i915,
-			      bool enable);
+void intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc);
+int intel_fbc_reset_underrun(struct intel_fbc *fbc);
+int intel_fbc_set_false_color(struct intel_fbc *fbc, bool enable);
 
 #endif /* __INTEL_FBC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index eb841960840d..28d9eeb7b4f3 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -434,7 +434,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
 	}
 
-	intel_fbc_handle_fifo_underrun_irq(dev_priv);
+	intel_fbc_handle_fifo_underrun_irq(&dev_priv->fbc);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e5d57c2a8506..c8a06dc28db6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -414,6 +414,7 @@ struct intel_fbc_funcs;
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
 struct intel_fbc {
+	struct drm_i915_private *i915;
 	const struct intel_fbc_funcs *funcs;
 
 	/* This is always the inner lock when overlapping with struct_mutex and
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index a64f3b195448..b3d4710c6b25 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3375,7 +3375,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 	 * enabled sometime later.
 	 */
 	if (DISPLAY_VER(dev_priv) == 5 && !merged->fbc_wm_enabled &&
-	    intel_fbc_is_active(dev_priv)) {
+	    intel_fbc_is_active(&dev_priv->fbc)) {
 		for (level = 2; level <= max_level; level++) {
 			struct intel_wm_level *wm = &merged->wm[level];
 
-- 
2.32.0

