Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CnkBTFFFWqLUAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 09:01:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D065D16E3
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 09:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9777010E473;
	Tue, 26 May 2026 07:01:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UghpujJr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9770D10E473;
 Tue, 26 May 2026 07:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779778861; x=1811314861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qIu255ztOF0U2HKsmquhP57BPTvL3Rk4dep6SsJovAY=;
 b=UghpujJrQgt05ZtsTOTxAIOTH9n4cpOsKAb19dH788/ImLRqWOCgRMMn
 CBNLKQNTaihJT4StOqQZhFva5TD/73eGYi3sCgzRDi2/Wu+BxfutQL3Cv
 h0SgMwN0zM+c0KMlQ6RM3kw28e0c7vbWP/rn7YMOkZfQ4AH39mzrrPCuS
 2tynxVHFOOIWGojE0XjRnRPY8kIdxijSCyEIYrsg/Vs/+mcd11fchkVl2
 kuoFRrXLsmR4Pf3p8L33ON0NBmwpLejVXCcy6RGsEsMATp/UYJp8PlZus
 FN9I0O5DjJKSJk7MA46WpaYfBjMArAA648LEklfY751QkKZgIzxXlk5/R Q==;
X-CSE-ConnectionGUID: BLNE/P9JS76snbSXdtHSMg==
X-CSE-MsgGUID: RS4/tmMeShWbmliwBwfcMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="68110277"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="68110277"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 00:01:00 -0700
X-CSE-ConnectionGUID: rA4mVGykSs+zjY0eaH9Gcg==
X-CSE-MsgGUID: q9AGL+kZQ96RQc35x71GJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="241685710"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 00:00:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 10/11] drm/i915/dp: Enable AS SDP whenever VRR is possible or
 PR !async
Date: Tue, 26 May 2026 12:13:09 +0530
Message-ID: <20260526064309.585054-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260525052235.560741-11-ankit.k.nautiyal@intel.com>
References: <20260525052235.560741-11-ankit.k.nautiyal@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 70D065D16E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently AS SDP is only configured when VRR is enabled.
With optimized guardband, we also need to account for wakeup time and other
relevant details that depend on the AS SDP position whenever AS SDP is
enabled. If a feature enabling AS SDP gets turned on later (after modeset),
the guardband might not be sufficient and may need to increase, triggering
a full modeset.

Additionally, for Panel Replay with Aux-less ALPM where the sink does
not support asynchronous video timing in PR active, the source must
keep transmitting Adaptive-Sync SDPs while PR is active.

So, always send AS SDP whenever there is a possibility to use it for VRR
OR for Panel Replay for synchronization.

v2: Check if AS SDP can be used for synchronization for VRR or PR. (Ville)
v3: Use intel_psr_needs_alpm_aux_less() instead of
    intel_alpm_is_alpm_aux_less() to avoid including the LOBF case. (Ville)
    Modify the commit message and subject.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a3aa0dadf0e1..87d7857fbafa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3181,7 +3181,11 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
 	if (drm_dp_is_branch(intel_dp->dpcd))
 		return false;
 
-	return crtc_state->vrr.enable;
+	if (intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) &&
+	    !intel_psr_pr_async_video_timing_supported(intel_dp))
+		return true;
+
+	return intel_vrr_possible(crtc_state);
 }
 
 static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
-- 
2.45.2

