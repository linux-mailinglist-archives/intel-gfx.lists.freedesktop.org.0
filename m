Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIk8NixtfGkSMgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:34:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C083B86D1
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:34:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0514A10E94C;
	Fri, 30 Jan 2026 08:34:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZCendrfr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04A5510E93B;
 Fri, 30 Jan 2026 08:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769762085; x=1801298085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7JlvXIMurJ8Nou3A+7r1fci25KizVu8sL2jqy3vfxY0=;
 b=ZCendrfrVTkI67uqA6z8l/YljNHHAr+LBIHMVR3fhDThaEPMT3mtqL7e
 7fbErJ4Y8B62igVIvKdyN2MMZ8/TwCiIJlr7S2hL5GuiBfcHn/TkV66Fo
 84L1cbmAOniS1SSWEUwhdKvSnYC+zMiyYYKNGnIuFo2q6IRuN00N5V4ov
 Uc55Itr/5bkgjUcYhZ55c65gjicXOYQ+gH0oZ5MKhKGm1K4QA5sflNS37
 mR3vsrMBThM37jXd3ALfkP9wEM11USF2vun0HYxB4tzWL1OO/g+cc1QH0
 ErGrPGGiaKz4lId3dpiEnZbPcxPc8f8+wuyUmIkTZdkbd4fohXq0gNtIY w==;
X-CSE-ConnectionGUID: cG9iKC4DQ5SCm5t6IVyIBQ==
X-CSE-MsgGUID: JnYRHwaAT1KuUulCt7IVtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="74636699"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="74636699"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:45 -0800
X-CSE-ConnectionGUID: H1PKADlYQfCda6yb76SwmQ==
X-CSE-MsgGUID: DPWxW/m4TwW2H6GX6ik8yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="208910167"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:30 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 15/17] drm/i915/dp: Add helpers for joiner candidate loops
Date: Fri, 30 Jan 2026 13:48:10 +0530
Message-ID: <20260130081812.32087-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
References: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 7C083B86D1
X-Rspamd-Action: no action

Introduce for_each_joiner_candidate(), intel_dp_joiner_candidate_valid()
and intel_dp_joiner_candidate_valid() to remove duplicated joiner
enumeration and validity checks across DP SST and MST paths.

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 44 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  7 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 +-----------
 3 files changed, 29 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3905723f5ab6..920e4d593b1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1492,19 +1492,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	 * over candidate pipe counts and evaluate each combination.
 	 */
 	status = MODE_CLOCK_HIGH;
-	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
+	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
 		int dsc_slice_count = 0;
 
-		if (connector->force_joined_pipes &&
-		    num_joined_pipes != connector->force_joined_pipes)
-			continue;
-
-		if (!intel_dp_can_join(display, num_joined_pipes))
-			continue;
-
-		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
-			continue;
-
 		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
 		if (status != MODE_OK)
 			continue;
@@ -2884,7 +2874,6 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			     struct drm_connector_state *conn_state,
 			     bool respect_downstream_limits)
 {
-	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -2898,18 +2887,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
 		return -EINVAL;
 
-	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
-		if (connector->force_joined_pipes &&
-		    num_joined_pipes != connector->force_joined_pipes)
-			continue;
-
-		if (!intel_dp_can_join(display, num_joined_pipes))
-			continue;
-
-		if (adjusted_mode->hdisplay >
-		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
-			continue;
-
+	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
 		/*
 		 * NOTE:
 		 * The crtc_state->joiner_pipes should have been set at the end
@@ -7219,3 +7197,21 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 
 	return sdp_guardband;
 }
+
+bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
+				     int hdisplay,
+				     int num_joined_pipes)
+{
+	struct intel_display *display = to_intel_display(connector);
+
+	if (!intel_dp_can_join(display, num_joined_pipes))
+		return false;
+
+	if (hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+		return false;
+
+	if (connector->force_joined_pipes && connector->force_joined_pipes != num_joined_pipes)
+		return false;
+
+	return true;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 95a38763a367..ff527b351de0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -229,5 +229,12 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
 			   int htotal,
 			   int dsc_slice_count,
 			   int num_joined_pipes);
+bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
+				     int hdisplay,
+				     int num_joined_pipes);
+
+#define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
+	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
+		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ad66c483959b..2c8a7c57e795 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -720,18 +720,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
-		if (connector->force_joined_pipes &&
-		    num_joined_pipes != connector->force_joined_pipes)
-			continue;
-
-		if (!intel_dp_can_join(display, num_joined_pipes))
-			continue;
-
-		if (adjusted_mode->hdisplay >
-		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
-			continue;
-
+	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
 		if (num_joined_pipes > 1)
 			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
 							    crtc->pipe);
@@ -1535,19 +1524,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	}
 
 	*status = MODE_CLOCK_HIGH;
-	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
+	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
 		int dsc_slice_count = 0;
 
-		if (connector->force_joined_pipes &&
-		    num_joined_pipes != connector->force_joined_pipes)
-			continue;
-
-		if (!intel_dp_can_join(display, num_joined_pipes))
-			continue;
-
-		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
-			continue;
-
 		if (intel_dp_has_dsc(connector) &&
 		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
 			/*
-- 
2.45.2

