Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WuuhFoDIRGql0woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 09:57:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2917A6EAE7F
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 09:57:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EVvyP24P;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855D510EE25;
	Wed,  1 Jul 2026 07:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C7610EE15;
 Wed,  1 Jul 2026 07:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782892669; x=1814428669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5qtwsW0P6G/15BC302S54RWKE3ROpTWyPgh3vRJ5Vk8=;
 b=EVvyP24PfGkByptyhlLWikQsaAyX5xEPPyO8wC6DoKN+YhH5xAH+H3VS
 WZ8CTeWkcymfhAVN5Uyk8apl8WE9PHdilMp16MXGydhyOk5f4o3jT0ZLa
 fjJkYRGnuAw6RUmOVhcCxYz3XoIChAiZ1KVpG8X21eoRFmRt4Af9Vfy6l
 PUCM5uA5anR4QLPXQ91vjRvB2UGAss/DDBY1Y+1zkYT1d3X2iSmwotelb
 tF1IYXGxwhZKOTMQXcv0+2GjnP3HOg0UGUECN+7TjHotRmIWGJrnNFPta
 VuU5Di0j8gy5sDyEVL0/ZN4nPkMKQfN5sYrxLl2njaGZV7PwMNZ2sytv4 w==;
X-CSE-ConnectionGUID: Vnx/ghDCS1CTGrEbBcniwA==
X-CSE-MsgGUID: yU+h340FSWiUMfIaamPpzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83816625"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="83816625"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 00:57:49 -0700
X-CSE-ConnectionGUID: pAXW5dKOQvq5iohslyB5+A==
X-CSE-MsgGUID: BHLANgV3SuatuN7YghUDaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="282565680"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 01 Jul 2026 00:57:47 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/ltphy: Readout ssc_enabled for LT PHY
Date: Wed,  1 Jul 2026 13:27:36 +0530
Message-Id: <20260701075737.1285909-2-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 2917A6EAE7F

We need to readout the ssc_enabled param for LT PHY pll state too.
Create a function that does that, we only need to read SSC Enable PLL A
bit since that is the only one we write Xe3p onwards. While at it
improve the dump using str_yes_or_no.

Bspec: 74667
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 615ee980470e..dcf180ec0b77 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2179,7 +2179,8 @@ void intel_lt_phy_dump_hw_state(struct drm_printer *p,
 	int i, j;
 
 	drm_printf(p, "lt_phy_pll_hw_state: lane count: %d, ssc enabled: %d, tbt mode: %d\n",
-		   hw_state->lane_count, hw_state->ssc_enabled, hw_state->tbt_mode);
+		   hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
+		   str_yes_no(hw_state->tbt_mode));
 
 	for (i = 0; i < 3; i++) {
 		drm_printf(p, "config[%d] = 0x%.4x,\n",
@@ -2221,6 +2222,14 @@ static bool intel_lt_phy_pll_is_enabled(struct intel_encoder *encoder)
 			     XELPDP_LANE_PCLK_PLL_ACK(0);
 }
 
+static bool readout_ssc_state(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port)) &
+		XELPDP_SSC_ENABLE_PLLA;
+}
+
 bool intel_lt_phy_tbt_pll_readout_hw_state(struct intel_display *display,
 					   struct intel_dpll *pll,
 					   struct intel_dpll_hw_state *hw_state)
@@ -2250,6 +2259,7 @@ bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
 	lane = owned_lane_mask & INTEL_LT_PHY_LANE0 ? : INTEL_LT_PHY_LANE1;
 	wakeref = intel_lt_phy_transaction_begin(encoder);
+	pll_state->ssc_enabled = readout_ssc_state(encoder);
 
 	pll_state->lane_count = intel_readout_lane_count(encoder, INTEL_LT_PHY_LANE0,
 							 INTEL_LT_PHY_LANE1);
-- 
2.34.1

