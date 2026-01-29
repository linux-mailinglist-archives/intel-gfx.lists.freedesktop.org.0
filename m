Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPpiC6+Ye2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4982B2E00
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B1F10E8C4;
	Thu, 29 Jan 2026 17:28:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nKWAYPwj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B888E10E8BF;
 Thu, 29 Jan 2026 17:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707684; x=1801243684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N8Wv06/Cf+SiNpkSh2SeYR6JuicjWS19zw4Zlae8VbU=;
 b=nKWAYPwjcgsd8TfCLOLhrcFtQfCcd1/LN3t4hUM17gBUsN3mlWU4c1Q3
 UGHwVRek+3yDsim7iUSuvS4TC+Q75o1xU32O+ZXdh26dmLujCGb2yED48
 DE9qAjSBsf4isLb68fNS495VYVUtw5HNdlMc38VkxvfqYUHk54mgPTMaT
 bG9+kRlMhwNBOKuG7rHj0KPpcWhRo30AKibrLkBNyzYr+oX4Xk97cMBJv
 OCT4tTVNefitOVNfO9Q9kB4oxr23o8aawdEaLAknuNrNHbecCcFTIa/TR
 F8gLJw+SXb4ZQ4UNtQuVLrU3hXZJb5Y2hvVWgxiV7k6dmuYaqG1sQ2IZa g==;
X-CSE-ConnectionGUID: SXXi1LlgS8C0h3ARIc9tSw==
X-CSE-MsgGUID: 2R+q/tUDR6WWbzGRXCQFrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70926904"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70926904"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:04 -0800
X-CSE-ConnectionGUID: b3vttzzaQzGAhH9pM5TIXA==
X-CSE-MsgGUID: FsqAEIAATACbtF8Ng7zCZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239361036"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:02 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 09/16] drm/i915/dp_mst: Extract helper to compute link for
 given joiner config
Date: Thu, 29 Jan 2026 22:41:47 +0530
Message-ID: <20260129171154.3898077-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: D4982B2E00
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
index 414c7ffc704e..55b2ccb45e43 100644
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

