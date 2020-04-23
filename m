Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AEA1B56D8
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 10:02:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F19D6E36F;
	Thu, 23 Apr 2020 08:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2AC56E35D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 08:02:22 +0000 (UTC)
IronPort-SDR: DeG6blheoPqrxLREC0/u/z7DnTtuFexLli3ODDCVSOL3Ns3ea9qIAhsVRqOSBqrNbv6Tox70cx
 kCw+j5xYh2oA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 01:02:22 -0700
IronPort-SDR: W83PkgKfkv3GFRKxcmq0oTEXQDv51zPAgPd/IO0T9egL8cfdIvJza06dGiNKMUxvx+BDjassZe
 RNWOQqVnaFow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,306,1583222400"; d="scan'208";a="259344427"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 23 Apr 2020 01:02:21 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 10:58:56 +0300
Message-Id: <20200423075902.21892-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v26 3/9] drm/i915: Track active_pipes in bw_state
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

We need to calculate SAGV mask also in a non-modeset
commit, however currently active_pipes are only calculated
for modesets in global atomic state, thus now we will be
tracking those also in bw_state in order to be able to
properly access global data.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.h |  3 +++
 drivers/gpu/drm/i915/intel_pm.c         | 15 ++++++++++-----
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index d6df91058223..898b4a85ccab 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -26,6 +26,9 @@ struct intel_bw_state {
 
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
+
+	/* bitmask of active pipes */
+	u8 active_pipes;
 };
 
 #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, base)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 7e15cf3368ad..f7249bca3f6f 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3874,6 +3874,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	int i;
+	bool active_pipes_calculated = false;
 
 	for_each_new_intel_crtc_in_state(state, crtc,
 					 new_crtc_state, i) {
@@ -3883,6 +3884,12 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
+		if (!active_pipes_calculated) {
+			state->active_pipes = new_bw_state->active_pipes =
+				intel_calc_active_pipes(state, old_bw_state->active_pipes);
+			active_pipes_calculated = true;
+		}
+
 		if (intel_crtc_can_enable_sagv(new_crtc_state))
 			new_bw_state->pipe_sagv_reject &= ~BIT(crtc->pipe);
 		else
@@ -5911,11 +5918,9 @@ skl_compute_wm(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	if (state->modeset) {
-		ret = intel_compute_sagv_mask(state);
-		if (ret)
-			return ret;
-	}
+	ret = intel_compute_sagv_mask(state);
+	if (ret)
+		return ret;
 
 	/*
 	 * skl_compute_ddb() will have adjusted the final watermarks
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
