Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE18C5B671
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 06:40:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B5110E9AB;
	Fri, 14 Nov 2025 05:40:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PAoHbi+C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8042B10E9AB;
 Fri, 14 Nov 2025 05:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763098834; x=1794634834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N13zG8z91RmeZoZ2oQCvxqqdh3nZqwP2cIJIJbYqjOU=;
 b=PAoHbi+C+h3s40VrVyu1o7ayvCfSz1U0kGvVf+ZUCfKIw5LibBCZYz9Q
 70m6MnRyWyX5PIqBG83R6Y5Li3hjxpYY/Pfm2H178F9+/Tseb9fRwYChX
 IB7+jOpD5acYSlmWU9mKATUN+6O2KPyjNj8cWZQ6jJC2meXuLjtBJ52Kn
 GpJe1qMQ0iRmRtNQxYZfABbW2DwUhQYfXn/OTt3HR1avq9aZBTp4/YyfL
 Trx7o8ac3WxlT8IMujO894ZGmHS3RJgkEuI+vtK6UREN9wJKUeZnc8whO
 W7Vxny6xQL/VTSnL3FFSyZUtlyjIHAiDgPPz9iQphuxtrOgNw2xw1ltOA w==;
X-CSE-ConnectionGUID: XFIZS7YHSgOZ9y+/sD5u4A==
X-CSE-MsgGUID: /8bkXehvT1qOJL/zEFp8WQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76536256"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="76536256"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:40:34 -0800
X-CSE-ConnectionGUID: TewSOsZJTyKvAyQrug2C1Q==
X-CSE-MsgGUID: JK2zIyrBTBu5uP00YS3hEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="189543600"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:40:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
Date: Fri, 14 Nov 2025 10:57:42 +0530
Message-ID: <20251114052746.158751-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
References: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
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

Currently intel_alpm_lobf_compute_config() tries to account for
guardband +SCL requirements during encoder->compute_config() phase,
even before guardband is computed.
Also, LOBF depends on crtc_state->has_psr which can be modified in
encoder->compute_config_late().

Account for lobf requirements while optimizing the guardband and add
checks for final guardband in encoder->compute_config_late() phase after
the guardband and the final state of crtc_state->has_psr are already
computed.

Use crtc_state->vrr.guardband and crtc_state->set_context_latency for
the computation and add more documentation for the dependency of first
sdp position, guardband, set context latency and wake lines.

v2: Add helper to use min guardband required for lobf.

Bspec:71041
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c  | 63 +++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_alpm.h  |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c    |  2 +
 drivers/gpu/drm/i915/display/intel_intel.c |  0
 drivers/gpu/drm/i915/display/intel_vrr.c   |  2 +
 5 files changed, 56 insertions(+), 14 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_intel.c

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 6372f533f65b..98cbf5dde73b 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -15,6 +15,7 @@
 #include "intel_dp_aux.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
+#include "intel_vrr.h"
 
 #define SILENCE_PERIOD_MIN_TIME	80
 #define SILENCE_PERIOD_MAX_TIME	180
@@ -248,14 +249,58 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 	return true;
 }
 
+int intel_alpm_lobf_min_guardband(struct intel_crtc_state *crtc_state)
+{
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int first_sdp_position = adjusted_mode->crtc_vtotal -
+				 adjusted_mode->crtc_vsync_start;
+	int waketime_in_lines = max(crtc_state->alpm_state.io_wake_lines,
+				    crtc_state->alpm_state.aux_less_wake_lines);
+
+	if (!crtc_state->has_lobf)
+		return 0;
+
+	return first_sdp_position + waketime_in_lines + crtc_state->set_context_latency;
+}
+
+void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
+					 struct intel_crtc_state *crtc_state)
+{
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int waketime_in_lines, first_sdp_position;
+
+	if (!crtc_state->has_lobf)
+		return;
+
+	/*
+	 * LOBF can only be enabled if the time from the start of the SCL+Guardband
+	 * window to the position of the first SDP is greater than the time it takes
+	 * to wake the main link.
+	 *
+	 * Position of first sdp : vsync_start
+	 * start of scl + guardband : vtotal - (scl + guardband)
+	 * time in lines to wake main link : waketime_in_lines
+	 *
+	 * Position of first sdp - start of (scl + guardband) > time in lines to wake main link
+	 * vsync_start - (vtotal - (scl + guardband)) > waketime_in_lines
+	 * vsync_start - vtotal + scl + guardband > waketime_in_lines
+	 * scl + guardband > waketime_in_lines + (vtotal - vsync_start)
+	 */
+	first_sdp_position = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vsync_start;
+	if (intel_alpm_aux_less_wake_supported(intel_dp))
+		waketime_in_lines = crtc_state->alpm_state.io_wake_lines;
+	else
+		waketime_in_lines = crtc_state->alpm_state.aux_less_wake_lines;
+
+	crtc_state->has_lobf = (crtc_state->set_context_latency + crtc_state->vrr.guardband) >
+			       (first_sdp_position + waketime_in_lines);
+}
+
 void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state,
 				    struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	int waketime_in_lines, first_sdp_position;
-	int context_latency, guardband;
 
 	if (intel_dp->alpm.lobf_disable_debug) {
 		drm_dbg_kms(display->drm, "LOBF is disabled by debug flag\n");
@@ -288,17 +333,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (!intel_alpm_compute_params(intel_dp, crtc_state))
 		return;
 
-	context_latency = adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
-	guardband = adjusted_mode->crtc_vtotal -
-		    adjusted_mode->crtc_vdisplay - context_latency;
-	first_sdp_position = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vsync_start;
-	if (intel_alpm_aux_less_wake_supported(intel_dp))
-		waketime_in_lines = crtc_state->alpm_state.io_wake_lines;
-	else
-		waketime_in_lines = crtc_state->alpm_state.aux_less_wake_lines;
-
-	crtc_state->has_lobf = (context_latency + guardband) >
-		(first_sdp_position + waketime_in_lines);
+	crtc_state->has_lobf = true;
 }
 
 static void lnl_alpm_configure(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 53599b464dea..14dc49fee4c3 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -38,4 +38,7 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
 void intel_alpm_disable(struct intel_dp *intel_dp);
 bool intel_alpm_get_error(struct intel_dp *intel_dp);
+void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
+					 struct intel_crtc_state *crtc_state);
+int intel_alpm_lobf_min_guardband(struct intel_crtc_state *crtc_state);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ec82fcbcf48..782e981bbc89 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7020,6 +7020,8 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
+	intel_alpm_lobf_compute_config_late(intel_dp, crtc_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_intel.c b/drivers/gpu/drm/i915/display/intel_intel.c
new file mode 100644
index 000000000000..e69de29bb2d1
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b92c42fde937..fcecdf3dc78c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -6,6 +6,7 @@
 
 #include <drm/drm_print.h>
 
+#include "intel_alpm.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -451,6 +452,7 @@ int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state)
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		guardband = max(guardband, intel_psr_min_guardband(crtc_state));
 		guardband = max(guardband, intel_dp_sdp_min_guardband(crtc_state, true));
+		guardband = max(guardband, intel_alpm_lobf_min_guardband(crtc_state));
 	}
 
 	return guardband;
-- 
2.45.2

