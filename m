Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wl2xHvGnnmniWgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 08:42:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF32193A9D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 08:42:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED6F10E6CD;
	Wed, 25 Feb 2026 07:42:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YbKel7BX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E929B10E6C9;
 Wed, 25 Feb 2026 07:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772005356; x=1803541356;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ORCbiEoyiZ2JW4B6lY2IVRyIYrbvK39WkJTKu1pRs5U=;
 b=YbKel7BXhUrNZxGR5B+FNjkzU/56XwCsuql4L67nQrBdydy8NFUmw1iY
 nQZist3yQGMnJKLQWcjfsVve48h7xDqRwIps8IblaTQFU1mCMmjXcQE29
 X5IpuTnescMZz/7o3Fc4kkC4ASMUDU4T6xaJOj8fRoTyIgowjakph0DIU
 CPEAV1gfEEoocqVfLiVqfhu1in3ju/6IqZTyGNi4NiKy3GYAxnf6MmeNF
 3UvdEKfCP1JVCUJKl2tQoeBv+KDacp9FZdc+xyeKBwMpGlTrkIKcFuLQ9
 Xo0Zydf4+pTCvf32goLZR0GREtb2SQj9vffzP/10xP3RkwDO846KSgaSC Q==;
X-CSE-ConnectionGUID: tfjD9HLeRFGCiz085sRI8Q==
X-CSE-MsgGUID: anR2Hg27RdiPTOMK4KJp4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="90615843"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="90615843"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 23:42:36 -0800
X-CSE-ConnectionGUID: 23EBc5dlSP2rWxu6W0Szrw==
X-CSE-MsgGUID: mBLxiCjTSu6fVi3BGH1akg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216295502"
Received: from vpanait-mobl.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.244.5])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 23:42:35 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mark Pearson <mpearson-lenovo@squebb.ca>
Subject: [PATCH 2/2] drm/i915/psr: Fix for Panel Replay X granularity DPCD
 register handling
Date: Wed, 25 Feb 2026 09:42:21 +0200
Message-ID: <20260225074221.1744330-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260225074221.1744330-1-jouni.hogander@intel.com>
References: <20260225074221.1744330-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0CF32193A9D
X-Rspamd-Action: no action

DP specification is saying value 0xff 0xff in PANEL REPLAY SELECTIVE UPDATE
X GRANULARITY CAPABILITY registers (0xb2 and 0xb3) means full-line
granularity. Take this into account when handling Panel Replay X
granularity informed by the panel.

Fixes: 1cc854647450 ("drm/i915/psr: Use SU granularity information available in intel_connector")
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7284
Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5bea2eda744b..9296ca3a4ff4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1306,9 +1306,14 @@ static bool psr2_granularity_check(struct intel_crtc_state *crtc_state,
 	u16 sink_y_granularity = crtc_state->has_panel_replay ?
 		connector->dp.panel_replay_caps.su_y_granularity :
 		connector->dp.psr_caps.su_y_granularity;
-	u16 sink_w_granularity =  crtc_state->has_panel_replay ?
-		connector->dp.panel_replay_caps.su_w_granularity :
-		connector->dp.psr_caps.su_w_granularity;
+	u16 sink_w_granularity;
+
+	if (crtc_state->has_panel_replay)
+		sink_w_granularity = connector->dp.panel_replay_caps.su_w_granularity ==
+			DP_PANEL_REPLAY_FULL_LINE_GRANULARITY ?
+			crtc_hdisplay : connector->dp.panel_replay_caps.su_w_granularity;
+	else
+		sink_w_granularity = connector->dp.psr_caps.su_w_granularity;
 
 	/* PSR2 HW only send full lines so we only need to validate the width */
 	if (crtc_hdisplay % sink_w_granularity)
-- 
2.43.0

