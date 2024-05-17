Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C768C8A9F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 19:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D8DD10EF20;
	Fri, 17 May 2024 17:12:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O49v0Z0Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFBB810EF20
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 17:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715965934; x=1747501934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GtBFtbwuUdMVujW3YQOOSrG62a2r9s16hYSGKacLr/A=;
 b=O49v0Z0YoGdYYDT4r+c92sxuDx5V56/Mx4bg1MIM6QGnQLSwB9NliFjC
 iyVyPrqIAP8QP0NtS+MF4j1eExXbn0/VtojBHBrnCzadZuaRZceBtiQZa
 vIrRl00gF4iVrcCwGgYc90c0VyI+UPAIwFTn0lBk7xwxFMd2VEytp4MFQ
 CZF1nhfVUZxf4aux1oPKLQdgFQL1F7L3PYH9F9t2PzzwRXnmJNOCPmpgP
 e0CuosStSlSPAS+lntUOYQk41rp+CLlVz9qgk9JHoMflOIotFIbwSlGSY
 p0ZTU/akGJIXvynYzczNkbJxl1Z45YifZf4ybuNVb79KcGYMrFp7MeH/w w==;
X-CSE-ConnectionGUID: 7FZtenH2Sd6Ibxc8LYTK4g==
X-CSE-MsgGUID: X8TyNgm1THyobblq3o5Z5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="29666316"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="29666316"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 10:12:11 -0700
X-CSE-ConnectionGUID: sXc1eUf7RieixGBlepo68Q==
X-CSE-MsgGUID: T2NbBsv4SaacoEXpfyOVlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31842530"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 May 2024 10:12:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2024 20:12:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 01/13] drm/i915: Add skl+ plane name aliases to enum
 plane_id
Date: Fri, 17 May 2024 20:12:08 +0300
Message-ID: <20240517171208.21313-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240516135622.3498-2-ville.syrjala@linux.intel.com>
References: <20240516135622.3498-2-ville.syrjala@linux.intel.com>
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

Using PLANE_PRIMARY + PLANE_SPRITE? on skl+ results in a bunch
of unnecessary head scratching. Add aliases using the skl+ plane
names.
And for pre-skl we only need to keep PRIMARY,SPRITE0,SPRITE1
as we only ever have 0-2 sprites per pipe on those platforms.

v2: Don't break icl_nv12_y_plane_mask() (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  6 ++----
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +++----
 .../drm/i915/display/intel_display_limits.h   | 21 ++++++++++++-------
 .../gpu/drm/i915/display/intel_sprite_uapi.c  |  2 +-
 .../drm/i915/display/skl_universal_plane.c    | 19 ++++++++---------
 5 files changed, 30 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 339010384b86..ca6dc1dc56c8 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -310,8 +310,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 	crtc->num_scalers = DISPLAY_RUNTIME_INFO(dev_priv)->num_scalers[pipe];
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		primary = skl_universal_plane_create(dev_priv, pipe,
-						     PLANE_PRIMARY);
+		primary = skl_universal_plane_create(dev_priv, pipe, PLANE_1);
 	else
 		primary = intel_primary_plane_create(dev_priv, pipe);
 	if (IS_ERR(primary)) {
@@ -326,8 +325,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 		struct intel_plane *plane;
 
 		if (DISPLAY_VER(dev_priv) >= 9)
-			plane = skl_universal_plane_create(dev_priv, pipe,
-							   PLANE_SPRITE0 + sprite);
+			plane = skl_universal_plane_create(dev_priv, pipe, PLANE_2 + sprite);
 		else
 			plane = intel_sprite_plane_create(dev_priv, pipe, sprite);
 		if (IS_ERR(plane)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cce1420fb541..ee2df655b0ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4121,13 +4121,13 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 		linked_state->uapi.dst = plane_state->uapi.dst;
 
 		if (icl_is_hdr_plane(dev_priv, plane->id)) {
-			if (linked->id == PLANE_SPRITE5)
+			if (linked->id == PLANE_7)
 				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_7_ICL;
-			else if (linked->id == PLANE_SPRITE4)
+			else if (linked->id == PLANE_6)
 				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_6_ICL;
-			else if (linked->id == PLANE_SPRITE3)
+			else if (linked->id == PLANE_5)
 				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_5_RKL;
-			else if (linked->id == PLANE_SPRITE2)
+			else if (linked->id == PLANE_4)
 				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_4_RKL;
 			else
 				MISSING_CASE(linked->id);
diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
index 5126d0b5ae5d..c4775c99dc83 100644
--- a/drivers/gpu/drm/i915/display/intel_display_limits.h
+++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
@@ -60,16 +60,23 @@ enum transcoder {
  * (eg. PLANE_CTL(), PS_PLANE_SEL(), etc.) so adjust with care.
  */
 enum plane_id {
-	PLANE_PRIMARY,
-	PLANE_SPRITE0,
-	PLANE_SPRITE1,
-	PLANE_SPRITE2,
-	PLANE_SPRITE3,
-	PLANE_SPRITE4,
-	PLANE_SPRITE5,
+	/* skl+ universal plane names */
+	PLANE_1,
+	PLANE_2,
+	PLANE_3,
+	PLANE_4,
+	PLANE_5,
+	PLANE_6,
+	PLANE_7,
+
 	PLANE_CURSOR,
 
 	I915_MAX_PLANES,
+
+	/* pre-skl plane names */
+	PLANE_PRIMARY = PLANE_1,
+	PLANE_SPRITE0,
+	PLANE_SPRITE1,
 };
 
 enum port {
diff --git a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
index a76b48ebc2d3..4853c4806004 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
@@ -74,7 +74,7 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 	 * pipe simultaneously.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 9 &&
-	    to_intel_plane(plane)->id >= PLANE_SPRITE1 &&
+	    to_intel_plane(plane)->id >= PLANE_3 &&
 	    set->flags & I915_SET_COLORKEY_DESTINATION)
 		return -EINVAL;
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 32d10e62b2b9..d99fec8e5233 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -238,9 +238,9 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
 {
 	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
-		return BIT(PLANE_SPRITE2) | BIT(PLANE_SPRITE3);
+		return BIT(PLANE_4) | BIT(PLANE_5);
 	else
-		return BIT(PLANE_SPRITE4) | BIT(PLANE_SPRITE5);
+		return BIT(PLANE_6) | BIT(PLANE_7);
 }
 
 bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
@@ -252,7 +252,7 @@ bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
 
 u8 icl_hdr_plane_mask(void)
 {
-	return BIT(PLANE_PRIMARY) | BIT(PLANE_SPRITE0) | BIT(PLANE_SPRITE1);
+	return BIT(PLANE_1) | BIT(PLANE_2) | BIT(PLANE_3);
 }
 
 bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id plane_id)
@@ -2099,7 +2099,7 @@ static bool skl_plane_has_fbc(struct drm_i915_private *i915,
 	if (DISPLAY_VER(i915) >= 20)
 		return icl_is_hdr_plane(i915, plane_id);
 	else
-		return plane_id == PLANE_PRIMARY;
+		return plane_id == PLANE_1;
 }
 
 static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
@@ -2123,7 +2123,7 @@ static bool skl_plane_has_planar(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) == 9 && pipe == PIPE_C)
 		return false;
 
-	if (plane_id != PLANE_PRIMARY && plane_id != PLANE_SPRITE0)
+	if (plane_id != PLANE_1 && plane_id != PLANE_2)
 		return false;
 
 	return true;
@@ -2331,8 +2331,7 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 		return pipe != PIPE_C;
 
 	return pipe != PIPE_C &&
-		(plane_id == PLANE_PRIMARY ||
-		 plane_id == PLANE_SPRITE0);
+		(plane_id == PLANE_1 || plane_id == PLANE_2);
 }
 
 static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
@@ -2350,7 +2349,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
 		return false;
 
-	return plane_id < PLANE_SPRITE4;
+	return plane_id < PLANE_6;
 }
 
 static u8 skl_get_plane_caps(struct drm_i915_private *i915,
@@ -2439,7 +2438,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	plane->get_hw_state = skl_plane_get_hw_state;
 	plane->check_plane = skl_plane_check;
 
-	if (plane_id == PLANE_PRIMARY) {
+	if (plane_id == PLANE_1) {
 		plane->need_async_flip_toggle_wa = IS_DISPLAY_VER(dev_priv, 9, 10);
 		plane->async_flip = skl_plane_async_flip;
 		plane->enable_flip_done = skl_plane_enable_flip_done;
@@ -2461,7 +2460,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	else
 		plane_funcs = &skl_plane_funcs;
 
-	if (plane_id == PLANE_PRIMARY)
+	if (plane_id == PLANE_1)
 		plane_type = DRM_PLANE_TYPE_PRIMARY;
 	else
 		plane_type = DRM_PLANE_TYPE_OVERLAY;
-- 
2.44.1

