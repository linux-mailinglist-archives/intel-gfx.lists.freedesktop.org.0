Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9B0CDBB9F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Dec 2025 10:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D050E10E35D;
	Wed, 24 Dec 2025 09:00:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KbVbqvCg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A050010E35D;
 Wed, 24 Dec 2025 09:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766566858; x=1798102858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v1xCv+4mNa64dE1c/MknsHJdX1rO2g5G2kOrsz/GX2U=;
 b=KbVbqvCgVQloLpIq5Vy5XfpXV/SD2vMYxjd+fSnZWbGTVLAP2rhG7q6M
 aCtwbgQID7sjcasfzBX9O+r6mLGqeF81bzOoJnT9bPBRS13pJ3IHKBDHe
 MxbCb/cTbiJKI7TP/xI/dPu5k/xC8WkCxp9uu3pN7RpSMN+vTzgYJbUsE
 WetfxK1n3/DwgKwR6yPSiJK4ZOozY1YsMROosg3nZ1MA9wJssLitywm0f
 dWG64+i1O6GsIz3PBoXc8FKaDZbUH9upC84/u8+KciQnmDKopgmssoKiw
 QVV5fIfQpCwmvcfXwREGxHYx1vYcU5g276vZAL6QTIkJtRw0LAJ7wxITl A==;
X-CSE-ConnectionGUID: 1DChPstlTTGi/L1IIWhjOw==
X-CSE-MsgGUID: rxP9ua86T9emEdNpv3CLiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="79041551"
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="79041551"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 01:00:57 -0800
X-CSE-ConnectionGUID: zLwIT5H9Re2f/EwpQ/FNCA==
X-CSE-MsgGUID: 7fzWFJrxSX62Y63JNAojpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="199733490"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 01:00:55 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
Date: Wed, 24 Dec 2025 14:18:34 +0530
Message-ID: <20251224084838.2609537-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251224084838.2609537-1-ankit.k.nautiyal@intel.com>
References: <20251224084838.2609537-1-ankit.k.nautiyal@intel.com>
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
v3: Remove unrelated inadvertent changes. (Michał)
v4: Add a #FIXME note for computing wakelines based on feature. (Jouni)

Bspec:71041
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 70 ++++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_alpm.h |  3 +
 drivers/gpu/drm/i915/display/intel_dp.c   |  2 +
 drivers/gpu/drm/i915/display/intel_vrr.c  |  2 +
 4 files changed, 63 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 7ce8c674bb03..055184a3c7d5 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -15,6 +15,7 @@
 #include "intel_dp_aux.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
+#include "intel_vrr.h"
 
 #define SILENCE_PERIOD_MIN_TIME	80
 #define SILENCE_PERIOD_MAX_TIME	180
@@ -248,14 +249,65 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 	return true;
 }
 
+int intel_alpm_lobf_min_guardband(struct intel_crtc_state *crtc_state)
+{
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int first_sdp_position = adjusted_mode->crtc_vtotal -
+				 adjusted_mode->crtc_vsync_start;
+	int waketime_in_lines;
+
+	/*
+	 * #FIXME: Need to check if io_wake_lines or aux_less_wake_lines
+	 * is applicable. Currently this information is not readily
+	 * available in crtc_state, so max will suffice for now.
+	 */
+	waketime_in_lines = max(crtc_state->alpm_state.io_wake_lines,
+				crtc_state->alpm_state.aux_less_wake_lines);
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
@@ -288,17 +340,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
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
index 2dadbf7e8922..7342f8f4b16f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7100,6 +7100,8 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
+	intel_alpm_lobf_compute_config_late(intel_dp, crtc_state);
+
 	return 0;
 }
 
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

