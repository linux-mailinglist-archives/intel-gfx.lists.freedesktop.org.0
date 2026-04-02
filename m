Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOAPENImzmnIlQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 10:20:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E416C385E58
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 10:20:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39FD210F188;
	Thu,  2 Apr 2026 08:20:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vj3LTHGI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 878A110F186;
 Thu,  2 Apr 2026 08:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775118030; x=1806654030;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KndFrXheJBJUsefQ7KOUAYZpAbImUzJ1Kz5oHF0sMYU=;
 b=Vj3LTHGIo/50nQkgWgTSBNxhE13iEATjsSbDnol5akSCDqLsyqpZgv3j
 8sx3DecwP6SX2Pax6B6AhST5igRDYcRGPsxDHUA3tENA2k9zvP+Hx4UHw
 r6P4Kit2Jloc6zN+h2iqDPDEzn5vZ29fjXohXrlhTyxaEJvStRDWdREyI
 3RxKR/kjupppercI62xjb6CN/hhqxkNwMZ+upp9uKyTLfSUK3c3HbQ9r9
 +mLGfvLFynm2BTU8IiLudaQ/sx9BxIcqTc7vl1vmEtV1Z3k+rkEPfU74g
 mjWG9Ey7JsXKP1s+pQA7Xg++UAv3DqWAT8yaMuJ181Pcq1ZDJVNWq+GAC g==;
X-CSE-ConnectionGUID: gWNPmEW4T1aTjeQqPcPZ1A==
X-CSE-MsgGUID: XC0as4QgR26XUG7BqHUC1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="80060624"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="80060624"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 01:20:30 -0700
X-CSE-ConnectionGUID: 61sy9chFTwudFM9Ku1WTcQ==
X-CSE-MsgGUID: sWFlQYGYRhusuBFgbOwUAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="226776359"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 01:20:28 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 22/23] drm/i915/dp: Compute and include coasting vtotal for AS
 SDP
Date: Thu,  2 Apr 2026 13:34:22 +0530
Message-ID: <20260402080425.548702-23-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: E416C385E58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DP v2.1 allows the source to temporarily suspend Adaptive-Sync SDP
transmission while Panel Replay is active when the sink supports
asynchronous video timing.

In such cases, the sink relies on the last transmitted AS SDP timing
information to maintain the refresh rate. To support this behavior,
compute and populate the coasting vtotal field in the AS SDP payload.

Include coasting vtotal in AS SDP packing, unpacking, and comparison,
and set it during late AS SDP configuration for PR with Aux-less ALPM
when asynchronous video timing is supported.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp.c      | 19 +++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a0e7ef2574b2..747dd3112d66 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4914,7 +4914,8 @@ intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
 		a->duration_incr_ms == b->duration_incr_ms &&
 		a->duration_decr_ms == b->duration_decr_ms &&
 		a->target_rr_divider == b->target_rr_divider &&
-		a->mode == b->mode;
+		a->mode == b->mode &&
+		a->coasting_vtotal == b->coasting_vtotal;
 }
 
 static bool
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 902c09e0780f..de6f88a5400d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5123,6 +5123,9 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
 	if (as_sdp->target_rr_divider)
 		sdp->db[4] |= 0x20;
 
+	sdp->db[7] = as_sdp->coasting_vtotal & 0xFF;
+	sdp->db[8] = (as_sdp->coasting_vtotal >> 8) & 0xFF;
+
 	return length;
 }
 
@@ -5306,6 +5309,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
 	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
 	as_sdp->target_rr = ((sdp->db[4] & 0x3) << 8) | sdp->db[3];
 	as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
+	as_sdp->coasting_vtotal = (sdp->db[8] << 8) | sdp->db[7];
 
 	return 0;
 }
@@ -7383,6 +7387,21 @@ void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
 	} else {
 		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
 	}
+
+	/*
+	 * For Panel Replay with Async Video Timing support, the source can
+	 * disable sending the AS SDP during PR Active state. In that case,
+	 * the sink needs the coasting vtotal value to maintain the refresh
+	 * rate.
+	 *
+	 * #TODO:
+	 * If we ever advertise support for coasting at other refresh targets,
+	 * this logic could be revisited. For now, use the minimum refresh rate
+	 * as the only safe coasting value.
+	 */
+	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state) &&
+	    intel_psr_pr_async_video_timing_supported(intel_dp))
+		as_sdp->coasting_vtotal = crtc_state->vrr.vmax;
 }
 
 static
-- 
2.45.2

