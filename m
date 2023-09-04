Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8CB79168D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 13:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F0610E332;
	Mon,  4 Sep 2023 11:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F39AA10E330;
 Mon,  4 Sep 2023 11:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693828561; x=1725364561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C8tBpZYHx2gH+ZtzIUcCSBa8NuggasG8Gp7U7JC3Jf0=;
 b=cbD/V8V7GzrQyxCQw8JzUezgvuNNRWwNqZTy66/hHO8h3/tcXwnzIoCx
 29gTvncjLMbQwvqhMP2WvNzGhe0gPgDqhqXCpyJ9pWDD3vWCSJMcI7aA7
 A0zGZ+PL9af2ZDyr3eZ3E+uYVq8+OdgiFq19z9qLgYyNt6g1RfM4emfrt
 r5m2gvp5Mz4YcjHKgJdHU2H3VK7o2bkGhxztPlkcv70llnR2sQxY4qGJq
 P2pqekAuZBDY19dJZvrfrsrM1JPcBSPz6QM0cVQv/34/Vjir74IhWAjVp
 DLpatuXIQgcdbrYqEGhECiuLQveA67uoh2HSDBl08Qfp1Wj0lxxzQeJa+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="440549096"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="440549096"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 04:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="810882580"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="810882580"
Received: from bagbokpo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.215.150])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 04:55:48 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon,  4 Sep 2023 14:55:16 +0300
Message-Id: <20230904115517.458662-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230904115517.458662-1-vinod.govindapillai@intel.com>
References: <20230904115517.458662-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/lnl: possibility to enable FBC
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

v4:
 - update to the plane binding register access macro

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
index aefad14ab27a..d44ac6f1c052 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1327,6 +1327,8 @@
 #define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
 #define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
 #define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
+#define   DPFC_CTL_PLANE_BINDING_MASK		REG_GENMASK(12, 11) /* lnl+ */
+#define   DPFC_CTL_PLANE_BINDING(plane_id)	REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, (plane_id))
 #define   DPFC_CTL_FALSE_COLOR			REG_BIT(10) /* ivb+ */
 #define   DPFC_CTL_SR_EN			REG_BIT(10) /* g4x only */
 #define   DPFC_CTL_SR_EXIT_DIS			REG_BIT(9) /* g4x only */
-- 
2.34.1

