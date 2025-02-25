Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E694A446DA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:50:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9692710E76D;
	Tue, 25 Feb 2025 16:50:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fu6Cnsat";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2913F10E761;
 Tue, 25 Feb 2025 16:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502207; x=1772038207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EbJeDUojfMtQ++qNXFUHmWmqINeTHvQIQ8UhvYICGc4=;
 b=Fu6Cnsat2p6Y448p2AX0JRWsjCr51P214ohDwVUOW5hMpNt5KEPLGSmn
 1F+cUXQhg663sssi0mlQYLe5iP3tsMsgOeWFnk+bE5KCV0idgxZ6KMIpi
 FVJQDPxM6Roh609DaaJgFuixIJQEXH49nizDRLdSKD4kqfyc4IddQ02ha
 dEtTJT3lsc9sDnX2978ZS6FIS+V0BTLfHTDT5m9J+09ZsiFrfiNjdGqGL
 TSY+yK0MypKCd9grxyZfYh7EwX8DF5bg2UqoXGdEcCYxUrNZpEdVwlkkA
 x8DofZ++R+ZZXLAwzcPtYBH+qDx17Wutt9eZanDKeFOzq2HDNQuECWeO6 A==;
X-CSE-ConnectionGUID: kEztoSU/Rle71dUs2a5TIQ==
X-CSE-MsgGUID: JXNNTf9wSJevKNDMAKsuTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52741776"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52741776"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:50:07 -0800
X-CSE-ConnectionGUID: x9PVV2GuQz2Urpb7C56fRQ==
X-CSE-MsgGUID: KH1wbgIJQ/WcpzBd9oqrlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121691898"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:50:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/12] drm/i915/rps: convert intel_display_rps.[ch] to struct
 intel_display
Date: Tue, 25 Feb 2025 18:49:11 +0200
Message-Id: <c81156007bffbf0a1b1e6831afaf8fb05db546bc.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_display_rps.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_display_rps.c  | 4 +++-
 drivers/gpu/drm/i915/display/intel_display_rps.h  | 4 ++--
 drivers/gpu/drm/xe/display/xe_display_rps.c       | 2 +-
 4 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 124cd9ddba0b..05dcfa3bea73 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1119,11 +1119,11 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 {
 	struct i915_sched_attr attr = { .priority = I915_PRIORITY_DISPLAY };
 	struct intel_plane *plane = to_intel_plane(_plane);
+	struct intel_display *display = to_intel_display(plane);
 	struct intel_plane_state *new_plane_state =
 		to_intel_plane_state(_new_plane_state);
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(new_plane_state->uapi.state);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	struct intel_plane_state *old_plane_state =
 		intel_atomic_get_old_plane_state(state, plane);
 	struct drm_gem_object *obj = intel_fb_bo(new_plane_state->hw.fb);
@@ -1181,7 +1181,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	 * that are not quite steady state without resorting to forcing
 	 * maximum clocks following a vblank miss (see do_rps_boost()).
 	 */
-	intel_display_rps_mark_interactive(dev_priv, state, true);
+	intel_display_rps_mark_interactive(display, state, true);
 
 	return 0;
 
@@ -1202,17 +1202,17 @@ static void
 intel_cleanup_plane_fb(struct drm_plane *plane,
 		       struct drm_plane_state *_old_plane_state)
 {
+	struct intel_display *display = to_intel_display(plane->dev);
 	struct intel_plane_state *old_plane_state =
 		to_intel_plane_state(_old_plane_state);
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(old_plane_state->uapi.state);
-	struct drm_i915_private *dev_priv = to_i915(plane->dev);
 	struct drm_gem_object *obj = intel_fb_bo(old_plane_state->hw.fb);
 
 	if (!obj)
 		return;
 
-	intel_display_rps_mark_interactive(dev_priv, state, false);
+	intel_display_rps_mark_interactive(display, state, false);
 
 	intel_plane_unpin_fb(old_plane_state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index 918d0327169a..4074a1879828 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -69,10 +69,12 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 	add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
 }
 
-void intel_display_rps_mark_interactive(struct drm_i915_private *i915,
+void intel_display_rps_mark_interactive(struct intel_display *display,
 					struct intel_atomic_state *state,
 					bool interactive)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (state->rps_interactive == interactive)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.h b/drivers/gpu/drm/i915/display/intel_display_rps.h
index e19009c2371a..556891edb2dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.h
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.h
@@ -10,12 +10,12 @@
 
 struct dma_fence;
 struct drm_crtc;
-struct drm_i915_private;
 struct intel_atomic_state;
+struct intel_display;
 
 void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 					  struct dma_fence *fence);
-void intel_display_rps_mark_interactive(struct drm_i915_private *i915,
+void intel_display_rps_mark_interactive(struct intel_display *display,
 					struct intel_atomic_state *state,
 					bool interactive);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display_rps.c b/drivers/gpu/drm/xe/display/xe_display_rps.c
index ab21c581c192..fa616f9688a5 100644
--- a/drivers/gpu/drm/xe/display/xe_display_rps.c
+++ b/drivers/gpu/drm/xe/display/xe_display_rps.c
@@ -10,7 +10,7 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 {
 }
 
-void intel_display_rps_mark_interactive(struct drm_i915_private *i915,
+void intel_display_rps_mark_interactive(struct intel_display *display,
 					struct intel_atomic_state *state,
 					bool interactive)
 {
-- 
2.39.5

