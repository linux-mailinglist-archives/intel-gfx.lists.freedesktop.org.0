Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5552B9974D9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 20:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40A110E7C0;
	Wed,  9 Oct 2024 18:22:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z8Xm6UZ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5367610E7C1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 18:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728498156; x=1760034156;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0Ru0STVd+CN/php0zvn33llsR8AGSgVwcCXqACN3DVs=;
 b=Z8Xm6UZ4fOxe3uoX0Sz6pw2ZHArf5nzrPlOo0Yk7ZeI5CmU4aZregO/T
 d8Bi4U2je1N7jBh4mQOEqcYkoD6ZuVdp5hPOpFUHs5FdWilqa1XoLKFK4
 vplsBW7XbuMbaIzhrBUTaseoqiP/j6EpPM79bwN5/bKt6vd7ghgHat6X6
 jrNqZnAk7dNySLqnfD6L2lJdqDKas5QkVAGrRvTZKazSTNmrNrC4F52DJ
 A8d7vDOS83TBBPLe+lxpfg20FgdbiF1MuHFJKxqrzQUBQaIGocYoQuL5t
 loQVjnxkIrJBW7THJkHiEabp7Jbls0lAJtzmjI6J1fz/Pxos3avtzI3Dp A==;
X-CSE-ConnectionGUID: lJJtrNHCS8SpvqJ38yaeGQ==
X-CSE-MsgGUID: spJaHYG4S6+pnbc3RT4yjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15439016"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="15439016"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 11:22:35 -0700
X-CSE-ConnectionGUID: 1kQUc/CwQZi3Kt4xasZIpw==
X-CSE-MsgGUID: qGYJjlyaSYyOJ1ijzzSpfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76430440"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 11:22:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 21:22:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915: Carve up skl_get_plane_caps()
Date: Wed,  9 Oct 2024 21:22:07 +0300
Message-ID: <20241009182207.22900-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Split skl_get_plane_caps() into four variants:
skl_plane_caps(), glk_plane_caps(), icl_plane_caps(),
tgl_plane_caps().

Makes it easier to figure out what is actually going on there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 81 +++++++++++++------
 1 file changed, 57 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index bcb48d8932d2..dcf32736d098 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2562,47 +2562,73 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
 static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
-	if (DISPLAY_VER(i915) >= 11)
-		return true;
-
-	if (IS_GEMINILAKE(i915))
-		return pipe != PIPE_C;
-
 	return pipe != PIPE_C &&
 		(plane_id == PLANE_1 || plane_id == PLANE_2);
 }
 
+static bool skl_plane_caps(struct drm_i915_private *i915,
+			   enum pipe pipe, enum plane_id plane_id)
+{
+	u8 caps = INTEL_PLANE_CAP_TILING_X |
+		INTEL_PLANE_CAP_TILING_Y |
+		INTEL_PLANE_CAP_TILING_Yf;
+
+	if (skl_plane_has_rc_ccs(i915, pipe, plane_id))
+		caps |= INTEL_PLANE_CAP_CCS_RC;
+
+	return caps;
+}
+
+static bool glk_plane_has_rc_ccs(struct drm_i915_private *i915,
+				 enum pipe pipe)
+{
+	return pipe != PIPE_C;
+}
+
+static u8 glk_plane_caps(struct drm_i915_private *i915,
+			 enum pipe pipe, enum plane_id plane_id)
+{
+	u8 caps = INTEL_PLANE_CAP_TILING_X |
+		INTEL_PLANE_CAP_TILING_Y |
+		INTEL_PLANE_CAP_TILING_Yf;
+
+	if (glk_plane_has_rc_ccs(i915, pipe))
+		caps |= INTEL_PLANE_CAP_CCS_RC;
+
+	return caps;
+}
+
+static u8 icl_plane_caps(struct drm_i915_private *i915,
+			 enum pipe pipe, enum plane_id plane_id)
+{
+	return INTEL_PLANE_CAP_TILING_X |
+		INTEL_PLANE_CAP_TILING_Y |
+		INTEL_PLANE_CAP_TILING_Yf |
+		INTEL_PLANE_CAP_CCS_RC;
+}
+
 static bool tgl_plane_has_mc_ccs(struct drm_i915_private *i915,
 				 enum plane_id plane_id)
 {
-	if (DISPLAY_VER(i915) < 12)
-		return false;
-
 	/* Wa_14010477008 */
 	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
-		(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
+	    (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
 		return false;
 
 	return plane_id < PLANE_6;
 }
 
-static u8 skl_get_plane_caps(struct drm_i915_private *i915,
-			     enum pipe pipe, enum plane_id plane_id)
+static u8 tgl_plane_caps(struct drm_i915_private *i915,
+			 enum pipe pipe, enum plane_id plane_id)
 {
-	u8 caps = INTEL_PLANE_CAP_TILING_X;
+	u8 caps = INTEL_PLANE_CAP_TILING_X |
+		INTEL_PLANE_CAP_CCS_RC |
+		INTEL_PLANE_CAP_CCS_RC_CC;
 
-	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
-		caps |= INTEL_PLANE_CAP_TILING_Y;
-	if (DISPLAY_VER(i915) < 12)
-		caps |= INTEL_PLANE_CAP_TILING_Yf;
 	if (HAS_4TILE(i915))
 		caps |= INTEL_PLANE_CAP_TILING_4;
-
-	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
-		caps |= INTEL_PLANE_CAP_CCS_RC;
-		if (DISPLAY_VER(i915) >= 12)
-			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
-	}
+	else
+		caps |= INTEL_PLANE_CAP_TILING_Y;
 
 	if (tgl_plane_has_mc_ccs(i915, plane_id))
 		caps |= INTEL_PLANE_CAP_CCS_MC;
@@ -2714,7 +2740,14 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	else
 		plane_type = DRM_PLANE_TYPE_OVERLAY;
 
-	caps = skl_get_plane_caps(dev_priv, pipe, plane_id);
+	if (DISPLAY_VER(dev_priv) >= 12)
+		caps = tgl_plane_caps(dev_priv, pipe, plane_id);
+	else if (DISPLAY_VER(dev_priv) == 11)
+		caps = icl_plane_caps(dev_priv, pipe, plane_id);
+	else if (DISPLAY_VER(dev_priv) == 10)
+		caps = glk_plane_caps(dev_priv, pipe, plane_id);
+	else
+		caps = skl_plane_caps(dev_priv, pipe, plane_id);
 
 	/* FIXME: xe has problems with AUX */
 	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(dev_priv))
-- 
2.45.2

