Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFyjKhBtfGkSMgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:34:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C855B86A5
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:34:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1423F10E93F;
	Fri, 30 Jan 2026 08:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VSDvupnt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E6110E937;
 Fri, 30 Jan 2026 08:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769762060; x=1801298060;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1175Ngccn1Zuau0KmCu68ZlYHtW7GA3aQ4XUmeI7jHE=;
 b=VSDvupntVjr38dy46NPGaBRIJSRaaWL3nLW11FqOPT5XyiCAbuLIrDH2
 tzuoaD6R+ETduw0br09Dx/zzAkqQyj3wdPiDMqTqVRohijxb2TIH1V7QN
 DtWaOsnGPa8Csf8RkP4Bw9DBJXxdOl5K2ifD/FHJSH8W6l3c8ozUCgEgR
 Kma5VwPHmZiwfhHY0gJPUrYljjKV9zE6kQ+l4oowbquXo6RUMu1pYncI6
 EKiZCupvfwzZL2d1hku7RcXiByJR2GDKWufuqgdTZOpD9Gph6lrFgEOZV
 LzgVEZrbjnKNuDWLY7lJ6FEoqCvabzN52JQIIrXjjpyB6Gb4urLhXeaRc w==;
X-CSE-ConnectionGUID: m8bS+G2zRrOCQ0NduA5iYQ==
X-CSE-MsgGUID: WWs8FG3WQiyazIYQV738Ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="74636650"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="74636650"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:18 -0800
X-CSE-ConnectionGUID: rYPPrQk6TwKLLPLvJePJ+g==
X-CSE-MsgGUID: 3zzHyBwQQ0S/cwBxImJdIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="208910094"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:16 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 09/17] drm/i915/dp_mst: Extract helper to compute link for
 given joiner config
Date: Fri, 30 Jan 2026 13:48:04 +0530
Message-ID: <20260130081812.32087-10-ankit.k.nautiyal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5C855B86A5
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
index 6414fc8fb4a4..aa328d99d9f2 100644
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

