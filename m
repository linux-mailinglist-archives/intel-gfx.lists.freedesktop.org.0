Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEn2C0f2uGk5mQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 07:35:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 028A12A4563
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 07:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CFA010E2F7;
	Tue, 17 Mar 2026 06:35:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ncLrQEng";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF80010E2DE;
 Tue, 17 Mar 2026 06:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773729348; x=1805265348;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CUvM03sKJnPCVd7X0MDDUY/5T3Tm3+e6cS3PUwoIDQc=;
 b=ncLrQEngxuOWrlo7xOVUgXZx/4Dizo67jsNx0n+4scn0qpfOotsDUbef
 l9w27ip6AKAWeS7btFgUiUaAdOD/R86tvvSgSV1H5V7/AsgPeiNbf/9KP
 Lh8zX72gmfrlXzAlG73GrxEmJtZr1xdb9KuTn5u9XoIK4Bo6JQ0dqCnJm
 cd4kCXKPjMZ6/mlM88rdNm4YScqy1ry78hgMVaoGDM7+pLsdMPyejDCp/
 TVrpMTykHO4blnvEUfiFO9Bh3ke20ZqJQ6VI/dVIxBp3BbJcZzAdEzQw1
 oVgC57+DUUpARzB+3Jyk7b6h0k2I7xeZ+W7p61zdc45W7h62q45wSLqP7 g==;
X-CSE-ConnectionGUID: 8jnY+DSZQ76cEN5ga8Zgxg==
X-CSE-MsgGUID: BpupGE7LSqK5XpvCrBLsRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="85834461"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="85834461"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 23:35:48 -0700
X-CSE-ConnectionGUID: 1+nUWRKpTfmNNyMRfdGR/Q==
X-CSE-MsgGUID: 0kOR0r/RQW6NDcStVdtEgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="222105318"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 23:35:46 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Date: Tue, 17 Mar 2026 12:07:13 +0530
Message-ID: <20260317063713.3288576-3-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317063713.3288576-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260317063713.3288576-1-dibin.moolakadan.subrahmanian@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 028A12A4563
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable PIPEDMC_ERROR interrupt bit for display version 35+.

Changes in v2:
- Move PIPEDMC_ERROR interrupt enable to a separate patch (Ville Syrjala)
Changes in v3:
- Add Bspec reference (Suraj Kandpal)
Changes in v4:
- Add TODO to check the enablement of PIPEDMC_ERROR for PTL (Suraj Kandpal)

Bspec: 70296
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 38b284a0db82..6c803b2dcbcd 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -510,7 +510,13 @@ static void pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
 static u32 pipedmc_interrupt_mask(struct intel_display *display)
 {
 	if (DISPLAY_VER(display) >= 35)
-		return PIPEDMC_FLIPQ_PROG_DONE;
+		return PIPEDMC_FLIPQ_PROG_DONE |
+			PIPEDMC_ERROR;
+
+	/*
+	 * TODO: Check if PIPEDMC_ERROR bit enabling causes errors
+	 * on PTL, enable it if validation passes
+	 */
 
 	/*
 	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
-- 
2.43.0

