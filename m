Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLjeMqgbemlS2QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:22:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8037EA2AC1
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1793210E6D9;
	Wed, 28 Jan 2026 14:22:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WxScvuld";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D780610E6D9;
 Wed, 28 Jan 2026 14:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769610150; x=1801146150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eiyaIwqMzrpj4Qxgj9Z94vapss0Dcv9srr+gbCB/0eg=;
 b=WxScvuldwLxZu4XRvY2UV0y1fnr4ELyJHDc18zQonYa/pIPN9Q9NZXZH
 JO49YTPljd0ci+pfX8QWKfeDINl+/31pLqXyNEK2CWdt7dskP7YPLZ/tB
 hf2DRn738fAzKLAXqP4axuDuFla2+pJgQPsmX8DH0o2KZK2cWb22s8OA4
 ZFH+Sj8LOOUMHxHViyGrhkzTgoldnnJDQdR7bDC8zMcJukiB6TmIvGBxX
 bs2FwiFNfZhnJT4vXke6O5B0QYDmjYae5sFv6I935+Eqx6FU8HEnKqTLT
 wlBnP66uvM57+SkJcbHUMePM0yr55hXS9Dk6hVKJGmT9nE8HawJbFdkPz Q==;
X-CSE-ConnectionGUID: k+661kUFSeCXxUI0rCwpvA==
X-CSE-MsgGUID: tUY8kuYnTJWKtb/eO1B3og==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="58400904"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="58400904"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:29 -0800
X-CSE-ConnectionGUID: +0jvoLy6QKGS+z5vTlrMmQ==
X-CSE-MsgGUID: 6Z0VnVjKSwSBne75yaIQ0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="245881327"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:28 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 02/16] drm/i915/dp: Move num_joined_pipes and related checks
 together
Date: Wed, 28 Jan 2026 19:36:22 +0530
Message-ID: <20260128140636.3527799-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8037EA2AC1
X-Rspamd-Action: no action

Move the calculation of `num_joined_pipes` and other constraints that
depend on it, into a single block.
This groups all joiner-dependent logic together, preparing the code for a
future loop-based evaluation of multiple joiner configurations.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
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

