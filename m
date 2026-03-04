Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GONYHzgwqGm+pQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C58200304
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF88910E9E7;
	Wed,  4 Mar 2026 13:14:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G4zcy+lu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C06DC10E183;
 Wed,  4 Mar 2026 13:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772630068; x=1804166068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R1hcygAvtFdyeTnfpkCzE1zB9p1NNPFPxxaaNrJChmQ=;
 b=G4zcy+luX5OtPhg66GvCOhvjTIohJUf2Z8c/cvHwYQh6Tb+mXMWqcjbm
 NmoHzbOzBbPvDCreSwPbdix+qp02zuRFS3/n1nNE9LVvgXdshweo+dUG3
 kZKoQKQEUr6+72Hrqs2W7LCmcG5636KSJNcf4v+Jd2jXf7u3RY6IreBdA
 CycQuLE9CvZAIxytXuPsnDJ9qfLSXGSmTf28gXjzIPUJUZb1sQnUHgsC1
 3wWwahdnarAzZJav/7aVkzY7kesoTVhoM25bDGG6SZN0Y+BUG4m0WFrw0
 hPNhSZKB/NK7GnrKhgT41rLOQDTiIvGP+Bn9D1HWoaOUuuR813vxnWsac Q==;
X-CSE-ConnectionGUID: X4eBS9JMQ6mOI5hxlHIUyA==
X-CSE-MsgGUID: MPwuRlF1TJicVQLtGrvuxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77293450"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77293450"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 05:14:28 -0800
X-CSE-ConnectionGUID: XIaSkQVRRhy5uVuT0pI98g==
X-CSE-MsgGUID: Jz17WDohTYK9a3Y9D6mVvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241350743"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 05:14:28 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 02/24] drm/i915/lt_phy: Add check if PLL is enabled
Date: Wed,  4 Mar 2026 13:14:01 +0000
Message-ID: <20260304131423.1017821-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304131423.1017821-1-mika.kahola@intel.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 52C58200304
X-Rspamd-Server: lfdr
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Add check for PLL enabling and return early if
PLL is not enabled.

v2: Use PCLK PLL request to check if PLL is enabled (Suraj)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 24 +++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index f768804122c1..8fe61cfdb706 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2176,6 +2176,27 @@ intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
 	return false;
 }
 
+static u32 intel_lt_phy_get_pclk_pll_ack(u8 lane_mask)
+{
+	u32 val = 0;
+	int lane = 0;
+
+	for_each_lt_phy_lane_in_mask(lane_mask, lane)
+		val |= XELPDP_LANE_PCLK_PLL_ACK(lane);
+
+	return val;
+}
+
+static bool intel_lt_phy_pll_is_enabled(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	u8 lane = dig_port->lane_reversal ? INTEL_LT_PHY_LANE1 : INTEL_LT_PHY_LANE0;
+
+	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port)) &
+			     intel_lt_phy_get_pclk_pll_ack(lane);
+}
+
 void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       struct intel_lt_phy_pll_state *pll_state)
@@ -2185,6 +2206,9 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	struct ref_tracker *wakeref;
 	int i, j, k;
 
+	if (!intel_lt_phy_pll_is_enabled(encoder))
+		return;
+
 	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
 	if (pll_state->tbt_mode)
 		return;
-- 
2.43.0

