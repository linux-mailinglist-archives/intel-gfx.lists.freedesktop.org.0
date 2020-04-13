Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6B91A6370
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 09:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E3F6E194;
	Mon, 13 Apr 2020 07:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7054D6E194
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 07:13:52 +0000 (UTC)
IronPort-SDR: OclHY3xPy5QEe7OrTRpdt3skHru+Gt3zpC1GVLZonUv7vY2uHwUnOwrt9ALUWaCDjbvBStKy7b
 2K7KByN3bVIA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 00:13:51 -0700
IronPort-SDR: 9C2mLZtTn6SbFKtH40ncCNKRzEz+lY6r9S4/1KdcqGTD8qeHqKcqhQXKTJhN/ERLourg5T532V
 XDg3o+aSaTNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,377,1580803200"; d="scan'208";a="426605350"
Received: from unknown (HELO kkadiyal.iind.intel.com) ([10.223.74.161])
 by orsmga005.jf.intel.com with ESMTP; 13 Apr 2020 00:13:49 -0700
From: Kishore Kadiyala <kishore.kadiyala@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Apr 2020 12:43:46 +0530
Message-Id: <20200413071346.14612-1-kishore.kadiyala@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v6] drm/i915: Add Plane color encoding support
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
Enabling the plane property for the planes for GLK & ICL+ platforms.
Also as per spec, update the Plane Color CSC from YUV601_TO_RGB709
to YUV601_TO_RGB601.

V2: Enabling support for YCBCT_BT2020 for HDR planes on
    platforms GLK & ICL

V3: Refined the condition check to handle GLK & ICL+ HDR planes
    Also added BT2020 handling in glk_plane_color_ctl.

V4: Combine If-else into single If

V5: Drop the checking for HDR planes and enable YCBCR_BT2020
    for platforms GLK & ICL+.

V6: As per Spec, update PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709
    to PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601 as per Ville's
    feedback.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_sprite.c  |  9 +++++++--
 drivers/gpu/drm/i915/i915_reg.h              |  2 +-
 3 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 70ec301fe6e3..dc28f88a83b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4808,11 +4808,18 @@ u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 	plane_color_ctl |= glk_plane_color_ctl_alpha(plane_state);
 
 	if (fb->format->is_yuv && !icl_is_hdr_plane(dev_priv, plane->id)) {
-		if (plane_state->hw.color_encoding == DRM_COLOR_YCBCR_BT709)
+		switch (plane_state->hw.color_encoding) {
+		case DRM_COLOR_YCBCR_BT709:
 			plane_color_ctl |= PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
-		else
-			plane_color_ctl |= PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709;
-
+			break;
+		case DRM_COLOR_YCBCR_BT2020:
+			plane_color_ctl |=
+				PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
+			break;
+		default:
+			plane_color_ctl |=
+				PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
+		}
 		if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
 			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	} else if (fb->format->is_yuv) {
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index deda351719db..0072525046a1 100644
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
@@ -3105,9 +3106,13 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 					   DRM_MODE_ROTATE_0,
 					   supported_rotations);
 
+	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT709);
+
+	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
+
 	drm_plane_create_color_properties(&plane->base,
-					  BIT(DRM_COLOR_YCBCR_BT601) |
-					  BIT(DRM_COLOR_YCBCR_BT709),
+					  supported_csc,
 					  BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
 					  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
 					  DRM_COLOR_YCBCR_BT709,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1a7bd6db164b..9ba2b185d513 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6946,7 +6946,7 @@ enum {
 #define   PLANE_COLOR_INPUT_CSC_ENABLE		(1 << 20) /* ICL+ */
 #define   PLANE_COLOR_PIPE_CSC_ENABLE		(1 << 23) /* Pre-ICL */
 #define   PLANE_COLOR_CSC_MODE_BYPASS			(0 << 17)
-#define   PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709		(1 << 17)
+#define   PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601		BIT(17)
 #define   PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709		(2 << 17)
 #define   PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020	(3 << 17)
 #define   PLANE_COLOR_CSC_MODE_RGB709_TO_RGB2020	(4 << 17)
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
