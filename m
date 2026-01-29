Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHpRGKSYe2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2647EB2DDD
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B023510E8AF;
	Thu, 29 Jan 2026 17:28:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Il5MNkGf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3C8310E8B5;
 Thu, 29 Jan 2026 17:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707679; x=1801243679;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kFX8e0h2gwPEZghDHkeU1GUimUsQBpBfOHt8YJUb/wg=;
 b=Il5MNkGfeCCr/sjiYI+HXAqIyZ4Pz2aQypy6qPUTzQChTasalsfnxbby
 ZFVKXNMZGhmSfPjKQ3SyLRPfADNMEnV74jCWJH1GUOkhjs3WR1Zb5behG
 ZdoLd5zdkiZTKviLYKvCT0XYmiPqJStunLRvzRLDbQlKfavfsuTk9L0WL
 sUK1YRYmyh0do4gg56duumN1KuxhJyO7fO7NXV80eWiobOj20hQLq60Vk
 iWA4C2WOmp9p3163gBxsJA+QAJpvVLFQOARQi0iF+fz68TaG4NDmP7M7G
 qGt+gD+lYzkCPyEKsH6e93DP8fFgN8saATZ9lzThYbLidUcbcQxYEVa6t A==;
X-CSE-ConnectionGUID: 07Qhr4l8T3OV6fkRD5CJFA==
X-CSE-MsgGUID: Dnp2PHZsT9yfhhfNhuaJ8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70926880"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70926880"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:27:59 -0800
X-CSE-ConnectionGUID: T+CsjPhPRkSf3eRDt8JrUw==
X-CSE-MsgGUID: U3JyXpzqSxKUSyG8Ck56uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239360995"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:27:57 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 07/16] drm/i915/dp_mst: Move the joiner dependent code together
Date: Thu, 29 Jan 2026 22:41:45 +0530
Message-ID: <20260129171154.3898077-8-ankit.k.nautiyal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2647EB2DDD
X-Rspamd-Action: no action

Move the calculation of num_joined_pipes and other constraints that
depend on it, into a single block in mst_stream_compute_config().

This groups all joiner-dependent logic together, preparing the code for a
future loop-based evaluation of multiple joiner configurations.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ec6882af0631..fc9367cc42ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -619,16 +619,16 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->has_pch_encoder = false;
+
 	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
 						     adjusted_mode->crtc_hdisplay,
 						     adjusted_mode->crtc_clock);
 	if (num_joined_pipes > 1)
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
 
-	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
-	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
-	pipe_config->has_pch_encoder = false;
-
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
@@ -685,6 +685,10 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 						  pipe_config->dp_m_n.tu);
 	}
 
+	if (ret)
+		return ret;
+
+	ret = intel_dp_compute_min_hblank(pipe_config, conn_state);
 	if (ret)
 		return ret;
 
@@ -695,10 +699,6 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 		pipe_config->lane_lat_optim_mask =
 			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
-	ret = intel_dp_compute_min_hblank(pipe_config, conn_state);
-	if (ret)
-		return ret;
-
 	intel_vrr_compute_config(pipe_config, conn_state);
 
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
-- 
2.45.2

