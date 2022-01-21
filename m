Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171AA495B8D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 09:06:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2BA810E956;
	Fri, 21 Jan 2022 08:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C6AE10E956
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 08:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642752373; x=1674288373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=96dIrpaFLZuufLJSyDhF1WTlbD1KPfSdf2C+VgpR91U=;
 b=YLIaojf35lWuyVm2hbLsUgViBOFOzqKXD4DW/kUy8Aot8dlo8ULw69PH
 u6x1JTyvQoUOZk5803bdVR1m9QeAWcTCi/a+v/JlEbKk8ULGrzJlOpk1K
 5SR8IIYR11Cd6/XClM4sjPsE2xL/GYvAjknaEIyKaa/+skY1Hyv9vR2T9
 0XurRrvPShCUkm0azCX/4ODvEq+/Q4qMcEdGOpvTqdLUeawoMd+V73u6i
 CowdfyYmijkp7J9WmliRHd14glm1gSv3YIX7/1n7O8BPI9KF+q0MuXLah
 ss2c7DT309SEser5EDDJR8sTkJI0MK7oxlt6uexi8zgZ1to+d7tHlNmPb A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="270015050"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="270015050"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 00:06:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="561783869"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 00:06:11 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 10:06:13 +0200
Message-Id: <20220121080615.9936-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
References: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Introduce do_async_flip flag to
 intel_plane_state
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

There might be various logical contructs when we might want
to enable async flip, so lets calculate those and set this
flag, so that there is no need in long conditions in other
places.

v2: - Set do_async_flip flag to False, if no async flip needed.
      Lets not rely that it will be 0-initialized, but set
      explicitly, so that the logic is clear as well.

v3: - Clear do_async_flip in intel_plane_duplicate_state(Ville Syrjälä)
    - Check with do_async_flip also when calling
      intel_crtc_{enable,disable}_flip_done(Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 3 ++-
 drivers/gpu/drm/i915/display/intel_display.c       | 9 +++++++--
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 3 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index d1344e9c06de..9d79ab987b2e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -109,6 +109,7 @@ intel_plane_duplicate_state(struct drm_plane *plane)
 	intel_state->ggtt_vma = NULL;
 	intel_state->dpt_vma = NULL;
 	intel_state->flags = 0;
+	intel_state->do_async_flip = false;
 
 	/* add reference to fb */
 	if (intel_state->hw.fb)
@@ -491,7 +492,7 @@ void intel_plane_update_arm(struct intel_plane *plane,
 
 	trace_intel_plane_update_arm(&plane->base, crtc);
 
-	if (crtc_state->uapi.async_flip && plane->async_flip)
+	if (plane_state->do_async_flip)
 		plane->async_flip(plane, crtc_state, plane_state, true);
 	else
 		plane->update_arm(plane, crtc_state, plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 55cd453c4ce5..9996daa036a0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1369,7 +1369,8 @@ static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
 		if (plane->enable_flip_done &&
 		    plane->pipe == crtc->pipe &&
-		    update_planes & BIT(plane->id))
+		    update_planes & BIT(plane->id) &&
+		    plane_state->do_async_flip)
 			plane->enable_flip_done(plane);
 	}
 }
@@ -1387,7 +1388,8 @@ static void intel_crtc_disable_flip_done(struct intel_atomic_state *state,
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
 		if (plane->disable_flip_done &&
 		    plane->pipe == crtc->pipe &&
-		    update_planes & BIT(plane->id))
+		    update_planes & BIT(plane->id) &&
+		    plane_state->do_async_flip)
 			plane->disable_flip_done(plane);
 	}
 }
@@ -5027,6 +5029,9 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 			 needs_scaling(new_plane_state))))
 		new_crtc_state->disable_lp_wm = true;
 
+	if (new_crtc_state->uapi.async_flip && plane->async_flip)
+		new_plane_state->do_async_flip = true;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 41e3dd25a78f..6b107872ad39 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -634,6 +634,9 @@ struct intel_plane_state {
 
 	struct intel_fb_view view;
 
+	/* Indicates if async flip is required */
+	bool do_async_flip;
+
 	/* Plane pxp decryption state */
 	bool decrypt;
 
-- 
2.24.1.485.gad05a3d8e5

