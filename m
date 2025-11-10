Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D457C45129
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 07:20:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F4310E2A9;
	Mon, 10 Nov 2025 06:20:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VOZaNfMT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54B8A10E049;
 Mon, 10 Nov 2025 06:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762755612; x=1794291612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PWEtW3I7JbK49mpcIZCOazTC7cudRDAxQ01+qXVl0z0=;
 b=VOZaNfMTkBfqtBNmKK9VbPA0Q3N65uQx816GBqsh9Acqo1NEOrG6pgig
 UrOCVkRS32LR6dNmzR5hQ1cvOnCeaKtaY9hr/W8vuK7Ecx1eTJhJGBFIg
 cdm27QvJO03na3rUwnPS+r7h4Prl10gSXlbpG8nDj17nIcC6qSHZuEQXi
 Wmc6K9TCYZRoHioM/5LsOBUxkWcyyMF9Qd0HfOpNLHzosBa9I5Pd4X2wz
 qEiro5cG/da0s4BusvvZJn3Y+8fB53vSdbt9arlRobSzFijMFWIEJsTJM
 urt2sN3eMY8nb+BTC2V9kqLVhJJPavShjW0k6ZrotKh2PgHbT+gn7vzXk g==;
X-CSE-ConnectionGUID: uYfZXY78TsCUWYbkS3T9rg==
X-CSE-MsgGUID: NSocEnlKQ+CQ7dmiCye2Sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="87432147"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="87432147"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2025 22:20:12 -0800
X-CSE-ConnectionGUID: 8xi/ICQwS9KkFkgmf2Pjfw==
X-CSE-MsgGUID: dky4cOwNTM6ctYjZjTFpPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="193604482"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa004.fm.intel.com with ESMTP; 09 Nov 2025 22:20:10 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 2/2] drm/i915/ltphy: Return lowest portclock for HDMI from
 reverse algorithm
Date: Mon, 10 Nov 2025 11:49:41 +0530
Message-Id: <20251110061940.545183-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110061940.545183-1-suraj.kandpal@intel.com>
References: <20251110061940.545183-1-suraj.kandpal@intel.com>
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

Return the lowest port clock for HDMI when the reverse algorithm
calculates it to be 0 to avoid errors later but throw a warn.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---

v1 -> v2:
-Derive intel_display in first line (Ankit)
-Use the actual lowest clock from table (Ankit)

 drivers/gpu/drm/i915/display/intel_lt_phy.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index d88dbfbe97b1..10b82171b114 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1696,7 +1696,7 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 }
 
 static int
-intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
+intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
 {
 #define REGVAL(i) (				\
 	(lt_state->data[i][3])		|	\
@@ -1705,6 +1705,9 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
 	(lt_state->data[i][0] << 24)		\
 )
 
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct intel_lt_phy_pll_state *lt_state =
+		&crtc_state->dpll_hw_state.ltpll;
 	int clk = 0;
 	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
 	u64 temp0, temp1;
@@ -1747,11 +1750,14 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
 	 * frequency = (m2div * refclk_khz / (d8 * 10))
 	 */
 	d8 = (pll_reg_57 & REG_GENMASK(14, 7)) >> 7;
+	if (d8 == 0) {
+		drm_WARN_ON(display->drm,
+			    "Invalid port clock using lowest HDMI portclock\n");
+		return xe3plpd_lt_hdmi_252.clock;
+	}
 	m2div_int = (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
 	temp0 = ((u64)m2div_frac * REF_CLK_KHZ) >> 32;
 	temp1 = (u64)m2div_int * REF_CLK_KHZ;
-	if (d8 == 0)
-		return 0;
 
 	clk = div_u64((temp1 + temp0), d8 * 10);
 
@@ -1780,7 +1786,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				      lt_state->config[0]);
 		clk = intel_lt_phy_get_dp_clock(rate);
 	} else {
-		clk = intel_lt_phy_calc_hdmi_port_clock(lt_state);
+		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
 	}
 
 	return clk;
-- 
2.34.1

