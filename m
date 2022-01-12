Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B37048C45C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 14:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EA5F10FF6D;
	Wed, 12 Jan 2022 13:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615B010FF6D
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 13:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641992764; x=1673528764;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UQQcvoRPDa23wEKUqgrcvvk4Q8u6Hzj2p0+8CB4Et4o=;
 b=aekSOePikMq4VQqC1N+wvG+LQSV2MyOWjKbzolorTGG2mKHZEie662fj
 +OvA01PDrSpSGhhcgkeVw9DHR8wEwpRrRCGmUqBPz04vgY4eSM+Cjq7bj
 JhZpNvZmTADeHyuxsyWOWvd15XLBMb6AdB4kjAG+1eDIU+LEmgjP08p/c
 gyZSIgESikLAqOUHnKWZjFaIM2stFr9CW4ZrVsrDL0X0CwmrMeTl2pZf/
 dyFPI+xWCBILWI4kDcwNwpRzCt0PbOetVkflZ2Ouy18ykx04trPnbNU6U
 ztSKHnvb2jRphGi4P68KqKKv06pFqNToZBe04+wm9nz8g/dIKwkb9CPHf Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="223708658"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="223708658"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 05:06:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="623434157"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 12 Jan 2022 05:06:00 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 15:06:01 +0200
Message-Id: <20220112130601.2955-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Recalculate CDCLK if plane scaling
 ratio changes
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

Currently we only recalculate CDCLK if active plane mask changes
or if we do a full modeset, however according to BSpec
required Dbuf bandwidth calculations also depend on pipe/plane
scaling ratio, which means that CDCLK must be recalculated
everytime plane scaling ratio changes, because it affects
display buffer bandwidth requirements.

v2: - Removed excessive debugs(Jani Nikula)
    - Switched to drm_dbg_kms(Jani Nikula)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 56 ++++++++++++++++++--
 1 file changed, 53 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf7ce684dd8e..256cf803e6b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7499,13 +7499,57 @@ static int intel_bigjoiner_add_affected_planes(struct intel_atomic_state *state)
 	return 0;
 }
 
+static bool scaling_affects_cdclk(struct intel_plane_state *old_plane_state,
+				  struct intel_plane_state *new_plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(new_plane_state->uapi.plane->dev);
+	int old_src_w = drm_rect_width(&old_plane_state->uapi.src) >> 16;
+	int old_src_h = drm_rect_height(&old_plane_state->uapi.src) >> 16;
+	int old_dst_w = drm_rect_width(&old_plane_state->uapi.dst);
+	int old_dst_h = drm_rect_height(&old_plane_state->uapi.dst);
+	int new_src_w = drm_rect_width(&new_plane_state->uapi.src) >> 16;
+	int new_src_h = drm_rect_height(&new_plane_state->uapi.src) >> 16;
+	int new_dst_w = drm_rect_width(&new_plane_state->uapi.dst);
+	int new_dst_h = drm_rect_height(&new_plane_state->uapi.dst);
+	int old_hscale_ratio, new_hscale_ratio;
+	int old_vscale_ratio, new_vscale_ratio;
+
+	if (needs_scaling(old_plane_state) != needs_scaling(new_plane_state))
+		return true;
+
+	if (!old_dst_w || !old_dst_h)
+		return true;
+
+	old_hscale_ratio = DIV_ROUND_UP(old_src_w, old_dst_w);
+	old_vscale_ratio = DIV_ROUND_UP(old_src_h, old_dst_h);
+
+	if (!new_dst_w || !new_dst_h)
+		return true;
+
+	new_hscale_ratio = DIV_ROUND_UP(new_src_w, new_dst_w);
+	new_vscale_ratio = DIV_ROUND_UP(new_src_h, new_dst_h);
+
+	if ((old_hscale_ratio != new_hscale_ratio) ||
+	    (old_vscale_ratio != new_vscale_ratio)) {
+		drm_dbg_kms(&i915->drm, "Scaling ratios changed from %dx%d"
+			    " to %dx%d - need cdclk recalc\n",
+			    old_hscale_ratio, old_vscale_ratio,
+			    new_hscale_ratio, new_vscale_ratio);
+		return true;
+	}
+
+	return false;
+}
+
 static int intel_atomic_check_planes(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_plane_state *plane_state;
+	struct intel_plane_state *old_plane_state;
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
+	bool need_cdclk_calc = false;
 	int i, ret;
 
 	ret = icl_add_linked_planes(state);
@@ -7516,7 +7560,7 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, plane_state, i) {
 		ret = intel_plane_atomic_check(state, plane);
 		if (ret) {
 			drm_dbg_atomic(&dev_priv->drm,
@@ -7524,6 +7568,9 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 				       plane->base.base.id, plane->base.name);
 			return ret;
 		}
+
+		if (scaling_affects_cdclk(old_plane_state, plane_state))
+			need_cdclk_calc = true;
 	}
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
@@ -7539,18 +7586,21 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 		 * the planes' minimum cdclk calculation. Add such planes
 		 * to the state before we compute the minimum cdclk.
 		 */
-		if (!active_planes_affects_min_cdclk(dev_priv))
+		if (!active_planes_affects_min_cdclk(dev_priv) && !need_cdclk_calc)
 			continue;
 
 		old_active_planes = old_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
 		new_active_planes = new_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
 
-		if (hweight8(old_active_planes) == hweight8(new_active_planes))
+		if ((hweight8(old_active_planes) == hweight8(new_active_planes)) &&
+		    !need_cdclk_calc)
 			continue;
 
 		ret = intel_crtc_add_planes_to_state(state, crtc, new_active_planes);
 		if (ret)
 			return ret;
+
+
 	}
 
 	return 0;
-- 
2.24.1.485.gad05a3d8e5

