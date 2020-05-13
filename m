Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEF51D0C81
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 11:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241EA6E9EF;
	Wed, 13 May 2020 09:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BACDF6E9EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 09:42:23 +0000 (UTC)
IronPort-SDR: syTa8HQD/gAMWEHUzd01REXy+IvIDSdXi0KwnwpHl2NDgrwmZpKuy3tTHhUe7Ms8MHj3i9csOe
 1lzimdsjhxmA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 02:42:23 -0700
IronPort-SDR: M+zsl/G6hDpao5gL8hiSOIp4Dqrv035HslT+e5T5Z3hTb1YMU0PzEwGC4wEIShkgVzKB/ITMfF
 cNalk+gCNFlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="464070998"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 13 May 2020 02:42:22 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 12:38:12 +0300
Message-Id: <20200513093816.11466-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
References: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v29 2/6] drm/i915: Extract skl SAGV checking
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

This is preparation to adding TGL support, which
requires different way of SAGV checking.

v2, v3, v4, v5, v6: Fix rebase conflict

v7: - Nuke icl specific function, use skl
      for icl as well, gen specific active_pipes
      check to be added in the next patch(Ville)

v8: - Use more generic intel_crtc_can_enable_sagv
      for checking(Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 9be2d1bea4c3..6a212d47aec8 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3804,7 +3804,7 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 		intel_enable_sagv(dev_priv);
 }
 
-static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
+static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -3853,6 +3853,11 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 	return true;
 }
 
+static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
+{
+	return skl_crtc_can_enable_sagv(crtc_state);
+}
+
 bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 {
 	if (bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
@@ -3865,7 +3870,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 {
 	int ret;
 	struct intel_crtc *crtc;
-	struct intel_crtc_state *new_crtc_state;
+	const struct intel_crtc_state *new_crtc_state;
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	int i;
@@ -3889,6 +3894,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 
 	new_bw_state->active_pipes =
 		intel_calc_active_pipes(state, old_bw_state->active_pipes);
+
 	if (new_bw_state->active_pipes != old_bw_state->active_pipes) {
 		ret = intel_atomic_lock_global_state(&new_bw_state->base);
 		if (ret)
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
