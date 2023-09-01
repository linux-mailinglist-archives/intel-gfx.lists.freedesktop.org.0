Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485DA78FDEC
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B0B10E7C0;
	Fri,  1 Sep 2023 13:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36C410E7C0;
 Fri,  1 Sep 2023 13:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573213; x=1725109213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=acbrfvgFxeEHNb3r8TtH3yGFJzi2EVvtls/pVHiReoQ=;
 b=n2cykauLuMbfUsFf34ixJLd9gpca4rQxia6OVvVvpZiRNuu7oPmTX75+
 7gdrzr4DiXaIIdB/G4rGBhYkiqbkfE4btHpO/IKc5T3+cOmJ8jqiPzgiq
 gyXuU2iqLAaom8OO9wNHVQonqC86OfLOWsLJr2dN54H62SB2S3zu841u7
 zi29wWA8ql92K9W77grl+8ErXVRK4mv1ed+j1DPUPETSZPUSrAZxDMFpk
 e87HTE/pXTkKd41RyD0ZcE0LTbcbxeVSmZWlNy6o24Gm1/jLzHpAchIpC
 uciHZxnZDaBBRmrZXWytFIwlq92V2zoUoK/ucVLnivA07MzFum4mM3pNL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="442607808"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="442607808"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="913681936"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="913681936"
Received: from jeroenke-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.59.110])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:00:10 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Fri,  1 Sep 2023 15:59:50 +0300
Message-Id: <20230901125950.76088-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230901125950.76088-1-vinod.govindapillai@intel.com>
References: <20230901125950.76088-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/lnl: possibility to enable FBC
 on first three planes
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
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com,
 ville.syraja@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In LNL onwards, FBC can be associated to the first three planes.
FBC will be enabled on planes first come first served basis
until the userspace can select one of these FBC capable plane
explicitly. FBC can be supported in planes with per pixel alpha

v2:
 - avoid fbc->state.plane check in intel_fbc_check_plane (Ville)
 - simplify plane binding register writes (Matt)
 - Update the subject to reflect that fbc can be enabled only in
   the first three planes (Matt)

Bspec: 69560
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c           | 7 ++++++-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 ++++-
 drivers/gpu/drm/i915/i915_reg.h                    | 1 +
 3 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 66c8aed07bbc..f1537bb63775 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -660,6 +660,10 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 	if (IS_IVYBRIDGE(i915))
 		dpfc_ctl |= DPFC_CTL_PLANE_IVB(fbc_state->plane->i9xx_plane);
 
+	if (DISPLAY_VER(i915) >= 20)
+		dpfc_ctl |= REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK,
+					   fbc_state->plane->id);
+
 	if (fbc_state->fence_id >= 0)
 		dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
 
@@ -1206,7 +1210,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	if (plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
+	if (DISPLAY_VER(i915) < 20 &&
+	    plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
 	    fb->format->has_alpha) {
 		plane_state->no_fbc_reason = "per-pixel alpha not supported";
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 4d01c7ae4485..1291351c9941 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1962,7 +1962,10 @@ static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
 	if ((DISPLAY_RUNTIME_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) == 0)
 		return false;
 
-	return plane_id == PLANE_PRIMARY;
+	if (DISPLAY_VER(dev_priv) >= 20)
+		return plane_id <= PLANE_SPRITE1;
+	else
+		return plane_id == PLANE_PRIMARY;
 }
 
 static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index aefad14ab27a..aadcc630cb52 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1327,6 +1327,7 @@
 #define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
 #define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
 #define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
+#define   DPFC_CTL_PLANE_BINDING_MASK		REG_GENMASK(12, 11) /* lnl */
 #define   DPFC_CTL_FALSE_COLOR			REG_BIT(10) /* ivb+ */
 #define   DPFC_CTL_SR_EN			REG_BIT(10) /* g4x only */
 #define   DPFC_CTL_SR_EXIT_DIS			REG_BIT(9) /* g4x only */
-- 
2.34.1

