Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B70EA17BC0B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 12:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1535C6ECE3;
	Fri,  6 Mar 2020 11:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0AB86ECE3
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 11:46:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 03:46:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,521,1574150400"; d="scan'208";a="241148776"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.208])
 by orsmga003.jf.intel.com with ESMTP; 06 Mar 2020 03:46:21 -0800
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 17:09:24 +0530
Message-Id: <20200306113927.16904-5-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200306113927.16904-1-karthik.b.s@intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 4/7] drm/i915: Add checks specific to async flips
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

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 25fad5d01e67..a8de08c3773e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14732,6 +14732,31 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
 	return false;
 }
 
+static int intel_atomic_check_async(struct intel_atomic_state *state)
+{
+	struct drm_plane *plane;
+	struct drm_plane_state *plane_state;
+	struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i, j;
+
+	/*FIXME: Async flip is only supported for primary plane currently
+	 * Support for overlays to be added.
+	 */
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		if (crtc_state->uapi.async_flip) {
+			for_each_new_plane_in_state(&state->base,
+						    plane, plane_state, j) {
+				if (plane->type != DRM_PLANE_TYPE_PRIMARY) {
+					DRM_ERROR("Async flips is NOT supported for non-primary plane\n");
+					return -EINVAL;
+				}
+			}
+		}
+	}
+	return 0;
+}
+
 /**
  * intel_atomic_check - validate state object
  * @dev: drm device
@@ -14760,6 +14785,10 @@ static int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	ret = intel_atomic_check_async(state);
+	if  (ret)
+		goto fail;
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
