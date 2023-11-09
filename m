Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 726A97E6E43
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 17:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AA5310E8E2;
	Thu,  9 Nov 2023 16:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D931E10E8E2
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 16:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699546063; x=1731082063;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HVeAa+/OpKqoScFpiuJpvVMfKDd9F8Ks6l46QcSdRuU=;
 b=Rdgb1OwI+ey2oYcUHckSE2nxnUc9R48hDG7411qiARtTzjGHBAR2/dr9
 88wi4GqPVGh0KMSavXStF3NWnI/IXPGbx5xotrkN9uAWSChuJRpRWM7RQ
 XtBoLfKG8s8a80LWzYBO3T/lsGKtDuuAG+PnqvNgHVnCh8jR/mThUQksP
 ozvp9VEA6/WBltNafnTPUmxwjDgJ9A5j7MV5E5CoKntZtz9CmeMKUYWCv
 a3peEmdLPE/touhSWU218dw1WPKz6Ikq/bwU6DtvFNowzZ6//H20q6hJK
 VrSFWdpFo5eu19OtjT1IQrFuVtOStVsnQLXGNWGkTDYOiS/PmYIN5Vbuh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="392883446"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="392883446"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 08:07:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="739882807"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="739882807"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 08:07:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Nov 2023 18:07:22 +0200
Message-Id: <20231109160722.3372379-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231109160722.3372379-1-jani.nikula@intel.com>
References: <20231109160722.3372379-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: remove excess functions from
 plane protection check
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

Reduce the function calls by reusing ->decrypt.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 98acf25a5ca3..39499a0ec6c0 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1854,29 +1854,19 @@ static bool skl_fb_scalable(const struct drm_framebuffer *fb)
 	}
 }
 
-static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
-{
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-
-	return intel_pxp_key_check(i915->pxp, obj, false) == 0;
-}
-
-static bool pxp_is_borked(struct drm_i915_gem_object *obj)
-{
-	return i915_gem_object_is_protected(obj) && !bo_has_valid_encryption(obj);
-}
-
 static void check_protection(struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 
 	if (DISPLAY_VER(i915) < 11)
 		return;
 
-	plane_state->decrypt = bo_has_valid_encryption(intel_fb_obj(fb));
-	plane_state->force_black = pxp_is_borked(intel_fb_obj(fb));
+	plane_state->decrypt = intel_pxp_key_check(i915->pxp, obj, false) == 0;
+	plane_state->force_black = i915_gem_object_is_protected(obj) &&
+		!plane_state->decrypt;
 }
 
 static int skl_plane_check(struct intel_crtc_state *crtc_state,
-- 
2.39.2

