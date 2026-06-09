Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xwusEFABKGpm7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:04:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EABDA65FD4B
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:04:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=G+xepGip;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6555110E33F;
	Tue,  9 Jun 2026 12:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA83510E338;
 Tue,  9 Jun 2026 12:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006666; x=1812542666;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=s7CDY3PEX0eokVtOf+DxyU4cKvulCDlL22MLcMOniRs=;
 b=G+xepGipAFGh5CZcbDAk2p8bwTh0T13GhGjx6gdnMQfSBjMtcZzfODV9
 lYBbgxIJHV4U2sXYP/PrIa2dB6c93qSgMJ6q86raslyFO3XrBOISu9mvf
 ICxcKR6S4+YCCICKbXSw5K/GaVYHUbkAdRBuXJdRGhFiFi3S1EA2N3lEo
 fcpBrIqa59DESL0Mk6iyu0XaE2hdx8XuUTz9mKzQZFBaws9aqG8Jky70v
 MInEEHcnGBidCS4C+SECIFqFF0S2t1wjAAY4WoKhDw90jnbB56Km8wgt1
 Xd2h0uOK3RnOZuI6Robty1we9UgPEgrXtVrXs0H15jp0Smb77R+HmLBe1 A==;
X-CSE-ConnectionGUID: k/aEZurNR/aF6RsOq7mqsg==
X-CSE-MsgGUID: VgB0g/AfSTykfe57FXlx3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340451"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340451"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:04:26 -0700
X-CSE-ConnectionGUID: FfawVHtEQiyRRxIPhWYARw==
X-CSE-MsgGUID: hvi81IQNThaX80r1H7m9uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988490"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:04:26 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 35/36] drm/i915/display: Guard CMTG function calls
Date: Tue,  9 Jun 2026 17:32:49 +0530
Message-ID: <20260609120250.867750-36-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EABDA65FD4B

Check if DC3CO is allowed before calling CMTG
functions in intel_atomic_commit_tail() as CMTG is only used
by DC3CO DC state.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 ++++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 109efb36ef21..7ddd0ebb1bcb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7569,20 +7569,20 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* FIXME probably need to sequence this properly */
 	intel_program_dpkgc_latency(state);
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
-		bool modeset = intel_crtc_needs_modeset(new_crtc_state);
-		bool dc3co_to_dc6 = intel_display_power_get_and_reset_dc3co_to_dc6(display);
+	if (intel_display_power_dc3co_allowed(display)) {
 
-		/*
-		 * TODO: DC3co entry condition need to be checked before calling CMTG functions.
-		 */
-		if ((modeset || dc3co_to_dc6) &&
-		    new_crtc_state->hw.active && !crtc->cmtg.enabled) {
-			if (dc3co_to_dc6)
-				intel_cmtg_restore(new_crtc_state);
+		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
+			bool modeset = intel_crtc_needs_modeset(new_crtc_state);
+			bool dc3co_to_dc6 = intel_display_power_get_and_reset_dc3co_to_dc6(display);
+
+			if ((modeset || dc3co_to_dc6) &&
+			    new_crtc_state->hw.active && !crtc->cmtg.enabled) {
+				if (dc3co_to_dc6)
+					intel_cmtg_restore(new_crtc_state);
 
-			intel_cmtg_program(new_crtc_state);
-			intel_cmtg_enable_interrupt(new_crtc_state);
+				intel_cmtg_program(new_crtc_state);
+				intel_cmtg_enable_interrupt(new_crtc_state);
+			}
 		}
 	}
 
-- 
2.43.0

