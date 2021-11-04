Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EFA44559B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:45:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B066E439;
	Thu,  4 Nov 2021 14:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C475D6E432
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:45:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="212463175"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="212463175"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:45:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="489982263"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 04 Nov 2021 07:45:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:07 +0200
Message-Id: <20211104144520.22605-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/17] drm/i915/fbc: Introduce
 intel_fbc_is_compressing()
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

Move the direct FBC status register reads from the debugfs code
behind an abstract api.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 23 +++---------
 drivers/gpu/drm/i915/display/intel_fbc.c      | 36 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h      |  1 +
 3 files changed, 41 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d7d6dde518a3..19bc148e168c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -52,27 +52,12 @@ static int i915_fbc_status(struct seq_file *m, void *unused)
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 	mutex_lock(&fbc->lock);
 
-	if (intel_fbc_is_active(dev_priv))
+	if (intel_fbc_is_active(dev_priv)) {
 		seq_puts(m, "FBC enabled\n");
-	else
+		seq_printf(m, "Compressing: %s\n",
+			   yesno(intel_fbc_is_compressing(dev_priv)));
+	} else {
 		seq_printf(m, "FBC disabled: %s\n", fbc->no_fbc_reason);
-
-	if (intel_fbc_is_active(dev_priv)) {
-		u32 mask;
-
-		if (DISPLAY_VER(dev_priv) >= 8)
-			mask = intel_de_read(dev_priv, IVB_FBC_STATUS2) & BDW_FBC_COMP_SEG_MASK;
-		else if (DISPLAY_VER(dev_priv) >= 7)
-			mask = intel_de_read(dev_priv, IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
-		else if (DISPLAY_VER(dev_priv) >= 5)
-			mask = intel_de_read(dev_priv, ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
-		else if (IS_G4X(dev_priv))
-			mask = intel_de_read(dev_priv, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
-		else
-			mask = intel_de_read(dev_priv, FBC_STATUS) &
-				(FBC_STAT_COMPRESSING | FBC_STAT_COMPRESSED);
-
-		seq_printf(m, "Compressing: %s\n", yesno(mask));
 	}
 
 	mutex_unlock(&fbc->lock);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 8f51af2b4ebc..4d7b156e46db 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -211,6 +211,12 @@ static bool i8xx_fbc_is_active(struct drm_i915_private *dev_priv)
 	return intel_de_read(dev_priv, FBC_CONTROL) & FBC_CTL_EN;
 }
 
+static bool i8xx_fbc_is_compressing(struct drm_i915_private *i915)
+{
+	return intel_de_read(i915, FBC_STATUS) &
+		(FBC_STAT_COMPRESSING | FBC_STAT_COMPRESSED);
+}
+
 static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *i915)
 {
 	switch (i915->fbc.limit) {
@@ -262,6 +268,11 @@ static bool g4x_fbc_is_active(struct drm_i915_private *dev_priv)
 	return intel_de_read(dev_priv, DPFC_CONTROL) & DPFC_CTL_EN;
 }
 
+static bool g4x_fbc_is_compressing(struct drm_i915_private *i915)
+{
+	return intel_de_read(i915, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
+}
+
 static void i8xx_fbc_recompress(struct drm_i915_private *dev_priv)
 {
 	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
@@ -358,6 +369,11 @@ static bool ilk_fbc_is_active(struct drm_i915_private *dev_priv)
 	return intel_de_read(dev_priv, ILK_DPFC_CONTROL) & DPFC_CTL_EN;
 }
 
+static bool ilk_fbc_is_compressing(struct drm_i915_private *i915)
+{
+	return intel_de_read(i915, ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
+}
+
 static void glk_fbc_program_cfb_stride(struct drm_i915_private *i915)
 {
 	struct intel_fbc *fbc = &i915->fbc;
@@ -416,6 +432,14 @@ static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
 	intel_de_write(dev_priv, ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
 }
 
+static bool gen7_fbc_is_compressing(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) >= 8)
+		return intel_de_read(i915, IVB_FBC_STATUS2) & BDW_FBC_COMP_SEG_MASK;
+	else
+		return intel_de_read(i915, IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
+}
+
 static bool intel_fbc_hw_is_active(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 5)
@@ -461,6 +485,18 @@ static void intel_fbc_hw_deactivate(struct drm_i915_private *dev_priv)
 		i8xx_fbc_deactivate(dev_priv);
 }
 
+bool intel_fbc_is_compressing(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) >= 7)
+		return gen7_fbc_is_compressing(i915);
+	else if (DISPLAY_VER(i915) >= 5)
+		return ilk_fbc_is_compressing(i915);
+	else if (IS_G4X(i915))
+		return g4x_fbc_is_compressing(i915);
+	else
+		return i8xx_fbc_is_compressing(i915);
+}
+
 /**
  * intel_fbc_is_active - Is FBC active?
  * @dev_priv: i915 device instance
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index b97d908738e6..b2c9e441edbd 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -19,6 +19,7 @@ struct intel_plane_state;
 void intel_fbc_choose_crtc(struct drm_i915_private *dev_priv,
 			   struct intel_atomic_state *state);
 bool intel_fbc_is_active(struct drm_i915_private *dev_priv);
+bool intel_fbc_is_compressing(struct drm_i915_private *dev_priv);
 bool intel_fbc_pre_update(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc);
 void intel_fbc_post_update(struct intel_atomic_state *state,
-- 
2.32.0

