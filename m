Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1393378FF24
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 16:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6896E10E7F8;
	Fri,  1 Sep 2023 14:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF3410E7F7;
 Fri,  1 Sep 2023 14:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693578448; x=1725114448;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5xa/d19X9gS2UNTVLOxgWKBIC0NgV4c9JuTdMd4Wrpg=;
 b=iPOayW/fWdmwO2B6iDfnGUF4Z79EsZLz+VQMm/SeBBchxqSuAq76QYvN
 7x3obW3bIv8D+2aU5r47rOoZhKaPqXhtjr7t9DGhZEFluAHKo/7phnF4b
 pNUak5EtTOjpIB/O/NXYoFtjiPWle3uPk7bNgOud+TN8PssYypKgmjLLi
 Ts9UUs/PFqvNi0Tz/3f7oRO6Eu9hxwm+pfpf3UOouwPkI7KRc99MlDrwT
 uI1X/CDP1tNKxsTtIBjMorGYDPmh4EgUqX4xO3YPX7+/5JCzondweVDiR
 +VroaxSbpLEak0Py0Xp7o1aCo4xqbPd1jwOiIKV7d3gnthrkSQAgPvrb4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="356540686"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="356540686"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 07:27:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="739951389"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="739951389"
Received: from jeroenke-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.59.110])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 07:27:25 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Fri,  1 Sep 2023 17:27:08 +0300
Message-Id: <20230901142709.269161-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230901142709.269161-1-vinod.govindapillai@intel.com>
References: <20230901142709.269161-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/lnl: possibility to enable FBC
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In LNL onwards, FBC can be associated to the first three planes.
FBC will be enabled on planes first come first served basis
until the userspace can select one of these FBC capable planes
explicitly.

v2:
 - avoid fbc->state.plane check in intel_fbc_check_plane (Ville)
 - simplify plane binding register writes (Matt)
 - Update the subject to reflect that fbc can be enabled only in
   the first three planes (Matt)

v3:
 - use icl_is_hdr_plane(), use wrapper macro for plane binding
   register access, comments update and patch split (Ville)

Bspec: 69560
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c           | 3 +++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 9 ++++++---
 drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 66c8aed07bbc..a3999ad95a19 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -660,6 +660,9 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 	if (IS_IVYBRIDGE(i915))
 		dpfc_ctl |= DPFC_CTL_PLANE_IVB(fbc_state->plane->i9xx_plane);
 
+	if (DISPLAY_VER(i915) >= 20)
+		dpfc_ctl |= DPFC_CTL_PLANE_BINDING(fbc_state->plane->id);
+
 	if (fbc_state->fence_id >= 0)
 		dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 4d01c7ae4485..8f946c5a2fd8 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1956,13 +1956,16 @@ static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
 	return pipe - PIPE_A + INTEL_FBC_A;
 }
 
-static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
+static bool skl_plane_has_fbc(struct drm_i915_private *i915,
 			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
 {
-	if ((DISPLAY_RUNTIME_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) == 0)
+	if ((DISPLAY_RUNTIME_INFO(i915)->fbc_mask & BIT(fbc_id)) == 0)
 		return false;
 
-	return plane_id == PLANE_PRIMARY;
+	if (DISPLAY_VER(i915) >= 20)
+		return icl_is_hdr_plane(i915, plane_id);
+	else
+		return plane_id == PLANE_PRIMARY;
 }
 
 static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index aefad14ab27a..a3a3e37fb8fb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1327,6 +1327,8 @@
 #define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
 #define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
 #define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
+#define   DPFC_CTL_PLANE_BINDING_MASK		REG_GENMASK(12, 11) /* lnl+ */
+#define   DPFC_CTL_PLANE_BINDING(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, (i9xx_plane))
 #define   DPFC_CTL_FALSE_COLOR			REG_BIT(10) /* ivb+ */
 #define   DPFC_CTL_SR_EN			REG_BIT(10) /* g4x only */
 #define   DPFC_CTL_SR_EXIT_DIS			REG_BIT(9) /* g4x only */
-- 
2.34.1

