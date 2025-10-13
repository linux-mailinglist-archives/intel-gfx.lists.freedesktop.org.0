Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE74BD26C8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 12:02:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E578610E087;
	Mon, 13 Oct 2025 10:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nccmYaP3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6157C10E420;
 Mon, 13 Oct 2025 10:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760349696; x=1791885696;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xyomUgFIkWVFIy2o5uqkVIiA/NHEdpAb9vgpvJwMu/g=;
 b=nccmYaP3vnPUVUWtspWepMAZq85gqiXrtmunFcoIPGO6W7WL9FjyRTcT
 ASWyLluVPs4tZ8ZIYTPgUcAexo2+FXLgvXdr2lrrgbHhHi24WmfbbR4Fv
 egsXb7L/0lq87iDOjdyYMxFNFYXLdSfCFMT9w9U34wvl46RHFM7yd3wvQ
 qqiDO1DaeVQCH1kogDkpHsfHrZoDIcD9srFJTNQdi69PrpQjc+7SIggxn
 juiBA6mgXvx74766xrxin5YRx9gvbY9U7MjJaDpMVYHvEihx8Gq6FjQEx
 RePaFZMuBtIU2wKoNeE8QIHsyefXHxczBWWV2oGz5qaCczZeyz0/l/fhY g==;
X-CSE-ConnectionGUID: GE0izn9dS5WFblSxbSIr9g==
X-CSE-MsgGUID: TrwBdmYgSeKiwqXf7JVJNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="80126176"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="80126176"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 03:01:36 -0700
X-CSE-ConnectionGUID: jnNKYYf2Qk+la3K+4EygpQ==
X-CSE-MsgGUID: kSy+DpQVRhG8ekU/s91R4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="212187008"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa002.jf.intel.com with ESMTP; 13 Oct 2025 03:01:35 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 5/7] drm/i915/display: Fix PHY_C20_VDR_CUSTOM_SERDES_RATE
 programming
Date: Mon, 13 Oct 2025 12:50:43 +0300
Message-Id: <20251013095045.3658871-6-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251013095045.3658871-1-mika.kahola@intel.com>
References: <20251013095045.3658871-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Make sure all the DP/HDMI/HDMI-FRL flags are programmed in all the modes
the PLL is configured.

Atm the DP mode flag is not programmed in case the PLL is configured for
HDMI mode for instance. This is incorrect after HW reset, since the DP
mode flag is asserted after reset, hence would need to be cleared for
HDMI, but also incorrect because of the same reason after configuring
the PLL to HDMI mode after it was used in DP mode (for instance on a
DP++ connector).

There is a similar issue with the HDMI-FRL flag, potentially remaining
set when configuring the PLL in DP mode.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 25 +++++++++++---------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9be7e155a584..6e49659d2f17 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2624,6 +2624,7 @@ static void intel_c20_pll_program(struct intel_display *display,
 				  bool is_dp, int port_clock)
 {
 	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
+	u8 serdes;
 	bool cntx;
 	int i;
 
@@ -2699,21 +2700,23 @@ static void intel_c20_pll_program(struct intel_display *display,
 		      MB_WRITE_COMMITTED);
 
 	/* 5. For DP or 6. For HDMI */
-	if (is_dp) {
-		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-			      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK,
-			      PHY_C20_IS_DP | PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock)),
-			      MB_WRITE_COMMITTED);
-	} else {
-		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-			      PHY_C20_IS_HDMI_FRL | PHY_C20_DP_RATE_MASK,
-			      is_hdmi_frl(port_clock) ? PHY_C20_IS_HDMI_FRL : 0,
-			      MB_WRITE_COMMITTED);
+	serdes = 0;
+
+	if (is_dp)
+		serdes = PHY_C20_IS_DP |
+			 PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
+	else if (is_hdmi_frl(port_clock))
+		serdes = PHY_C20_IS_HDMI_FRL;
 
+	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+		      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK | PHY_C20_IS_HDMI_FRL,
+		      serdes,
+		      MB_WRITE_COMMITTED);
+
+	if (!is_dp)
 		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
 				intel_c20_get_hdmi_rate(port_clock),
 				MB_WRITE_COMMITTED);
-	}
 
 	/*
 	 * 7. Write Vendor specific registers to toggle context setting to load
-- 
2.34.1

