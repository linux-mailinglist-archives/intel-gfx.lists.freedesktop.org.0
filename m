Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C85F7A02D0
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 13:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D96C010E566;
	Thu, 14 Sep 2023 11:39:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 506DA10E264
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 11:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694691551; x=1726227551;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tBN9toc+SQHH2+Iwu4yxg9Dq85CH90m64T4vZPgtngI=;
 b=Z5T8gSHAWyi2xCpbddEbrzYypc8vZ+57dEFFonSG9WxG2XTS1JbXvRi1
 Dayr2bjD6rvZuGAqqHzuhKknk22kJyWuEFL5rWf7oapXt0JnjlquiX7/z
 dPkGYRTOjHDYoyqRouIC+a2IiK5Jv5X2Jk1u2BesH0QXwVYtholF7bz47
 ia0z8KJIvf1FvzypjnfEem60gfCXENDKA3m2VZqfXQAW0ELo2UIOuf3zt
 7aaJZKAn7MHwqcVCWZarS5KtoJopvsCbC7QWhghdskEGDAI4Q5paYO5Uu
 7PA+4K1hgbWRPX48VDxDH3nSeTS2MQc4K3IDBEAG5nGE0bimSqF6gP03X A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="359186763"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="359186763"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 04:39:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="810028962"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="810028962"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 14 Sep 2023 04:39:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Sep 2023 14:39:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 14:38:53 +0300
Message-ID: <20230914113854.10008-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/fbc: Split plane rotation checks
 per-platform
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

Carve up rotation_is_valid() into per-platform variants to
make it easier to see what limits are actually being imposed.

TODO: maybe go for vfuncs later

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 30 +++++++++++++++++++-----
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 052f9d8b53d4..1a6931e66d5d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -935,22 +935,40 @@ static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 	}
 }
 
-static bool rotation_is_valid(const struct intel_plane_state *plane_state)
+static bool i8xx_fbc_rotation_is_valid(const struct intel_plane_state *plane_state)
+{
+	return plane_state->hw.rotation == DRM_MODE_ROTATE_0;
+}
+
+static bool g4x_fbc_rotation_is_valid(const struct intel_plane_state *plane_state)
+{
+	return true;
+}
+
+static bool skl_fbc_rotation_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 
-	if (DISPLAY_VER(i915) >= 9 && fb->format->format == DRM_FORMAT_RGB565 &&
+	if (fb->format->format == DRM_FORMAT_RGB565 &&
 	    drm_rotation_90_or_270(rotation))
 		return false;
-	else if (DISPLAY_VER(i915) <= 4 && !IS_G4X(i915) &&
-		 rotation != DRM_MODE_ROTATE_0)
-		return false;
 
 	return true;
 }
 
+static bool rotation_is_valid(const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+
+	if (DISPLAY_VER(i915) >= 9)
+		return skl_fbc_rotation_is_valid(plane_state);
+	else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
+		return g4x_fbc_rotation_is_valid(plane_state);
+	else
+		return i8xx_fbc_rotation_is_valid(plane_state);
+}
+
 /*
  * For some reason, the hardware tracking starts looking at whatever we
  * programmed as the display plane base address register. It does not look at
-- 
2.41.0

