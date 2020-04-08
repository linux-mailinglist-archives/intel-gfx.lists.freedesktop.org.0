Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 773301A1FA2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 13:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E1336EA2A;
	Wed,  8 Apr 2020 11:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55CB16EA2A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 11:14:02 +0000 (UTC)
IronPort-SDR: iaBPLp8OQuj3+IyxYNn9yDS68swe2kLI5i3ldwEfkKy+tCtqQCZNLSdr8aT6+9zJnkQAZCcVPp
 9UR6ZQbeYa6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 04:14:01 -0700
IronPort-SDR: V4oChAsqhCZ8c2gf5uHsNZlPnxt8oHm7oVRv/KYIwwzlIOeQ4ifwbmtmtERck+ZwkdWuwVefpe
 0WaN0RQ7B2Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="286512118"
Received: from unknown (HELO kkadiyal.iind.intel.com) ([10.223.74.161])
 by fmsmga002.fm.intel.com with ESMTP; 08 Apr 2020 04:13:59 -0700
From: Kishore Kadiyala <kishore.kadiyala@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 16:43:47 +0530
Message-Id: <20200408111347.5156-1-kishore.kadiyala@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v3] drm/i915: Add Plane color encoding support
 for YCBCR_BT2020
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Kishore Kadiyala <kishore.kadiyala@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently the plane property doesn't have support for YCBCR_BT2020,
which enables the corresponding color conversion mode on plane CSC.
In ICL+ platforms , this property setting is confined only to HDR
Planes as there is limitation in SDR Planes and while in GLK it
set for all planes.

V2: Enabling support for YCBCT_BT2020 for HDR planes on
    platforms GLK & ICL

V3: Refined the condition check to handle GLK & ICL+ HDR planes
    Also added BT2020 handling in glk_plane_color_ctl.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
 drivers/gpu/drm/i915/display/intel_sprite.c  | 17 +++++++++++++++--
 2 files changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 70ec301fe6e3..f2dfa61a49fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4808,11 +4808,17 @@ u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 	plane_color_ctl |= glk_plane_color_ctl_alpha(plane_state);
 
 	if (fb->format->is_yuv && !icl_is_hdr_plane(dev_priv, plane->id)) {
-		if (plane_state->hw.color_encoding == DRM_COLOR_YCBCR_BT709)
+		switch (plane_state->hw.color_encoding) {
+		case DRM_COLOR_YCBCR_BT709:
 			plane_color_ctl |= PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
-		else
+			break;
+		case DRM_COLOR_YCBCR_BT2020:
+			plane_color_ctl |=
+					PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
+			break;
+		default:
 			plane_color_ctl |= PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709;
-
+		}
 		if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
 			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	} else if (fb->format->is_yuv) {
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index deda351719db..237c4b951f02 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -3031,6 +3031,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	struct intel_plane *plane;
 	enum drm_plane_type plane_type;
 	unsigned int supported_rotations;
+	unsigned int supported_csc;
 	const u64 *modifiers;
 	const u32 *formats;
 	int num_formats;
@@ -3105,9 +3106,21 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 					   DRM_MODE_ROTATE_0,
 					   supported_rotations);
 
+	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT709);
+
+	/*
+	 * Setting the CSC BT2020 for all the planes in case of GLK
+	 * While for ICL+ platforms it is set only for HDR planes 1 through 3
+	 * as there are issues seen with SDR planes
+	 */
+	if ((INTEL_GEN(dev_priv) == 10) ||  IS_GEMINILAKE(dev_priv))
+		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
+	else
+		if (icl_is_hdr_plane(dev_priv, plane_id))
+			supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
+
 	drm_plane_create_color_properties(&plane->base,
-					  BIT(DRM_COLOR_YCBCR_BT601) |
-					  BIT(DRM_COLOR_YCBCR_BT709),
+					  supported_csc,
 					  BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
 					  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
 					  DRM_COLOR_YCBCR_BT709,
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
