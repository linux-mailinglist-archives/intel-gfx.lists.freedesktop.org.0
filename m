Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEHAMIFPsmmLLgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 06:30:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F54C26D643
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 06:30:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035C910E965;
	Thu, 12 Mar 2026 05:30:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bgIdCoer";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A04D910E965;
 Thu, 12 Mar 2026 05:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773293440; x=1804829440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kQ9l7DHaob2QuCc9fdJa/m5lIzv4Pz1SHUXWI4IK9rw=;
 b=bgIdCoerL9ugpOKkD1BUmp64vS9TvzD6Jj0ueZp6U86IalPn+8Tk4NEg
 HcpZIgy7PiIwBJMZkBBTyC/KHigCT13V/xts+1mCJsw/A0vfkTr4PbJ23
 BjGMoBfAKH0InVgDmZRZrgxXC9gtuIsJDMJ6QQSjg8Lrbg6Z+gc9imdmm
 paCxdHMrDJJJ6pPagpBDMzGHecw93RsDWNWmGqhxMeIes3WbFEN+jxvYU
 bzIQplRj6noxg7CDFc+SmD0EZ0Q7FDOiRzt9/vP0m2qyEtKRjc6SEblU1
 EtIDL2Wsg5HTSeCjCl9E+V2mQs2L5z5L7o1E7y76G1xoOG/xfvbAhp8bY Q==;
X-CSE-ConnectionGUID: 1jNjbjhKQpGi/9sRV1OlpQ==
X-CSE-MsgGUID: 4pgwcDWWSvWAxFBGC0QKJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74253905"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74253905"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 22:30:40 -0700
X-CSE-ConnectionGUID: +afvBEy/S4KLdhfTf8VA5Q==
X-CSE-MsgGUID: Z2pKqjZlQeWpT9UWV9ld3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="258611074"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 11 Mar 2026 22:30:37 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: jouni.hogander@intel.com, imre.deak@intel.com, jani.nikula@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 3/3] drm/i915/display: Disable Panel Replay for
 DP-tunneling without optimization
Date: Thu, 12 Mar 2026 10:30:35 +0530
Message-Id: <20260312050035.3493690-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260312050035.3493690-1-animesh.manna@intel.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7F54C26D643
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 632527ede29f..3ec407a801b1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1796,6 +1796,13 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
 	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(connector);
 	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(connector);
 
+	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp) &&
+	    !intel_dp_tunnel_pr_optimization_supported(intel_dp)) {
+		drm_dbg_kms(display->drm,
+			    "Panel Replay is disabled as DP tunelling enabled without optimization\n");
+		return false;
+	}
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
-- 
2.29.0

