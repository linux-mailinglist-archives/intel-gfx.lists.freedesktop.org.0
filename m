Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EVbOSgfd2ntcQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 09:00:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEF985321
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 09:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F29B10E3A3;
	Mon, 26 Jan 2026 08:00:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XGV/2eGo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDFB410E3A1;
 Mon, 26 Jan 2026 08:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769414438; x=1800950438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T0cegkQSvKXKmwUJxjYrE3F5aKfixJ2pyETpsGAjxaw=;
 b=XGV/2eGoukqf6yPr2267CyqYJe2tUKBpRC1irUVelwCG+o87+5He6JTj
 JR5rwoKc4duxOd8J4WY2+wXLHfWCxqLseStHg01DJQCfLMF5ySoVyGwkX
 7HfyiQZ7jfTb/IWYOO/UpmIP1byQBN6N1yeiHtJGoMiOFg9VUcSdNp9+l
 LFwusfmBDAg9tDT0rINvJqfF0jwhaDY6o7lm8Qj/34Vn+qioUmpAq40MT
 LqsF2WCWEdNm739T4WgDqRTNYhqa5Vp2j3QsDdzkz1+9ZFrdONWws3p3z
 WWNtawBK4EPOHHhrcntLrwOamEkKooofWsd5u3Pe0IYHayQYQ+4g1uFly A==;
X-CSE-ConnectionGUID: TwOzws6JSFK//zkimlIBzA==
X-CSE-MsgGUID: L83E/muASHC7cLGT7mpRVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11682"; a="70682844"
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; d="scan'208";a="70682844"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 00:00:38 -0800
X-CSE-ConnectionGUID: 6zpkvzKCSaiNAgGTTNuLyA==
X-CSE-MsgGUID: 7dy2V1P3SFOlG+jW29IVxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; d="scan'208";a="207867661"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.56])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 00:00:36 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v10 03/10] drm/i915/vrr: Add helper for parsing value to be
 written into TRANS_PUSH
Date: Mon, 26 Jan 2026 09:59:52 +0200
Message-ID: <20260126075959.925413-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126075959.925413-1-jouni.hogander@intel.com>
References: <20260126075959.925413-1-jouni.hogander@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: BDEF985321
X-Rspamd-Action: no action

On Lunarlake and onwards it is possible to generate PSR "frame change"
event using TRANS_PUSH mechanism. As a preparation add new helper to parse
value to be written into TRANS_PUSH register. Setting
LNL_TRANS_PUSH_PSR_PR_EN is done in upcoming patch.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index db74744ddb31..f26989c74268 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -676,6 +676,22 @@ intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
 	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
 }
 
+static u32 trans_vrr_push(const struct intel_crtc_state *crtc_state,
+			  bool send_push)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	u32 trans_vrr_push = 0;
+
+	if (intel_vrr_always_use_vrr_tg(display) ||
+	    crtc_state->vrr.enable)
+		trans_vrr_push |= TRANS_PUSH_EN;
+
+	if (send_push)
+		trans_vrr_push |= TRANS_PUSH_SEND;
+
+	return trans_vrr_push;
+}
+
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state)
 {
@@ -690,8 +706,7 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 
 	intel_de_write_dsb(display, dsb,
 			   TRANS_PUSH(display, cpu_transcoder),
-			   TRANS_PUSH_EN | TRANS_PUSH_SEND);
-
+			   trans_vrr_push(crtc_state, true));
 	if (dsb)
 		intel_dsb_nonpost_end(dsb);
 }
@@ -876,7 +891,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 vrr_ctl;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
+	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+		       trans_vrr_push(crtc_state, false));
 
 	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
 
-- 
2.43.0

