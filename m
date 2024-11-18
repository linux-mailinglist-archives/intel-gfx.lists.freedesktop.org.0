Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 501359D1C12
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 00:53:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E811610E579;
	Mon, 18 Nov 2024 23:53:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bJXrqhQk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7635A10E574;
 Mon, 18 Nov 2024 23:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731974027; x=1763510027;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3/0Yjs/oBu/pKjVZ1QxhTkW3cUAs5834BEF/+E9GqyE=;
 b=bJXrqhQk5urdaof9CU3KPPeUrZj+SmtiqKN19u32XibeNQGtXZC2XSgc
 4ncKfW2STjdNg90ijqtlKdD/twizDahTWhKvdu5FnA9+luVug3FpvlLZ4
 cP5XdLatg9fm7KnIjIvoOxf/bZT8x05ZibEaT+dcRhIPUk5y6L6vVdn/h
 fH0to7a/ON2PQ2UvhNZpEbGptUpo6of3yCutDGiJ5LTlZMu77ZF46iVqf
 fqLMy/SqqJD1cllr9hwZdvUovJ7ApfIMYHrpxH/MPFJaeyoZqsoKBKEeF
 mc6NUtOgs1coVyq5xkWIJkXgWIifrAg3sKuMLSbX6sj81oykOD+tl3E1n Q==;
X-CSE-ConnectionGUID: /683tEhuQoSLccjhAPitRw==
X-CSE-MsgGUID: HK43t7yuQcu98EKThmBl8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="32090841"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="32090841"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:53:46 -0800
X-CSE-ConnectionGUID: QlexbKcyRpCuECZDcDN4pw==
X-CSE-MsgGUID: 9bFM2sM/Rt+xEgYnumI/2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="94186015"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.2])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:53:44 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: [RFC PATCH 3/4] drm/i915/xe3: add dirty rect support for FBC
Date: Tue, 19 Nov 2024 01:53:24 +0200
Message-Id: <20241118235325.353010-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241118235325.353010-1-vinod.govindapillai@intel.com>
References: <20241118235325.353010-1-vinod.govindapillai@intel.com>
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

Bspec: 71675, 73424
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 130 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h      |   3 +
 .../drm/i915/display/skl_universal_plane.c    |   2 +
 3 files changed, 135 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1fdb1a3e3fbe..01080171790f 100644
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
@@ -126,6 +128,8 @@ struct intel_fbc {
 	 */
 	struct intel_fbc_state state;
 	const char *no_fbc_reason;
+
+	struct drm_rect dirty_rect;
 };
 
 /* plane stride in pixels */
@@ -670,6 +674,10 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
 	if (DISPLAY_VER(display) >= 20)
 		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
 
+	if (DISPLAY_VER(display) >= 30)
+		intel_de_write(display, XE3_FBC_DIRTY_CTL(fbc->id),
+			       FBC_DIRTY_RECT_EN);
+
 	intel_de_write(display, ILK_DPFC_CONTROL(fbc->id),
 		       DPFC_CTL_EN | dpfc_ctl);
 }
@@ -1664,6 +1672,113 @@ void intel_fbc_flush(struct drm_i915_private *i915,
 		__intel_fbc_flush(fbc, frontbuffer_bits, origin);
 }
 
+void
+intel_fbc_program_dirty_rect(struct intel_dsb *dsb, struct intel_plane *plane)
+{
+	struct intel_display *display = to_intel_display(plane);
+	struct intel_fbc *fbc = plane->fbc;
+
+	if (DISPLAY_VER(display) < 30)
+		return;
+
+	if (!fbc)
+		return;
+
+	intel_de_write_dsb(display, dsb, XE3_FBC_DIRTY_RECT(fbc->id),
+			   FBC_DIRTY_RECT_START_LINE(fbc->dirty_rect.y1) |
+			   FBC_DIRTY_RECT_END_LINE(fbc->dirty_rect.y2));
+}
+
+static bool
+intel_fbc_need_full_region_update(struct intel_plane_state *old_plane_state,
+				  struct intel_plane_state *new_plane_state)
+{
+	const struct drm_framebuffer *old_fb = old_plane_state->hw.fb;
+	const struct drm_framebuffer *new_fb = new_plane_state->hw.fb;
+
+	if (!old_fb || !new_fb)
+		return true;
+
+	if (old_fb->format->format != new_fb->format->format)
+		return true;
+
+	if (old_fb->modifier != new_fb->modifier)
+		return true;
+
+	if (intel_fbc_plane_stride(old_plane_state) !=
+	    intel_fbc_plane_stride(new_plane_state))
+		return true;
+
+	if (intel_fbc_cfb_stride(old_plane_state) !=
+	    intel_fbc_cfb_stride(new_plane_state))
+		return true;
+
+	if (intel_fbc_cfb_size(old_plane_state) !=
+	    intel_fbc_cfb_size(new_plane_state))
+		return true;
+
+	return false;
+}
+
+static void
+update_dirty_rect_to_full_region(struct intel_plane_state *plane_state,
+				 struct drm_rect *dirty_rect)
+{
+	int y_offset = plane_state->view.color_plane[0].y;
+	int plane_height = drm_rect_height(&plane_state->uapi.src) >> 16;
+
+	dirty_rect->y1 = y_offset;
+	dirty_rect->y2 = y_offset + plane_height;
+}
+
+static void validate_and_clip_dirty_rect(struct intel_plane_state *plane_state,
+					 struct drm_rect *dirty_rect)
+{
+	int y_offset = plane_state->view.color_plane[0].y;
+	int plane_height = drm_rect_height(&plane_state->uapi.src) >> 16;
+	int max_endline = y_offset + plane_height;
+
+	dirty_rect->y1 = clamp(dirty_rect->y1, y_offset, max_endline);
+	dirty_rect->y2 = clamp(dirty_rect->y2, dirty_rect->y1, max_endline);
+}
+
+static void intel_fbc_compute_dirty_rect(struct intel_plane *plane,
+					struct intel_plane_state *old_plane_state,
+					struct intel_plane_state *new_plane_state,
+					bool need_full_region_update)
+{
+	struct intel_display *display = to_intel_display(plane);
+	struct intel_fbc *fbc = plane->fbc;
+	struct drm_rect *fbc_dirty_rect = &fbc->dirty_rect;
+
+	if (need_full_region_update) {
+		drm_dbg_kms(display->drm,
+			    "[PLANE:%d:%s] Full region update needed\n",
+			    plane->base.base.id, plane->base.name);
+		update_dirty_rect_to_full_region(new_plane_state, fbc_dirty_rect);
+		goto out;
+	}
+
+	if (drm_atomic_helper_damage_merged(&old_plane_state->uapi,
+					    &new_plane_state->uapi,
+					    fbc_dirty_rect)) {
+		validate_and_clip_dirty_rect(new_plane_state, fbc_dirty_rect);
+	} else {
+		drm_dbg_kms(display->drm,
+			    "[PLANE:%d:%s] Damage clips merge cal failed. Use full region\n",
+			    plane->base.base.id, plane->base.name);
+
+		/* TODO! if the drm call failed, update full region? */
+		update_dirty_rect_to_full_region(new_plane_state, fbc_dirty_rect);
+	}
+
+out:
+	drm_dbg_kms(display->drm,
+		    "[PLANE:%d:%s] Dirty rect start line: %d End line: %d\n",
+		    plane->base.base.id, plane->base.name, fbc_dirty_rect->y1,
+		    fbc_dirty_rect->y2);
+}
+
 int intel_fbc_atomic_check(struct intel_atomic_state *state)
 {
 	struct intel_plane_state __maybe_unused *new_plane_state;
@@ -1673,11 +1788,26 @@ int intel_fbc_atomic_check(struct intel_atomic_state *state)
 
 	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
 					     new_plane_state, i) {
+		bool full_region_update;
 		int ret;
 
+		if (!plane->fbc)
+			continue;
+
 		ret = intel_fbc_check_plane(state, plane);
 		if (ret)
 			return ret;
+
+		if (!new_plane_state->no_fbc_reason)
+			continue;
+
+		full_region_update =
+			intel_fbc_need_full_region_update(old_plane_state,
+							  new_plane_state);
+
+		intel_fbc_compute_dirty_rect(plane, old_plane_state,
+					     new_plane_state,
+					     full_region_update);
 	}
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index ceae55458e14..073d671ea94d 100644
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
@@ -48,5 +49,7 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
 void intel_fbc_reset_underrun(struct intel_display *display);
 void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
 void intel_fbc_debugfs_register(struct intel_display *display);
+void intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
+				  struct intel_plane *plane);
 
 #endif /* __INTEL_FBC_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 4c7bcf6806ff..fd3611323ec0 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1510,6 +1510,8 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 		icl_plane_csc_load_black(dsb, plane, crtc_state);
 
 	icl_plane_update_sel_fetch_noarm(dsb, plane, crtc_state, plane_state, color_plane);
+
+	intel_fbc_program_dirty_rect(dsb, plane);
 }
 
 static void icl_plane_update_sel_fetch_arm(struct intel_dsb *dsb,
-- 
2.34.1

