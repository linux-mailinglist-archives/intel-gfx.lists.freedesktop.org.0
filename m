Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD60E17E472
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 17:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30123899A3;
	Mon,  9 Mar 2020 16:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A927089994
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 16:16:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 09:16:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,533,1574150400"; d="scan'208";a="234049309"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga007.fm.intel.com with ESMTP; 09 Mar 2020 09:16:16 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 18:12:02 +0200
Message-Id: <20200309161204.17792-7-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v19 6/8] drm/i915: Rename bw_state to
 new_bw_state
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

That is a preparation patch before next one where we
introduce old_bw_state and a bunch of other changes
as well.
In a review comment it was suggested to split out
at least that renaming into a separate patch, what
is done here.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bdad7476dc7b..256c9322636c 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -418,7 +418,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
-	struct intel_bw_state *bw_state = NULL;
+	struct intel_bw_state *new_bw_state = NULL;
 	unsigned int data_rate, max_data_rate;
 	unsigned int num_active_planes;
 	struct intel_crtc *crtc;
@@ -447,29 +447,29 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 		    old_active_planes == new_active_planes)
 			continue;
 
-		bw_state  = intel_bw_get_state(state);
-		if (IS_ERR(bw_state))
-			return PTR_ERR(bw_state);
+		new_bw_state = intel_bw_get_state(state);
+		if (IS_ERR(new_bw_state))
+			return PTR_ERR(new_bw_state);
 
-		bw_state->data_rate[crtc->pipe] = new_data_rate;
-		bw_state->num_active_planes[crtc->pipe] = new_active_planes;
+		new_bw_state->data_rate[crtc->pipe] = new_data_rate;
+		new_bw_state->num_active_planes[crtc->pipe] = new_active_planes;
 
 		drm_dbg_kms(&dev_priv->drm,
 			    "pipe %c data rate %u num active planes %u\n",
 			    pipe_name(crtc->pipe),
-			    bw_state->data_rate[crtc->pipe],
-			    bw_state->num_active_planes[crtc->pipe]);
+			    new_bw_state->data_rate[crtc->pipe],
+			    new_bw_state->num_active_planes[crtc->pipe]);
 	}
 
-	if (!bw_state)
+	if (!new_bw_state)
 		return 0;
 
-	ret = intel_atomic_lock_global_state(&bw_state->base);
+	ret = intel_atomic_lock_global_state(&new_bw_state->base);
 	if (ret)
 		return ret;
 
-	data_rate = intel_bw_data_rate(dev_priv, bw_state);
-	num_active_planes = intel_bw_num_active_planes(dev_priv, bw_state);
+	data_rate = intel_bw_data_rate(dev_priv, new_bw_state);
+	num_active_planes = intel_bw_num_active_planes(dev_priv, new_bw_state);
 
 	max_data_rate = intel_max_data_rate(dev_priv, num_active_planes);
 
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
