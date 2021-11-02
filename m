Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BDC443679
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 20:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE796E99F;
	Tue,  2 Nov 2021 19:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 565D16E99F
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Nov 2021 19:25:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="218259152"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="218259152"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 12:25:53 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="577284435"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 12:25:53 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Nov 2021 12:32:14 -0700
Message-Id: <20211102193214.99448-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display: Exit PSR when doing async
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Changing the buffer in the middle of the scanout then entering an
period of flip idleness will cause part of the previous buffer being
diplayed to user when PSR is enabled.

So here disabling PSR and scheduling activation during the next
sync flip.

The async flip check that we had in PSR compute is not executed at
every flip so it was not doing anything useful and is also being
dropped here.

v2:
- scheduling the PSR work in _intel_psr_post_plane_update()

v3:
- only re enabling PSR when doing a sync flip

Cc: Karthik B S <karthik.b.s@intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 37 ++++++++++++++----------
 1 file changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9d589d471e335..b8fac53d57df1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -731,12 +731,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (crtc_state->uapi.async_flip) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 sel fetch not enabled, async flip enabled\n");
-		return false;
-	}
-
 	/* Wa_14010254185 Wa_14010103792 */
 	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -1780,36 +1774,47 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		if (psr->enabled && needs_to_disable)
 			intel_psr_disable_locked(intel_dp);
 
+		if (psr->enabled && crtc_state->uapi.async_flip)
+			intel_psr_exit(intel_dp);
+
 		mutex_unlock(&psr->lock);
 	}
 }
 
 static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
-					 const struct intel_crtc_state *crtc_state)
+					 const struct intel_crtc_state *old_crtc_state,
+					 const struct intel_crtc_state *new_crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_encoder *encoder;
 
-	if (!crtc_state->has_psr)
+	if (!new_crtc_state->has_psr)
 		return;
 
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
-					     crtc_state->uapi.encoder_mask) {
+					     new_crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 		struct intel_psr *psr = &intel_dp->psr;
 
 		mutex_lock(&psr->lock);
 
-		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
+		drm_WARN_ON(&dev_priv->drm, psr->enabled &&
+			    !new_crtc_state->active_planes);
 
 		/* Only enable if there is active planes */
-		if (!psr->enabled && crtc_state->active_planes)
-			intel_psr_enable_locked(intel_dp, crtc_state);
+		if (!psr->enabled && new_crtc_state->active_planes)
+			intel_psr_enable_locked(intel_dp, new_crtc_state);
 
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
-		if (crtc_state->crc_enabled && psr->enabled)
+		if (new_crtc_state->crc_enabled && psr->enabled)
 			psr_force_hw_tracking_exit(intel_dp);
 
+		/* Only re enabling PSR when doing a sync flip */
+		if (psr->enabled && !psr->active &&
+		    old_crtc_state->uapi.async_flip &&
+		    !new_crtc_state->uapi.async_flip)
+			schedule_work(&intel_dp->psr.work);
+
 		mutex_unlock(&psr->lock);
 	}
 }
@@ -1817,15 +1822,15 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 void intel_psr_post_plane_update(const struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc_state *crtc_state;
+	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_crtc *crtc;
 	int i;
 
 	if (!HAS_PSR(dev_priv))
 		return;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
-		_intel_psr_post_plane_update(state, crtc_state);
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i)
+		_intel_psr_post_plane_update(state, old_crtc_state, new_crtc_state);
 }
 
 static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
-- 
2.33.1

