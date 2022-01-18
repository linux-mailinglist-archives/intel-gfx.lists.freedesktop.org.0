Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EF7492417
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 11:48:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12BD5112A2D;
	Tue, 18 Jan 2022 10:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5960F112A4C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 10:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642502924; x=1674038924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rZeLuNxX9DX8tKsxDAEVkD+jRPm6koYhN6cpi/neEDw=;
 b=AAyUw/Pq9lSrQ3RqyC9KEdNP9GAHqCYMR/ow/3FXZauoaBnja9eCohMu
 5Egy5u9GRDaQXC0Px+zw9mSJcxuwdltW/5P/bk6gsWaj+KQG1zsvd595Z
 MxasM4fTL4p2+vNAxBLKHy4FTe2UJA9gJ5FxQOzNHwJom7cAgGl+l8jCC
 BsFNcoeOXXCkFGQ2C37Yuc2lG7vNXU3mQwXvX+ba+qKs3CIzNSsOrYbi7
 w4qnGLH9rhrJbvvFj2ks1XKY/zzR7iRlIKmX0LdNiy1bep6ZzStPNNoBV
 BPrTZwJFYc6TaHJo31Ge0+5oaU6NKvNqvztbxWTOywGxohiOQ60D3aItd w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="244745340"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="244745340"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 02:48:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="531736704"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga008.jf.intel.com with ESMTP; 18 Jan 2022 02:48:42 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 12:48:37 +0200
Message-Id: <20220118104839.6654-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220118104839.6654-1-stanislav.lisovskiy@intel.com>
References: <20220118104839.6654-1-stanislav.lisovskiy@intel.com>
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

v2: - Set do_async_flip flag to False, if no async flip needed.
      Lets not rely that it will be 0-initialized, but set
      explicitly, so that the logic is clear as well.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c       | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index d1344e9c06de..87bad665a2c8 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -491,7 +491,7 @@ void intel_plane_update_arm(struct intel_plane *plane,
 
 	trace_intel_plane_update_arm(&plane->base, crtc);
 
-	if (crtc_state->uapi.async_flip && plane->async_flip)
+	if (plane_state->do_async_flip)
 		plane->async_flip(plane, crtc_state, plane_state, true);
 	else
 		plane->update_arm(plane, crtc_state, plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0964b2403e2d..f3ce29c42bc3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5027,6 +5027,11 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 			 needs_scaling(new_plane_state))))
 		new_crtc_state->disable_lp_wm = true;
 
+	if (new_crtc_state->uapi.async_flip && plane->async_flip)
+		new_plane_state->do_async_flip = true;
+	else
+		new_plane_state->do_async_flip = false;
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

