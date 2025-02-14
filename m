Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A18FA36023
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:19:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6473110ECB4;
	Fri, 14 Feb 2025 14:19:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j+zBldrb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 595BC10ECAA;
 Fri, 14 Feb 2025 14:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542749; x=1771078749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6IHuCYtjahNEykADQSP+FJc5aE1Foj9Q/YyNdlcMSGg=;
 b=j+zBldrbu3OcPvZabzebL4TdtMm/ty9FJrNGvHH0TdUqnzd+bdadajKU
 eKcsn6Z9I0irEK1hgiIA04OKqTE80fBxUULK1IXN0gFeHAfD8HsCp+92K
 HT80oiSkHzq7imMBgsupcN+kc+zyb4JG/P09lgtZbYRFW5xSlRTEScznA
 /VfFRN7cHmqIT5OYdGSG7qZ7e+GW9UYoN9bH4VRrKQIrnSzoX6oYgpT5/
 SVzllPDrci/hxoMXV+4kdsekP1fbQE1LVR472Xr8qbmnAyrHfcUjpW2/S
 A3PfPhogHQ+vriEnuIJVID1vQcZ0IrVwC8FTkWp6IcAsCEA5WyCgPH2DX A==;
X-CSE-ConnectionGUID: MBgJIAIMTryNkJqBp3G+0g==
X-CSE-MsgGUID: 492gMRRiR8uud8AbxNxY8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="27892499"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="27892499"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:08 -0800
X-CSE-ConnectionGUID: 2p/Q6HZzS3aVYQuSFU2YWQ==
X-CSE-MsgGUID: Q6FrR5hBSAq2T7lB3ADahw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136694253"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:07 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 04/11] drm/i915/ddi: Set missing TC DP PHY lane stagger
 delay in DDI_BUF_CTL
Date: Fri, 14 Feb 2025 16:19:54 +0200
Message-ID: <20250214142001.552916-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250214142001.552916-1-imre.deak@intel.com>
References: <20250214142001.552916-1-imre.deak@intel.com>
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

Add the missing PHY lane stagger delay programming for ICL-ADL
platforms on TypeC DP outputs.

v2: (Jani)
- Clarify code comment about lane stagger programming.
- Robustify macro calls with parens.

Bspec: 7534, 49533
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 29 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          |  3 +++
 2 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a09363e5dc148..1e7ae93340ff4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -328,9 +328,32 @@ static u32 ddi_buf_phy_link_rate(int port_clock)
 	}
 }
 
+static int dp_phy_lane_stagger_delay(int port_clock)
+{
+	/*
+	 * Return the number of symbol clocks delay used to stagger the
+	 * assertion/desassertion of the port lane enables. The target delay
+	 * time is 100 ns or greater, return the number of symbols specific to
+	 * the provided port_clock (aka link clock) corresponding to this delay
+	 * time, i.e. so that
+	 *
+	 * number_of_symbols * duration_of_one_symbol >= 100 ns
+	 *
+	 * The delay must be applied only on TypeC DP outputs, for everything else
+	 * the delay must be set to 0.
+	 *
+	 * Return the number of link symbols per 100 ns:
+	 * port_clock (10 kHz) -> bits    / 100 us
+	 * / symbol_size       -> symbols / 100 us
+	 * / 1000              -> symbols / 100 ns
+	 */
+	return DIV_ROUND_UP(port_clock, intel_dp_link_symbol_size(port_clock) * 1000);
+}
+
 static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -356,6 +379,12 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
 			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
+
+	if (IS_DISPLAY_VER(display, 11, 13) && intel_encoder_is_tc(encoder)) {
+		int delay = dp_phy_lane_stagger_delay(crtc_state->port_clock);
+
+		intel_dp->DP |= DDI_BUF_LANE_STAGGER_DELAY(delay);
+	}
 }
 
 static int icl_calc_tbt_pll_link(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3eea191f20175..50efaab3b5536 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3636,6 +3636,9 @@ enum skl_power_gate {
 #define  DDI_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 1)
 #define  DDI_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 2)
 #define  DDI_BUF_PORT_REVERSAL			(1 << 16)
+#define  DDI_BUF_LANE_STAGGER_DELAY_MASK	REG_GENMASK(15, 8)
+#define  DDI_BUF_LANE_STAGGER_DELAY(symbols)	REG_FIELD_PREP(DDI_BUF_LANE_STAGGER_DELAY_MASK, \
+							       (symbols))
 #define  DDI_BUF_IS_IDLE			(1 << 7)
 #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
 #define  DDI_A_4_LANES				(1 << 4)
-- 
2.44.2

