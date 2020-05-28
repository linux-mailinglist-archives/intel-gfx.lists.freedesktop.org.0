Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E71351E572E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 08:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE6F6E3C7;
	Thu, 28 May 2020 06:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F9EE6E3C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 06:02:36 +0000 (UTC)
IronPort-SDR: fw5jCN1nJ51lZ0lB/Cdp7UOZJ+9VdZB2052MFfVumHJtExGbuuLopvKLEyhNRj338gw3/uLEYz
 25i1DNcbg/wg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 23:02:36 -0700
IronPort-SDR: VkbAGXKH5f3TX2RApsqWyXJddmEbbdRFb1p9G+xSSBrPOOhNBwGRnJKnz7sC16/QpX4aBt3OEa
 hmyhtal6W3QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,443,1583222400"; d="scan'208";a="291884020"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.217])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2020 23:02:34 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 11:09:29 +0530
Message-Id: <20200528053931.29282-4-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200528053931.29282-1-karthik.b.s@intel.com>
References: <20200528053931.29282-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/5] drm/i915: Add checks specific to async
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

v3: -Removed TODO as benchmarking tests have been run now.

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 55 ++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eb1c360431ae..2307f924732c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14798,6 +14798,53 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
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
@@ -14825,6 +14872,14 @@ static int intel_atomic_check(struct drm_device *dev,
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
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
