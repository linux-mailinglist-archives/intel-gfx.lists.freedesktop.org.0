Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 945EE9E0490
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 15:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B07C10E75E;
	Mon,  2 Dec 2024 14:14:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oq5DA4eD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39A3310E75E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733148894; x=1764684894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CFYr3jjhVaoHw7QEPZUQpCbwNjqQ/5WgXVYVOtRzKTc=;
 b=Oq5DA4eDb29MPD3WEZH2m/X6F3TOadbhJXuZOecSoG9fvolIpFD7TXxj
 RWopSIkLTiMmt84+d8FQK91pjIM26O14dudtEPgBDsGkKBIRTRIzCTDJp
 oVZJ+kPwu8FyDU/N8yAgaVIrf/z2EUZVkrCEQEnBV8+l5zoJ5uWgCHxn3
 z8P3QUheGqh4Qyezc/Qet5Ne3LnPyG7oTiVzMeKNF6ENa3xo8X2ULASjf
 E1t6OIJpT+Q0bNN+va6T+PkiM7Co22XYsTevX+2jOJFkObq2x2MsPD4/d
 BkY10LOmMNlioJFW0jFmFScVazHA9hRnf+K4l9SVer/3GiIlPRb8sXX6Y g==;
X-CSE-ConnectionGUID: oT3pnjzRQxWdajZsxz64rA==
X-CSE-MsgGUID: mVMOLaaVSQyfxuZqnz8GeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="55807273"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="55807273"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 06:14:53 -0800
X-CSE-ConnectionGUID: HizgTLT9Q+GPS+LOHtEJJg==
X-CSE-MsgGUID: MYdSz/ffTQK24ZWTJMOeHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93287773"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Dec 2024 06:14:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Dec 2024 16:14:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 9/9] drm/i915: Carve up skl_get_plane_caps()
Date: Mon,  2 Dec 2024 16:14:24 +0200
Message-ID: <20241202141424.21446-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
References: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
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

v2: skl_plane_caps() should return u8 not bool
v3: Rebase due to intel_display changes

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 81 +++++++++++++------
 1 file changed, 57 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index b06dc106305e..26a44da63352 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2589,48 +2589,74 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
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
 
+static u8 skl_plane_caps(struct drm_i915_private *i915,
+			 enum pipe pipe, enum plane_id plane_id)
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
 	struct intel_display *display = &i915->display;
-	u8 caps = INTEL_PLANE_CAP_TILING_X;
+	u8 caps = INTEL_PLANE_CAP_TILING_X |
+		INTEL_PLANE_CAP_CCS_RC |
+		INTEL_PLANE_CAP_CCS_RC_CC;
 
-	if (DISPLAY_VER(display) < 13 || display->platform.alderlake_p)
-		caps |= INTEL_PLANE_CAP_TILING_Y;
-	if (DISPLAY_VER(display) < 12)
-		caps |= INTEL_PLANE_CAP_TILING_Yf;
 	if (HAS_4TILE(display))
 		caps |= INTEL_PLANE_CAP_TILING_4;
-
-	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
-		caps |= INTEL_PLANE_CAP_CCS_RC;
-		if (DISPLAY_VER(display) >= 12)
-			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
-	}
+	else
+		caps |= INTEL_PLANE_CAP_TILING_Y;
 
 	if (tgl_plane_has_mc_ccs(i915, plane_id))
 		caps |= INTEL_PLANE_CAP_CCS_MC;
@@ -2746,7 +2772,14 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
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

