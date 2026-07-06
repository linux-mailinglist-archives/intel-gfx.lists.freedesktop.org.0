Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f4rMNtnKS2poaQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 17:33:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EB0712A43
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 17:33:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="cMC6pHe/";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CC310E08B;
	Mon,  6 Jul 2026 15:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1640010E3AB;
 Mon,  6 Jul 2026 15:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783352022; x=1814888022;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hbc+Tkz8Y0VHrE6WBwTy+VADyTpTyF/6jNRKqQen+9g=;
 b=cMC6pHe/bk+ga5YP11AP2aQeG3pWm7qe1ksP908O3MOLMXM6nW49qlZJ
 vVIKaAUMbxvwaE1dxfJQbwh+dmjPhlenUZ7nq6Z6yvh0AQL4a5c28nZlp
 DK85iysCgSskIWRzVEaI6JW/ltuVL1wkI2qUIaojepT55yo1mpd3RersK
 QB+TIYUUZEtVPbCEDZEjptqCH+xlljPh2pWSnyjc+DgyoI+K+K6HLxl2G
 N3gB6tsgW9THqW3horysCmCkPu/R9QYqCFMlGLcwzbx8ZA9HDfhlnw1Ts
 Dd6oURy/RKzHP+nPl0GabdN9D1FPzN/NdP30DEmAFmvilVE8jEE1UgHxQ Q==;
X-CSE-ConnectionGUID: uVz3xvcsSRCBPlsW539EvQ==
X-CSE-MsgGUID: 5LxxxFrCTRWrY/zLDPv6vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="83968003"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="83968003"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 08:33:41 -0700
X-CSE-ConnectionGUID: S/LDC6xMQGujTGphoxw9aQ==
X-CSE-MsgGUID: z1wtRRv4RJSQGvVjzsvISg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="278094173"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 08:33:40 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com
Subject: [PATCH] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt on display
 version 30+
Date: Mon,  6 Jul 2026 21:01:22 +0530
Message-ID: <20260706153122.3282182-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 65EB0712A43

Enable PIPEDMC_ERROR alongside the existing PIPEDMC_GTT_FAULT and
PIPEDMC_ATS_FAULT interrupt bits for display version 30+.

kms_pm_dc IGT test on PTL does not trigger the spurious interrupts
that were previously a concern. Enable the interrupt so pipe DMC errors
are reported by intel_pipedmc_irq_handler().

Bspec: 70296
Suggested-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 11f5dbf91e68..a191eee240d9 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -505,14 +505,16 @@ static void pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
 
 static u32 pipedmc_interrupt_mask(struct intel_display *display)
 {
-	/*
-	 * TODO: Check if PIPEDMC_ERROR bit enabling causes errors
-	 * on PTL, enable it if validation passes
-	 */
 	if (DISPLAY_VER(display) >= 35)
 		return PIPEDMC_FLIPQ_PROG_DONE |
 			PIPEDMC_ERROR;
 
+	if (DISPLAY_VER(display) >= 30)
+		return PIPEDMC_FLIPQ_PROG_DONE |
+			PIPEDMC_GTT_FAULT |
+			PIPEDMC_ATS_FAULT |
+			PIPEDMC_ERROR;
+
 	/*
 	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
 	 * triggering it during the first DC state transition. Figure
-- 
2.43.0

