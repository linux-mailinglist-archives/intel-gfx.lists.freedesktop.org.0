Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDJ2GzaCgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 144A0CB44F
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D7310E43B;
	Mon,  2 Feb 2026 10:53:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kbFePjeD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F1510E441;
 Mon,  2 Feb 2026 10:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770029619; x=1801565619;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NUjYpsfqtu4j/OAvecWatYWBaOECABfIDFThtmrPb4I=;
 b=kbFePjeDolIbHSogqpHcfHuhS/9ENMflbkMdLE8Z5FzamzokZHvJG4Vg
 tXPU/LT0zRmIRCz8SaGJHbOAxHM0SsE6gjqEl31ZjgfyFrJJ3bc+43/FO
 h4uOtj3DNSgFAN43E/VY+iwsLM0sDCl8BO1CaNWjXdYRcUalmK9Mj6WZl
 C64xQ2q8kMDh07DiwgLKEgwNRSVyr/zhM/aE3D2EZVFI4TtBIlc+avSP7
 WWaqr7EAqX3g+08XPSPaFyAeT2ytse6Kj9Qypm9L05+xe6qOXwg7vlt7r
 Z0vefZBqWaa0GGk8GZCPHhtyLpYlFXFyz0o/GtgACCP5WlYiHRJTHLsUe g==;
X-CSE-ConnectionGUID: 6dLhjKpcRm+CRwGa3uraTg==
X-CSE-MsgGUID: 0f5yxPM3TJiW4bBGLFsB8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70385048"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70385048"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:39 -0800
X-CSE-ConnectionGUID: VuXy3mmJQce1vGB7dZKQDQ==
X-CSE-MsgGUID: FCED/9o+SB6TpXt2T2HJig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="232419864"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:37 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 13/17] drm/i915/dp: Refactor dsc_slice_count handling in
 intel_dp_mode_valid()
Date: Mon,  2 Feb 2026 16:07:27 +0530
Message-ID: <20260202103731.357416-14-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 144A0CB44F
X-Rspamd-Action: no action

Make dsc_slice_count closer to the block where it is used and promote it
from u8 to int. This aligns it with upcoming DSC bubble pixel-rate
adjustments, where the slice count participates in wider arithmetic.

Currently, for non-eDP (DP/DP_MST) cases  the slice count is computed only
inside intel_dp_dsc_mode_valid() and is not used by the caller. Once DSC
bubble handling is added, dp_mode_valid() will need access to its own local
slice count for non-eDP cases as well.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 280062d3effc..ee7414206cc5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1436,7 +1436,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	u16 dsc_max_compressed_bpp = 0;
-	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
 	bool dsc = false;
 	int num_joined_pipes;
@@ -1486,6 +1485,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	 */
 	status = MODE_CLOCK_HIGH;
 	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
+		int dsc_slice_count = 0;
+
 		if (connector->force_joined_pipes &&
 		    num_joined_pipes != connector->force_joined_pipes)
 			continue;
@@ -1503,6 +1504,11 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (intel_dp_has_dsc(connector)) {
 			int pipe_bpp;
 
+			dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+								       target_clock,
+								       mode->hdisplay,
+								       num_joined_pipes);
+
 			/*
 			 * TBD pass the connector BPC,
 			 * for now U8_MAX so that max BPC on that platform would be picked
@@ -1517,12 +1523,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 				dsc_max_compressed_bpp =
 					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
 
-				dsc_slice_count =
-					intel_dp_dsc_get_slice_count(connector,
-								     target_clock,
-								     mode->hdisplay,
-								     num_joined_pipes);
-
 				dsc = dsc_max_compressed_bpp && dsc_slice_count;
 			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
 				unsigned long bw_overhead_flags = 0;
-- 
2.45.2

