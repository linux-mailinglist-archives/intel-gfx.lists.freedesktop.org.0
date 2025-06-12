Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B16DAD6F23
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 13:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33EE110E7DA;
	Thu, 12 Jun 2025 11:37:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dsCHrXcW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE23010E7DA;
 Thu, 12 Jun 2025 11:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749728250; x=1781264250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bCWD5d2RxrSdY7LYx3ZCgp7wg8w59Vkupunc9OORCOY=;
 b=dsCHrXcW9j++giwfjKn1BaK11md1fDICZMpZoxIvSKi939eXpXfZTJcv
 g1gdmgzPJENwym4DSEcs0xXP0EUsnc+A8Z/EuqwBy4t/mDIkGA5wRRSxs
 s8YLW/1ivatzVfLYt8+Rdsf2edQ53ssdLsN/jZY+IfW4e20J9GVXwB4T8
 qXdacfIyXiB70SyeusLQd3rqVLB7Dy3eVFNsA4yqouNLgRaLrNTlhROYi
 6Br2ctc/VnZJaUlhkXsNC1z/udWfG9ZNoq9KBdtmICyHgLQ6DE42w8qwf
 rnyPBMhPXAg1SmPeEoNmgFR2bgpe7fpYr/IljnUlC7hgB3h9b4L4pNBOc g==;
X-CSE-ConnectionGUID: 3rcnX1lBRjqmEdPrJhhffg==
X-CSE-MsgGUID: lauKK1XMRQuDWmyQsCe0Xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51820209"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="51820209"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 04:37:30 -0700
X-CSE-ConnectionGUID: F2Z9TstXS82s59gBjawiIw==
X-CSE-MsgGUID: v4m93hQOS42YBlnY0+CkCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152484562"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 04:37:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 2/5] drm/i915/plane: drop atomic from
 intel_atomic_plane_check_clipping()
Date: Thu, 12 Jun 2025 14:37:08 +0300
Message-Id: <ef3559ac492408fed826102e0094b4e2ad0c3492.1749728173.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749728173.git.jani.nikula@intel.com>
References: <cover.1749728173.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Align with intel_plane_check_src_coordinates(). The "atomic" is
superfluous.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  8 ++++----
 drivers/gpu/drm/i915/display/intel_cursor.c        |  8 ++++----
 drivers/gpu/drm/i915/display/intel_plane.c         |  8 ++++----
 drivers/gpu/drm/i915/display/intel_plane.h         |  8 ++++----
 drivers/gpu/drm/i915/display/intel_sprite.c        | 12 ++++++------
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 ++--
 6 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index eba8eb745aa7..ac84558006c7 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -336,10 +336,10 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						DRM_PLANE_NO_SCALING,
-						DRM_PLANE_NO_SCALING,
-						i9xx_plane_has_windowing(plane));
+	ret = intel_plane_check_clipping(plane_state, crtc_state,
+					 DRM_PLANE_NO_SCALING,
+					 DRM_PLANE_NO_SCALING,
+					 i9xx_plane_has_windowing(plane));
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 27d86549af2c..198e69efe9ac 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -158,10 +158,10 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
-	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						DRM_PLANE_NO_SCALING,
-						DRM_PLANE_NO_SCALING,
-						true);
+	ret = intel_plane_check_clipping(plane_state, crtc_state,
+					 DRM_PLANE_NO_SCALING,
+					 DRM_PLANE_NO_SCALING,
+					 true);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index f079963c5dff..f68432d28d36 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -983,10 +983,10 @@ void intel_crtc_planes_update_arm(struct intel_dsb *dsb,
 		i9xx_crtc_planes_update_arm(dsb, state, crtc);
 }
 
-int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
-				      struct intel_crtc_state *crtc_state,
-				      int min_scale, int max_scale,
-				      bool can_position)
+int intel_plane_check_clipping(struct intel_plane_state *plane_state,
+			       struct intel_crtc_state *crtc_state,
+			       int min_scale, int max_scale,
+			       bool can_position)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 1dd32586ac16..10a94b9a135c 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -74,10 +74,10 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 			       struct intel_plane *plane,
 			       bool *need_cdclk_calc);
-int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
-				      struct intel_crtc_state *crtc_state,
-				      int min_scale, int max_scale,
-				      bool can_position);
+int intel_plane_check_clipping(struct intel_plane_state *plane_state,
+			       struct intel_crtc_state *crtc_state,
+			       int min_scale, int max_scale,
+			       bool can_position);
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index db0c48d0c743..e6844df837af 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1366,8 +1366,8 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						min_scale, max_scale, true);
+	ret = intel_plane_check_clipping(plane_state, crtc_state,
+					 min_scale, max_scale, true);
 	if (ret)
 		return ret;
 
@@ -1421,10 +1421,10 @@ vlv_sprite_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						DRM_PLANE_NO_SCALING,
-						DRM_PLANE_NO_SCALING,
-						true);
+	ret = intel_plane_check_clipping(plane_state, crtc_state,
+					 DRM_PLANE_NO_SCALING,
+					 DRM_PLANE_NO_SCALING,
+					 true);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9c8dac97cc40..68f18f18bacd 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2327,8 +2327,8 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 		max_scale = skl_plane_max_scale(display, fb);
 	}
 
-	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						min_scale, max_scale, true);
+	ret = intel_plane_check_clipping(plane_state, crtc_state,
+					 min_scale, max_scale, true);
 	if (ret)
 		return ret;
 
-- 
2.39.5

