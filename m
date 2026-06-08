Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dRlIILfCJmqSkAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:25:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 035956569B7
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:25:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LFuXZcB2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C7210F3B7;
	Mon,  8 Jun 2026 13:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07C2D10F3B6;
 Mon,  8 Jun 2026 13:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780925108; x=1812461108;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=90+OGpURpXUilNv4PiAZxQHU1o5EBbJSgeyu4BiXMbg=;
 b=LFuXZcB27+9s54b8GUE7kuexnD04LuWVb7RA2tz2Rv2izzdc2eedKeBb
 4i7mBt5O3GWTFxo1zNqe6c/cjekFT7gMrPWZ0k1xfMPjTQyFM6dFcFvga
 e6p9jFYItm8tRwslVS4PnLDPeb/EHxZ+A6+F8nNQM953Q4HYYDmzg40ML
 MoVpyXp36fucZcy45jL6zPM8Da7Z/bA1QXbUlfbsKlhbFCfzgEpfQgV1c
 mLtbDioFQq19f1LmgeR+/wqVnscGiAYtlHU8MalrokkUw5Xc2zHgasEf1
 HnL5ejJ5tHbPUWnd4JE1m+f1k9UiEwkuReb7pbtkeZi8IcO3D1J05qfWe g==;
X-CSE-ConnectionGUID: jUZ86IDlQ26LWdjh2sq6sQ==
X-CSE-MsgGUID: jBMmFdFhSnOlZThwuJIMag==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81634474"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81634474"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 06:25:07 -0700
X-CSE-ConnectionGUID: WPHVFntzSU2QzbqTx8/rqQ==
X-CSE-MsgGUID: 0Weiyyq4TDGWfZMokDVumA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="244694459"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 08 Jun 2026 06:25:07 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state compare on
 LT PHY
Date: Mon,  8 Jun 2026 13:25:05 +0000
Message-ID: <20260608132505.1849158-1-mika.kahola@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 035956569B7

LT PHY PLL readout is only partially reliable, and the LT PHY code
already documents that only a subset of the state can be read back
reliably after power gating.

The generic pipe-state verification compares dpll_hw_state as part of
intel_pipe_config_compare(), which can trigger false-positive
"pipe state doesn't match!" warnings on LT PHY platforms. DPLL-specific
verification already exists via intel_dpll_state_verify().

Skip the generic dpll_hw_state pipe-state compare on LT PHY platforms
and rely on the dedicated DPLL verification path instead.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2fa10f858279..85ad2bc4963d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5374,8 +5374,12 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (display->dpll.mgr)
 		PIPE_CONF_CHECK_P(intel_dpll);
 
-	/* FIXME convert everything over the dpll_mgr */
-	if (display->dpll.mgr || HAS_GMCH(display))
+	/*
+	 * LT PHY PLL readout is only partially reliable and the PLL state
+	 * is already verified via intel_dpll_state_verify(). Avoid false
+	 * positives from the generic pipe state comparison.
+	 */
+	if ((display->dpll.mgr || HAS_GMCH(display)) && !HAS_LT_PHY(display))
 		PIPE_CONF_CHECK_PLL(dpll_hw_state);
 
 	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
-- 
2.43.0

