Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1E2A20DB3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 16:54:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 205F910E69B;
	Tue, 28 Jan 2025 15:54:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MAAXyqX2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4476510E69B;
 Tue, 28 Jan 2025 15:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738079690; x=1769615690;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cmMEIKLyEkZd/2HPmWmPIiALdDtAGvl16qtpyGA7teQ=;
 b=MAAXyqX24FDkzoNdBf7Q+0NlRpjAWT1rMWmx77ErnpNxGTUU8PKSVC2u
 cJ/QOJ7xYYoASnYUwZ5RPmK+qNg2Mh2n3nRtZp5YTFtlqhBxnrwwTUEeb
 L+acJIZMtJPh44tIKb3174QSNxtdiUypTrei8W9o7M+7H8njsGuAmOTEu
 E/vE5CifQx/xfApDesBIoSRLYtR8CfPBy2RZZfx/Mbez9y6Dm4LQzDloM
 CZ7S51gIUzCfdSOnFgFgZkWMqViy/IgmeYtC4GCxgWpVQW1+zGRb/t9lh
 t21YZZ+LOKuixX6VHEWu3Q1YKhOBRCz87bTgw9cL44b8kubGTXmT96/Tv A==;
X-CSE-ConnectionGUID: HDvrVaEXQrS9nJCtqlrgsA==
X-CSE-MsgGUID: IIzwKSGuQEe4Q3WNb9qdLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49228102"
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="49228102"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:50 -0800
X-CSE-ConnectionGUID: E3+ZjzUET8OZiJfyHASNgg==
X-CSE-MsgGUID: zLYEwZIMStCS/IQLcVhq8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="139635351"
Received: from slindbla-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.171])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:47 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v5 4/7] drm/i915/display: update and store the plane damage
 clips
Date: Tue, 28 Jan 2025 17:54:15 +0200
Message-ID: <20250128155418.305595-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250128155418.305595-1-vinod.govindapillai@intel.com>
References: <20250128155418.305595-1-vinod.govindapillai@intel.com>
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

Userspace can pass damage area clips per plane to track
changes in a plane and some display components can utilze
these damage clips for efficiently handling use cases like
FBC, PSR etc. A merged damage area is generated and its
coordinates are updated relative to viewport and HW and
stored in the plane_state. This merged damage areas will be
used for FBC dirty rect support in xe3 in the follow-up
patch.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  5 ++
 .../drm/i915/display/intel_display_types.h    |  2 +
 .../drm/i915/display/skl_universal_plane.c    | 47 +++++++++++++++++++
 3 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 8da7ee13447c..3d463cfe1f3c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -36,6 +36,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_blend.h>
+#include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_atomic_helper.h>
@@ -713,6 +714,10 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 					  new_primary_crtc_plane_state,
 					  crtc);
 
+	/* Verify plane damage - damage discarded on full modeset */
+	drm_atomic_helper_check_plane_damage(&state->base,
+					     &new_plane_state->uapi);
+
 	new_plane_state->uapi.visible = false;
 	if (!new_crtc_state)
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index bc65c4bd9dc0..495c497645c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -695,6 +695,8 @@ struct intel_plane_state {
 	u64 ccval;
 
 	const char *no_fbc_reason;
+
+	struct drm_rect damage_merged;
 };
 
 struct intel_initial_plane_config {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8d09a1f8c3e1..fc5b9d56c8bc 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2249,6 +2249,47 @@ static void check_protection(struct intel_plane_state *plane_state)
 		!plane_state->decrypt;
 }
 
+static void
+skl_plane_check_plane_damage(const struct intel_plane_state *old_plane_state,
+			     struct intel_plane_state *new_plane_state)
+{
+	struct drm_rect *damage_merged = &new_plane_state->damage_merged;
+
+	drm_atomic_helper_damage_merged(&old_plane_state->uapi,
+					&new_plane_state->uapi,
+					damage_merged);
+}
+
+static void
+skl_plane_check_damage_with_viewport(struct intel_plane_state *plane_state)
+{
+	struct drm_rect *damage_merged = &plane_state->damage_merged;
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int rotation = plane_state->hw.rotation;
+	struct drm_rect *src = &plane_state->uapi.src;
+
+	if (drm_rotation_90_or_270(rotation)) {
+		drm_rect_rotate(damage_merged, fb->width, fb->height,
+				DRM_MODE_ROTATE_270);
+		drm_rect_translate(damage_merged, -(src->y1 >> 16),
+				   -(src->x1 >> 16));
+	} else {
+		drm_rect_translate(damage_merged, -(src->x1 >> 16),
+				   -(src->y1 >> 16));
+	}
+}
+
+static void
+skl_plane_check_damage_with_plane_surf(struct intel_plane_state *plane_state)
+{
+	struct drm_rect *damage_merged = &plane_state->damage_merged;
+	struct drm_rect src;
+
+	drm_rect_fp_to_int(&src, &plane_state->uapi.src);
+	drm_rect_translate(damage_merged, src.x1, src.y1);
+	drm_rect_intersect(damage_merged, &src);
+}
+
 static int skl_plane_check(struct intel_crtc_state *crtc_state,
 			   const struct intel_plane_state *old_plane_state,
 			   struct intel_plane_state *plane_state)
@@ -2275,6 +2316,10 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
+	skl_plane_check_plane_damage(old_plane_state, plane_state);
+
+	skl_plane_check_damage_with_viewport(plane_state);
+
 	ret = skl_check_plane_surface(plane_state);
 	if (ret)
 		return ret;
@@ -2290,6 +2335,8 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
+	skl_plane_check_damage_with_plane_surf(plane_state);
+
 	ret = skl_plane_check_nv12_rotation(plane_state);
 	if (ret)
 		return ret;
-- 
2.43.0

