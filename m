Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJeyJHNWnGkAEQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:30:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2261E176EE9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE89110E3B3;
	Mon, 23 Feb 2026 13:30:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kkjC4ey3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3C810E3BD;
 Mon, 23 Feb 2026 13:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771853425; x=1803389425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VmqNqNaM5CB/B2Saxy0W/QAruTGRJJqEyVuB177B//s=;
 b=kkjC4ey3+x+rBBM5p4GBDhaqdFeLNAbGaPw4xbfqc3+klw5yOH8MoIAM
 nGq5lC7uxHcW5soyzLxggReArkM6S819FXbDE0DRzj2OL+6GG+kc9HeI+
 ZXWtJ0Bv+v9g25YChm6Gfr3ns4uB4CoseEHNP/d7YqmNpFO49yxm4M97P
 Wvw6fSCuHa0T65Hvy7x40DuGpxBJpWJ1RRyGT+bS/CuV9YJIFG5mhjL6a
 Y8acTX6ztCHvo/6bA6vynWAdQEJZKb5XaEzEG8TZOOWs/x6QVVQT7TiGe
 R7gcelakMHveQj4hquyTYVNg/hQOeFZOSupf0SzzJeGimVoy8K5EGylZb w==;
X-CSE-ConnectionGUID: MqmLswZiT3S6yCEFVe3bBw==
X-CSE-MsgGUID: pZoXDW+nTayildKUq652aA==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="72724212"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="72724212"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:30:24 -0800
X-CSE-ConnectionGUID: /PKhFLFvR0+pSvKznFiQxQ==
X-CSE-MsgGUID: ae4dxTGqQIitrGoDpVPtJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="215580520"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:30:22 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 12/14] include/drm/display/dp: Add DPCD registers for
 configuring Panel Replay + VRR
Date: Mon, 23 Feb 2026 18:44:24 +0530
Message-ID: <20260223131426.1638946-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260223131426.1638946-1-ankit.k.nautiyal@intel.com>
References: <20251111093007.3771409-3-ankit.k.nautiyal@intel.com>
 <20260223131426.1638946-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 2261E176EE9
X-Rspamd-Action: no action

Add additional DPCDs required to be configured to support VRR with Panel
Replay. These DPCDs are specifically required for configuring Adaptive Sync
SDP and are introduced in DP v2.1.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 include/drm/display/drm_dp.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index e4eebabab975..e63705415647 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -773,6 +773,15 @@
 # define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_VAL_SEL_MASK  (0xf << 3)
 # define DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE		 (1 << 7)
 
+#define PANEL_REPLAY_CONFIG3				0x11a	/* DP 2.1 */
+# define AS_SDP_SETUP_TIME_MASK				(3 << 6)
+# define AS_SDP_SETUP_TIME_T1				0
+# define AS_SDP_SETUP_TIME_DYNAMIC			1	/* uses Table 2-227 */
+# define AS_SDP_SETUP_TIME_T2				2
+
+#define AS_SDP_TRANSMISSION_TIMIING_CONFIG	0x11b	/* DP 2.1 */
+# define AS_SDP_ONE_LINE_EARLIER_ENABLE		BIT(7)
+
 #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
 #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
 #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2
-- 
2.45.2

