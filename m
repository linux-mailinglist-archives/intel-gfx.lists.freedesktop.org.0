Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CCC445597
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:45:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025676E3B2;
	Thu,  4 Nov 2021 14:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2D06E3B2
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:45:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="230433954"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="230433954"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:45:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="497973356"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 04 Nov 2021 07:45:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:04 +0200
Message-Id: <20211104144520.22605-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/17] drm/i915/fbc: Exract
 snb_fbc_program_fence()
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

We have two identical copies of the snb+ system agent
CPU fence programming code. Extract into a helper.

Also there's no real point in insisting that we
program 0 into DPFC_CPU_FENCE_OFFSET when the fence is
disabled. So just always stick the computed Y offset there
whether or not the fence is actually used or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 39 ++++++++++++------------
 1 file changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 834eb4cc7c10..6bd952a37901 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -307,6 +307,18 @@ static void intel_fbc_recompress(struct drm_i915_private *dev_priv)
 		i8xx_fbc_recompress(dev_priv);
 }
 
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
 static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
 {
 	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
@@ -320,19 +332,11 @@ static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
 		dpfc_ctl |= DPFC_CTL_FENCE_EN;
 		if (IS_IRONLAKE(dev_priv))
 			dpfc_ctl |= params->fence_id;
-		if (IS_SANDYBRIDGE(dev_priv)) {
-			intel_de_write(dev_priv, SNB_DPFC_CTL_SA,
-				       SNB_CPU_FENCE_ENABLE | params->fence_id);
-			intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET,
-				       params->fence_y_offset);
-		}
-	} else {
-		if (IS_SANDYBRIDGE(dev_priv)) {
-			intel_de_write(dev_priv, SNB_DPFC_CTL_SA, 0);
-			intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET, 0);
-		}
 	}
 
+	if (IS_SANDYBRIDGE(dev_priv))
+		snb_fbc_program_fence(dev_priv);
+
 	intel_de_write(dev_priv, ILK_DPFC_FENCE_YOFF,
 		       params->fence_y_offset);
 	/* enable it... */
@@ -389,20 +393,15 @@ static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
 
 	dpfc_ctl |= g4x_dpfc_ctl_limit(dev_priv);
 
-	if (params->fence_id >= 0) {
+	if (params->fence_id >= 0)
 		dpfc_ctl |= IVB_DPFC_CTL_FENCE_EN;
-		intel_de_write(dev_priv, SNB_DPFC_CTL_SA,
-			       SNB_CPU_FENCE_ENABLE | params->fence_id);
-		intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET,
-			       params->fence_y_offset);
-	} else if (dev_priv->ggtt.num_fences) {
-		intel_de_write(dev_priv, SNB_DPFC_CTL_SA, 0);
-		intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET, 0);
-	}
 
 	if (dev_priv->fbc.false_color)
 		dpfc_ctl |= FBC_CTL_FALSE_COLOR;
 
+	if (dev_priv->ggtt.num_fences)
+		snb_fbc_program_fence(dev_priv);
+
 	intel_de_write(dev_priv, ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
 }
 
-- 
2.32.0

