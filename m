Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAiwHriYe2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 528D5B2E2F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB09510E8CA;
	Thu, 29 Jan 2026 17:28:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="db/WF11X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0926F10E8C9;
 Thu, 29 Jan 2026 17:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707701; x=1801243701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ycwq7Ljgnjr7aeSDtNEk2/6KFBvqczOmZtBC2o0w2Dw=;
 b=db/WF11XCCPbHd2yhaTF5eGu1RE2uc9nuX2B7fvP+qpjTWg9ApsrdPjA
 uX5vvwJCVHBTZsU2NnYmOLHsnNY5Rk2+xih6zbNxChGw9VQtH+o19ju4r
 io4puEFG8qmnWonmix1O6Qb8p38uqdlHarjEcwgaFiz1lw161kpsugn+v
 +GLJWXHNcUGmL6rbj5rgB3bLst0sdlLw30uM6lRFTbdqY8tA1hgYIddWB
 TigECI/VCtMMXT+k/UdGz1bDZNnf83jgLd3RY1Onx65WJCsA73hr2abGa
 BFJdzQ+moz3ahatCfhovVoAC1WGC5aH3Ge6UPNIVwNr3ZE3kwuHGSqvrL Q==;
X-CSE-ConnectionGUID: CMDFsqh9Q7KWQu+MjY+hDw==
X-CSE-MsgGUID: t6I7Zy6XQpeSaeIb+nrSpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70926967"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70926967"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:21 -0800
X-CSE-ConnectionGUID: K3ivELMfS1qOkQ9IZ3Jsew==
X-CSE-MsgGUID: 5T+g6MKIRE+8m3FAqezteA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239361144"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:19 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 16/16] drm/i915/display: Extend the max dotclock limit to WCL
Date: Thu, 29 Jan 2026 22:41:54 +0530
Message-ID: <20260129171154.3898077-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 528D5B2E2F
X-Rspamd-Action: no action

From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Add upper limit check for pixel clock for WCL.

For prior platforms though the bspec mentions the dotclock limits, however
these are intentionally not enforced to avoid regressions, unless real
issues are observed.

BSpec: 49199, 68912
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9cfeb5530fd8..bd4219467e0e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8006,8 +8006,16 @@ int intel_max_uncompressed_dotclock(struct intel_display *display)
 	int max_dotclock = display->cdclk.max_dotclk_freq;
 	int limit = max_dotclock;
 
-	if (DISPLAY_VER(display) >= 30)
+	if (DISPLAY_VERx100(display) == 3002)
+		limit = 937500;
+	else if (DISPLAY_VER(display) >= 30)
 		limit = 1350000;
+	/*
+	 * Note: For other platforms though there are limits given
+	 * in the Bspec, however the limit is intentionally not
+	 * enforced to avoid regressions, unless real issues are
+	 * observed.
+	 */
 
 	return min(max_dotclock, limit);
 }
-- 
2.45.2

