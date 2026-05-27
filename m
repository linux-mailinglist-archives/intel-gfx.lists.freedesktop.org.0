Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMOOMh9zFmoAmgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 06:29:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE855DF2CF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 06:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD80910E746;
	Wed, 27 May 2026 04:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jD6WMfQc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92CD110E746;
 Wed, 27 May 2026 04:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779856155; x=1811392155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YRpsXumlZS9gzVALZapQ/vBbTbKIgUjeRH6FEdrYjBU=;
 b=jD6WMfQcvZgHkD+ImRrlWXl+yrVdPtJA9pp9gCD/d96TRpPBOJue6yGJ
 HL0HtqUBqvpuqbeMn6njJaFIODW6f6UWO85ioFl/B9DUoekT+/AsOySuV
 HStctUprHqJ7LNnDEAWaCZJb52d89b3ZVBJghXvs5eU/g52Ep6onxr37g
 Z8wU5jLR9uJqrQcHjScjD1tZFzyMsUs7+EoHCc/4bYMQqiyWrhxi6snYk
 K6Gr7GTH/96l8B3R7g3wEFPPWN66yvAu6drUwdVkfcEic5zaiVFGfyPmQ
 97UXrnBtOFbiMMN3ZSXts3DnUL7y2w67RSdBU70ZbBk9RNgVPBnH/Z4Ht g==;
X-CSE-ConnectionGUID: 2n7Ty/heQxyOpLXpGNowcQ==
X-CSE-MsgGUID: dfzFoEXLSM+v6CK98hxnOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="80405828"
X-IronPort-AV: E=Sophos;i="6.24,170,1774335600"; d="scan'208";a="80405828"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 21:29:09 -0700
X-CSE-ConnectionGUID: K19uY8OVRzO54tuAIpgCPQ==
X-CSE-MsgGUID: HWZdGe52QI6H8qQ1USzO+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,170,1774335600"; d="scan'208";a="272452444"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 21:29:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/12] drm/i915/dp: Enable AS SDP whenever VRR is possible or
 PR !async
Date: Wed, 27 May 2026 09:40:49 +0530
Message-ID: <20260527041050.601735-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260527041050.601735-1-ankit.k.nautiyal@intel.com>
References: <20260527041050.601735-1-ankit.k.nautiyal@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 6FE855DF2CF
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
index af52ba636f55..a84fd6bb4053 100644
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

