Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIVjJDqCgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D01CB45D
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C518510E450;
	Mon,  2 Feb 2026 10:53:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g/SEokI0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12AAA10E459;
 Mon,  2 Feb 2026 10:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770029623; x=1801565623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WuMtUTAJJRh06BZUXwxkYcG3bsX5kVhpudtMh/k9KCw=;
 b=g/SEokI0ImsqIekncvyoemPVbz6/MwLBZ+qZmqxVqL52szUXfBWnKTwj
 fAdqVNIQRuTyLs2bwUJm0Cni1b41TK8GocxBsFzE6ZeWXLtRxFrMEt0Eo
 sG2kwhefo7Fr/pge5dRkwkSt6Lz4st6YPNSsHn9e9sRj5Gx+l07SRvj44
 86C9DyZXsm4433BP9lyuReMXlzl49E4mvR8AujbT+YQE1OW7PcQLw7s4F
 +ql0faGlyyfrjI/McEwgmk+HN4vY6y64rqB5QvIX4UXXeu9kcBK/zWz37
 96oZqC2mrxdcr2ZhJz6FwxzQv791nCm2jLeNp+yCrhNtqwthRcOErzaQ2 A==;
X-CSE-ConnectionGUID: FKDXuEFdTTakZP7XElfV0Q==
X-CSE-MsgGUID: nHZrTvhrT9+5y8LWOk2aGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70385058"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70385058"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:43 -0800
X-CSE-ConnectionGUID: jm96ReXoRmaDD2dkt0TVfA==
X-CSE-MsgGUID: k3mdZQxVQEmD3AgcL6AGyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="232419880"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:41 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 15/17] drm/i915/dp: Add helpers for joiner candidate loops
Date: Mon,  2 Feb 2026 16:07:29 +0530
Message-ID: <20260202103731.357416-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260202103731.357416-1-ankit.k.nautiyal@intel.com>
References: <20260202103731.357416-1-ankit.k.nautiyal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 40D01CB45D
X-Rspamd-Action: no action

Introduce for_each_joiner_candidate(), intel_dp_joiner_candidate_valid()
and intel_dp_joiner_candidate_valid() to remove duplicated joiner
enumeration and validity checks across DP SST and MST paths.

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 44 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  7 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 +-----------
 3 files changed, 29 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6329004f56bc..a44db730e45e 100644
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
@@ -2888,7 +2878,6 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			     struct drm_connector_state *conn_state,
 			     bool respect_downstream_limits)
 {
-	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -2902,18 +2891,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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
@@ -7223,3 +7201,21 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 
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
index 8bd3128add0e..29713075e413 100644
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

