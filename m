Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0D6BE6639
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 07:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 844E010EB01;
	Fri, 17 Oct 2025 05:15:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W4el/5qy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 678A410EB02;
 Fri, 17 Oct 2025 05:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760678115; x=1792214115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gnacSrp3ze4nFzoYAU62U8jmCtPrVNXQjzT1A8vhX6k=;
 b=W4el/5qyJk5wSnDWpJeb9AySM+hRU1If2u0PyAQfc1GRBN5W4VyoriLK
 2TSP+0Yyvu+W2kfjuATqYMt/VAFKfg5VF5aDaDtWvoaePxw0kPeD+mxuA
 jmwHaltXoYbV65jQvxLt/YlsRUD7Ja2GCEzY9JIjO0orIzZjfV4VRxw6i
 n0Hd0yekbI3yFfDrKwMSDkcA8Cb5pLXbW8sfVX3pzGH6+nKo5PkOOHOwV
 vm+/t5avg+zBFfYHaNx1/2yCemzq7K/E1p1Z0PNFMzr4yuVkMIFaxo7sm
 eKueFqD0phH2Y0F9V9j6NBQH+gDQRm8JiiTXZ2wp1F/xHzHgAnM9PmeB5 w==;
X-CSE-ConnectionGUID: RvPiK9ZrS3q5GHeCOD3LXg==
X-CSE-MsgGUID: EZnRB2ygTLqbI+DShn2ZqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="88352614"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="88352614"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:14 -0700
X-CSE-ConnectionGUID: 4vBjfqOtQkiyS1oPfDratA==
X-CSE-MsgGUID: GLdNTGHWTTKDkBgvt7RfCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182576576"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/5] drm/i915/vrr: Use the min static optimized guardband
Date: Fri, 17 Oct 2025 10:32:01 +0530
Message-ID: <20251017050202.2211985-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
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

v2:
- Use max of sagv latency and skl_wm_latency(1) for PM delay
  computation. (Ville)
- Avoid guardband optimization for HDMI for now. (Ville)
- Allow guardband optimization only for platforms with
  intel_vrr_always_use_vrr_tg = true. (Ville)
- Add comments for PM delay and a #TODO note for HDMI.

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 62 +++++++++++++++++++++++-
 1 file changed, 60 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 597008a6c744..cd7bed358984 100644
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
@@ -433,17 +437,71 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
 		   intel_vrr_max_vblank_guardband(crtc_state));
 }
 
+static
+int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct skl_prefill_ctx prefill_ctx;
+	int prefill_min_guardband;
+	int prefill_latency_us;
+	int guardband = 0;
+
+	skl_prefill_init_worst(&prefill_ctx, crtc_state);
+
+	/*
+	 * The SoC power controller runs SAGV mutually exclusive with package C states,
+	 * so the max of package C and SAGV latencies is used to compute the min prefill guardband.
+	 * PM delay = max(sagv_latency, pkgc_max_latency (highest enabled wm level 1 and up))
+	 */
+	prefill_latency_us = max(display->sagv.block_time_us,
+				 skl_watermark_max_latency(display, 1));
+	prefill_min_guardband =
+		skl_prefill_min_guardband(&prefill_ctx,
+					  crtc_state,
+					  prefill_latency_us);
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		guardband = max(guardband, intel_psr_min_guardband(crtc_state));
+		guardband = max(guardband, intel_dp_sdp_min_guardband(crtc_state, true));
+	}
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
+	/*
+	 * #TODO: Enable optimized guardband for HDMI
+	 * For HDMI lot of infoframes are transmitted a line or two after vsync.
+	 * Since with optimized guardband the double bufferring point is at delayed vblank,
+	 * we need to ensure that vsync happens after delayed vblank for the HDMI case.
+	 */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		return false;
+
+	return intel_vrr_always_use_vrr_tg(display);
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

