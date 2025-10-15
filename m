Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C3ABDE099
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 12:36:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC1910E772;
	Wed, 15 Oct 2025 10:36:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ewLRCnKN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABDA10E781;
 Wed, 15 Oct 2025 10:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760524561; x=1792060561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y3qWR/3rKsV74t+DODtD9Z4EvP0tdPYH8AKwXsC2bzQ=;
 b=ewLRCnKN+XAkGXZsY1q7kFu9SBQUElSpMVPexN0XR+nfZnuizfTosMML
 tpJLoSjVQvqLqxpK/M2qJWxl92Sk/UEJjfbfJfDkuT1HR0sKXtpKN/EZ5
 fQcdoGOgmG334J5UNoWHc4beTpAt+RHRYdAda8lY/2VkYquXGUA65gKEy
 F5G4qKBp9UF8vurfADLXaNjHawwnLcFGlROwY0QwjGlLW4z6fOBJeX+o8
 JPydzHPlRakZO/0wY8m9PPwnmCHuhDsiAHJvvSMsuJ+IcvDWYLb97+Wfl
 tViahwP4E+8w+jW0ZZrLexBbej4ppg5WguKqn+1J3wLqe5xG0OGFYCmKL A==;
X-CSE-ConnectionGUID: MwIo025NR0akiTxinFgArg==
X-CSE-MsgGUID: xCKwe5TASbWTPIi7P44SNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50262617"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="50262617"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:36:01 -0700
X-CSE-ConnectionGUID: tHxszXPCRfuJ7+BsvxEDpA==
X-CSE-MsgGUID: Gr0H3bj1S3yGcfBj25eOlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205842588"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/6] drm/i915/vrr: Use the min static optimized guardband
Date: Wed, 15 Oct 2025 15:52:41 +0530
Message-ID: <20251015102241.1797828-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
References: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_vrr.c | 61 +++++++++++++++++++++++-
 1 file changed, 59 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1cfcc31bd899..4d96aad93dba 100644
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
@@ -433,17 +437,70 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
 		   intel_vrr_max_vblank_guardband(crtc_state));
 }
 
+static
+int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	struct skl_prefill_ctx prefill_ctx;
+	int prefill_framestart_delay = 1;
+	int prefill_min_guardband;
+	int prefill_latency_us;
+	int prefill_wm0_lines;
+	int prefill_sagv_us;
+	int psr_latency = 0;
+	int sdp_latency = 0;
+	int guardband;
+
+	skl_prefill_init_worst(&prefill_ctx, crtc_state);
+	prefill_wm0_lines = skl_wm0_prefill_lines_worst(crtc_state);
+	prefill_sagv_us = display->sagv.block_time_us;
+
+	prefill_latency_us = prefill_sagv_us +
+			     intel_scanlines_to_usecs(adjusted_mode,
+						      prefill_framestart_delay +
+						      prefill_wm0_lines);
+	prefill_min_guardband =
+		skl_prefill_min_guardband(&prefill_ctx,
+					  crtc_state,
+					  prefill_latency_us);
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		psr_latency = intel_psr_max_link_wake_latency(crtc_state);
+		sdp_latency = intel_dp_compute_sdp_latency(crtc_state);
+	}
+
+	guardband = max(sdp_latency, psr_latency);
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

