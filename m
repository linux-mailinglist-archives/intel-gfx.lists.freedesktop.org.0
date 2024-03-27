Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F2888F03E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 21:36:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A3410FFEE;
	Wed, 27 Mar 2024 20:36:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FNKeqVBU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E012E10FFED
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 20:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711571784; x=1743107784;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+E268fMXp+jAiHRmVd1IlR5iLUdOf6B0bRsazHVn8lc=;
 b=FNKeqVBUe55wzxx4mjz4bK58NQJwDHicWEEs1Uy/8scDLNGT9QoB7uuB
 o7KgEcY4mWCYz/sqBKk3EuWWVp+W7OKLCWHVUXj1pe5xbeOkyOn06jTFM
 /IRLxrGutIaWGkCLuWK9RPBP1rBxwBYDGanZalgW13mLiOoyVShdk4QZs
 tBIw9vPeSLlJ/LrwyvNq/zTQ592UF2xuh192mt8zln5CaLACmNm4t+1A9
 X4PoAcZVlor8kAESxF8dAoWXBkn6pQc2ww0HuT8sQOPNRtbTkDJ6/PI+n
 8oEvxeiw0xxGJhnmp4wDfPjLPyBt+WFPiH21Dr44nNu0tLBz+FUPaKak0 A==;
X-CSE-ConnectionGUID: zmF59y4zRpGjM1IgavrEZw==
X-CSE-MsgGUID: VfMt3qRjTBaxxx23Gh5ixg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="29181661"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="29181661"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 13:36:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785974"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785974"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 13:36:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 22:36:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915: Fix intel_modeset_pipe_config_late() for
 bigjoiner
Date: Wed, 27 Mar 2024 22:36:16 +0200
Message-ID: <20240327203616.20502-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327203616.20502-1-ville.syrjala@linux.intel.com>
References: <20240327203616.20502-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 46 ++++++++++++++------
 1 file changed, 32 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4d6668a5f1ab..e22326362ccb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4762,8 +4762,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
-	intel_bigjoiner_adjust_pipe_src(crtc_state);
-
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
@@ -6257,27 +6255,37 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
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
 
@@ -6373,16 +6381,26 @@ int intel_atomic_check(struct drm_device *dev,
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

