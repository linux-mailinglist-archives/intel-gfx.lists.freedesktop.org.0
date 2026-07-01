Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uo6tNoHIRGqm0woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 09:57:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A817B6EAE84
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 09:57:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EBWcTfkq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F9D10EE35;
	Wed,  1 Jul 2026 07:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACD710EE29;
 Wed,  1 Jul 2026 07:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782892671; x=1814428671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cq4Zx+v47cjZ5f8SraVPMWjYBcUdX8uCc0FgmZVHxxQ=;
 b=EBWcTfkqgOIDVzUfLzCCKVoZ6AUZQO+IAVF1N4lQpM/Y6PKFPrC2G0xf
 0pysZ9zSGEcLwFAJNEl3e7C1ZTA+kdLoXsChIp0Ffo7pKe+8uaP0uhnN5
 IcHBYgbjmi8ve/6lMJsjxpGnebqe0qzDKhiqwcZollLJtyNoB8z3AZe3v
 r7SHF1l4s5j/18rvjURL+TYGqM86nLLZy396duH0zoRFCKLTpyjODZZIO
 Y0QoffJ9rnLvQdl3rKAqNd8DxG7oi6hKlQQJHAq28x0+rTxid3xjBT9NX
 fNA3NsOH32STRLnb2WuFlY5RYdbZUhBuciLrts1gUldFp0GluLMlNTcgH A==;
X-CSE-ConnectionGUID: +h5K4ME9QzGSCyTRBS8atw==
X-CSE-MsgGUID: bwMB+XjvRe+2L4UWEDbLgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83816627"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="83816627"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 00:57:51 -0700
X-CSE-ConnectionGUID: GrSytffdRVy59h9xCCAZVA==
X-CSE-MsgGUID: 7IIrAuU7Qo+x4PM5KAWPhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="282565690"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 01 Jul 2026 00:57:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/ltphy: Fix SSC Enablement bit in PORT_CLOCK_CTL
Date: Wed,  1 Jul 2026 13:27:37 +0530
Message-Id: <20260701075737.1285909-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260701075737.1285909-1-suraj.kandpal@intel.com>
References: <20260701075737.1285909-1-suraj.kandpal@intel.com>
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A817B6EAE84

According to Bspec we only need to write SSC Enable PLL A bit
and leave PLL B bit alone in PORT_CLOCK_CTL Register.

Fixes: 3383ba2479f7 ("drm/i915/ltphy: Enable SSC during port clock programming")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index dcf180ec0b77..9c246c3fefac 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1223,11 +1223,7 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
 	else
 		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
 
-	 /* DP2.0 10G and 20G rates enable MPLLA*/
-	if (port_clock == 1000000 || port_clock == 2000000)
-		val |= XELPDP_SSC_ENABLE_PLLA;
-	else
-		val |= ltpll->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+	val |= ltpll->ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
 
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
-- 
2.34.1

