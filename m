Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIZLMNHTCWpYrgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 17 May 2026 16:42:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAC8561B8D
	for <lists+intel-gfx@lfdr.de>; Sun, 17 May 2026 16:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B17D10E0B5;
	Sun, 17 May 2026 14:42:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCZNFFSy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE3E10E2F8;
 Sun, 17 May 2026 14:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779028941; x=1810564941;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fOAv2qln8PL+Qsw/3usKiEERQf+3leV786w91t/aQ+U=;
 b=UCZNFFSyxeIjk5RagscGHzxXpkMQgzdCHeQYymo173jUu/bGBFEUSJ3V
 NI2X9Di5WJveOTxARwfPyCPbJ/MoeKR40YD/VJMWpZL7f8EvLeEOpm3cb
 jZEDK8lYH+ueAyLvZc+A2M2rKDrIc5eFJPVl/n4odgmkLa3oVucEOUCPj
 VQcjYd58ye930fIoKVPJOP+Yr7hk5pDtluWuTQ79f+j2oKwO5XxPZZ0UD
 4cXBMu3Zf+f/qK60Vu68UN9qKNehvbX22ud9w+V78VtodMs3gQFtjX7c1
 oVv9FgsiSrUl9KF23xfG2tQx3Y2iEm1t53JcQ6+BFcC3WFA/XxWNOqLHw w==;
X-CSE-ConnectionGUID: WzVLqCR2ScyjTtaKhan5MQ==
X-CSE-MsgGUID: b8wggB/FRgSePssYjvq6jA==
X-IronPort-AV: E=McAfee;i="6800,10657,11788"; a="102575521"
X-IronPort-AV: E=Sophos;i="6.23,240,1770624000"; d="scan'208";a="102575521"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 07:42:21 -0700
X-CSE-ConnectionGUID: 0nvb1auJQeegR77+7Smwxw==
X-CSE-MsgGUID: bVaG9P2mTGmlIP8AGxCdBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,240,1770624000"; d="scan'208";a="236552056"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 07:42:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL computation
Date: Sun, 17 May 2026 19:57:52 +0530
Message-ID: <20260517142753.2813959-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260517142753.2813959-1-ankit.k.nautiyal@intel.com>
References: <20260517142753.2813959-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: EAAC8561B8D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

'needs_sel_update' is common for both display version branches, so check it
once and keep the version specific checks as separate early returns.

v2: Split into separate early returns. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 546ce9846865..f6cd88902be9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1477,15 +1477,18 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
 	 * SRD_STATUS is used by PSR1 and Panel Replay DP on LunarLake.
 	 */
 
-	if (DISPLAY_VER(display) >= 30 && (needs_panel_replay ||
-					   needs_sel_update))
+	if (needs_sel_update)
 		return 0;
-	else if (DISPLAY_VER(display) < 30 && (needs_sel_update ||
-					       intel_crtc_has_type(crtc_state,
-								   INTEL_OUTPUT_EDP)))
+
+	if (DISPLAY_VER(display) < 30 &&
+	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 		return 0;
-	else
-		return 1;
+
+	if (DISPLAY_VER(display) >= 30 &&
+	    needs_panel_replay)
+		return 0;
+
+	return 1;
 }
 
 static bool _wake_lines_fit_into_vblank(const struct intel_crtc_state *crtc_state,
-- 
2.45.2

