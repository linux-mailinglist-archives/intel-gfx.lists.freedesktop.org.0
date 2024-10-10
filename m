Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C0E998DC3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 18:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5A010E0CA;
	Thu, 10 Oct 2024 16:46:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ESd28x7/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80EE010E0CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 16:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728578780; x=1760114780;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TxgHpohDE2tG6DkwAZ8RTiEg0duu2SIDsiH/6j9Mm0I=;
 b=ESd28x7/kcWZebSFXjDwy6oVQ1VLvFqf6rdHzMrNp/SG66mNSLQYFd1p
 nb6eee/6P6/e0PnCU/suLkZ9ozb3KoFydixRd8v4yxN3IB/AstAZnctKR
 cRXJS0JZo8KXp208CNvOFOOix2Y7yfxDXtLFRG/njsBpTwiwOTQ59QAdJ
 ynM3RCXABlHxwsmzqWCxEEO/NBPSDiMg5aQA0i61DzuEPgoH7iM/S2MJe
 i53zPz+bGVgl0cR7UnB6wbvX0I4kBq9x1CNecU52uxiVqq8jnnQs5MpFy
 5bJLos9nOiZnvMh7dhgQfhaODOi3dOuyR5z7sQKcaM0xRkeCdx78L7/H1 A==;
X-CSE-ConnectionGUID: /OQ9LTWXSNuhxdIcvQfQCw==
X-CSE-MsgGUID: BbGoQmG4SySrA6aajyPc1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38598553"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="38598553"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 09:46:20 -0700
X-CSE-ConnectionGUID: KaiGfomkRiypikC4Ssqzcw==
X-CSE-MsgGUID: hkmCSxrFRnqPm+YvIVySlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="76739290"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Oct 2024 09:46:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Oct 2024 19:46:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 9/9] drm/i915: Carve up skl_get_plane_caps()
Date: Thu, 10 Oct 2024 19:46:17 +0300
Message-ID: <20241010164617.10280-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241009182207.22900-10-ville.syrjala@linux.intel.com>
References: <20241009182207.22900-10-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 81 +++++++++++++------
 1 file changed, 57 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index bcb48d8932d2..4924fc3619c5 100644
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

