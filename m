Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C96BAFAC0
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE36710E6B3;
	Wed,  1 Oct 2025 08:38:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G00PeSx8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2320C10E6B2;
 Wed,  1 Oct 2025 08:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307925; x=1790843925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UNF+a+RtUSlYbxf3txike7lnHr9HtKNL8oNDfvB73aU=;
 b=G00PeSx8HIc3v5x767AiDR58afYDVOUxh+/ECGb9hIzh8KKW9Psc9zoV
 Cu+d000Z5MGn0Dxl/5uWCgGUCTBxnBqjVmDa/IKaVxvzlsWtSRXbouRXG
 AbSKDitTqVMgA46/m86CnaSPIAijLA6b28quCwQM0wi/R/WVO19bQTj1S
 wajn8eX9GMdDp/5y7Wn3ISUhNfrxKzAibhSXy5rWiEUoAB5m+XO/F7iNu
 KwdEgypwXr9bJMITnDKX1tqdOoZ9/mW4LZA+DvXG9Bzp2YchUMH2DJF+x
 uOxjdW7fiEK5N/Y1JEi2/ujWj10VDLcBa8ZUhSxkZ59YHWPYPbmcM572n g==;
X-CSE-ConnectionGUID: Ppe+C8seT26rxYBec6NJ9w==
X-CSE-MsgGUID: RB2HmSzHTaqbclD2I0cUHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742700"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742700"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:44 -0700
X-CSE-ConnectionGUID: Om2a/cAbQxG3SQKDsYQo1w==
X-CSE-MsgGUID: JyAp3LlJSByK1SDuygkriw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142523"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:42 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 07/39] drm/i915/display: Add missing clock to C10 PHY
 state compute/HW readout
Date: Wed,  1 Oct 2025 11:28:07 +0300
Message-Id: <20251001082839.2585559-8-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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

Clock value is missing from C10 hw readout stage. Let's fix this.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c       | 5 +++++
 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f8c1338f9053..a74c1be225ac 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2103,6 +2103,9 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
+					const struct intel_c10pll_state *pll_state);
+
 static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 					  struct intel_c10pll_state *pll_state)
 {
@@ -2127,6 +2130,8 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 	pll_state->tx = intel_cx0_read(encoder, lane, PHY_C10_VDR_TX(0));
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
+
+	pll_state->clock = intel_c10pll_calc_port_clock(encoder, pll_state);
 }
 
 static void intel_c10_pll_program(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
index 7fe6b4a18213..a201edceee10 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -332,6 +332,8 @@ void intel_snps_hdmi_pll_compute_c10pll(struct intel_c10pll_state *pll_state, u6
 			      c10_curve_1, c10_curve_2, prescaler_divider,
 			      &pll_params);
 
+	pll_state->clock = pixel_clock;
+
 	pll_state->tx = 0x10;
 	pll_state->cmn = 0x1;
 	pll_state->pll[0] = REG_FIELD_PREP(C10_PLL0_DIV5CLK_EN, pll_params.mpll_div5_en) |
-- 
2.34.1

