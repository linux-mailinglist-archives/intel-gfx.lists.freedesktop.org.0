Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4B64455A0
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 002406E504;
	Thu,  4 Nov 2021 14:45:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C926E505
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:45:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="317919027"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="317919027"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:45:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="542251464"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 04 Nov 2021 07:45:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:12 +0200
Message-Id: <20211104144520.22605-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/17] drm/i915/fbc: Introduce .program_cfb()
 vfunc
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

Eliminate the last if-ladder by pulling the CFB/LLB programming
into a vfunc as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 56 ++++++++++++++++--------
 1 file changed, 37 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1df5a08d3457..0cbd0e302320 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -54,6 +54,7 @@ struct intel_fbc_funcs {
 	bool (*is_active)(struct drm_i915_private *i915);
 	bool (*is_compressing)(struct drm_i915_private *i915);
 	void (*nuke)(struct drm_i915_private *i915);
+	void (*program_cfb)(struct drm_i915_private *i915);
 };
 
 /*
@@ -255,12 +256,28 @@ static void i8xx_fbc_nuke(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->uncore.lock);
 }
 
+static void i8xx_fbc_program_cfb(struct drm_i915_private *i915)
+{
+	struct intel_fbc *fbc = &i915->fbc;
+
+	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.start,
+					 fbc->compressed_fb.start, U32_MAX));
+	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.start,
+					 fbc->compressed_llb.start, U32_MAX));
+
+	intel_de_write(i915, FBC_CFB_BASE,
+		       i915->dsm.start + fbc->compressed_fb.start);
+	intel_de_write(i915, FBC_LL_BASE,
+		       i915->dsm.start + fbc->compressed_llb.start);
+}
+
 static const struct intel_fbc_funcs i8xx_fbc_funcs = {
 	.activate = i8xx_fbc_activate,
 	.deactivate = i8xx_fbc_deactivate,
 	.is_active = i8xx_fbc_is_active,
 	.is_compressing = i8xx_fbc_is_compressing,
 	.nuke = i8xx_fbc_nuke,
+	.program_cfb = i8xx_fbc_program_cfb,
 };
 
 static void i965_fbc_nuke(struct drm_i915_private *dev_priv)
@@ -280,6 +297,7 @@ static const struct intel_fbc_funcs i965_fbc_funcs = {
 	.is_active = i8xx_fbc_is_active,
 	.is_compressing = i8xx_fbc_is_compressing,
 	.nuke = i965_fbc_nuke,
+	.program_cfb = i8xx_fbc_program_cfb,
 };
 
 static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *i915)
@@ -351,12 +369,20 @@ static bool g4x_fbc_is_compressing(struct drm_i915_private *i915)
 	return intel_de_read(i915, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
 }
 
+static void g4x_fbc_program_cfb(struct drm_i915_private *i915)
+{
+	struct intel_fbc *fbc = &i915->fbc;
+
+	intel_de_write(i915, DPFC_CB_BASE, fbc->compressed_fb.start);
+}
+
 static const struct intel_fbc_funcs g4x_fbc_funcs = {
 	.activate = g4x_fbc_activate,
 	.deactivate = g4x_fbc_deactivate,
 	.is_active = g4x_fbc_is_active,
 	.is_compressing = g4x_fbc_is_compressing,
 	.nuke = i965_fbc_nuke,
+	.program_cfb = g4x_fbc_program_cfb,
 };
 
 static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
@@ -392,12 +418,20 @@ static bool ilk_fbc_is_compressing(struct drm_i915_private *i915)
 	return intel_de_read(i915, ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
 }
 
+static void ilk_fbc_program_cfb(struct drm_i915_private *i915)
+{
+	struct intel_fbc *fbc = &i915->fbc;
+
+	intel_de_write(i915, ILK_DPFC_CB_BASE, fbc->compressed_fb.start);
+}
+
 static const struct intel_fbc_funcs ilk_fbc_funcs = {
 	.activate = ilk_fbc_activate,
 	.deactivate = ilk_fbc_deactivate,
 	.is_active = ilk_fbc_is_active,
 	.is_compressing = ilk_fbc_is_compressing,
 	.nuke = i965_fbc_nuke,
+	.program_cfb = ilk_fbc_program_cfb,
 };
 
 static void snb_fbc_program_fence(struct drm_i915_private *i915)
@@ -431,6 +465,7 @@ static const struct intel_fbc_funcs snb_fbc_funcs = {
 	.is_active = ilk_fbc_is_active,
 	.is_compressing = ilk_fbc_is_compressing,
 	.nuke = snb_fbc_nuke,
+	.program_cfb = ilk_fbc_program_cfb,
 };
 
 static void glk_fbc_program_cfb_stride(struct drm_i915_private *i915)
@@ -509,6 +544,7 @@ static const struct intel_fbc_funcs ivb_fbc_funcs = {
 	.is_active = ilk_fbc_is_active,
 	.is_compressing = ivb_fbc_is_compressing,
 	.nuke = snb_fbc_nuke,
+	.program_cfb = ilk_fbc_program_cfb,
 };
 
 static bool intel_fbc_hw_is_active(struct drm_i915_private *dev_priv)
@@ -704,25 +740,7 @@ static void intel_fbc_program_cfb(struct drm_i915_private *dev_priv)
 {
 	struct intel_fbc *fbc = &dev_priv->fbc;
 
-	if (DISPLAY_VER(dev_priv) >= 5) {
-		intel_de_write(dev_priv, ILK_DPFC_CB_BASE,
-			       fbc->compressed_fb.start);
-	} else if (IS_GM45(dev_priv)) {
-		intel_de_write(dev_priv, DPFC_CB_BASE,
-			       fbc->compressed_fb.start);
-	} else {
-		GEM_BUG_ON(range_overflows_end_t(u64, dev_priv->dsm.start,
-						 fbc->compressed_fb.start,
-						 U32_MAX));
-		GEM_BUG_ON(range_overflows_end_t(u64, dev_priv->dsm.start,
-						 fbc->compressed_llb.start,
-						 U32_MAX));
-
-		intel_de_write(dev_priv, FBC_CFB_BASE,
-			       dev_priv->dsm.start + fbc->compressed_fb.start);
-		intel_de_write(dev_priv, FBC_LL_BASE,
-			       dev_priv->dsm.start + fbc->compressed_llb.start);
-	}
+	fbc->funcs->program_cfb(dev_priv);
 }
 
 static void __intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
-- 
2.32.0

