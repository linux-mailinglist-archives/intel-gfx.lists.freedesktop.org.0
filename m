Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGCTFaUmzmnElAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 10:19:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E429D385D29
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 10:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5029410F0DA;
	Thu,  2 Apr 2026 08:19:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kC0p2Zl3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050E410F0E0;
 Thu,  2 Apr 2026 08:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775117986; x=1806653986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H7DlQN+6/6GiSYKisGkd+YGCWmiNJ16tVBkyUHdUR7M=;
 b=kC0p2Zl35xW/YeMQjKJFc0ffAUDCHmH/MGzIakjMWkyVtlL7h9u/Hug8
 YTqQktTDLaWu4PMeUnAkFhcfjg8iiExxxCsPwkuT8UGZudoZwI+fWko63
 ohTW6Q9vVtwVQbEd/XsONz66hBtknna8SWEnwc9fXESV3RVkLYgQXPwlC
 5qLzkqoYalE/MeY/2zaVIro+y7eRyfrUQJXvj0lFRqNm2wR9q3eBeJT/4
 Yq3hESlwrPhMUzFxmWMzzNu2gUbnVfWnYLystwYlCqP6id3HydrK8ZeJc
 t8Ml8Klbpjt4YOqyLAdroDCe2UCZJoeNbB0v4keabDbt+/09EBkRskwn5 A==;
X-CSE-ConnectionGUID: E5ZWTnb4SWiDALcQdlqmCw==
X-CSE-MsgGUID: uZXErJkZQye1yMv+cKpTHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="80060418"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="80060418"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 01:19:46 -0700
X-CSE-ConnectionGUID: VOOu0XH+Sj6EZOEyLEix0Q==
X-CSE-MsgGUID: ugDmmoOZTwi4gOwxbmbMEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="226776111"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 01:19:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 04/23] drm/dp: Add DPCD for configuring AS SDP for PR + VRR
Date: Thu,  2 Apr 2026 13:34:04 +0530
Message-ID: <20260402080425.548702-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E429D385D29
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

