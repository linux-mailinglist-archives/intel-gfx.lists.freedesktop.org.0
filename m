Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3857518C34
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCC410E931;
	Tue,  3 May 2022 18:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81E410E931
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602193; x=1683138193;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EP8TDYlo38KxOa0DuqYYBYoRF7dzvFvha0P4b195YGs=;
 b=L5wK8yson5gsNfu/YztQrKhIq2jOLfPZgsRr0me/c8mLqkrybYYtCCSQ
 ayPi/iZfSolFIw6BaKqwUbF4zDsBPgX8J4mMCBV3a//xByJKyQ3d89sIG
 qA93+2xa6xt+iG5hDOAgqG6v89kVeV2z5dJ19SExLvoZfAx2qyB8OzoCQ
 DxkgcbliZar5j90ND2wF99VdmPc2JWA0NNrtW7nSiNAh0h7R89tX6lxqA
 NIVx4P9hOr/Qwza8e2eN7qFdmBuJXN+wOQe2/FhH+Z0XDWevRigtn2Ude
 w1gqjvHzLQ89QJCeA4oeTSaSJgfB9K1Qa/LrrAWLmYzJoZFt+TlReNm9B Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="353991395"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="353991395"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="562326695"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 03 May 2022 11:23:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:25 +0300
Message-Id: <20220503182242.18797-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/26] drm/i915: Improve modeset debugs
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

Use the "[CRTC:%d:%s]'/etc. format for some of the modeset debugs
so we know more about what has happened during the modeset state
computation.

Also tweak the connector bpp debug message a bit to make it less
confusing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++++++++-------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ac476976dc0b..8d6cbfbaf20d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5040,8 +5040,8 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 
 	if (bpp < crtc_state->pipe_bpp) {
 		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] Limiting display bpp to %d instead of "
-			    "EDID bpp %d, requested bpp %d, max platform bpp %d\n",
+			    "[CONNECTOR:%d:%s] Limiting display bpp to %d "
+			    "(EDID bpp %d, max requested bpp %d, max platform bpp %d)\n",
 			    connector->base.id, connector->name,
 			    bpp, 3 * info->bpc,
 			    3 * conn_state->max_requested_bpc,
@@ -5691,7 +5691,8 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 
 		if (!check_single_encoder_cloning(state, crtc, encoder)) {
 			drm_dbg_kms(&i915->drm,
-				    "rejecting invalid cloning configuration\n");
+				    "[ENCODER:%d:%s] rejecting invalid cloning configuration\n",
+				    encoder->base.base.id, encoder->base.name);
 			return -EINVAL;
 		}
 
@@ -5732,7 +5733,8 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		if (ret == -EDEADLK)
 			return ret;
 		if (ret < 0) {
-			drm_dbg_kms(&i915->drm, "Encoder config failure: %d\n", ret);
+			drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] config failure: %d\n",
+				    encoder->base.base.id, encoder->base.name, ret);
 			return ret;
 		}
 	}
@@ -5748,15 +5750,18 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		return ret;
 	if (ret == -EAGAIN) {
 		if (drm_WARN(&i915->drm, !retry,
-			     "loop in pipe configuration computation\n"))
+			     "[CRTC:%d:%s] loop in pipe configuration computation\n",
+			     crtc->base.base.id, crtc->base.name))
 			return -EINVAL;
 
-		drm_dbg_kms(&i915->drm, "CRTC bw constrained, retrying\n");
+		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] bw constrained, retrying\n",
+			    crtc->base.base.id, crtc->base.name);
 		retry = false;
 		goto encoder_retry;
 	}
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm, "CRTC config failure: %d\n", ret);
+		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] config failure: %d\n",
+			    crtc->base.base.id, crtc->base.name, ret);
 		return ret;
 	}
 
@@ -5767,7 +5772,8 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	crtc_state->dither = (crtc_state->pipe_bpp == 6*3) &&
 		!crtc_state->dither_force_disable;
 	drm_dbg_kms(&i915->drm,
-		    "hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
+		    "[CRTC:%d:%s] hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
+		    crtc->base.base.id, crtc->base.name,
 		    base_bpp, crtc_state->pipe_bpp, crtc_state->dither);
 
 	return 0;
-- 
2.35.1

