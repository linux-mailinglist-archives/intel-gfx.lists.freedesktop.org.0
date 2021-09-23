Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A93BB416607
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 21:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984F76EDA2;
	Thu, 23 Sep 2021 19:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 562E56EDA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 19:40:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="223970612"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="223970612"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 12:40:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="455236749"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 12:40:43 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Thu, 23 Sep 2021 12:46:14 -0700
Message-Id: <20210923194617.69136-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210923194617.69136-1-jose.souza@intel.com>
References: <20210923194617.69136-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/display/psr: Handle plane
 restrictions at every page flip
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

PSR2 selective is not supported over rotated and scaled planes.
We had the rotation check in intel_psr2_sel_fetch_config_valid()
but that code path is only execute when a modeset is needed and
change those plane parameters do not require a modeset.

Also need to check those restricions in the second
for_each_oldnew_intel_plane_in_state() loop because the state could
only have a plane that is not affected by those restricitons but
the damaged area intersect with planes that has those restrictions,
so a full plane fetch is required.

BSpec: 55229
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 45 ++++++++++++++----------
 1 file changed, 26 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1cc4130dec7b1..356e0e96abf4e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -720,11 +720,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state)
 {
-	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_plane_state *plane_state;
-	struct intel_plane *plane;
-	int i;
 
 	if (!dev_priv->params.enable_psr2_sel_fetch &&
 	    intel_dp->psr.debug != I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
@@ -739,14 +735,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		if (plane_state->uapi.rotation != DRM_MODE_ROTATE_0) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "PSR2 sel fetch not enabled, plane rotated\n");
-			return false;
-		}
-	}
-
 	/* Wa_14010254185 Wa_14010103792 */
 	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -1586,6 +1574,26 @@ static void cursor_area_workaround(const struct intel_plane_state *new_plane_sta
 	clip_area_update(pipe_clip, damaged_area);
 }
 
+/*
+ * TODO: Not clear how to handle planes with negative position,
+ * also planes are not updated if they have a negative X
+ * position so for now doing a full update in this cases
+ *
+ * Plane scaling and rotation is not supported by selective fetch and both
+ * properties can change without a modeset, so need to be check at every
+ * atomic commmit.
+ */
+static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state *plane_state)
+{
+	if (plane_state->uapi.dst.y1 < 0 ||
+	    plane_state->uapi.dst.x1 < 0 ||
+	    plane_state->scaler_id >= 0 ||
+	    plane_state->uapi.rotation != DRM_MODE_ROTATE_0)
+		return false;
+
+	return true;
+}
+
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
@@ -1618,13 +1626,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		    !old_plane_state->uapi.visible)
 			continue;
 
-		/*
-		 * TODO: Not clear how to handle planes with negative position,
-		 * also planes are not updated if they have a negative X
-		 * position so for now doing a full update in this cases
-		 */
-		if (new_plane_state->uapi.dst.y1 < 0 ||
-		    new_plane_state->uapi.dst.x1 < 0) {
+		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
 			full_update = true;
 			break;
 		}
@@ -1703,6 +1705,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst))
 			continue;
 
+		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
+			full_update = true;
+			break;
+		}
+
 		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
 		sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
 		sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
-- 
2.33.0

