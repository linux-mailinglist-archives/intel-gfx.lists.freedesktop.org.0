Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAm1I8cY1mk+BAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:58:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 656E63B9822
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E301910E5F7;
	Wed,  8 Apr 2026 08:58:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ncfax/ek";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D51AD10E5F3;
 Wed,  8 Apr 2026 08:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775638724; x=1807174724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LKULasiWM+te/g2s6is3KR0HuAmRNRQbLvK2juZr7/k=;
 b=ncfax/ekHULgi3TDNP2Jws0q/T0Jxi+pDc6Sa3qhhNbLV8OvdhOQrQLg
 sOjWigLWR3MqR1yX1lpFRNFai5MZLmaHzaNq+M/dOwhfpL8EmfSt74VHP
 m2EQmPBy7q988iOY7GcQcrzXc6SG73rZ9JiCm2NItVTNzGD5FSTuajdkI
 /cVvZWUBhrKmVZ4glBMRkhdT+eGL4pK/7sC5d70DvaY+OyiV0JdvgNkRC
 n7A4x6B5a9d9JdY/N6O8YZXqioQ8IkdXf6tJrtkbKa+UE0vjGGtVaXOmb
 Q4k+feTAkR3lGd662h93Rq3oN+Us9odfGrKCmreVAVRoCJs52HT+u70nb g==;
X-CSE-ConnectionGUID: Qt8Ken6MS4qTJKuaLGmm5A==
X-CSE-MsgGUID: D+tJFqxZTFuxMd4HJNbKwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76516733"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76516733"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:58:44 -0700
X-CSE-ConnectionGUID: mCxsqpLtTGCGB2FuIuvQJg==
X-CSE-MsgGUID: BbuXmOaVTPW2BGWt0OJ+1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="227572667"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:58:41 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 26/26] drm/i915/dp: Always enable AS SDP if supported by
 source + sink
Date: Wed,  8 Apr 2026 14:12:38 +0530
Message-ID: <20260408084239.1295325-27-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260408084239.1295325-1-ankit.k.nautiyal@intel.com>
References: <20260408084239.1295325-1-ankit.k.nautiyal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 656E63B9822
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently AS SDP is only configured when VRR is enabled. However, other
use cases like CMRR, Panel Replay, etc. also send information to the sink
via AS SDPs.

With optimized guardband, we also need to account for wakeup time and other
relevant details that depend on the AS SDP position whenever AS SDP is
enabled. If a feature enabling AS SDP gets turned on later (after modeset),
the guardband might not be sufficient and may need to increase, triggering
a full modeset.

To avoid this, always send AS SDP whenever:
 - the source and sink both support it, AND,
 - there is a possibility to use it for VRR and Panel Replay for
   synchronization.

v2: Check if AS SDP can be used for synchronization for VRR or PR. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6e6d46cf62de..23daf90b701e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3136,7 +3136,11 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
 	if (drm_dp_is_branch(intel_dp->dpcd))
 		return false;
 
-	return crtc_state->vrr.enable;
+	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state) &&
+	    !intel_psr_pr_async_video_timing_supported(intel_dp))
+		return true;
+
+	return intel_vrr_possible(crtc_state);
 }
 
 static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
-- 
2.45.2

