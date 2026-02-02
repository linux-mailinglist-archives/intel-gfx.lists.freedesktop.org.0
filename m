Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOivGiiCgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D18CB40D
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77AD10E455;
	Mon,  2 Feb 2026 10:53:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ecJmGXOd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A2B10E45B;
 Mon,  2 Feb 2026 10:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770029605; x=1801565605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gqWVPd5DRpINfDh7uwV6GWsuP2tGGdCCicL+Hm0qxTM=;
 b=ecJmGXOdaa47aaem1MwwO05RnmmlJpzi4fRmPRKPTzcJDocU3iSFU3dq
 hArQDxyxjJyf2O2nM+SEKQVW0NHOD7qo2uRcejyIh/ss0SPixDFMISDH1
 AjaG9fUcmP6P0+OKfiJKteZgF0uV6aWCoakFNkkDTw1f0Neq8lqdZj6ve
 EP4pA79C0LCBBTcXKD1+a2QkCMhcWraGPqoWU7h6TZR4Psj4A8Gui1C+K
 azbGvLRuiY6x84E3rGOfJIZmsgU+B5Pgln4GW4IpsChweE4GhEN1zV8/E
 rpxb4VjMxhW8+mo0Xfq8rH8fTbkL9c0xWlD2kAZZfBKWSLnjGWl1s6m+7 w==;
X-CSE-ConnectionGUID: C/672t5DQKSKKjjRzjh3uw==
X-CSE-MsgGUID: lAOsdgQzR4CMpAvdfwlEZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70385016"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70385016"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:25 -0800
X-CSE-ConnectionGUID: ZdSlz+sIQJqCjSfjdRgtog==
X-CSE-MsgGUID: fAzQyI5qQjuhSkhPAdh/sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="232419806"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:24 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 06/17] drm/i915/dp_mst: Move the check for dotclock at the end
Date: Mon,  2 Feb 2026 16:07:20 +0530
Message-ID: <20260202103731.357416-7-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 41D18CB40D
X-Rspamd-Action: no action

Refactor the mode_valid to have all joiner dependent stuff together and
place the check for dotclock limit at the very end.

This will help in the following refactor to iterate over the joiner
candidates and find the best joiner candidate that satisfy all checks
and limits.

v2: Update status to MODE_CLOCK_HIGH if max_dotclock check fails. (Imre)
v3: Drop redundant MODE_OK assignment and return. (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 24f8e60df9ac..ec6882af0631 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1470,20 +1470,19 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	 *   corresponding link capabilities of the sink) in case the
 	 *   stream is uncompressed for it by the last branch device.
 	 */
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     mode->hdisplay, target_clock);
-	max_dotclk *= num_joined_pipes;
-
 	ret = drm_modeset_lock(&mgr->base.lock, ctx);
 	if (ret)
 		return ret;
 
-	if (mode_rate > max_rate || mode->clock > max_dotclk ||
+	if (mode_rate > max_rate ||
 	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
 
+	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
+						     mode->hdisplay, target_clock);
+
 	if (intel_dp_has_dsc(connector) && drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
 		/*
 		 * TBD pass the connector BPC,
@@ -1513,6 +1512,15 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	}
 
 	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
+
+	if (*status != MODE_OK)
+		return 0;
+
+	max_dotclk *= num_joined_pipes;
+
+	if (mode->clock > max_dotclk)
+		*status = MODE_CLOCK_HIGH;
+
 	return 0;
 }
 
-- 
2.45.2

