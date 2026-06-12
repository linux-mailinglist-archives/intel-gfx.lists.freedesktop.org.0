Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ldaNNhiaK2rQAAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 07:33:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC149676C4F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 07:33:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IQGAeiOG;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CCAC10F243;
	Fri, 12 Jun 2026 05:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0874610E940;
 Fri, 12 Jun 2026 05:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781242388; x=1812778388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WrPtkqTJfVjp5YM4anPP4bq26ihUARd9Ujo98TuS8t0=;
 b=IQGAeiOGUZzTANp7F2uwmKj+Gb2LkdIA7ZMskYDjRMve3nGWhzJpkV2U
 PExcB8LcrGXqvZ87kJXH8LKmKCTmUjcxjx7Nc6VIGN5mra7Jkv/w6gtQY
 mgmGyqe+p4/674o6XFkmJJ5TKwJyjv/PBS4j0GWSx5mOuASCO6uG4n1BI
 tOIA3RgHz7kRigRqnuqAGcb+Y8llNWAGYZl/gpQ2GKV7VxxmknZsvIoTY
 V0OBBU0SJCsdlIZiqzpq6jYRQynmky4t6v94BlVuz+s+80NuN+Q7JCOxc
 FKiJfccKSSPqfhz+CzR0PGQ8KNNSYVJ12x2EvQ0iyIP78Zz8TbyMz/DHi w==;
X-CSE-ConnectionGUID: k0Rz/LOiSUeFKj4hIgXB1A==
X-CSE-MsgGUID: /gYGwea3RkuVzTxicpfQFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82075224"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="82075224"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 22:33:08 -0700
X-CSE-ConnectionGUID: 7Y4h1fshSAa+U0vipa1+KA==
X-CSE-MsgGUID: uh+VrFTcRB6MhVvyXMviPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="270762798"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.89])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 22:33:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/3] drm/i915/psr: Perform Panel Replay exit/activate on
 errors reported by sink
Date: Fri, 12 Jun 2026 08:32:49 +0300
Message-ID: <20260612053249.246878-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260612053249.246878-1-jouni.hogander@intel.com>
References: <20260612053249.246878-1-jouni.hogander@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC149676C4F

DP2.1 specification says:

"The DP Source device shall retransmit an active video image after
detecting any PR error status bits set in the PANEL REPLAY ERROR STATUS
register (DPCD 02020h) unless the DP Source device is already updating an
entire active video image."

Implement Panel Replay exit and then activation on errors. Exit is enabling
active video stream and activation is re-triggering PR entry and sink
capturing full frame into its remote frame buffer (RFB). Also remove
disabling Panel Replay and setting psr->sink_not_reliable for Panel Replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a848c57e4ce5d..f51539ed1e939 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3903,7 +3903,6 @@ static void psr_capability_changed_check(struct intel_dp *intel_dp)
 static void _panel_replay_short_pulse(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_psr *psr = &intel_dp->psr;
 	int ret;
 	u8 error_status;
 	const u8 errors = DP_PANEL_REPLAY_LINK_CRC_ERROR |
@@ -3915,11 +3914,6 @@ static void _panel_replay_short_pulse(struct intel_dp *intel_dp)
 	if (ret < 0)
 		return;
 
-	if (error_status & errors) {
-		intel_psr_disable_locked(intel_dp);
-		psr->sink_not_reliable = true;
-	}
-
 	if (error_status & DP_PANEL_REPLAY_RFB_STORAGE_ERROR)
 		drm_dbg_kms(display->drm,
 			    "Panel Replay RFB storage error\n");
@@ -3938,6 +3932,11 @@ static void _panel_replay_short_pulse(struct intel_dp *intel_dp)
 	/* clear status register */
 	drm_dp_dpcd_write_byte(&intel_dp->aux, DP_PANEL_REPLAY_ERROR_STATUS,
 			       error_status);
+
+	if (error_status & errors) {
+		intel_psr_exit(intel_dp);
+		queue_work(display->wq.unordered, &intel_dp->psr.work);
+	}
 }
 
 static void _psr_short_pulse(struct intel_dp *intel_dp)
-- 
2.43.0

