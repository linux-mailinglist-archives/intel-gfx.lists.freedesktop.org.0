Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4ED1D0C82
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 11:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB966E9ED;
	Wed, 13 May 2020 09:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DBB16E9F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 09:42:25 +0000 (UTC)
IronPort-SDR: QCo1o2ek4yWZNu1ctE1ho7bRrCT0uWRU1SNxIoflZkxUcnHohn8TCnLVdRmdZmxoOLaPLzP/T+
 c/+Y/TaCOy5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 02:42:25 -0700
IronPort-SDR: KHFsXLtRvOWV9jRsKWacQDPRb+BQPP9poy0APLnkj3QO1mYh+0zMXnIU/eUa5SrJv++pb6vFnv
 S5oX0ZT6mpDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="464071003"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 13 May 2020 02:42:23 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 12:38:13 +0300
Message-Id: <20200513093816.11466-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
References: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v29 3/6] drm/i915: Make active_pipes check skl
 specific
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

Seems that only skl needs to have SAGV turned off
for multipipe scenarios, so lets do it this way.

If anything blows up - we can always revert this patch.

v2: Changed if condition to look better (Ville).

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 13 ++++++++-----
 drivers/gpu/drm/i915/intel_pm.h |  3 ++-
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 6a212d47aec8..de0f8cede59c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3777,7 +3777,7 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return;
 
-	if (!intel_can_enable_sagv(new_bw_state))
+	if (!intel_can_enable_sagv(dev_priv, new_bw_state))
 		intel_disable_sagv(dev_priv);
 }
 
@@ -3800,7 +3800,7 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return;
 
-	if (intel_can_enable_sagv(new_bw_state))
+	if (intel_can_enable_sagv(dev_priv, new_bw_state))
 		intel_enable_sagv(dev_priv);
 }
 
@@ -3858,9 +3858,11 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 	return skl_crtc_can_enable_sagv(crtc_state);
 }
 
-bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
+bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
+			   const struct intel_bw_state *bw_state)
 {
-	if (bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
+	if (INTEL_GEN(dev_priv) < 11 &&
+	    bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
 		return false;
 
 	return bw_state->pipe_sagv_reject == 0;
@@ -3868,6 +3870,7 @@ bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 
 static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 {
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	int ret;
 	struct intel_crtc *crtc;
 	const struct intel_crtc_state *new_crtc_state;
@@ -3901,7 +3904,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	if (intel_can_enable_sagv(new_bw_state) != intel_can_enable_sagv(old_bw_state)) {
+	if (intel_can_enable_sagv(dev_priv, new_bw_state) != intel_can_enable_sagv(dev_priv, old_bw_state)) {
 		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
 		if (ret)
 			return ret;
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index fd1dc422e6c5..614ac7f8d4cc 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -42,7 +42,8 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 			      struct skl_pipe_wm *out);
 void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
 void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
-bool intel_can_enable_sagv(const struct intel_bw_state *bw_state);
+bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
+			   const struct intel_bw_state *bw_state);
 int intel_enable_sagv(struct drm_i915_private *dev_priv);
 int intel_disable_sagv(struct drm_i915_private *dev_priv);
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
