Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5361C909A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 16:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00926E9CC;
	Thu,  7 May 2020 14:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BD406E9CB
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 14:49:17 +0000 (UTC)
IronPort-SDR: ZlNEi2IJuc3qcUbHbI87GM4e50WeMbE/chXVu9ODd/IN3eXfS58j9O374WX31FEliIbTicnQLd
 Uzp1+2GdvwYQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:49:16 -0700
IronPort-SDR: 7iBcTetameiVfMX2QROCI9UwYb/EWIDAVo5XoI8s3VCWZxN4i4M9HMckFiQy3P8jsz3OOYFlCn
 VtpKV8okS+uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="285018574"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga004.fm.intel.com with ESMTP; 07 May 2020 07:49:15 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 May 2020 17:44:59 +0300
Message-Id: <20200507144503.15506-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
References: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v28 2/6] drm/i915: Extract skl SAGV checking
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8a86298962dc..3dc1ad66beb3 100644
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
@@ -3865,7 +3865,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 {
 	int ret;
 	struct intel_crtc *crtc;
-	struct intel_crtc_state *new_crtc_state;
+	const struct intel_crtc_state *new_crtc_state;
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	int i;
@@ -3878,7 +3878,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
-		if (intel_crtc_can_enable_sagv(new_crtc_state))
+		if (skl_crtc_can_enable_sagv(new_crtc_state))
 			new_bw_state->pipe_sagv_reject &= ~BIT(crtc->pipe);
 		else
 			new_bw_state->pipe_sagv_reject |= BIT(crtc->pipe);
@@ -3889,6 +3889,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 
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
