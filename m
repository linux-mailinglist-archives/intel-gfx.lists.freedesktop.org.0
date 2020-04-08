Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFE71A1D8F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:47:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDD796E1D5;
	Wed,  8 Apr 2020 08:47:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC5C6E1D5
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:47:41 +0000 (UTC)
IronPort-SDR: btbPBYgINlb3g+xsFcZtOXsn6Y4ZPwiEqIMmfXtnGrg/A/gCUOAZw7pDF+cUXZJmxHUr2A7Hmz
 7tbS5ci7JqYg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 01:47:40 -0700
IronPort-SDR: /UqvaVUdDgZ/AQal6HtjDEWQiRhmOGYMlntcBBikFB/9pgWZCmABTBKwhOED5tMzk0W4+RTlGB
 bUrr5+iQL/Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="251503239"
Received: from unknown (HELO kkadiyal.iind.intel.com) ([10.223.74.161])
 by orsmga003.jf.intel.com with ESMTP; 08 Apr 2020 01:47:38 -0700
From: Kishore Kadiyala <kishore.kadiyala@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 14:17:34 +0530
Message-Id: <20200408084734.8834-1-kishore.kadiyala@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v2] drm/i915: Add Plane color encoding support
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
Cc: Kishore Kadiyala <kishore.kadiyala@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently the plane property doesn't have support for YCBCR_BT2020,
which enables the corresponding color conversion mode on plane CSC.
This propery setting is confined only to HDR Planes as there is
limitation in SDR Planes.

V2: Enabling support for YCBCT_BT2020 for HDR planes on
    platforms GLK & ICL

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index deda351719db..4c25d90d16ce 100644
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
@@ -3105,9 +3106,14 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 					   DRM_MODE_ROTATE_0,
 					   supported_rotations);
 
+	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT709);
+
+	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv) &&
+					(icl_is_hdr_plane(dev_priv, plane_id)))
+		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
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
