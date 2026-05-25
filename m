Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPBbFurgE2qzGwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 07:40:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C745C5FE5
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 07:40:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81FA510E3D3;
	Mon, 25 May 2026 05:40:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jg7+s+Cd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD9510E3ED;
 Mon, 25 May 2026 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779687653; x=1811223653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7kc6lZpqlDNm0ThpZvJJFcK5AnU4TXsJKEv4B6M5Kso=;
 b=Jg7+s+Cdon4L5SM6r4CWu5P+Sbsbe+QqlEykwY1k5ZHvGOdYjGgJpvnv
 qDuBHRKd7LPYI4wb4FFLKAasBH7BnvkE6UPQjKx1qm8P4J+O6B6HM06X9
 jwaWMfT4skNjJ+fBHy8TcPQxMa+0JBAq7tIOrPiu4YewkatYoetE0WzIA
 UpIbU2wiTh/ziYN+4doz2XPtZOyZgXn3Ihw2LdPMpffrDAQkBnGoVYwnQ
 d3EsrmIzxrXl7E93fSVIbbN/SbDzFKO1acOKCRFNFCKH/jhIixQCMgAud
 IMF8JHz26yEBhGwLHZLNUfr8HpUpJ1oXnIU0qpG0DYTMmfZy0dQWkYdEE w==;
X-CSE-ConnectionGUID: M7kNAkOFTz6l9TW+KGFaUA==
X-CSE-MsgGUID: cnv3JLBrQ5yL74i8oOPyfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="68030811"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="68030811"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2026 22:40:52 -0700
X-CSE-ConnectionGUID: kslB7ldUS1+EWd2jceKNXQ==
X-CSE-MsgGUID: QNHdXmdBRvePm/8H8QxRzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="237306577"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2026 22:40:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 10/11] drm/i915/dp: Enable AS SDP whenever VRR is possible
Date: Mon, 25 May 2026 10:52:34 +0530
Message-ID: <20260525052235.560741-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260525052235.560741-1-ankit.k.nautiyal@intel.com>
References: <20260525052235.560741-1-ankit.k.nautiyal@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 09C745C5FE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently AS SDP is only configured when VRR is enabled. With the optimized
guardband, the guardband must already account for AS SDP wakeup time
whenever AS SDP can be sent, otherwise turning VRR on after the initial
modeset could require a larger guardband and trigger a full modeset.

Switch the check in intel_dp_needs_as_sdp() from crtc_state->vrr.enable
to intel_vrr_possible(crtc_state), so AS SDP is enabled (and accounted
for in the guardband) on any configuration where VRR could be turned on,
not only when it currently is.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a3aa0dadf0e1..c01ce3403ad1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3181,7 +3181,7 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
 	if (drm_dp_is_branch(intel_dp->dpcd))
 		return false;
 
-	return crtc_state->vrr.enable;
+	return intel_vrr_possible(crtc_state);
 }
 
 static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
-- 
2.45.2

