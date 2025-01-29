Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CA2A224E3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:01:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82BDE10E890;
	Wed, 29 Jan 2025 20:01:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dcRqgKr4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA0910E890;
 Wed, 29 Jan 2025 20:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180891; x=1769716891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ep9c9SvN1zYennt8PzN+Ybem+V84SwyP9yHgwqQNjMQ=;
 b=dcRqgKr4w4EpeUz1WCULswut+bcsOg/PswYQMsElC2hh6y+DrKcAtjBw
 QROu/9ExKNEhICVgggPLx2WrlOWF9jhibZV+QYsJnNmLkpwfl0O5Tdvy4
 j2oDQKGwTNjdngYGBfKGm5xaKZBfq/GrMOAxi7qJl4VjrE7CkdqYpNKLr
 XEspdoXpQVyTHH0H19kWHQtNCsrmVqAxCOCJ4JtC+tdpKH/tzckmipSy9
 2pewLsS1+Wph+50wSdj2/zgrwr0TraBj+d4SFCjOrg1c1Am0mKSAe2mtL
 tD5hYlMkBLrRVFLGMVRLNL6OvwCkEU56bAy5rFvFGIg5iYuXAcw+GXx/e w==;
X-CSE-ConnectionGUID: mv0fwx54TkqUu7z6OVIQAA==
X-CSE-MsgGUID: jZhvMplPSgybyir+BphRxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977684"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977684"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:31 -0800
X-CSE-ConnectionGUID: hlNtDbzbTACeNNPjmTV87A==
X-CSE-MsgGUID: ojqeDRJOSPeimiObyEwruQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750895"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:29 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 04/17] drm/i915/ddi: Set missing TC DP PHY lane stagger delay
 in DDI_BUF_CTL
Date: Wed, 29 Jan 2025 22:02:08 +0200
Message-ID: <20250129200221.2508101-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250129200221.2508101-1-imre.deak@intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
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

From: Imre Deak <imre.deak@gmail.com>

Add the missing PHY lane stagger delay programming for ICL-ADL
platforms on TypeC DP outputs.

Bspec: 7534, 49533
Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          |  3 +++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 76e8296cb134b..6192c0d3c87a5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -328,9 +328,21 @@ static u32 ddi_buf_phy_link_rate(int port_clock)
 	}
 }
 
+static int dp_phy_lane_stagger_delay(int port_clock)
+{
+	/*
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
@@ -356,6 +368,12 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
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
 
 static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 04e47d0a8ab92..7fe4e71fc08ec 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3632,6 +3632,9 @@ enum skl_power_gate {
 #define  DDI_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 1)
 #define  DDI_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 2)
 #define  DDI_BUF_PORT_REVERSAL			(1 << 16)
+#define  DDI_BUF_LANE_STAGGER_DELAY_MASK	REG_GENMASK(15, 8)
+#define  DDI_BUF_LANE_STAGGER_DELAY(symbols)	REG_FIELD_PREP(DDI_BUF_LANE_STAGGER_DELAY_MASK, \
+							       symbols)
 #define  DDI_BUF_IS_IDLE			(1 << 7)
 #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
 #define  DDI_A_4_LANES				(1 << 4)
-- 
2.44.2

