Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SM9OIS6CgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34350CB42A
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A55BD10E44D;
	Mon,  2 Feb 2026 10:53:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MjJJ9qwO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA3710E23B;
 Mon,  2 Feb 2026 10:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770029611; x=1801565611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M136sQwJF0xJjnDONANyonaL/4rFyfGkWGhqOIVJuyQ=;
 b=MjJJ9qwOGiAyawnzZ8pL1TUvDSF6z/BxWzFMo7F6BrxlnTINcu67hxb3
 ZrcGfXCzgKrNuDSQLdEjNj5K8cac0/bzi0ERw7PDrx39McGtT74een59B
 Ai7Uc38GN02zOq99bXvUau2muVGjVfs5CM6KUuF+XAPMx6vV+0JaqbpBw
 fdTNNs7DKOOBU1NZ30BL/Ux6YMNJSvrbplYeNDqTHXHAuAF5jNiyZfa2F
 p8iR+HN0Q2bjqVowCFhCWdW4NSo1dwzl1UkICZAuiemzUhowHmJJJJLnR
 X1r1mcXePiB2yu6kgCyV2obAfw1MCRKbYLBnL0a1QbHVons0tYLWrKQdN w==;
X-CSE-ConnectionGUID: RLygJzr0Sei79W3PU0Ubrg==
X-CSE-MsgGUID: ST18kaCsT4GwwsNqUsvXnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70385029"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70385029"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:31 -0800
X-CSE-ConnectionGUID: 4sDVyqXJSFySvL4vYJSIFQ==
X-CSE-MsgGUID: atByshYwTc67BgVf3TMw6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="232419837"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:29 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 09/17] drm/i915/dp_mst: Extract helper to compute link for
 given joiner config
Date: Mon,  2 Feb 2026 16:07:23 +0530
Message-ID: <20260202103731.357416-10-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 34350CB42A
X-Rspamd-Action: no action

Move the joiner-dependent portion of mst_stream_compute_config() into
mst_stream_compute_link_for_joined_pipes(), which computes the MST link
configuration for a specific num_joined_pipes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 73 ++++++++++++++-------
 1 file changed, 48 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5209cc1843ba..9c6b27f35114 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -595,40 +595,19 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
 							    dsc);
 }
 
-static int mst_stream_compute_config(struct intel_encoder *encoder,
-				     struct intel_crtc_state *pipe_config,
-				     struct drm_connector_state *conn_state)
+static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encoder,
+						    struct intel_crtc_state *pipe_config,
+						    struct drm_connector_state *conn_state,
+						    int num_joined_pipes)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dp *intel_dp = to_primary_dp(encoder);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	const struct drm_display_mode *adjusted_mode =
-		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
-	int num_joined_pipes;
 	int ret = 0;
 
-	if (pipe_config->fec_enable &&
-	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
-		return -EINVAL;
-
-	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
-		return -EINVAL;
-
-	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
-	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
-	pipe_config->has_pch_encoder = false;
-
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     adjusted_mode->crtc_hdisplay,
-						     adjusted_mode->crtc_clock);
-	if (num_joined_pipes > 1)
-		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
-
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
@@ -683,6 +662,8 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
 						  conn_state, &limits,
 						  pipe_config->dp_m_n.tu);
+		if (ret)
+			return ret;
 	}
 
 	if (ret)
@@ -692,6 +673,48 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
+	return 0;
+}
+
+static int mst_stream_compute_config(struct intel_encoder *encoder,
+				     struct intel_crtc_state *pipe_config,
+				     struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+	const struct drm_display_mode *adjusted_mode =
+		&pipe_config->hw.adjusted_mode;
+	int num_joined_pipes;
+	int ret = 0;
+
+	if (pipe_config->fec_enable &&
+	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
+		return -EINVAL;
+
+	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
+		return -EINVAL;
+
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->has_pch_encoder = false;
+
+	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
+						     adjusted_mode->crtc_hdisplay,
+						     adjusted_mode->crtc_clock);
+	if (num_joined_pipes > 1)
+		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
+
+	ret = mst_stream_compute_link_for_joined_pipes(encoder,
+						       pipe_config,
+						       conn_state,
+						       num_joined_pipes);
+	if (ret)
+		return ret;
+
 	pipe_config->limited_color_range =
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
-- 
2.45.2

