Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kICqF7tpxWl1+AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC4B339025
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F47F10EA50;
	Thu, 26 Mar 2026 17:15:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XZS3vjlz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B6F910EAC7;
 Thu, 26 Mar 2026 17:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774545337; x=1806081337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V8HmqvvBNPu1LF6NBGuhnObi4ONK3QFTdwk8cQszOog=;
 b=XZS3vjlzi5WMXurC12Q2NuDPfsEjElUDSoerRel3DbNdRi5qfWdzgwGt
 a5vHo0jk85qk4xGA8jHcGxkbXPLTwllUTsjR0mY4YfPIJezftJ+ZeDNZM
 +cKEQALYx+k4c03Uc7vgB9YyQlIUvrBfDvzvghIR7vywqxENPnuydh8Ld
 S+Xt4egbK9P2fPbxlfPSZt7pC6ciOMTmvy/RQmSy8fKlgugSizLiLi7Qk
 GZmPKqKoEA2KBHeRsaKc+GZjwHKC8TS7AIctCOmrm7dKKeSjxktEsKhB2
 o+BFkc7wfFtaYW8/oTiASpwGA5XqElHkmBYVNDUNDgA7m+ipUvTooLPtI w==;
X-CSE-ConnectionGUID: wc5SLTdbRHy7SwU4o2Ll6Q==
X-CSE-MsgGUID: ALQj5qV0QXSudS2HuduYnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75630587"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75630587"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:37 -0700
X-CSE-ConnectionGUID: sZbULqpRQR6eeavNRkjbjw==
X-CSE-MsgGUID: O0W4Py5kRAyKiAgF1shlEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="262975612"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:35 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: [PATCH 12/19] drm/i915/display: PSR2: Set idle_frames to 0 for DC3CO
Date: Thu, 26 Mar 2026 22:45:50 +0530
Message-ID: <20260326171557.2065632-13-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 2FC4B339025
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Force idle_frames to 0 when DC3CO is eligible.

BSpec: 75253
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bab254700a62..16a9f4111ac8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1040,10 +1040,13 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	u32 psr_val = 0;
 	u8 idle_frames;
 
+	/* DC3CO requires idle_frames = 0 */
+	if (intel_dp->psr.dc3co_eligible)
+		idle_frames = 0;
 	/* Wa_16025596647 */
-	if ((DISPLAY_VER(display) == 20 ||
-	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
-	    is_dc5_dc6_blocked(intel_dp) && intel_dp->psr.pkg_c_latency_used)
+	else if ((DISPLAY_VER(display) == 20 ||
+		  IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
+		 is_dc5_dc6_blocked(intel_dp) && intel_dp->psr.pkg_c_latency_used)
 		idle_frames = 0;
 	else
 		idle_frames = psr_compute_idle_frames(intel_dp);
-- 
2.43.0

