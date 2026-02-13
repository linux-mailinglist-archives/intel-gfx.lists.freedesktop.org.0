Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKNgDXEYj2mJIgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0645B13602A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D2DC10E7F3;
	Fri, 13 Feb 2026 12:26:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZBlchZFU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F35F10E306;
 Fri, 13 Feb 2026 12:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770985583; x=1802521583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EDoV1HgRtmZZ9ExRX8G1wETnzrbSD9mBlo05081Xzug=;
 b=ZBlchZFUMxjVrzYtWCWhKhK3O4O6ocIKUi9d9hHfq5HXRY9vzCc35WRj
 OllT9z/a18vqKlH1QsU1XjPbq80/UUCTDhkFb5eVobStWQUjInA1PRpag
 ZiXUcZI8HY2AwvicAthQImCnGYK11nd4nPXaWQiJDZhGIjkOKUyIsNKgA
 cdgsHDWT9Y45vb0hIOjobs5E8i4Uz8KyrGCke76bVU3FAtNsz6sUy/JgC
 hx8bC+pKzp3flKuBgfJzH33kL63WvG0V8bU7HB4bTDnxPhhhl3sjTZtci
 9jrBcSdJQzOwN2vEMJTvwmTxNUWjBCTXdrS5GF3JFhd8ETOeo/KsZqOCy g==;
X-CSE-ConnectionGUID: dICyCmG4TeafTiaSy9h8pQ==
X-CSE-MsgGUID: XYUw7wuNTsK99QfH6gv+BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72158106"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72158106"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 04:26:22 -0800
X-CSE-ConnectionGUID: qbzql4T7SJeV68SXfxWt7w==
X-CSE-MsgGUID: ofiBscPCSEupI5HWk12pfQ==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 13 Feb 2026 04:26:21 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 02/19] drm/i915/lt_phy: Add check if PLL is enabled
Date: Fri, 13 Feb 2026 12:25:58 +0000
Message-ID: <20260213122615.1083654-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260213122615.1083654-1-mika.kahola@intel.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0645B13602A
X-Rspamd-Action: no action

Add check for PLL enabling and return early if
PLL is not enabled.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 24 +++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 9647afcea897..f8cea06cfa27 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2181,6 +2181,27 @@ intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
 	return false;
 }
 
+static u32 intel_lt_phy_get_pclk_pll_request(u8 lane_mask)
+{
+	u32 val = 0;
+	int lane = 0;
+
+	for_each_lt_phy_lane_in_mask(lane_mask, lane)
+		val |= XELPDP_LANE_PCLK_PLL_REQUEST(lane);
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
+			     intel_lt_phy_get_pclk_pll_request(lane);
+}
+
 void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       struct intel_lt_phy_pll_state *pll_state)
@@ -2190,6 +2211,9 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
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

