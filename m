Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E7BA20DBA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 16:55:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6959210E694;
	Tue, 28 Jan 2025 15:54:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V4lmx2x3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1718B10E697;
 Tue, 28 Jan 2025 15:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738079698; x=1769615698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mkcqVF+a1hG67HcUXVASLU1fmFIlOkibGk/JquLX35I=;
 b=V4lmx2x3MTEcfHwlwBXOTJ8BkwfYV5T++XOoJkWN+8ulsaNokqHiaEl4
 B0k04KoAqHDJ0XHU4HTTccvYHRH86PoN/u/QPJ2hJX1uMK3so9tgYxkd+
 YMVDFuluIIlOG5An/R4WoM+TfdCobv6GXEXYfoGTNo7wcRammeACjTPbV
 CZqx00QKFIgt8PQZLeWJ6uYHnmYvNuta28BoQ+47TkX4dGSheWiHwLUxN
 PFC1TaU84qsvnjhL+mC1kByFKvAFEwoQkdWJYAizc6bkmGf5xT+Tjb35m
 M1sLKm2FMLwrjxdXCJCA1hBVQcW6/oOyEIJX7TMkjdhoLhdeclPQXUQ0p A==;
X-CSE-ConnectionGUID: 30e9COzVSg68Pj5/L1aJLg==
X-CSE-MsgGUID: mtgwA19xT9q73c+5HqJncA==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49228112"
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="49228112"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:58 -0800
X-CSE-ConnectionGUID: lDAjho1cRcu38jB2H6P9Kw==
X-CSE-MsgGUID: aHZWOexaQ7a1c5foybEM1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="139635395"
Received: from slindbla-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.171])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:55 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v5 6/7] drm/i915/xe3: dirty rect support for FBC
Date: Tue, 28 Jan 2025 17:54:17 +0200
Message-ID: <20250128155418.305595-7-vinod.govindapillai@intel.com>
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

Dirty rectangle feature allows FBC to recompress a subsection
of a frame. When this feature is enabled, display will read
the scan lines between dirty rectangle start line and dirty
rectangle end line in subsequent frames.

Use the merged damage clip stored in the plane state to
configure the FBC dirty rect areas.

v2: Move dirty rect handling to fbc state (Ville)

v3: Use intel_fbc_dirty_rect_update_noarm (Ville)
    Split plane damage collection and dirty rect preparation
    Handle case where dirty rect fall outside the visible region

Bspec: 68881, 71675, 73424
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |   7 ++
 drivers/gpu/drm/i915/display/intel_fbc.c     | 113 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h     |   6 +
 3 files changed, 126 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7d68d652c1bc..33277f892279 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7263,6 +7263,8 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 		commit_pipe_pre_planes(state, crtc);
 
+		intel_fbc_dirty_rect_update_noarm(NULL, state, crtc);
+
 		intel_crtc_planes_update_arm(NULL, state, crtc);
 
 		commit_pipe_post_planes(state, crtc);
@@ -7723,6 +7725,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 						 new_crtc_state);
 		intel_crtc_planes_update_noarm(new_crtc_state->dsb_commit,
 					       state, crtc);
+		intel_fbc_dirty_rect_update_noarm(new_crtc_state->dsb_commit,
+						  state, crtc);
 
 		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
@@ -7769,6 +7773,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_atomic_prepare_plane_clear_colors(state);
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		intel_fbc_prepare_dirty_rect(state, crtc);
+
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
 		intel_atomic_dsb_finish(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 951dc81b7b97..5fdbc7c4e67e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -88,6 +88,7 @@ struct intel_fbc_state {
 	u16 override_cfb_stride;
 	u16 interval;
 	s8 fence_id;
+	struct drm_rect fbc_dirty_rect;
 };
 
 struct intel_fbc {
@@ -527,6 +528,9 @@ static void ilk_fbc_deactivate(struct intel_fbc *fbc)
 	struct intel_display *display = fbc->display;
 	u32 dpfc_ctl;
 
+	if (HAS_FBC_DIRTY_RECT(display))
+		intel_de_write(display, XE3_FBC_DIRTY_CTL(fbc->id), 0);
+
 	/* Disable compression */
 	dpfc_ctl = intel_de_read(display, ILK_DPFC_CONTROL(fbc->id));
 	if (dpfc_ctl & DPFC_CTL_EN) {
@@ -670,6 +674,10 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
 	if (DISPLAY_VER(display) >= 20)
 		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
 
+	if (HAS_FBC_DIRTY_RECT(display))
+		intel_de_write(display, XE3_FBC_DIRTY_CTL(fbc->id),
+			       FBC_DIRTY_RECT_EN);
+
 	intel_de_write(display, ILK_DPFC_CONTROL(fbc->id),
 		       DPFC_CTL_EN | dpfc_ctl);
 }
@@ -1214,6 +1222,111 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
 		return i8xx_fbc_tiling_valid(plane_state);
 }
 
+static void
+intel_fbc_update_dirty_rect(struct intel_dsb *dsb, struct intel_plane *plane)
+{
+	struct intel_display *display = to_intel_display(plane);
+	struct intel_fbc *fbc = plane->fbc;
+	struct intel_fbc_state *fbc_state = &fbc->state;
+
+	if (fbc_state->plane != plane)
+		return;
+
+	intel_de_write_dsb(display, dsb, XE3_FBC_DIRTY_RECT(fbc->id),
+			   FBC_DIRTY_RECT_START_LINE(fbc_state->fbc_dirty_rect.y1) |
+			   FBC_DIRTY_RECT_END_LINE(fbc_state->fbc_dirty_rect.y2));
+}
+
+void
+intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
+				  struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_plane_state *plane_state;
+	struct intel_plane *plane;
+	int i;
+
+	if (!HAS_FBC_DIRTY_RECT(display))
+		return;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		struct intel_fbc *fbc = plane->fbc;
+
+		if (!fbc || plane->pipe != crtc->pipe)
+			continue;
+
+		if (!plane_state->uapi.visible)
+			continue;
+
+		intel_fbc_update_dirty_rect(dsb, plane);
+	}
+}
+
+static void
+validate_and_clip_dirty_rect(struct intel_plane_state *plane_state,
+			     struct drm_rect *dirty_rect)
+{
+	int y_offset = plane_state->view.color_plane[0].y;
+	int plane_height = drm_rect_height(&plane_state->uapi.src) >> 16;
+	int max_endline = y_offset + plane_height - 1;
+
+	dirty_rect->y1 = clamp(dirty_rect->y1, y_offset, max_endline);
+	dirty_rect->y2 = clamp(dirty_rect->y2, dirty_rect->y1, max_endline);
+}
+
+static void
+__intel_fbc_prepare_dirty_rect(struct intel_plane *plane,
+			       struct intel_plane_state *plane_state)
+{
+	struct intel_fbc_state *fbc_state = &plane->fbc->state;
+	struct drm_rect *fbc_dirty_rect = &fbc_state->fbc_dirty_rect;
+	struct drm_rect *plane_damage_merged = &plane_state->damage_merged;
+	int y_offset = plane_state->view.color_plane[0].y;
+
+	if (drm_rect_visible(plane_damage_merged)) {
+		fbc_dirty_rect->y1 = plane_damage_merged->y1;
+		fbc_dirty_rect->y2 = plane_damage_merged->y2;
+	} else {
+		/* If not visible, we need to set one single line */
+		fbc_dirty_rect->y1 = y_offset;
+		fbc_dirty_rect->y2 = y_offset;
+	}
+	fbc_dirty_rect->x1 = plane_damage_merged->x1;
+	fbc_dirty_rect->x2 = plane_damage_merged->x2;
+
+	validate_and_clip_dirty_rect(plane_state, fbc_dirty_rect);
+}
+
+void
+intel_fbc_prepare_dirty_rect(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_plane_state *plane_state;
+	struct intel_plane *plane;
+	int i;
+
+	if (!HAS_FBC_DIRTY_RECT(display))
+		return;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		struct intel_fbc *fbc = plane->fbc;
+
+		if (!fbc || plane->pipe != crtc->pipe)
+			continue;
+
+		if (!fbc->state.plane)
+			continue;
+
+		/* If plane not visible, dirty rect might have invalid coordinates */
+		if (!plane_state->uapi.visible)
+			continue;
+
+		__intel_fbc_prepare_dirty_rect(plane, plane_state);
+	}
+}
+
 static void intel_fbc_update_state(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_plane *plane)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index ceae55458e14..8f1b11c6f4d2 100644
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
@@ -48,5 +49,10 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
 void intel_fbc_reset_underrun(struct intel_display *display);
 void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
 void intel_fbc_debugfs_register(struct intel_display *display);
+void intel_fbc_prepare_dirty_rect(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc);
+void intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
+				       struct intel_atomic_state *state,
+				       struct intel_crtc *crtc);
 
 #endif /* __INTEL_FBC_H__ */
-- 
2.43.0

