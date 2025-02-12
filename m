Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6911A32C1A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:43:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23AA310E928;
	Wed, 12 Feb 2025 16:43:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BC/87YQX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF23310E928
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378628; x=1770914628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ejjyA1EyROzMfR6V5LvtGU9h+VTsNy9l6wmN9aI5lKY=;
 b=BC/87YQXNJ82Izpvtr8BB7VrJYjx0ERdpJ5Og4IuMiGonzlgPyeB5RuE
 xgqHRr52SRfxIKEIU43KPktvji5By/ERxXnRBbpVjcSADP+F1Fd2IZOco
 3HuiSjha5eSZ86GVwcxIVh6/vwvktg4R310o0mWh+EsEJl7Vqowdcn+k2
 vWDfqMGZiFTQt5LNyIaSKYLxDfWm41u7RuQZvaDMAvzsozguNJJww7jd8
 F8u7qXFhexs9XR84GXJ6oREPx1CSDAkaEeBGowHAQ9xOp7Hv12yWlayj3
 yCDoZLKCVI/Gk23wlQG5knuF5A+vzGwk72XQcQ1qRrjtd/VGOBDJcv5zu g==;
X-CSE-ConnectionGUID: laEBYoBtQ/elRxSVK7QqHQ==
X-CSE-MsgGUID: sDJ8JXy2R1ma2SY3/GO3BA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62515000"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62515000"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:43:48 -0800
X-CSE-ConnectionGUID: 9gm5IodtRTSgQ1emuxEtag==
X-CSE-MsgGUID: pNip2DbQQXKrUjskWDqZzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113082628"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:43:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:43:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 05/10] drm/i915: Extract unlink_nv12_plane()
Date: Wed, 12 Feb 2025 18:43:25 +0200
Message-ID: <20250212164330.16891-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
References: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the details of the nv12 plane unlinking to a small
function to make the higher level code less messy.

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 32 +++++++++++++-------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index df477a00a315..5ce450550ba8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4410,6 +4410,24 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 	return true;
 }
 
+static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
+			      struct intel_plane_state *plane_state)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+
+	plane_state->planar_linked_plane = NULL;
+
+	if (plane_state->is_y_plane && !plane_state->uapi.visible) {
+		crtc_state->enabled_planes &= ~BIT(plane->id);
+		crtc_state->active_planes &= ~BIT(plane->id);
+		crtc_state->update_planes |= BIT(plane->id);
+		crtc_state->data_rate[plane->id] = 0;
+		crtc_state->rel_data_rate[plane->id] = 0;
+	}
+
+	plane_state->is_y_plane = false;
+}
+
 static int icl_check_nv12_planes(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
@@ -4429,19 +4447,11 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 	 * in the crtc_state->active_planes mask.
 	 */
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		if (plane->pipe != crtc->pipe || !plane_state->planar_linked_plane)
+		if (plane->pipe != crtc->pipe)
 			continue;
 
-		plane_state->planar_linked_plane = NULL;
-		if (plane_state->is_y_plane && !plane_state->uapi.visible) {
-			crtc_state->enabled_planes &= ~BIT(plane->id);
-			crtc_state->active_planes &= ~BIT(plane->id);
-			crtc_state->update_planes |= BIT(plane->id);
-			crtc_state->data_rate[plane->id] = 0;
-			crtc_state->rel_data_rate[plane->id] = 0;
-		}
-
-		plane_state->is_y_plane = false;
+		if (plane_state->planar_linked_plane)
+			unlink_nv12_plane(crtc_state, plane_state);
 	}
 
 	if (!crtc_state->nv12_planes)
-- 
2.45.3

