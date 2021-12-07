Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 429F646B9CC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 12:07:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 167F17A54F;
	Tue,  7 Dec 2021 11:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6067873F5B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 11:07:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="217579235"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="217579235"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 03:07:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515235526"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.167])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2021 03:07:25 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Dec 2021 13:07:19 +0200
Message-Id: <20211207110721.30409-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
References: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c       | 3 +++
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 023747fb5052..d01768344513 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -490,7 +490,7 @@ void intel_plane_update_arm(struct intel_plane *plane,
 
 	trace_intel_plane_update_arm(&plane->base, crtc);
 
-	if (crtc_state->uapi.async_flip && plane->async_flip)
+	if (plane_state->do_async_flip)
 		plane->async_flip(plane, crtc_state, plane_state, true);
 	else
 		plane->update_arm(plane, crtc_state, plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 128d4943a43b..d0552c71a3fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5025,6 +5025,9 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 			 needs_scaling(new_plane_state))))
 		new_crtc_state->disable_lp_wm = true;
 
+	if (new_crtc_state->uapi.async_flip && plane->async_flip)
+		new_plane_state->do_async_flip = true;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c9c6efadf8b4..e83cb799427b 100644
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

