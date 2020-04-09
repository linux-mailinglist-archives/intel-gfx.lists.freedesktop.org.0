Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8726D1A3778
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 17:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8796EBF9;
	Thu,  9 Apr 2020 15:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA1448996E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 15:51:20 +0000 (UTC)
IronPort-SDR: 1bdWckmDAHCFM/t500buz7cOBnbk9rvooE0ug/Tdo/8fm3ErDC3xmSm2j9bm5pT0JUav8qhGRl
 daEB48Ilzqpg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 08:51:20 -0700
IronPort-SDR: cTBX2KseXjtEeCDiAt5rxCsXFl1Ha9n7oAxivKjngf5RuX05kWUDTtJV7bqAPnteJjbyXktgN2
 61akgdASYidQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,363,1580803200"; d="scan'208";a="257857186"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga008.jf.intel.com with ESMTP; 09 Apr 2020 08:51:18 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Apr 2020 18:47:25 +0300
Message-Id: <20200409154730.18568-9-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
References: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v22 08/13] drm/i915: Separate icl and skl SAGV
 checking
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Introduce platform dependent SAGV checking in
combination with bandwidth state pipe SAGV mask.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 71 ++++++++++++++++++++++++++-------
 1 file changed, 57 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 41305abad179..026d48209cc9 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3761,8 +3761,23 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_bw_state *new_bw_state = NULL;
 
-	if (!intel_can_enable_sagv(state)) {
+	/*
+	 * Just return if we can't control SAGV or don't have it.
+	 * This is different from situation when we have SAGV but just can't
+	 * afford it due to DBuf limitation - in case if SAGV is completely
+	 * disabled in a BIOS, we are not even allowed to send a PCode request,
+	 * as it will throw an error. So have to check it here.
+	 */
+	if (!intel_has_sagv(dev_priv))
+		return;
+
+	new_bw_state = intel_atomic_get_new_bw_state(state);
+	if (!new_bw_state)
+		return;
+
+	if (!intel_can_enable_sagv(new_bw_state)) {
 		intel_disable_sagv(dev_priv);
 		return;
 	}
@@ -3771,8 +3786,23 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_bw_state *new_bw_state = NULL;
 
-	if (intel_can_enable_sagv(state)) {
+	/*
+	 * Just return if we can't control SAGV or don't have it.
+	 * This is different from situation when we have SAGV but just can't
+	 * afford it due to DBuf limitation - in case if SAGV is completely
+	 * disabled in a BIOS, we are not even allowed to send a PCode request,
+	 * as it will throw an error. So have to check it here.
+	 */
+	if (!intel_has_sagv(dev_priv))
+		return;
+
+	new_bw_state = intel_atomic_get_new_bw_state(state);
+	if (!new_bw_state)
+		return;
+
+	if (intel_can_enable_sagv(new_bw_state)) {
 		intel_enable_sagv(dev_priv);
 		return;
 	}
@@ -3780,7 +3810,6 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 
 static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_plane *plane;
@@ -3790,13 +3819,6 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 	if (!crtc_state->hw.active)
 		return true;
 
-	/*
-	 * SKL+ workaround: bspec recommends we disable SAGV when we have
-	 * more then one pipe enabled
-	 */
-	if (hweight8(state->active_pipes) > 1)
-		return false;
-
 	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
 		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
 			      pipe_name(crtc->pipe));
@@ -3835,6 +3857,23 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 	return true;
 }
 
+static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+	/*
+	 * SKL+ workaround: bspec recommends we disable SAGV when we have
+	 * more then one pipe enabled
+	 */
+	if (hweight8(state->active_pipes) > 1)
+		return false;
+
+	return intel_crtc_can_enable_sagv(crtc_state);
+}
+
+static bool icl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
+{
+	return intel_crtc_can_enable_sagv(crtc_state);
+}
 
 bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 {
@@ -3846,9 +3885,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	int ret;
 	struct intel_crtc *crtc;
-	const struct intel_crtc_state *crtc_state;
-	enum pipe pipe;
-	struct intel_crtc_state *new_crtc_state;
+	const struct intel_crtc_state *new_crtc_state;
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	int i;
@@ -3858,6 +3895,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 
 	for_each_new_intel_crtc_in_state(state, crtc,
 					 new_crtc_state, i) {
+		bool can_sagv;
 
 		new_bw_state = intel_atomic_get_bw_state(state);
 		if (IS_ERR(new_bw_state))
@@ -3865,7 +3903,12 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
-		if (intel_crtc_can_enable_sagv(new_crtc_state))
+		if (INTEL_GEN(dev_priv) >= 11)
+			can_sagv = icl_crtc_can_enable_sagv(new_crtc_state);
+		else
+			can_sagv = skl_crtc_can_enable_sagv(new_crtc_state);
+
+		if (can_sagv)
 			new_bw_state->pipe_sagv_reject &= ~BIT(crtc->pipe);
 		else
 			new_bw_state->pipe_sagv_reject |= BIT(crtc->pipe);
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
