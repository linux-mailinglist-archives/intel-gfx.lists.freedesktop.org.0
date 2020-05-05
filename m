Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D041C5327
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 12:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E08E389FAD;
	Tue,  5 May 2020 10:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE0B89E33
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 10:27:03 +0000 (UTC)
IronPort-SDR: l7svdPZS1far9hD+p/8kl+8uMEbpAL2PxbSiXbNE7VNs2j3Wp1QltjGe1eXfZ/Ttudbfiw/L/v
 pPP09i53PlCg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 03:27:03 -0700
IronPort-SDR: 7KQftzN00TBAQMmXeePD+O9cW+IeSgGA32qSvX4SDIiDMyIlqKtTaUBcVqdJlxrBqDLR9Erd+J
 +P0RZNZR++fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="434432032"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 05 May 2020 03:27:02 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 May 2020 13:22:43 +0300
Message-Id: <20200505102247.32452-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
References: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v27 2/6] drm/i915: Separate icl and skl SAGV
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Introduce platform dependent SAGV checking in
combination with bandwidth state pipe SAGV mask.

v2, v3, v4, v5, v6: Fix rebase conflict

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 30 ++++++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index da567fac7c93..c7d726a656b2 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3853,6 +3853,24 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
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
 	if (bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
@@ -3863,22 +3881,30 @@ bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 
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
