Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8779F4644
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 09:43:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8880810E887;
	Tue, 17 Dec 2024 08:43:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KSezDWui";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B90AC10E887;
 Tue, 17 Dec 2024 08:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734425000; x=1765961000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SkKGERynx+IqsmwlwFpX9xctqqb/4S1nBBuS6/VDpI0=;
 b=KSezDWui/rSnBaQNqtaa7LqbYZYtD0GByW2e/2lAlHy2Xe3yetK9kZcS
 +Q9rKNSg8xgtkhaZ6P1sncDP06qQM1ITqw7NQzw4pzlvmZRsY9BMST0JL
 Frv4Ac31dRdFFun4ApIPee3GeqFkE4TOt8UJs/KBGBnkTPViAM+JVNxui
 wCeRnGG65U04PCbC+7FyInTOxzTqN9/jQHLT1DPIf/51+ixGnc3HCytyh
 1P+1l6AGFnZdkH2Yqsk+OFvgSFlIrXfOMvs+91VY4gSGjlqIaEGp1PRSp
 /AChInPlaQHPFFyI2Q6dzyObOUuhitOw7hDrB6xeol9uaTeaWuDSizO05 g==;
X-CSE-ConnectionGUID: 5vWg5M9PRrGMJMDN9Xv/Pg==
X-CSE-MsgGUID: VUsavVjnQWS2GKaEYK4VNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="38614959"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="38614959"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 00:43:20 -0800
X-CSE-ConnectionGUID: m01cYGReSyiTPKMFoJJQdQ==
X-CSE-MsgGUID: cAn1IvGZQcalyv0P1YqfnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="97703947"
Received: from ettammin-desk.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.122])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 00:43:18 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v2 2/3] drm/i915/xe3: add dirty rect support for FBC
Date: Tue, 17 Dec 2024 10:42:44 +0200
Message-Id: <20241217084245.246218-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241217084245.246218-1-vinod.govindapillai@intel.com>
References: <20241217084245.246218-1-vinod.govindapillai@intel.com>
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

Dirty rectangle feature allows FBC to recompress a subsection
of a frame. When this feature is enabled, display will read
the scan lines between dirty rectangle start line and dirty
rectangle end line in subsequent frames.

v2: Move dirty rect handling to fbc state (Ville)

Bspec: 71675, 73424
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 +
 drivers/gpu/drm/i915/display/intel_fbc.c     | 96 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.h     |  4 +
 3 files changed, 103 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4271da219b41..d381dce04755 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7209,6 +7209,8 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 		commit_pipe_pre_planes(state, crtc);
 
+		intel_fbc_program_dirty_rect(NULL, state, crtc);
+
 		intel_crtc_planes_update_arm(NULL, state, crtc);
 
 		commit_pipe_post_planes(state, crtc);
@@ -7678,6 +7680,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 					       new_crtc_state);
 		bdw_set_pipe_misc(new_crtc_state->dsb_commit,
 				  new_crtc_state);
+		intel_fbc_program_dirty_rect(new_crtc_state->dsb_commit,
+					     state, crtc);
 		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
 					     state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index df05904bac8a..637b8d21ed1d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -42,6 +42,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_blend.h>
+#include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
 
 #include "gem/i915_gem_stolen.h"
@@ -58,6 +59,7 @@
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_display_wa.h"
+#include "intel_dsb.h"
 #include "intel_fbc.h"
 #include "intel_fbc_regs.h"
 #include "intel_frontbuffer.h"
@@ -88,6 +90,7 @@ struct intel_fbc_state {
 	u16 override_cfb_stride;
 	u16 interval;
 	s8 fence_id;
+	struct drm_rect dirty_rect;
 };
 
 struct intel_fbc {
@@ -527,6 +530,9 @@ static void ilk_fbc_deactivate(struct intel_fbc *fbc)
 	struct intel_display *display = fbc->display;
 	u32 dpfc_ctl;
 
+	if (DISPLAY_VER(display) >= 30)
+		intel_de_write(display, XE3_FBC_DIRTY_CTL(fbc->id), 0);
+
 	/* Disable compression */
 	dpfc_ctl = intel_de_read(display, ILK_DPFC_CONTROL(fbc->id));
 	if (dpfc_ctl & DPFC_CTL_EN) {
@@ -670,6 +676,10 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
 	if (DISPLAY_VER(display) >= 20)
 		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
 
+	if (DISPLAY_VER(display) >= 30)
+		intel_de_write(display, XE3_FBC_DIRTY_CTL(fbc->id),
+			       FBC_DIRTY_RECT_EN);
+
 	intel_de_write(display, ILK_DPFC_CONTROL(fbc->id),
 		       DPFC_CTL_EN | dpfc_ctl);
 }
@@ -1203,6 +1213,85 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
 		return i8xx_fbc_tiling_valid(plane_state);
 }
 
+static void
+__intel_fbc_program_dirty_rect(struct intel_dsb *dsb, struct intel_plane *plane)
+{
+	struct intel_display *display = to_intel_display(plane);
+	struct intel_fbc *fbc = plane->fbc;
+	struct intel_fbc_state *fbc_state = &fbc->state;
+
+	if (fbc_state->plane != plane)
+		return;
+
+	intel_de_write_dsb(display, dsb, XE3_FBC_DIRTY_RECT(fbc->id),
+			   FBC_DIRTY_RECT_START_LINE(fbc_state->dirty_rect.y1) |
+			   FBC_DIRTY_RECT_END_LINE(fbc_state->dirty_rect.y2));
+}
+
+void
+intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
+			     struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_plane_state __maybe_unused *plane_state;
+	struct intel_plane *plane;
+	int i;
+
+	if (DISPLAY_VER(display) < 30)
+		return;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		struct intel_fbc *fbc = plane->fbc;
+
+		if (!fbc || plane->pipe != crtc->pipe)
+			continue;
+
+		__intel_fbc_program_dirty_rect(dsb, plane);
+	}
+}
+
+
+static void
+update_dirty_rect_to_full_region(struct intel_plane_state *plane_state,
+				 struct drm_rect *dirty_rect)
+{
+	int y_offset = plane_state->view.color_plane[0].y;
+	int plane_height = drm_rect_height(&plane_state->uapi.src) >> 16;
+
+	dirty_rect->y1 = y_offset;
+	dirty_rect->y2 = y_offset + plane_height - 1;
+}
+
+static void
+validate_and_clip_dirty_rect(struct intel_plane_state *plane_state,
+			     struct drm_rect *dirty_rect)
+{
+	int y_offset = plane_state->view.color_plane[0].y;
+	int plane_height = drm_rect_height(&plane_state->uapi.src) >> 16;
+	int max_endline = y_offset + plane_height;
+
+	dirty_rect->y1 = clamp(dirty_rect->y1, y_offset, max_endline);
+	dirty_rect->y2 = clamp(dirty_rect->y2, dirty_rect->y1, max_endline);
+}
+
+static void
+intel_fbc_compute_dirty_rect(struct intel_plane *plane,
+			     struct intel_plane_state *old_plane_state,
+			     struct intel_plane_state *new_plane_state)
+{
+	struct intel_fbc *fbc = plane->fbc;
+	struct intel_fbc_state *fbc_state = &fbc->state;
+	struct drm_rect *fbc_dirty_rect = &fbc_state->dirty_rect;
+
+	if (drm_atomic_helper_damage_merged(&old_plane_state->uapi,
+					    &new_plane_state->uapi,
+					    fbc_dirty_rect))
+		validate_and_clip_dirty_rect(new_plane_state, fbc_dirty_rect);
+	else
+		update_dirty_rect_to_full_region(new_plane_state, fbc_dirty_rect);
+}
+
 static void intel_fbc_update_state(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_plane *plane)
@@ -1210,8 +1299,10 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state->base.dev);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	const struct intel_plane_state *plane_state =
+	struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
+	struct intel_plane_state *old_plane_state =
+		intel_atomic_get_old_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
 	struct intel_fbc_state *fbc_state = &fbc->state;
 
@@ -1236,6 +1327,9 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 	fbc_state->cfb_stride = intel_fbc_cfb_stride(plane_state);
 	fbc_state->cfb_size = intel_fbc_cfb_size(plane_state);
 	fbc_state->override_cfb_stride = intel_fbc_override_cfb_stride(plane_state);
+
+	if (DISPLAY_VER(display) >= 30)
+		intel_fbc_compute_dirty_rect(plane, old_plane_state, plane_state);
 }
 
 static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index ceae55458e14..acaebe15f312 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -14,6 +14,7 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
+struct intel_dsb;
 struct intel_fbc;
 struct intel_plane;
 struct intel_plane_state;
@@ -48,5 +49,8 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
 void intel_fbc_reset_underrun(struct intel_display *display);
 void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
 void intel_fbc_debugfs_register(struct intel_display *display);
+void intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
+				  struct intel_atomic_state *state,
+				  struct intel_crtc *crtc);
 
 #endif /* __INTEL_FBC_H__ */
-- 
2.34.1

