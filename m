Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A28E67E6E4B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 17:08:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8547510E8E5;
	Thu,  9 Nov 2023 16:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 202F810E8E6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 16:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699546121; x=1731082121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p3NGGKTgArN/v6ynAQZHcTrirQMLDaqxV4ChcLW3UMA=;
 b=QaE9u7Hc6aP2kTvdKs8hz4fqCtJP7MSUU7OftE0a7LOiRAxa6AHVVVg1
 XYOMI8qvhOnDhc+2KjmxWxhkqLO074p3k1amgQ8QqSgI+rPQ/sfdAhc0S
 eAA623u1JiewcxGctKwC4NZkMfQqgLc0aF0OAgKCgETr7INzqNBL3RVxq
 U7eGeUQGPzomOkmuOFSxwJjuRPzOJZOrH1uFHCwrkgEkRuDShr1VXZWEB
 5fY1qNtINJJOAvkj+JOeXyvyt1nTGTEgbe/mu2yl14iBMzA9xwmHqknTB
 3sRKIVk0nGmYS4azs8D6xxUyM6eRgnCqy1m4nVG8CsiqqrxlY2IB4ayP7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="421110765"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="421110765"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 08:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="887050493"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="887050493"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 08:07:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Nov 2023 18:07:21 +0200
Message-Id: <20231109160722.3372379-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: abstract plane protection check
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Centralize the conditions in a function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 68035675ae3c..98acf25a5ca3 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1866,6 +1866,19 @@ static bool pxp_is_borked(struct drm_i915_gem_object *obj)
 	return i915_gem_object_is_protected(obj) && !bo_has_valid_encryption(obj);
 }
 
+static void check_protection(struct intel_plane_state *plane_state)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	if (DISPLAY_VER(i915) < 11)
+		return;
+
+	plane_state->decrypt = bo_has_valid_encryption(intel_fb_obj(fb));
+	plane_state->force_black = pxp_is_borked(intel_fb_obj(fb));
+}
+
 static int skl_plane_check(struct intel_crtc_state *crtc_state,
 			   struct intel_plane_state *plane_state)
 {
@@ -1910,10 +1923,7 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
-		plane_state->decrypt = bo_has_valid_encryption(intel_fb_obj(fb));
-		plane_state->force_black = pxp_is_borked(intel_fb_obj(fb));
-	}
+	check_protection(plane_state);
 
 	/* HW only has 8 bits pixel precision, disable plane if invisible */
 	if (!(plane_state->hw.alpha >> 8))
-- 
2.39.2

