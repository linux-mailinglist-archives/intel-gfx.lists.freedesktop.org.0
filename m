Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FEsArEmDWo8twUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 05:12:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CEF587170
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 05:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A50210EED0;
	Wed, 20 May 2026 03:12:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YnuSxATv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3580410EED0
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2026 03:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779246764; x=1810782764;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t9Sd9/BI93WLl8j4Gkm0ydWiLzErT1Rj92ayeLfJJ4s=;
 b=YnuSxATvU9cHdV9shFGOpdPab1jO27vs0FN+MOuGqTI1fYzRlJ0drFw5
 R9z+CZslu8Kifok22D8LFEQ5YhNod9DdD7egqO52XIG2QzyfJxGC0A7rw
 jpJLFVzpHJPAOPFztIofmSHJN2WNTWuF0K7XTgNcl8M5j3ETCnVXFbIer
 Cnkchpx1Xa7xWHYs7TZwPrRwGW12MXGuMdMv8G6iyOsm2AtMYkJkLHo3K
 6Jrp9Ej4WG/BXaSalZtboegebf+MEYuurr7bOIAeowbjcpYNnysPaE1m1
 kfSqQpgpa2W6AOgElq29hcKarhZ/CqJNV5Az0hyKcAApl8CcEmpaT6yk0 Q==;
X-CSE-ConnectionGUID: icnDk9BJRYyu/QpNlHxOog==
X-CSE-MsgGUID: +LIvYiVVSe6unc+OuDKzpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="102813795"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="102813795"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 20:12:31 -0700
X-CSE-ConnectionGUID: nQ7Gd90jTlObqHwdTCZDOA==
X-CSE-MsgGUID: SuZggzJHQdOu+wuSrIj5kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="244966539"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa005.jf.intel.com with ESMTP; 19 May 2026 20:12:29 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/i915/vrr: DP2.0 panel can rely on AS SDP
Date: Wed, 20 May 2026 08:41:14 +0530
Message-Id: <20260520031114.792979-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 48CEF587170
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Adaptive-Sync SDP support in DPCD DPRX_FEATURE_ENUMERATION_LIST_CONT_1
(0x2214 bit 0), cam carry the variable-frame info and be used for
deciding vrr capability.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/work_items/8015
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1b09992ce9fd..49ac624215e1 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -66,7 +66,18 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 		if (drm_dp_is_branch(intel_dp->dpcd))
 			return false;
 
-		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
+		/*
+		 * DP Sink is capable of VRR video timings if either:
+		 *  - DPCD MSA_TIMING_PAR_IGNORED (DPCD 0x07 bit 6) is set,
+		 *    indicating the sink accepts variable VTotal updates without
+		 *    re-transmitted MSA timing (legacy Adaptive-Sync path), or
+		 *  - the sink advertises Adaptive-Sync SDP support in DPCD
+		 *    DPRX_FEATURE_ENUMERATION_LIST_CONT_1 (0x2214 bit 0), in which
+		 *    case the variable-frame info is carried by the AS-SDP packet
+		 *    (DP 2.0 path).
+		 */
+		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd) &&
+		    !intel_dp->as_sdp_supported)
 			return false;
 
 		break;
-- 
2.25.1

