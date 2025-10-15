Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4E2BDEA2F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 15:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9563910E7E0;
	Wed, 15 Oct 2025 13:05:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Os6M6z5T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4156B10E7DF;
 Wed, 15 Oct 2025 13:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760533547; x=1792069547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FaAwTVponfNIPRV4n6cNstJvEYTuienQ+ANhogLgr64=;
 b=Os6M6z5T5D7MHo341USk1kUeQO5YAhOpuDaGpsDpFVFZaACkAaU6uItT
 Kl8RZooYMO+V+hBB7ijGI9n7he5NCVgD9bFe9G0ZRcztrD0xBJ1erczoX
 4s/zjD6kYRiyl7BvrX5Y/frALHS8HB5Mxm7fu9PIfBXkeBPMLLPdDhSqb
 QThTyLxYBLZ0bt4v9Kff+mywgfZjzyzgVYzirIba695D24A7WQ0i9DwbV
 1gKoVddpJagE0udvfLZ4QHr1wnN+lyvkHy1aJTC6quLQN+2nk96UzcqZw
 CwdOHbsjgPjE6FWHqXyJCjsYZ/dn3Y/7bQ1vXqsmKITjG8J8LsudO6g9R g==;
X-CSE-ConnectionGUID: R7LBSdzMQ6mpeCvQa0WJOg==
X-CSE-MsgGUID: YuTE+HCFTOqF4+rEb2vvmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="80341331"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="80341331"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 06:05:47 -0700
X-CSE-ConnectionGUID: 26RXKL4/SASeAJv/ehMfOg==
X-CSE-MsgGUID: AHOYmii5T1K06/YMMz0JnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="186587003"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa005.fm.intel.com with ESMTP; 15 Oct 2025 06:05:46 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [CI 7/7] drm/i915/display: Add missing clock to C10 PHY state
 compute/HW readout
Date: Wed, 15 Oct 2025 15:54:46 +0300
Message-Id: <20251015125446.3931198-8-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015125446.3931198-1-mika.kahola@intel.com>
References: <20251015125446.3931198-1-mika.kahola@intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
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

