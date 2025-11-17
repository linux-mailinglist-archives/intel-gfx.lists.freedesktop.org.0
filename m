Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6CAC63AA1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D07710E368;
	Mon, 17 Nov 2025 10:59:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YHLx2sML";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237CF10E33F;
 Mon, 17 Nov 2025 10:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377159; x=1794913159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ozo8oOWMc+OB0DfgZcZMQJT2utqWL59eWqFXEc4hZsY=;
 b=YHLx2sMLpNb6XThxsoBCWY4cg5e8L+bm/S+KF7gV74zT3ohJSWc4c7Sm
 glIe7QRfpXstzwdJD2JGHFWP7hiz1JJFIC36X5nrT7yw5yIwEzhuUjbCG
 6tc0f1Iu4xDq8YQBXmLUZga0hcmiJwZkQ701uBZiLe92MWdbZQaztooaA
 kPfB6xH2a5JTjXje50J39X+q4W9US0RiHPjnpmj5p/Smbt1y8aBsTf4ua
 9MusIV3OFArxgxwBpwEXFUpJCf6jJnQojbQToUfLuCCFgtl9yos7D3p4I
 kvRnvKXY+/TmvB9V0W/5R4omwaCM7Qjiis1xLerqhHMoVcP7Qc7CB94Pn w==;
X-CSE-ConnectionGUID: UyYw0NMMRAqZM9mkK6EePA==
X-CSE-MsgGUID: WoyaROnPS/Sr6nTCqZE6XA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475376"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475376"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:19 -0800
X-CSE-ConnectionGUID: AcO75/EIT8iN8MCalDGgwA==
X-CSE-MsgGUID: y3eywH3aQdmA2g7eWNFTmw==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:17 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 13/32] drm/i915/cx0: Zero Cx0 PLL state before compute and
 HW readout
Date: Mon, 17 Nov 2025 12:45:43 +0200
Message-Id: <20251117104602.2363671-14-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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

Ensure Cx0 pll state is initialized to zero before any computation or HW
readouts, to prevent leaving some parameter in the state uninitialized
in the actual compute/HW readout functions later.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 0ad9fae230c9..df3daa81a698 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2679,6 +2679,8 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder)
 {
+	memset(&crtc_state->dpll_hw_state, 0, sizeof(crtc_state->dpll_hw_state));
+
 	if (intel_encoder_is_c10phy(encoder))
 		return intel_c10pll_calc_state(crtc_state, encoder);
 	return intel_c20pll_calc_state(crtc_state, encoder);
@@ -3612,7 +3614,7 @@ static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
 void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_cx0pll_state *pll_state)
 {
-	pll_state->use_c10 = false;
+	memset(pll_state, 0, sizeof(*pll_state));
 
 	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
 	if (pll_state->tbt_mode)
-- 
2.34.1

