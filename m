Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BA984979B
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 11:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4109E112494;
	Mon,  5 Feb 2024 10:17:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LOC9/gIN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9336112491
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 10:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707128266; x=1738664266;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WoAnVrBPfkFEeKxpHZPuK1liFX9FXzdebad4asuYSAQ=;
 b=LOC9/gINGXjbmKKU6AfducJ2Ijo0TvMTMjc6WUhaQ5JPfHBNibk/QKp+
 s26T50s6rNCuwi6Ks+ijNlJkFX0v37TmS5RbanuhOUFho0H80JOhhdlTM
 DDk+bR6Bng17SPgAuuIBwINJTTBBB1MvD/LpagQE8OjUI6b+SnIScp+S0
 gKcB20Y3wUYcdeMI/182iDnf603aqPyC9uHczuvQNS3L2Bh1LzXWnzvyf
 ujghOXH0pyla6qtMEzPz/6ZrDkFwyMZPp8YKLV6PLjy27e/iuDmCUaxGU
 ZrnNwGZBdKXKMBMqTsbHkO6JBrMP4PxGf1tyBTvOLpgIVnh2OQ6BIhf8v w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="388911"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="388911"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 02:17:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="5299205"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa003.fm.intel.com with ESMTP; 05 Feb 2024 02:17:44 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 3/6] drm/i915: Use the same vblank worker for atomic unpin
Date: Mon,  5 Feb 2024 15:40:50 +0530
Message-Id: <20240205101053.3698717-4-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240205101053.3698717-1-chaitanya.kumar.borah@intel.com>
References: <20240205101053.3698717-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

In case of legacy cursor update, the cursor VMA needs to be unpinned
only after vblank. This exceeds the lifetime of the whole atomic commit.

Any trick I attempted to keep the atomic commit alive didn't work, as
drm_atomic_helper_setup_commit() force throttles on any old commit that
wasn't cleaned up.

The only option remaining is to remove the plane from the atomic commit,
and use the same path as the legacy cursor update to clean the state
after vblank.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 28 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  2 ++
 drivers/gpu/drm/i915/display/intel_crtc.c     | 27 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.h   |  3 ++
 5 files changed, 60 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 76d77d5a0409..06c5d8262443 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -42,6 +42,7 @@
 #include "i915_reg.h"
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
+#include "intel_cursor.h"
 #include "intel_display_rps.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
@@ -1163,7 +1164,21 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
 
 	intel_display_rps_mark_interactive(dev_priv, state, false);
 
-	/* Should only be called after a successful intel_prepare_plane_fb()! */
+	/*
+	 * This branch can only ever be called after plane update is succesful,
+	 * the error path will not cause unpin_work to be set.
+	 */
+	if (old_plane_state->unpin_work.vblank) {
+		int i = drm_plane_index(old_plane_state->uapi.plane);
+
+		/*
+		 * Remove plane from atomic commit,
+		 * free is done from vblank worker
+		 */
+		memset(&state->base.planes[i], 0, sizeof(*state->base.planes));
+		return;
+	}
+
 	intel_plane_unpin_fb(old_plane_state);
 }
 
@@ -1176,3 +1191,14 @@ void intel_plane_helper_add(struct intel_plane *plane)
 {
 	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
 }
+
+void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
+					 struct intel_plane_state *new_plane_state)
+{
+	if (!old_plane_state->ggtt_vma ||
+	    old_plane_state->ggtt_vma == new_plane_state->ggtt_vma)
+		return;
+
+	drm_vblank_work_init(&old_plane_state->unpin_work, old_plane_state->uapi.crtc,
+			     intel_cursor_unpin_work);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 191dad0efc8e..5a897cf6fa02 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -66,5 +66,7 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state);
 void intel_plane_helper_add(struct intel_plane *plane);
+void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
+					 struct intel_plane_state *new_plane_state);
 
 #endif /* __INTEL_ATOMIC_PLANE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 25593f6aae7d..a7fb7f5ace07 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -501,6 +501,18 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 		intel_crtc_vblank_work_init(new_crtc_state);
 
 	intel_vblank_evade_init(old_crtc_state, new_crtc_state, &evade);
+	if (state->base.legacy_cursor_update) {
+		struct intel_plane *plane;
+		struct intel_plane_state *old_plane_state, *new_plane_state;
+		int i;
+
+		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
+						     new_plane_state, i) {
+			if (old_plane_state->uapi.crtc == &crtc->base)
+				intel_plane_init_cursor_vblank_work(old_plane_state,
+								    new_plane_state);
+		}
+	}
 
 	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc->base)))
 		goto irq_disable;
@@ -616,6 +628,21 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 		new_crtc_state->uapi.event = NULL;
 	}
 
+	if (state->base.legacy_cursor_update) {
+		struct intel_plane *plane;
+		struct intel_plane_state *old_plane_state;
+		int i;
+
+		for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
+			if (old_plane_state->uapi.crtc == &crtc->base &&
+			    old_plane_state->unpin_work.vblank) {
+				drm_vblank_work_schedule(&old_plane_state->unpin_work,
+							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
+							 false);
+			}
+		}
+	}
+
 	/*
 	 * Send VRR Push to terminate Vblank. If we are already in vblank
 	 * this has to be done _after_ sampling the frame counter, as
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 9021c0c1683d..dbb26a212800 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -654,7 +654,7 @@ static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
 	return format == DRM_FORMAT_ARGB8888;
 }
 
-static void intel_cursor_unpin_work(struct kthread_work *base)
+void intel_cursor_unpin_work(struct kthread_work *base)
 {
 	struct drm_vblank_work *work = to_drm_vblank_work(base);
 	struct intel_plane_state *plane_state =
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.h b/drivers/gpu/drm/i915/display/intel_cursor.h
index ce333bf4c2d5..e2d9ec710a86 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor.h
@@ -9,9 +9,12 @@
 enum pipe;
 struct drm_i915_private;
 struct intel_plane;
+struct kthread_work;
 
 struct intel_plane *
 intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 			  enum pipe pipe);
 
+void intel_cursor_unpin_work(struct kthread_work *base);
+
 #endif
-- 
2.25.1

