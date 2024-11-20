Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA3A9D3333
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 06:37:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E03E710E394;
	Wed, 20 Nov 2024 05:37:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mFLXU3wb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1841A10E394;
 Wed, 20 Nov 2024 05:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732081061; x=1763617061;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=49VBwPcTx7yhn2YKiS3RauLM+4af9vP28czEi52OhjE=;
 b=mFLXU3wbC31laz8b1jPJVtqqQTUtILt1uckivZOv6fhXNDa2mb0gjzH9
 Z1P5PA8JajockpNOb3FVyB8u2D/qiWvpFttsBq2HQj1P+3zInmqGspMvH
 tB21WfFwCJPFIdJjHizTp8eVleZS5wVi3wzMCg7hktwCDeBuXRO6U9j/S
 cqYctsZlglqRK1GsnG7QTGl4kNEcdlSIeJmLeO2yvPQVaC13pb0kkpuX1
 LSwr1sGZFrTmJZSEYIQPxXhFD3E2PIf3y4lhunf81sAwZ/0Sl/4lyG+qT
 t7RlUNw3rlVoMdQgifITmtWSPUogjoLx3dudUaLiZYu7XedZmu52vjN1l g==;
X-CSE-ConnectionGUID: 3S9WTCqSS0+hM0CP9a5Qyw==
X-CSE-MsgGUID: 4idvg8HMRiOG86XtqEZ/Ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32179459"
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="32179459"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 21:37:41 -0800
X-CSE-ConnectionGUID: qfQwRquURDqRacgB+3IjIA==
X-CSE-MsgGUID: UaUe2Zs4SxurXl9kbMGDQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="120749015"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 19 Nov 2024 21:37:40 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 6/6] drm/i915/display: Initialize pipe_src in compute stage
Date: Wed, 20 Nov 2024 11:08:38 +0530
Message-Id: <20241120053838.3794419-7-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241120053838.3794419-1-nemesa.garg@intel.com>
References: <20241120053838.3794419-1-nemesa.garg@intel.com>
MIME-Version: 1.0
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

Add early pipe src initialization for gmch and later
initialize the pipe src during compute_pipe_src.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c58897cddde1..6d157767ad3b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2535,6 +2535,13 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int pipe_src_w, pipe_src_h;
+
+	drm_mode_get_hv_timing(&crtc_state->hw.mode,
+			       &pipe_src_w, &pipe_src_h);
+
+	drm_rect_init(&crtc_state->pipe_src, 0, 0,
+		      pipe_src_w, pipe_src_h);
 
 	intel_joiner_compute_pipe_src(crtc_state);
 
@@ -5004,10 +5011,12 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	 * computation to clearly distinguish it from the adjusted mode, which
 	 * can be changed by the connectors in the below retry loop.
 	 */
-	drm_mode_get_hv_timing(&crtc_state->hw.mode,
-			       &pipe_src_w, &pipe_src_h);
-	drm_rect_init(&crtc_state->pipe_src, 0, 0,
-		      pipe_src_w, pipe_src_h);
+	if (HAS_GMCH(i915)) {
+		drm_mode_get_hv_timing(&crtc_state->hw.mode,
+				       &pipe_src_w, &pipe_src_h);
+		drm_rect_init(&crtc_state->pipe_src, 0, 0,
+			      pipe_src_w, pipe_src_h);
+	}
 
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		struct intel_encoder *encoder =
-- 
2.25.1

