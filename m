Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D463D15D617
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 11:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8DE6E0AA;
	Fri, 14 Feb 2020 10:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 796876E0AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 10:53:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 02:53:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="234422375"
Received: from kkadiyal.iind.intel.com ([10.223.74.161])
 by orsmga003.jf.intel.com with ESMTP; 14 Feb 2020 02:53:19 -0800
From: Kishore Kadiyala <kishore.kadiyala@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 16:23:16 +0530
Message-Id: <20200214105316.16076-1-kishore.kadiyala@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] Add support for Color encoding YCBCR_BT2020
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

Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 7abeefe8dce5..5169a7260d7c 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -3011,6 +3011,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	struct intel_plane *plane;
 	enum drm_plane_type plane_type;
 	unsigned int supported_rotations;
+	unsigned int supported_csc;
 	unsigned int possible_crtcs;
 	const u64 *modifiers;
 	const u32 *formats;
@@ -3088,9 +3089,13 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
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
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
