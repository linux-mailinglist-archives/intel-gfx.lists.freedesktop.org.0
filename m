Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A122445598
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:45:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941A66E3D0;
	Thu,  4 Nov 2021 14:45:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BB646E3D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:45:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="212463154"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="212463154"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:45:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="639364934"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 04 Nov 2021 07:45:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:05 +0200
Message-Id: <20211104144520.22605-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/17] drm/i915/fbc: Extract {skl,
 glk}_fbc_program_cfb_stride()
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

Declutter gen7_fbc_activate() by sucking the override
stride programming stuff into helpers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 53 +++++++++++++++---------
 1 file changed, 33 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6bd952a37901..c95a32f1985a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -360,32 +360,45 @@ static bool ilk_fbc_is_active(struct drm_i915_private *dev_priv)
 	return intel_de_read(dev_priv, ILK_DPFC_CONTROL) & DPFC_CTL_EN;
 }
 
+static void glk_fbc_program_cfb_stride(struct drm_i915_private *i915)
+{
+	struct intel_fbc *fbc = &i915->fbc;
+	const struct intel_fbc_reg_params *params = &fbc->params;
+	u32 val = 0;
+
+	if (params->override_cfb_stride)
+		val |= FBC_STRIDE_OVERRIDE |
+			FBC_STRIDE(params->override_cfb_stride / fbc->limit);
+
+	intel_de_write(i915, GLK_FBC_STRIDE, val);
+}
+
+static void skl_fbc_program_cfb_stride(struct drm_i915_private *i915)
+{
+	struct intel_fbc *fbc = &i915->fbc;
+	const struct intel_fbc_reg_params *params = &fbc->params;
+	u32 val = 0;
+
+	/* Display WA #0529: skl, kbl, bxt. */
+	if (params->override_cfb_stride)
+		val |= CHICKEN_FBC_STRIDE_OVERRIDE |
+			CHICKEN_FBC_STRIDE(params->override_cfb_stride / fbc->limit);
+
+	intel_de_rmw(i915, CHICKEN_MISC_4,
+		     CHICKEN_FBC_STRIDE_OVERRIDE |
+		     CHICKEN_FBC_STRIDE_MASK, val);
+}
+
 static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
 {
 	struct intel_fbc *fbc = &dev_priv->fbc;
 	const struct intel_fbc_reg_params *params = &fbc->params;
 	u32 dpfc_ctl;
 
-	if (DISPLAY_VER(dev_priv) >= 10) {
-		u32 val = 0;
-
-		if (params->override_cfb_stride)
-			val |= FBC_STRIDE_OVERRIDE |
-				FBC_STRIDE(params->override_cfb_stride / fbc->limit);
-
-		intel_de_write(dev_priv, GLK_FBC_STRIDE, val);
-	} else if (DISPLAY_VER(dev_priv) == 9) {
-		u32 val = 0;
-
-		/* Display WA #0529: skl, kbl, bxt. */
-		if (params->override_cfb_stride)
-			val |= CHICKEN_FBC_STRIDE_OVERRIDE |
-				CHICKEN_FBC_STRIDE(params->override_cfb_stride / fbc->limit);
-
-		intel_de_rmw(dev_priv, CHICKEN_MISC_4,
-			     CHICKEN_FBC_STRIDE_OVERRIDE |
-			     CHICKEN_FBC_STRIDE_MASK, val);
-	}
+	if (DISPLAY_VER(dev_priv) >= 10)
+		glk_fbc_program_cfb_stride(dev_priv);
+	else if (DISPLAY_VER(dev_priv) == 9)
+		skl_fbc_program_cfb_stride(dev_priv);
 
 	dpfc_ctl = 0;
 	if (IS_IVYBRIDGE(dev_priv))
-- 
2.32.0

