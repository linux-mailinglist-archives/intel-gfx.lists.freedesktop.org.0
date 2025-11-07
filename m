Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A497C3F2ED
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 10:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9816810EA52;
	Fri,  7 Nov 2025 09:35:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rc5kasoj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1127810EA50;
 Fri,  7 Nov 2025 09:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762508120; x=1794044120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=weTBYD0ab8kWL/UPcSG1EfOZU1GCYoydlJljDFklzrI=;
 b=Rc5kasojeSLighLi0VLFxjJCPT2U9b3QP7qifgWLSc5++YjZyS3j+v79
 O5F5slGDyMMHKHEP7IMHRaf4RwU/PjosxF7eoL7OIQcCbhuOczgM3KMVq
 A949ppD/G+34HUDEdOqZIP/yIhAqyKdylofe+uJeNECGhNWBBcfd7Z9Rz
 2oZDp09ruO7os3x9ccfLwJSeaLEE7kyBNqXP0qAk5YqnVc/pd/SOha//H
 hqaO2BLVJyLtdS4vU5Ty/REX93BghdRzB9111ZAKPh0f48ezdIyj6C6aZ
 lZfJZoqoD+2r6H4Dl2SLqNPIapnSLItRI5Y9KaQTKJ+qqCmRBkYg2A/U4 A==;
X-CSE-ConnectionGUID: zzI8AoQeQXKMnuoFztqXOQ==
X-CSE-MsgGUID: CFx5TU6gSa+vOu4rejXh7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64562368"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64562368"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 01:35:20 -0800
X-CSE-ConnectionGUID: WhkRz8wTQwOF6ODxBvvbhQ==
X-CSE-MsgGUID: bw9yKjMJQz69rojNSqj1gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="187252122"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 07 Nov 2025 01:35:19 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 2/2] drm/i915/ltphy: Return lowest portclock for HDMI from
 reverse algorithm
Date: Fri,  7 Nov 2025 15:05:12 +0530
Message-Id: <20251107093512.533577-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251107093512.533577-1-suraj.kandpal@intel.com>
References: <20251107093512.533577-1-suraj.kandpal@intel.com>
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
---

v1 -> v2:
-Derive intel_display in first line (Ankit)
-Use the actual lowest clock from table (Ankit)

 drivers/gpu/drm/i915/display/intel_lt_phy.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 57a0f443eb1a..1a7dc0ebd050 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1671,7 +1671,7 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 }
 
 static int
-intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
+intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
 {
 #define REGVAL(i) (				\
 	(lt_state->data[i][3])		|	\
@@ -1680,6 +1680,9 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
 	(lt_state->data[i][0] << 24)		\
 )
 
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct intel_lt_phy_pll_state *lt_state =
+		&crtc_state->dpll_hw_state.ltpll;
 	int clk = 0;
 	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
 	u64 temp0, temp1;
@@ -1722,11 +1725,14 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
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
 
@@ -1755,7 +1761,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				      lt_state->config[0]);
 		clk = intel_lt_phy_get_dp_clock(rate);
 	} else {
-		clk = intel_lt_phy_calc_hdmi_port_clock(lt_state);
+		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
 	}
 
 	return clk;
-- 
2.34.1

