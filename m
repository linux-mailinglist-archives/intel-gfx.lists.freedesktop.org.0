Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GpkHGtXsWmGtwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:52:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F212632C5
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:52:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A0710E8BE;
	Wed, 11 Mar 2026 11:52:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VgLX9tjy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2386010E8B7;
 Wed, 11 Mar 2026 11:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773229927; x=1804765927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uh9S+qK28ySPnhMx7pf+sj7X6j48NWIgbe9v9xxgj7w=;
 b=VgLX9tjyK9A5UJhmmiiCmUx7kfg6ZSshuRzHvNHePmtT+hwdStbhmT+o
 WDvduUsWEUSKOY0X+GAM0BwXHXxKTjN50jzlfECYeVSJnNC1I1usJfQvu
 otmVoaQSZBYNU0k2oqrBtfaTe4redWo0iv2Xar4UgE7cWDaFt5ZOtQJ3v
 VBb4vEDWJbp6bcH6JS6xEWN/LNmwektaVTVoyJSXV4gsFtc9+Qiosw8qf
 m6fyxPtSNibMUhw6boWVXw7RrNDEgvhqevP7soSP5sQNaDEvue347aK7H
 H/ksot2gklfv8YjyaI7IOYnp+QFJAzHezATPvWlDCTVDyxjPodjBotERc g==;
X-CSE-ConnectionGUID: 1bHygsbWQZKYTbNAw4YQTw==
X-CSE-MsgGUID: xmyUmupuTZ2eb5CgPg0dkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74205000"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74205000"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:52:07 -0700
X-CSE-ConnectionGUID: Bb1C3Xr7S0+pY1UU9PrPVw==
X-CSE-MsgGUID: 6TW4XX5uRKiRAoKaPIs+Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="224602399"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:52:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 14/19] drm/i915/psr: Program Panel Replay CONFIG3 using AS SDP
 transmission time
Date: Wed, 11 Mar 2026 17:06:06 +0530
Message-ID: <20260311113611.3393194-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 43F212632C5
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Panel Replay requires the AS SDP transmission time to be written into
PANEL_REPLAY_CONFIG3. This field was previously not programmed.

Use the AS SDP transmission-time helper to populate CONFIG3.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ee6e26abd05e..9add6e0d6f04 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -781,7 +781,8 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
 		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
 	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
-	u8 buf[2];
+	u8 panel_replay_config3 = DP_PR_AS_SDP_SETUP_TIME(intel_dp_as_sdp_transmission_time());
+	u8 buf[3];
 	int ret;
 
 	if (crtc_state->has_sel_update)
@@ -796,6 +797,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 
 	buf[0] = panel_replay_config;
 	buf[1] = panel_replay_config2;
+	buf[2] = panel_replay_config3;
 
 	ret = drm_dp_dpcd_write(&intel_dp->aux, PANEL_REPLAY_CONFIG, buf, sizeof(buf));
 
-- 
2.45.2

