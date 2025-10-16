Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 184CFBE2789
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 11:43:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5D110E9AE;
	Thu, 16 Oct 2025 09:43:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FXZOlFYE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7227B10E99F;
 Thu, 16 Oct 2025 09:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760607806; x=1792143806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R98gR6zzGcLSrz1ozivBBAIZTw0P1dImWyGGZ3cfI68=;
 b=FXZOlFYE2T6ynb5fYnkmf3+QAkhNwaaHNnXStBvhfUoqCuTkAx5GUv8I
 zYfzvJEoaQO+PgXt/LAV9WwhZQYVg8A3C+BLYK1nCazz9rjU8JJqZBpbh
 S7c+rgh4MPOlweqh9xD1IYjKcV1xQLQ5LTSA7ywvbA8vk4wJQqZMghPij
 ULHNq9i6/tMbY+Ud8tJ0sx5V4dcMaotw/RtnoOCYn6pzC/V5kTR9V0HJ1
 LjsHDLUUPOt3ogV1aUmt6pfqNrPGVsI1xKxQ/RjV/rdSzQKlMQKWDK87j
 /kqLJogoYjui6smAH9vO6ECPWl7tSiCFfSdbHeL5dBm7EF5v47WRHBMCL w==;
X-CSE-ConnectionGUID: YmuWuSLhQSmOFmclm0ZQeQ==
X-CSE-MsgGUID: uBHSV3Q9T9O/HiX3ZtMeyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62725269"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62725269"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 02:43:26 -0700
X-CSE-ConnectionGUID: HIYhRzuCS3ulDw0ZI/JurA==
X-CSE-MsgGUID: TkknIeehSMOC8RcNIhdWpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="219570817"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 02:43:24 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/6] drm/i915/vrr: Use the min static optimized guardband
Date: Thu, 16 Oct 2025 15:00:09 +0530
Message-ID: <20251016093009.2139105-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251016093009.2139105-1-ankit.k.nautiyal@intel.com>
References: <20251016093009.2139105-1-ankit.k.nautiyal@intel.com>
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

In the current VRR implementation, vrr.vmin and vrr.guardband are set such
that they do not need to change when switching from fixed refresh rate to
variable refresh rate. Specifically, vrr.guardband is always set to match
the vblank length. This approach works for most cases, but not for LRR,
where the guardband would need to change while the VRR timing generator is
still active.

With the VRR TG always active, live updates to guardband are unsafe and not
recommended. To ensure hardware safety, guardband was moved out of the
!fastset block, meaning any change now requires a full modeset.
This breaks seamless LRR switching, which was previously supported.

Since the problem arises from guardband being matched to the vblank length,
solution is to use a minimal, sufficient static value, instead. So we use a
static guardband defined during mode-set that fits within the smallest
expected vblank and remains unchanged in case of features like LRR where
vtotal changes. To compute this minimum guardband we take into account
latencies/delays due to different features as mentioned in the Bspec.

Introduce a helper to compute the minimal sufficient guardband.
On platforms where the VRR timing generator is always ON, we optimize the
guardband regardless of whether the display is operating in fixed or
variable refresh rate mode.
On platforms where the VRR timing generator is not always ON, we optimize
the guardband only when VRR is enabled.

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 50 +++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 597008a6c744..732e356e6fac 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -6,12 +6,16 @@
 
 #include <drm/drm_print.h>
 
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_psr.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
+#include "skl_prefill.h"
+#include "skl_watermark.h"
 
 #define FIXED_POINT_PRECISION		100
 #define CMRR_PRECISION_TOLERANCE	10
@@ -433,17 +437,59 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
 		   intel_vrr_max_vblank_guardband(crtc_state));
 }
 
+static
+int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct skl_prefill_ctx prefill_ctx;
+	int psr_min_guardband = 0;
+	int sdp_min_guardband = 0;
+	int prefill_min_guardband;
+	int prefill_sagv_us;
+	int guardband;
+
+	skl_prefill_init_worst(&prefill_ctx, crtc_state);
+	prefill_sagv_us = display->sagv.block_time_us;
+	prefill_min_guardband =
+		skl_prefill_min_guardband(&prefill_ctx,
+					  crtc_state,
+					  prefill_sagv_us);
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		psr_min_guardband = intel_psr_min_guardband(crtc_state);
+		sdp_min_guardband = intel_dp_sdp_min_guardband(crtc_state, true);
+	}
+
+	guardband = max(sdp_min_guardband, psr_min_guardband);
+
+	guardband = max(guardband, prefill_min_guardband);
+
+	return guardband;
+}
+
+static bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return intel_vrr_always_use_vrr_tg(display) || crtc_state->vrr.enable;
+}
+
 void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
+	int guardband;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
-					intel_vrr_max_guardband(crtc_state));
+	if (intel_vrr_use_optimized_guardband(crtc_state))
+		guardband = intel_vrr_compute_optimized_guardband(crtc_state);
+	else
+		guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
+
+	crtc_state->vrr.guardband = min(guardband, intel_vrr_max_guardband(crtc_state));
 
 	if (intel_vrr_always_use_vrr_tg(display)) {
 		adjusted_mode->crtc_vblank_start  =
-- 
2.45.2

