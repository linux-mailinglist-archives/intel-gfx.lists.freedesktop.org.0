Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DD9A689F2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 11:47:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F9810E4ED;
	Wed, 19 Mar 2025 10:47:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RfiNXGIE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EACF10E4E9;
 Wed, 19 Mar 2025 10:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742381222; x=1773917222;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=p7P9GNf275pZZ0vR3wv1nOfSNdD5Drh5OX1j7APtF5s=;
 b=RfiNXGIEsT1pXHw6bjOUFku7Sg/eXtZeKAiKJoQ+S+qTpE+F1YSKS4Lp
 E/XLY9lzgC5uUfIn1v3I9mlDgvdoimweL3MQh88roQaVTqkFHO+qtla5o
 nj1081mnrwYeMYab4+zUwTOp0MfQCAoaH+NjtedT4DpXW/nfF+yEDjkJ9
 yrmVYjfoX2zT2oheq+9TWmvuo0N48TN8MXm1oucO+EPzuJJtkr+FCI3xS
 XOlhLanoXmTTuDZaibBiyhSSVtOnq8jvRl5yfSaopBpUy2IVZ9q7RvQlC
 1wnUFh50IvhOyx2uba5g3K4KlE+ft2USVp4MtU3VXkGMpI7aagex5okgd Q==;
X-CSE-ConnectionGUID: /lw2JpbFTYadh3Ufyt3gJg==
X-CSE-MsgGUID: ZCBvrOuwRAKA3rCGNWGwLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="43733951"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43733951"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 03:47:02 -0700
X-CSE-ConnectionGUID: Ex0kzuDdSG2FLuysvjDylA==
X-CSE-MsgGUID: NNTGm6Y0QnSXRDY66y2QSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="153585832"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa001.fm.intel.com with ESMTP; 19 Mar 2025 03:47:00 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Wed, 19 Mar 2025 16:02:17 +0530
Subject: [PATCH v9 3/3] drm/i915/display: Add i915 hook for
 format_mod_supported_async
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-asyn-v9-3-629d1ece63e7@intel.com>
References: <20250319-asyn-v9-0-629d1ece63e7@intel.com>
In-Reply-To: <20250319-asyn-v9-0-629d1ece63e7@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

Hook up the newly added plane function pointer
format_mod_supported_async to populate the modifiers/formats supported
by asynchronous flips.

v5: Correct the if condition for modifier support check (Chaitanya)
v6: Replace uint32_t/uint64_t with u32/u64 (Jani)
v7: Move plannar check from intel_async_flip_check_hw() to
intel_plane_format_mod_supported_async() (Ville)
v8: In case of error print format/modifier (Chaitanya)
v9: Exclude C8 format as its not supported by hardware

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  6 ++--
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 32 +++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_atomic_plane.h  |  6 +++-
 drivers/gpu/drm/i915/display/intel_display.c       | 14 +++-------
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  5 +++-
 5 files changed, 48 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 013295f66d56ec5e919b3a0c904034bf7985986a..6bd09adb8a30ba002ef334261d7638f398587a3e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -820,7 +820,7 @@ unsigned int vlv_plane_min_alignment(struct intel_plane *plane,
 {
 	struct intel_display *display = to_intel_display(plane);
 
-	if (intel_plane_can_async_flip(plane, fb->modifier))
+	if (intel_plane_can_async_flip(plane, fb->format->format, fb->modifier))
 		return 256 * 1024;
 
 	/* FIXME undocumented so not sure what's actually needed */
@@ -844,7 +844,7 @@ static unsigned int g4x_primary_min_alignment(struct intel_plane *plane,
 {
 	struct intel_display *display = to_intel_display(plane);
 
-	if (intel_plane_can_async_flip(plane, fb->modifier))
+	if (intel_plane_can_async_flip(plane, fb->format->format, fb->modifier))
 		return 256 * 1024;
 
 	if (intel_scanout_needs_vtd_wa(display))
@@ -889,6 +889,7 @@ static const struct drm_plane_funcs i965_plane_funcs = {
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = i965_plane_format_mod_supported,
+	.format_mod_supported_async = intel_plane_format_mod_supported_async,
 };
 
 static const struct drm_plane_funcs i8xx_plane_funcs = {
@@ -898,6 +899,7 @@ static const struct drm_plane_funcs i8xx_plane_funcs = {
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = i8xx_plane_format_mod_supported,
+	.format_mod_supported_async = intel_plane_format_mod_supported_async,
 };
 
 struct intel_plane *
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 7276179df878658b7053fe6d8dc37b69f19625e3..ce6bf6fe8f241a9517e8f74fb002b835c3f0853a 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -174,11 +174,41 @@ bool intel_plane_needs_physical(struct intel_plane *plane)
 		DISPLAY_INFO(display)->cursor_needs_physical;
 }
 
-bool intel_plane_can_async_flip(struct intel_plane *plane, u64 modifier)
+bool intel_plane_can_async_flip(struct intel_plane *plane, u32 format,
+				u64 modifier)
 {
+	struct intel_display *display = to_intel_display(plane);
+
+	if ((DISPLAY_VER(display) <= 14 ?
+	    drm_format_info(format)->is_yuv :
+	    intel_format_info_is_yuv_semiplanar(drm_format_info(format),
+						modifier)) ||
+	    format == DRM_FORMAT_C8) {
+		drm_dbg_kms(plane->base.dev,
+			    "[PLANE:%d:%s] Planar formats do not support async flips\n",
+			    plane->base.base.id, plane->base.name);
+		return false;
+	}
+
 	return plane->can_async_flip && plane->can_async_flip(modifier);
 }
 
+bool intel_plane_format_mod_supported_async(struct drm_plane *plane,
+					    u32 format,
+					    u64 modifier)
+{
+	if (plane->funcs->format_mod_supported &&
+	    !plane->funcs->format_mod_supported(plane, format, modifier)) {
+		drm_dbg_kms(plane->dev,
+			    "[PLANE:%d:%s](format %p4cc) modifier 0x%llx not in universal list\n",
+			    plane->base.id, plane->name, &format, modifier);
+		return false;
+	}
+
+	return intel_plane_can_async_flip(to_intel_plane(plane),
+					format, modifier);
+}
+
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate)
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 6efac923dcbc757e6f68564cbef2919c920f13cb..512c251cc153753a4808cf177c8bcce2178bb862 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -21,7 +21,8 @@ enum plane_id;
 
 struct intel_plane *
 intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id);
-bool intel_plane_can_async_flip(struct intel_plane *plane, u64 modifier);
+bool intel_plane_can_async_flip(struct intel_plane *plane, u32 format,
+				u64 modifier);
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate);
@@ -87,6 +88,9 @@ void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_sta
 int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
 int intel_atomic_check_planes(struct intel_atomic_state *state);
+bool intel_plane_format_mod_supported_async(struct drm_plane *plane,
+					    u32 format,
+					    u64 modifier);
 
 u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3afb85fe8536dfffd55dbaa07f6727112cc876b7..5d0bab1f8ff8294716ca5843c856032d2b9ccd5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6005,22 +6005,16 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		if (!plane->async_flip)
 			continue;
 
-		if (!intel_plane_can_async_flip(plane, new_plane_state->hw.fb->modifier)) {
+		if (!intel_plane_can_async_flip(plane, new_plane_state->hw.fb->format->format,
+						new_plane_state->hw.fb->modifier)) {
 			drm_dbg_kms(display->drm,
-				    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip\n",
+				    "[PLANE:%d:%s] Format %p4cc Modifier 0x%llx does not support async flip\n",
 				    plane->base.base.id, plane->base.name,
+				    &new_plane_state->hw.fb->format->format,
 				    new_plane_state->hw.fb->modifier);
 			return -EINVAL;
 		}
 
-		if (intel_format_info_is_yuv_semiplanar(new_plane_state->hw.fb->format,
-							new_plane_state->hw.fb->modifier)) {
-			drm_dbg_kms(display->drm,
-				    "[PLANE:%d:%s] Planar formats do not support async flips\n",
-				    plane->base.base.id, plane->base.name);
-			return -EINVAL;
-		}
-
 		/*
 		 * We turn the first async flip request into a sync flip
 		 * so that we can reconfigure the plane (eg. change modifier).
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 70e550539bb21393c7173c7b3904e7790eab25f4..f61e1eff30bb4820ccb17daa5d4b2b073a5d4078 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -601,7 +601,7 @@ static u32 tgl_plane_min_alignment(struct intel_plane *plane,
 	 * Figure out what's going on here...
 	 */
 	if (display->platform.alderlake_p &&
-	    intel_plane_can_async_flip(plane, fb->modifier))
+	    intel_plane_can_async_flip(plane, fb->format->format, fb->modifier))
 		return mult * 16 * 1024;
 
 	switch (fb->modifier) {
@@ -2666,6 +2666,7 @@ static const struct drm_plane_funcs skl_plane_funcs = {
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = skl_plane_format_mod_supported,
+	.format_mod_supported_async = intel_plane_format_mod_supported_async,
 };
 
 static const struct drm_plane_funcs icl_plane_funcs = {
@@ -2675,6 +2676,7 @@ static const struct drm_plane_funcs icl_plane_funcs = {
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = icl_plane_format_mod_supported,
+	.format_mod_supported_async = intel_plane_format_mod_supported_async,
 };
 
 static const struct drm_plane_funcs tgl_plane_funcs = {
@@ -2684,6 +2686,7 @@ static const struct drm_plane_funcs tgl_plane_funcs = {
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = tgl_plane_format_mod_supported,
+	.format_mod_supported_async = intel_plane_format_mod_supported_async,
 };
 
 static void

-- 
2.25.1

