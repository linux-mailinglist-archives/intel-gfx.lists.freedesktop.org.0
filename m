Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEC6LaA862mWKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:49:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D01C45C799
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E94210F499;
	Fri, 24 Apr 2026 09:49:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DzRLMAOg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACBC610F49A;
 Fri, 24 Apr 2026 09:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777024157; x=1808560157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H7DlQN+6/6GiSYKisGkd+YGCWmiNJ16tVBkyUHdUR7M=;
 b=DzRLMAOg+amhJdcsm8qY7aOcxBhBnu2ORKy+PRaKgny2lzZRNBgoKh4W
 W+E+BcrhFV9HpJHlGM0mC2KwYohAFNUjDP0AzUVkjpZIxMF9s0xjkfbdA
 RAj7WOO/M0UtyJ4OlbCqctGuKB7bOaUsHf7TcLV5bgEg+qn3PQSkebSkl
 HRDxEmDTlSKZyDjtEBXVPgaSnv5BFpyeIer+Dzw6Afw/KZwzK/xnC4E1J
 cKdbJfEHGfU/Vr9jJ6+hHhEYHOOAQpmBa7A9Yh1otE4sKlOE0doVI1kTZ
 gEAsoTLFiDtS5dENpLE8W7qgK2xTfd9hKjJPLP/uyWRftXQXwHl6VwdBS w==;
X-CSE-ConnectionGUID: ObjGZdy1TgeAC2Yj0++S+Q==
X-CSE-MsgGUID: PU6bylZOTE6TERxuntOJ/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="88612855"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="88612855"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:49:17 -0700
X-CSE-ConnectionGUID: cWRVP3q2QkqD2AMajT1zCQ==
X-CSE-MsgGUID: 78rvsCfNSqezkYR8wV1ztA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228575684"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:49:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [RESEND PATCH 4/7] drm/dp: Add DPCD for configuring AS SDP for PR +
 VRR
Date: Fri, 24 Apr 2026 15:04:21 +0530
Message-ID: <20260424093424.3060805-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260424093424.3060805-1-ankit.k.nautiyal@intel.com>
References: <20260424093424.3060805-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 8D01C45C799
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]

Add additional DPCDs required to be configured to support VRR with Panel
Replay. These DPCDs are specifically required for configuring Adaptive Sync
SDP and are introduced in DP v2.1.

v2:
 - Correct the shift for the bits. (Ville)
 - Add DP_PR_ prefix for the PR-related fields.
v3:
 - Use macro values in their shifted form to match the convention. (Ville)
v4:
 - Add macro for the mask. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 include/drm/display/drm_dp.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 8d172863eba3..829e4d98d61c 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -718,6 +718,12 @@
 #define DP_EXTENDED_DPRX_SLEEP_WAKE_TIMEOUT_GRANT	    0x119   /* 1.4a */
 # define DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_GRANTED	    (1 << 0)
 
+#define PANEL_REPLAY_CONFIG3			0x11a /* DP 2.1 */
+# define DP_PR_AS_SDP_SETUP_TIME_MASK		(3 << 6)
+# define DP_PR_AS_SDP_SETUP_TIME_T1		(0 << 6)
+# define DP_PR_AS_SDP_SETUP_TIME_DYNAMIC	(1 << 6) /* DP 2.1 Table 2-227 */
+# define DP_PR_AS_SDP_SETUP_TIME_T2		(2 << 6)
+
 #define DP_FEC_CONFIGURATION		    0x120    /* 1.4 */
 # define DP_FEC_READY			    (1 << 0)
 # define DP_FEC_ERR_COUNT_SEL_MASK	    (7 << 1)
-- 
2.45.2

