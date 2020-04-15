Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8920A1AAA61
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 16:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575FC6E9F3;
	Wed, 15 Apr 2020 14:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23AC86E9F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 14:42:49 +0000 (UTC)
IronPort-SDR: IVQ3YBjlLmolxcVYyHgbZC6W4oegj9ko56h7AAwrT5VnkU1YNhUrE43VQYCqCO3Fh5bWJzdlHq
 7iKqyvuPGCLA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 07:42:48 -0700
IronPort-SDR: sIZzgkRUXNBuG4ceqp7hLkdwQ2WAC3WebTXayUvRazDm/bupP8/v/RAmiTDCfNuGZdMEIB5Vgm
 Q6FEiIroBfkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,387,1580803200"; d="scan'208";a="427454528"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 15 Apr 2020 07:42:46 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 17:39:06 +0300
Message-Id: <20200415143911.10244-7-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200415143911.10244-1-stanislav.lisovskiy@intel.com>
References: <20200415143911.10244-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v24 06/11] drm/i915: Separate icl and skl SAGV
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

v2, v3: Fix rebase conflict

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 38 ++++++++++++++++++++++++---------
 1 file changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 65fd5a3571e4..3c682684807b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3806,7 +3806,6 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 
 static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_plane *plane;
@@ -3819,13 +3818,6 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
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
@@ -3864,6 +3856,24 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
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
+
 bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 {
 	return bw_state->pipe_sagv_reject == 0;
@@ -3871,22 +3881,30 @@ bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 
 static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 {
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	int ret;
 	struct intel_crtc *crtc;
-	struct intel_crtc_state *new_crtc_state;
+	const struct intel_crtc_state *new_crtc_state;
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	int i;
 
 	for_each_new_intel_crtc_in_state(state, crtc,
 					 new_crtc_state, i) {
+		bool can_sagv;
+
 		new_bw_state = intel_atomic_get_bw_state(state);
 		if (IS_ERR(new_bw_state))
 			return PTR_ERR(new_bw_state);
 
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
