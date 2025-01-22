Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE5EA18E5A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 10:30:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3875B10E69C;
	Wed, 22 Jan 2025 09:30:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nt+wBMaF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0804010E38D;
 Wed, 22 Jan 2025 09:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737538241; x=1769074241;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zJ5bTZyWFubaBQGIJ6DN7yhT4+Sfu9kpITvAZ+WpoK8=;
 b=nt+wBMaFyy+WXeDi/G3JiV5PBPrGXTCD0ajQXAmaTqP1L/MCLakVb9Zv
 R+nku5xD2PEImLXndld/oP7BQ502sw33qYHWPrXlnyHOh7YL6zFelCRNG
 rpQZfd/d4F+KWj2pR1SSs/ZqfxueVdXCT2xMDzhLjsDjhDOJIT/9gPHKR
 V5ZG6CbbIy3Rlqu/eBbrnI+75eFACJPD2/KLZw61WKkmAgcQT8R0tqF9T
 cnI3FAKtFDqnUl76fr0janFxInCGG2zPT9T00LrbAuf9PaItFotFf81iN
 reEJOE2rRtiLyCLFrBPkWoWEIRXXPeJtcERYT9jiAkIg0tOJ+fDvajtu2 A==;
X-CSE-ConnectionGUID: 4UESrMqASpKCwSJX+zZfSA==
X-CSE-MsgGUID: VylK/9dISM6Qgsj54Y9DfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38156751"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="38156751"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:30:41 -0800
X-CSE-ConnectionGUID: 9RDXV5tOQKSdIk+cPzSkRw==
X-CSE-MsgGUID: ++BZxmL3SPq1sNRxU55hyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="137929522"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.31])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:30:38 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v4 5/6] drm/i915/xe3: handle dirty rect update within the
 scope of DSB
Date: Wed, 22 Jan 2025 11:30:05 +0200
Message-ID: <20250122093006.405711-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250122093006.405711-1-vinod.govindapillai@intel.com>
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
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

Programming of the dirty rectangle coordinates should happen
within the scope of DSB prepare and finish calls. So call the
compute and programming of dirty rectangle related routines
early within the DSB programming window. Some of the FBC state
handling is done later as part of pre-plane or post-plane
updates. So enabling / disabling / hw activate will happen
later but it should handle the sequence without any issue.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++
 drivers/gpu/drm/i915/display/intel_fbc.c     | 47 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_fbc.h     |  3 ++
 3 files changed, 44 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d154fcd0e77a..e6e017e65da6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7773,6 +7773,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_atomic_prepare_plane_clear_colors(state);
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		intel_fbc_compute_dirty_rect(state, crtc);
+
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
 		intel_atomic_dsb_finish(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 963fbe2c7361..033eb4a3eab0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1213,6 +1213,10 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
 		return i8xx_fbc_tiling_valid(plane_state);
 }
 
+static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc,
+				    struct intel_plane *plane);
+
 static void
 __intel_fbc_program_dirty_rect(struct intel_dsb *dsb, struct intel_plane *plane)
 {
@@ -1251,7 +1255,6 @@ intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
 	}
 }
 
-
 static void
 update_dirty_rect_to_full_region(struct intel_plane_state *plane_state,
 				 struct drm_rect *dirty_rect)
@@ -1276,9 +1279,9 @@ validate_and_clip_dirty_rect(struct intel_plane_state *plane_state,
 }
 
 static void
-intel_fbc_compute_dirty_rect(struct intel_plane *plane,
-			     struct intel_plane_state *old_plane_state,
-			     struct intel_plane_state *new_plane_state)
+__intel_fbc_compute_dirty_rect(struct intel_plane *plane,
+			       struct intel_plane_state *old_plane_state,
+			       struct intel_plane_state *new_plane_state)
 {
 	struct intel_fbc *fbc = plane->fbc;
 	struct intel_fbc_state *fbc_state = &fbc->state;
@@ -1292,6 +1295,37 @@ intel_fbc_compute_dirty_rect(struct intel_plane *plane,
 		update_dirty_rect_to_full_region(new_plane_state, fbc_dirty_rect);
 }
 
+void
+intel_fbc_compute_dirty_rect(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_plane_state *new_plane_state;
+	struct intel_plane_state *old_plane_state;
+	struct intel_plane *plane;
+	int i;
+
+	if (DISPLAY_VER(display) < 30)
+		return;
+
+	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {
+		struct intel_fbc *fbc = plane->fbc;
+
+		if (!fbc || plane->pipe != crtc->pipe)
+			continue;
+
+		/* If plane not visible, dirty rect might have invalid coordinates */
+		if (!new_plane_state->uapi.visible)
+			continue;
+
+		/* If FBC to be disabled, then no need to update dirty rect */
+		if (!intel_fbc_can_flip_nuke(state, crtc, plane))
+			continue;
+
+		__intel_fbc_compute_dirty_rect(plane, old_plane_state, new_plane_state);
+	}
+}
+
 static void intel_fbc_update_state(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_plane *plane)
@@ -1301,8 +1335,6 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
-	struct intel_plane_state *old_plane_state =
-		intel_atomic_get_old_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
 	struct intel_fbc_state *fbc_state = &fbc->state;
 
@@ -1327,9 +1359,6 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 	fbc_state->cfb_stride = intel_fbc_cfb_stride(plane_state);
 	fbc_state->cfb_size = intel_fbc_cfb_size(plane_state);
 	fbc_state->override_cfb_stride = intel_fbc_override_cfb_stride(plane_state);
-
-	if (DISPLAY_VER(display) >= 30)
-		intel_fbc_compute_dirty_rect(plane, old_plane_state, plane_state);
 }
 
 static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index acaebe15f312..87be5653db0f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -49,8 +49,11 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
 void intel_fbc_reset_underrun(struct intel_display *display);
 void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
 void intel_fbc_debugfs_register(struct intel_display *display);
+void intel_fbc_compute_dirty_rect(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc);
 void intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
 				  struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 
+
 #endif /* __INTEL_FBC_H__ */
-- 
2.43.0

