Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODKYEQN8qWkg8gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 13:50:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E884D212172
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 13:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E22A10EB93;
	Thu,  5 Mar 2026 12:50:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c0+e6wou";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC79B10EB92;
 Thu,  5 Mar 2026 12:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772715008; x=1804251008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C0xMftt6J5UyyDkeDGCTlSCl4RAxiSDM0aT6J/6m4ec=;
 b=c0+e6wou4dljhOuR9w9IoLAmTOCqgN+GtXxWtZj85mXTicBClFbu7ALV
 gGgkqg1Z5ZeGkoq/pH6biaqgHvFw2txFvUocC+ZnI9WMyHSKP02OevX2z
 cNYphnpAZ9/AX2TbLMS4Qgdbb7oe+AqEVUOY9UZQlRawgJbBd/SElskbs
 GViYHWHgecTR2WXeyMSZYwOWQLk031gCfB7E5WELJx+GABCrstHDjQXNe
 Y752L3/oO8IDHg4uyGH5ViLjV3pRswQ5evNzOUtGWPHOYHYiwf0zF0b06
 hHzlW773iXWLv32SdFpjrAWaPmFXAQghi1izGw6nN/AXZLfsKrVXqWSb9 A==;
X-CSE-ConnectionGUID: sGMeacvFS8mG+bJ5TfVjNQ==
X-CSE-MsgGUID: Xf2SxOesTiG1DQFy6JSNtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73706867"
X-IronPort-AV: E=Sophos;i="6.23,103,1770624000"; d="scan'208";a="73706867"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 04:50:07 -0800
X-CSE-ConnectionGUID: 6UtncMMqQLuri4dpMdU+MA==
X-CSE-MsgGUID: qpoRz3ytQIi7PkfthFmlXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,103,1770624000"; d="scan'208";a="215483452"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa006.fm.intel.com with ESMTP; 05 Mar 2026 04:50:06 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v6 2/2] drm/i915/display: Disable Panel Replay for
 DP-tunneling without optimization
Date: Thu,  5 Mar 2026 17:50:11 +0530
Message-Id: <20260305122011.3297262-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260305122011.3297262-1-animesh.manna@intel.com>
References: <20260305122011.3297262-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Queue-Id: E884D212172
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
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
X-Rspamd-Action: no action

As per DP specification,
    The DP Source device may optionally enable PR optimization
    with DP tunneling. The device shall query the Tunneling Bridge’s
    PR tunneling optimization capability by way of the
    Panel_Replay_Tunneling_Optimization_Support bit in the
    DP_TUNNELING_CAPABILITIES register (DPCD E000Dh[6]), and then enable PR
    only when the Tunneling Bridge is capable.

Therefore, do not enable Panel Replay for DP tunneling when optimization
support is not available.

Suggested-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 27ba96ede8e2..a7818a556076 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1802,6 +1802,13 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
 	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(connector);
 	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(connector);
 
+	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp) &&
+	    !connector->dp.panel_replay_caps.optimization_support) {
+		drm_dbg_kms(display->drm,
+			    "Panel Replay is disabled as DP tunelling enabled without optimization\n");
+		return false;
+	}
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
-- 
2.29.0

