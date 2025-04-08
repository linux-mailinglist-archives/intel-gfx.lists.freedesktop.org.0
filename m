Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3011CA8121D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 18:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD52A10E254;
	Tue,  8 Apr 2025 16:22:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i1yyM9TO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 116CB10E6FF;
 Tue,  8 Apr 2025 16:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744129339; x=1775665339;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Zv7Q5H8vQ5zOyLJK4gldsyY50rSk/Mjw0zzu50AlkE=;
 b=i1yyM9TOmaFB6Hx41vZtqEc1BxWleyBSXuzHOSe/LyWIlqEVl9qkiz09
 LTS6wjXqpVUCnG1Rj3IlLiJfyciHk6yByXY1G3zL69z14upbFCPYoelX7
 ojsroBNcUFLdncXB3GrKP2/AL+FeoOGXPQLJ0lwmPEfzbcjkuIidGOGJK
 TW82AM9GZnia0cJzq2j1ui+ov53vOyBHMB91vi9MhaGz7fMny3AM9F1NN
 R5BoW2DNCqTJWfvXGfZBpfXV1mTXMyj9JlcqIWxJ0VayCHAhnXuoR1Il9
 MynvTJFrCGW8oR2r1IhyTFPySJg1bXyyjt13ZQuMrS4jUsSaMKa9bBQGX Q==;
X-CSE-ConnectionGUID: iXI4KDNfSTqrs3b3Upa5/A==
X-CSE-MsgGUID: mCBK7vfnQz+PJFwIvmgbhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="62973665"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="62973665"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 09:22:19 -0700
X-CSE-ConnectionGUID: CgGfAXtwRqybJt8K5eJODw==
X-CSE-MsgGUID: IovJ65IaSrWWY2OjrhwaUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="159310813"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 09:22:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915/plane: drop atomic from
 intel_atomic_plane_check_clipping()
Date: Tue,  8 Apr 2025 19:22:01 +0300
Message-Id: <8229f4d8613a8702f328c7c697a551a670b6a69c.1744129283.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744129283.git.jani.nikula@intel.com>
References: <cover.1744129283.git.jani.nikula@intel.com>
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
index 4095f6f2b959..14b2072f65ac 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -333,10 +333,10 @@ i9xx_plane_check(struct intel_crtc_state *crtc_state,
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
index fff761776444..6f84f4b984ac 100644
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
index 01e0c0544b93..9284f4a6e958 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -968,10 +968,10 @@ void intel_crtc_planes_update_arm(struct intel_dsb *dsb,
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
index c62ae0addd39..cdd337e45944 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -73,10 +73,10 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
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
index a966820bc737..94be0eedf3d8 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1365,8 +1365,8 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
-						min_scale, max_scale, true);
+	ret = intel_plane_check_clipping(plane_state, crtc_state,
+					 min_scale, max_scale, true);
 	if (ret)
 		return ret;
 
@@ -1420,10 +1420,10 @@ vlv_sprite_check(struct intel_crtc_state *crtc_state,
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
index 3b0536df969d..c8b106338dd3 100644
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

