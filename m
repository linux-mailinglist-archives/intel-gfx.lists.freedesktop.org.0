Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91307437584
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 12:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DC896ECFF;
	Fri, 22 Oct 2021 10:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC4E6ECFE
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 10:33:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="229144157"
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="229144157"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 03:33:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="484632000"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 22 Oct 2021 03:33:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Oct 2021 13:33:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri, 22 Oct 2021 13:32:56 +0300
Message-Id: <20211022103304.24164-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
References: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915/psr: Disable PSR before
 modesets turn off all planes
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

PSR2 apparently requires some planes to be enabled for some
silly reason, and so we are now trying to turn PSR off before
planes go off. Except during a full modeset that is handled
less clearly through reorganization of the modeset sequence.
That is not great as it makes the code mode complex, and
prevents us from doing nice things such as just turning off
all the planes at the very start of the modeset. So let's
move the PSR pre_plane_update() thing to a spot where it
will handle both full modesets and everything else.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_psr.c     | 25 +++++++-------------
 drivers/gpu/drm/i915/display/intel_psr.h     |  3 ++-
 3 files changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2b97c8797177..5201d6cdd5db 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1429,6 +1429,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_psr_pre_plane_update(state, crtc);
+
 	if (hsw_pre_update_disable_ips(old_crtc_state, new_crtc_state))
 		hsw_disable_ips(old_crtc_state);
 
@@ -8668,7 +8670,6 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_encoders_update_prepare(state);
 
 	intel_dbuf_pre_plane_update(state);
-	intel_psr_pre_plane_update(state);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->uapi.async_flip)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ccffe05784d3..b1e48c6be8d1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1725,11 +1725,17 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void _intel_psr_pre_plane_update(const struct intel_atomic_state *state,
-					const struct intel_crtc_state *crtc_state)
+void intel_psr_pre_plane_update(struct intel_atomic_state *state,
+				struct intel_crtc *crtc)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
+	if (!HAS_PSR(i915))
+		return;
+
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
 					     crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -1744,6 +1750,7 @@ static void _intel_psr_pre_plane_update(const struct intel_atomic_state *state,
 		 * - All planes will go inactive
 		 * - Changing between PSR versions
 		 */
+		needs_to_disable |= intel_crtc_needs_modeset(crtc_state);
 		needs_to_disable |= !crtc_state->has_psr;
 		needs_to_disable |= !crtc_state->active_planes;
 		needs_to_disable |= crtc_state->has_psr2 != psr->psr2_enabled;
@@ -1755,20 +1762,6 @@ static void _intel_psr_pre_plane_update(const struct intel_atomic_state *state,
 	}
 }
 
-void intel_psr_pre_plane_update(const struct intel_atomic_state *state)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc_state *crtc_state;
-	struct intel_crtc *crtc;
-	int i;
-
-	if (!HAS_PSR(dev_priv))
-		return;
-
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
-		_intel_psr_pre_plane_update(state, crtc_state);
-}
-
 static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 					 const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index facffbacd357..3d9c0e13c329 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -20,7 +20,8 @@ struct intel_plane;
 struct intel_encoder;
 
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
-void intel_psr_pre_plane_update(const struct intel_atomic_state *state);
+void intel_psr_pre_plane_update(struct intel_atomic_state *state,
+				struct intel_crtc *crtc);
 void intel_psr_post_plane_update(const struct intel_atomic_state *state);
 void intel_psr_disable(struct intel_dp *intel_dp,
 		       const struct intel_crtc_state *old_crtc_state);
-- 
2.32.0

