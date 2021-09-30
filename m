Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B57841D075
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 02:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A251C6EB0D;
	Thu, 30 Sep 2021 00:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752B56EB0B
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 00:08:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212148096"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="212148096"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="438658487"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 17:14:01 -0700
Message-Id: <20210930001409.254817-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915/display/psr: Handle plane and
 pipe restrictions at every page flip
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
those plane parameters can change without a modeset.

Pipe selective fetch restrictions are also needed, it could be added
in intel_psr_compute_config() but pippe scaling is computed after
it is executed, so leaving as is for now.
There is no much loss in this approach as it would cause selective
fetch to not enabled as for alderlake-P and newer will cause it to
switch to PSR1 that will have the same power-savings as do full pipe
fetch.

Also need to check those restricions in the second
for_each_oldnew_intel_plane_in_state() loop because the state could
only have a plane that is not affected by those restricitons but
the damaged area intersect with planes that has those restrictions,
so a full pipe fetch is required.

v2:
- also handling pipe restrictions

BSpec: 55229
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com> # v1
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 65 +++++++++++++++++-------
 1 file changed, 46 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 19a96d3c4acf4..e3af1dc358bd2 100644
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
@@ -1580,6 +1568,41 @@ static void cursor_area_workaround(const struct intel_plane_state *new_plane_sta
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
+/*
+ * Check for pipe properties that is not supported by selective fetch.
+ *
+ * TODO: pipe scaling causes a modeset but skl_update_scaler_crtc() is executed
+ * after intel_psr_compute_config(), so for now keeping PSR2 selective fetch
+ * enabled and going to the full update path.
+ */
+static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->scaler_state.scaler_id >= 0)
+		return false;
+
+	return true;
+}
+
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
@@ -1593,6 +1616,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return 0;
 
+	if (!psr2_sel_fetch_pipe_state_supported(crtc_state)) {
+		full_update = true;
+		goto skip_sel_fetch_set_loop;
+	}
+
 	/*
 	 * Calculate minimal selective fetch area of each plane and calculate
 	 * the pipe damaged area.
@@ -1612,13 +1640,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
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
@@ -1697,6 +1719,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
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

