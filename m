Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJqwNHpRcGlvXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8128750D06
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C6710E6AC;
	Wed, 21 Jan 2026 04:09:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pk47tehL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862C510E142;
 Wed, 21 Jan 2026 04:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768968565; x=1800504565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O0r3ysa00a875SSj8Cupuugywp2hIS168OtF33zRlFQ=;
 b=Pk47tehLkXeVhVguguaSqHVPW7cizmduxBG+F9u3/8Otk/O6cN1xMWJW
 gWA8hdhXMdomDEMfaRezTnVgXRmVOmUxzWtRix00qz2mrQ9P5pRC4/v0n
 d9HmsW+rV9DSQXSKbj23v9nOo9rGjT5j+NGw3+fOOJOjALddWJcBa4gU0
 QNz6JBwhrg5xg72pfYU53pPbnXmCyDUZVJqkjyj3Xnkkr33t64ybrh6fj
 z7Z6U0P+rJfLcgs8Y+P5Kh1cf7dr2j2lgITYPsT2A6cU7/gjmDADYmZo/
 jbo9tNJMecox0I5tKJSa3+I3RRK+xicMOn1b0WlgthLSPx+sDKHmDqQZ5 w==;
X-CSE-ConnectionGUID: +fVQ47EiRDmNzfL/z1dFXA==
X-CSE-MsgGUID: UR1DV0dwTlaNgd0Qo7fu5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="81299945"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="81299945"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:25 -0800
X-CSE-ConnectionGUID: 9gtPBIy1Q1WTjXA4oS1nGg==
X-CSE-MsgGUID: vas0nc8QQHSGQllinB695g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="211330933"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:25 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 02/14] drm/i915/dp: Move num_joined_pipes and related checks
 together
Date: Wed, 21 Jan 2026 09:23:18 +0530
Message-ID: <20260121035330.2793386-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8128750D06
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the calculation of `num_joined_pipes` and other constraints that
depend on it, into a single block.
This groups all joiner-dependent logic together, preparing the code for a
future loop-based evaluation of multiple joiner configurations.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 ++++++++++++-------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 126da297efc5..c0a8ffac6312 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1472,20 +1472,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     mode->hdisplay, target_clock);
-	max_dotclk *= num_joined_pipes;
-
 	sink_format = intel_dp_sink_format(connector, mode);
 	output_format = intel_dp_output_format(connector, sink_format);
 
-	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
-	if (status != MODE_OK)
-		return status;
-
-	if (target_clock > max_dotclk)
-		return MODE_CLOCK_HIGH;
-
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
@@ -1496,6 +1485,17 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   target_clock, mode->hdisplay,
 					   link_bpp_x16, 0);
 
+	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
+						     mode->hdisplay, target_clock);
+	max_dotclk *= num_joined_pipes;
+
+	if (target_clock > max_dotclk)
+		return MODE_CLOCK_HIGH;
+
+	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
+	if (status != MODE_OK)
+		return status;
+
 	if (intel_dp_has_dsc(connector)) {
 		int pipe_bpp;
 
@@ -1538,14 +1538,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
 		return MODE_CLOCK_HIGH;
 
+	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
+	if (status != MODE_OK)
+		return status;
+
 	if (mode_rate > max_rate && !dsc)
 		return MODE_CLOCK_HIGH;
 
-	status = intel_dp_mode_valid_downstream(connector, mode, target_clock);
-	if (status != MODE_OK)
-		return status;
-
-	return intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
+	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
 }
 
 bool intel_dp_source_supports_tps3(struct intel_display *display)
-- 
2.45.2

