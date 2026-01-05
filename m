Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC90ECF20A5
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 06:59:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F001510E340;
	Mon,  5 Jan 2026 05:59:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MfVH2JI5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64FF510E340;
 Mon,  5 Jan 2026 05:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767592784; x=1799128784;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EfySnqAIgNuEVsx3OK4k93KXplaOVIuZ1dp7RB4KdZE=;
 b=MfVH2JI5B0iDoFOjSNDLfut6KHmUFH3Dwk+unR3wkvOK8+0+Q4DC9rQP
 kG2RMC+VTunX7UG6R19JiWXHwVyL2P2Cswz7GPuBI39ijXFgeDv5niHa7
 l4S+s+wSjMLbrq8tiZaunWRKya6B1MZJ9i/0iePH3Q8bJFiE9vOFygzA3
 pX77tzZavW+DcMAJMWN6yCnkjSZ0wmXOUQ43J8rPt9e/R0/vAgTinOci1
 6ILsd/TmEtfX536l01GeuNz7jWR4CpyQtjz6k7ckMLT9L9UZ/1vnVp+1/
 Dy74NdI4yQeR1uQP3Qve2Hlifccct0yZysAJJmFe6p9iUUvfdsr00hZAT Q==;
X-CSE-ConnectionGUID: iWJqzG+qRIuZsCOx7JUuQQ==
X-CSE-MsgGUID: OWQPcBYPThqmxB7yt+pyEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="72805052"
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="72805052"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:59:44 -0800
X-CSE-ConnectionGUID: IID5lQUYTM+WBgKYb7X0nA==
X-CSE-MsgGUID: gQ10oCSJTTiKo4Dzd4BFLA==
X-ExtLoop1: 1
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 04 Jan 2026 21:59:42 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 3/3] drm/i915/ltphy: Provide protection against unsupported
 modes
Date: Mon,  5 Jan 2026 11:29:37 +0530
Message-Id: <20260105055937.136522-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105055937.136522-1-suraj.kandpal@intel.com>
References: <20260105055937.136522-1-suraj.kandpal@intel.com>
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

We need to make sure we return some port clock in case we have
unsupported LT PHY modes or if we were not able to read the LT PHY state
for whatever reason and the mode ends up being 0.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 9addb7661b6b..6cdae03ee172 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -31,6 +31,7 @@
 #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
 					 INTEL_LT_PHY_LANE0)
 #define MODE_DP				3
+#define MODE_HDMI_20			4
 #define Q32_TO_INT(x)	((x) >> 32)
 #define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
 #define DCO_MIN_FREQ_MHZ	11850
@@ -1751,6 +1752,7 @@ int
 intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	int clk;
 	const struct intel_lt_phy_pll_state *lt_state =
 		&crtc_state->dpll_hw_state.ltpll;
@@ -1768,8 +1770,11 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 		rate = REG_FIELD_GET8(LT_PHY_VDR_RATE_ENCODING_MASK,
 				      lt_state->config[0]);
 		clk = intel_lt_phy_get_dp_clock(rate);
-	} else {
+	} else if (mode == MODE_HDMI_20) {
 		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
+	} else {
+		drm_WARN_ON(display->drm, "Unsupported LT PHY Mode!\n");
+		clk = xe3plpd_lt_hdmi_252.clock;
 	}
 
 	return clk;
-- 
2.34.1

