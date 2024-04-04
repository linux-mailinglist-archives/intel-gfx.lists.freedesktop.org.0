Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C84B899079
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B31113573;
	Thu,  4 Apr 2024 21:35:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NjWgvoB3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60828113572
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266506; x=1743802506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=utpi2ckM1ViqzGDrz6Uqk+cQisS+SSLQJgD/Nic+vSY=;
 b=NjWgvoB3EAIyAAe+CRlJGyapIxPgQN2mG5YSEY7OfN967SGBtNQ25cfT
 JhpJe4LknZ16RhIcdeDWs/GjTv/3x3TletIA5B6D1mKwYJJWLtPtWm+Rp
 mDiGIRtDfnrdwUiBaFZPppUisJtHJc50tmX+LHvLgfGTKf8U4qXeQ9uR3
 SYTiN/tOkLLpUqSC9NzNtr9wJv2wRjIDPGxCg1xnCKZgIuIHXRezqQsLB
 uuHX6zjz49DRxD7PAL+KPNCtHIDg1F5MKj1/cU5vVETx6qGOkfuo8P8Jz
 a1xHBKvURPt6K77uRrN1CMnOKlkuU4II7aesFH6YOOh6L38xF0EFGjXI+ A==;
X-CSE-ConnectionGUID: N/KmTitLRPSAWRhwI9bMLg==
X-CSE-MsgGUID: AFO/U3iBRfqUStJ/f9btpw==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710803"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710803"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790615"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790615"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:35:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:35:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Subject: [PATCH v2 06/17] drm/i915: Fix intel_modeset_pipe_config_late() for
 bigjoiner
Date: Fri,  5 Apr 2024 00:34:30 +0300
Message-ID: <20240404213441.17637-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Currently intel_modeset_pipe_config_late() is called after the
bigjoiner state copy, and it will actually not do anything for
bigjoiner slaves. This can lead to a mismatched state between
the master and slave.

The two things that we do in the encoder .compute_config_late()
hook are mst master transcoder and port sync master transcoder
elections. So if either of either MST or port sync is combined
with bigjoiner then we can see the mismatch.

Currently this problem is more or less theoretical; MST+bigjoiner
has not been implemented yet, and port sync+bigjoiner would
require a tiled display with >5k tiles (or a very high
dotclock per tile). Although we do have kms_tiled_display in
igt which can fake a tiled display, and we can now force bigjoiner
via debugfs, so it is possible to trigger this if you try hard
enough.

Reorder the code such that intel_modeset_pipe_config_late()
will be called before the bigjoiner state copy happens so
that both pipes will end up with the same state.

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 46 ++++++++++++++------
 1 file changed, 32 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0086a7422e86..449dd8667685 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4752,8 +4752,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
-	intel_bigjoiner_adjust_pipe_src(crtc_state);
-
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
@@ -6295,27 +6293,37 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 			continue;
 		}
 
-		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
-			drm_WARN_ON(&i915->drm, new_crtc_state->uapi.enable);
+		if (drm_WARN_ON(&i915->drm, intel_crtc_is_bigjoiner_slave(new_crtc_state)))
 			continue;
-		}
 
 		ret = intel_crtc_prepare_cleared_state(state, crtc);
 		if (ret)
-			break;
+			goto fail;
 
 		if (!new_crtc_state->hw.enable)
 			continue;
 
 		ret = intel_modeset_pipe_config(state, crtc, limits);
 		if (ret)
-			break;
+			goto fail;
+	}
 
-		ret = intel_atomic_check_bigjoiner(state, crtc);
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!intel_crtc_needs_modeset(new_crtc_state))
+			continue;
+
+		if (drm_WARN_ON(&i915->drm, intel_crtc_is_bigjoiner_slave(new_crtc_state)))
+			continue;
+
+		if (!new_crtc_state->hw.enable)
+			continue;
+
+		ret = intel_modeset_pipe_config_late(state, crtc);
 		if (ret)
-			break;
+			goto fail;
 	}
 
+fail:
 	if (ret)
 		*failed_pipe = crtc->pipe;
 
@@ -6411,16 +6419,26 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!intel_crtc_needs_modeset(new_crtc_state))
+			continue;
+
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
+			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
+			continue;
+		}
+
+		ret = intel_atomic_check_bigjoiner(state, crtc);
+		if (ret)
+			goto fail;
+	}
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (new_crtc_state->hw.enable) {
-			ret = intel_modeset_pipe_config_late(state, crtc);
-			if (ret)
-				goto fail;
-		}
+		intel_bigjoiner_adjust_pipe_src(new_crtc_state);
 
 		intel_crtc_check_fastset(old_crtc_state, new_crtc_state);
 	}
-- 
2.43.2

