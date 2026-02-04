Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PHACrDWgml5cQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 06:18:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0115E1DBA
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 06:18:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A0610E23C;
	Wed,  4 Feb 2026 05:18:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lcRPmC9w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ABA910E23C;
 Wed,  4 Feb 2026 05:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770182316; x=1801718316;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bEjPMFZfzAtaeuEnLNRkgLMossg6RuGKZmGPvunkqsA=;
 b=lcRPmC9w0HI67yobrKFNjg3fcqfOcAcyialKYW0zFgkFlUilP+Nv/eOA
 FGp+JzJkr+HFM9EmWG/IRX9nGMk+BSmfMS5eCi1gfcYYNz+ALWJfYaZ+i
 5lamTNHBrEGe+XVm8f+LntYsJ+jXgWShiiSOHxQMbY2lLwdvNgygIU3/7
 YUToo1mWHeLIHWE1KVrtx6lRva5i0Av8CIO5e+ZkGXgOpmFXspUENszga
 SE+OAxfgTwXVBdXRHCrWow+oJo7wli7tfoH+OojUye1FRKJxpiz7R7+ks
 8sLFS7bbvEZPoyEHA13BUz1PPOb0RrGke4Kld8ZEGkW+n5Sx009tBTS8Y w==;
X-CSE-ConnectionGUID: DrJZhN0kTduZwh11qzyOdw==
X-CSE-MsgGUID: hM3rz1+uQFmvcGWufoKy6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="82102819"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="82102819"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 21:18:36 -0800
X-CSE-ConnectionGUID: 0Sl7Rl22Rg+pzzP5I0uzFA==
X-CSE-MsgGUID: YSW69dvJQzWeSuyeF5mkng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="210127475"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 21:18:34 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, michal.grzelak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [RESEND 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
Date: Wed,  4 Feb 2026 10:32:46 +0530
Message-ID: <20260204050250.762718-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
References: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B0115E1DBA
X-Rspamd-Action: no action

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
index c6a4ec5b9561..b698979d1f13 100644
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
index e2fd01d1a1e4..2b8f43e21174 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7163,6 +7163,8 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
+	intel_alpm_lobf_compute_config_late(intel_dp, crtc_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9d814cc2d608..00ca76dbdd6c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -6,6 +6,7 @@
 
 #include <drm/drm_print.h>
 
+#include "intel_alpm.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
@@ -520,6 +521,7 @@ int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state)
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		guardband = max(guardband, intel_psr_min_guardband(crtc_state));
 		guardband = max(guardband, intel_dp_sdp_min_guardband(crtc_state, true));
+		guardband = max(guardband, intel_alpm_lobf_min_guardband(crtc_state));
 	}
 
 	return guardband;
-- 
2.45.2

