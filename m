Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF50497B03
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 10:06:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF79410EDA9;
	Mon, 24 Jan 2022 09:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394F110E74A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 09:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643015211; x=1674551211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wLJg/W8RumNRsXGj8eLqvNzg9M2cCDbC7l+rT6jFOgE=;
 b=GOdTCx4PJN078kc17o7Oxep/pSlrRoogwK4/9jLT6JpZRjLbvGN7kE/H
 YI9g1kf8saP9vWx32iHJhUok6QJi1j5Mh7YX/pK6aCUN/c2EjMkrN6Zf9
 5Opb6JXFM/UVVxKJZ7IW1XMtaXFLw0bdaj/zlPqmeM1c5jdEyPoqm6lib
 p0iQG/lScsebyW3SShQbAlrRy3QruWVDv7SR38JhSeItkhVIjFCDLPKH5
 xjzy7GKwcrF5CSUd8JNtZ901o/XhR3DRn3fOTzhADnjgDfubxjTPpdSnO
 fM49gLTqO3Y/rsMpZ+PsylxXikPtpi95I99gvsDcz87pm6ny/8qLfexde A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="245782531"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="245782531"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 01:06:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="627424698"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 24 Jan 2022 01:06:49 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 11:06:51 +0200
Message-Id: <20220124090653.14547-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
References: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 3 ++-
 drivers/gpu/drm/i915/display/intel_display.c       | 9 +++++++--
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 3 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index c2c512cd8ec0..b20cf2c16691 100644
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
index 0964b2403e2d..a65bae1f0c35 100644
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

