Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E0D1B0600
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 11:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8BD6E4C7;
	Mon, 20 Apr 2020 09:52:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E326B6E4BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 09:52:53 +0000 (UTC)
IronPort-SDR: GoteT9BpkXJvo8Aj8v4BO4fQrgfC/cq2Lh0shvsuEqjH5SoxTZPzV66tOLU9KDRkLyNNSM+igb
 vsCuX0D3YDsA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 02:52:53 -0700
IronPort-SDR: mC0mmbMfRB89HIOQK+NGDy9mYiweOovejWDw/svjFF5Uad8q6FXW/JYz7NdUTVq2n9FSqloVt1
 +CA2l0P3MDDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="429065155"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.208])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2020 02:52:51 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 15:17:45 +0530
Message-Id: <20200420094746.20409-6-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200420094746.20409-1-karthik.b.s@intel.com>
References: <20200420094746.20409-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915: Add checks specific to async
 flips
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
Cc: paulo.r.zanoni@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Support added only for async flips on primary plane.
If flip is requested on any other plane, reject it.

Make sure there is no change in fbc, offset and framebuffer modifiers
when async flip is requested.

If any of these are modified, reject async flip.

v2: -Replace DRM_ERROR (Paulo)
    -Add check for changes in OFFSET, FBC, RC(Paulo)

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 59 ++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a5203de24045..ac7f26a9ac4a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14669,6 +14669,57 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
 	return false;
 }
 
+static int intel_atomic_check_async(struct intel_atomic_state *state)
+{
+	struct drm_plane *plane;
+	struct drm_plane_state *plane_state;
+	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
+	struct intel_plane_state *new_plane_state, *old_plane_state;
+	struct intel_crtc *crtc;
+	struct intel_plane *intel_plane;
+	int i, j;
+
+	/*FIXME: Async flip is only supported for primary plane currently
+	 * Support for overlays to be added.
+	 */
+
+	/*TODO: Check if the user space can handle the EINVAL return
+	 * or if it needs to be handled differently
+	 */
+	for_each_new_plane_in_state(&state->base, plane, plane_state, j) {
+		if (plane->type != DRM_PLANE_TYPE_PRIMARY) {
+			DRM_DEBUG_KMS("Async flips is NOT supported for non-primary plane\n");
+			return -EINVAL;
+		}
+	}
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		if (old_crtc_state->enable_fbc != new_crtc_state->enable_fbc) {
+			DRM_DEBUG_KMS("FBC status cannot be changed in async flip\n");
+			return -EINVAL;
+		}
+	}
+
+	for_each_oldnew_intel_plane_in_state(state, intel_plane, old_plane_state,
+					     new_plane_state, i) {
+		if ((old_plane_state->color_plane[0].x !=
+		     new_plane_state->color_plane[0].x) ||
+		    (old_plane_state->color_plane[0].y !=
+		     new_plane_state->color_plane[0].y)) {
+			DRM_DEBUG_KMS("Offsets cannot be changed in async\n");
+			return -EINVAL;
+		}
+
+		if (old_plane_state->uapi.fb->modifier !=
+		    new_plane_state->uapi.fb->modifier) {
+			DRM_DEBUG_KMS("Framebuffer modifiers cannot be changed in async flip\n");
+			return -EINVAL;
+		}
+	}
+	return 0;
+}
+
 /**
  * intel_atomic_check - validate state object
  * @dev: drm device
@@ -14697,6 +14748,14 @@ static int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (new_crtc_state->uapi.async_flip) {
+			ret = intel_atomic_check_async(state);
+			if  (ret)
+				goto fail;
+		}
+	}
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (!needs_modeset(new_crtc_state)) {
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
