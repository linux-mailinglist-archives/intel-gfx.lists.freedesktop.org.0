Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 65H0A64TTmqVCgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 11:09:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7798572378F
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 11:09:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GEfKdAs+;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A29710F064;
	Wed,  8 Jul 2026 09:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5188D10F062;
 Wed,  8 Jul 2026 09:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783501738; x=1815037738;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tjZbhLCgV4m3uG1uBHWDhxJNBFtsgjxMJuN/0pRs4fw=;
 b=GEfKdAs+kK0u9iyvWih6lnNQ1HN6qcmTwj4Z/8nrwjpSd0N7G6FIM8ea
 N1C+nqrTodhJ6APcBE2Jb2+ifM/z5wkc/3tZ/1/FdCXo5YdqXPPxBVS+d
 q4JKt27De5XNLxtq3ENHTJ+YOWzIuV59WHMb8rB+fdhikSdO50MTPUCYD
 NFtNK5JffEF/NePaMhW9nMTxqe2Vps+fNL5IN1FxRjXuvvjfdQWSlnp7m
 yAS86LIi0FzWmf/0G7KrMDUvFALFzo07VgubZf11SSfZRdjc3lQ25tIpQ
 Vl0VMRDmBQVrxnqvqMw/J20ZGDFrLcDRFWfoJRoWjmLWQWLx23eZO3IDg A==;
X-CSE-ConnectionGUID: c+0/2gw8T/O2ayk+HQs80A==
X-CSE-MsgGUID: P2kd6kjYTFuefy3F4jpgNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="101582204"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="101582204"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 02:08:57 -0700
X-CSE-ConnectionGUID: xfE60HskTsSHM5+EkrX91Q==
X-CSE-MsgGUID: QLN8nlXORE+FUQSZcKx9fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="249793898"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 02:08:56 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com
Subject: [PATCH v2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt on display
 version 30+
Date: Wed,  8 Jul 2026 14:37:12 +0530
Message-ID: <20260708090712.3800170-1-dibin.moolakadan.subrahmanian@intel.com>
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7798572378F

Enable PIPEDMC_ERROR alongside the existing PIPEDMC_GTT_FAULT and
PIPEDMC_ATS_FAULT interrupt bits for display version 30+.

On PTL, DC state transitions do not trigger the spurious PIPEDMC_ERROR
interrupts that were previously a concern. Enable the interrupt so pipe
DMC errors are reported by intel_pipedmc_irq_handler().

v2:
- Remove IGT reference from commit message (Suraj).

Bspec: 70296
Suggested-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
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

