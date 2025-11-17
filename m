Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B68C63A92
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AEB310E354;
	Mon, 17 Nov 2025 10:59:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ef+wzxwb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5065E10E355;
 Mon, 17 Nov 2025 10:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377153; x=1794913153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wwka4fLpeugZrn3cnWuon+Rge0B8mGJEE7n7sXUKPmk=;
 b=Ef+wzxwbVKidyhK6Fvpt9smgV3IGR1Ovq/bFbsL8xYghNw2j89NQaGW0
 EYOh8InvCLeY4lgjEBkS1fWVY149DDln33AFniEMjTvLiRN724LQbl4sS
 19X1Od2zv3wXxkg/oeFVCCFGhaenjIIGuSHh0a+nk0/t04BCphlac99Qb
 nBsnBCOZm3JFuCU2AI8FwJBLlnQJzcWJu7Lc6VB6JqF7vVU5jonesewz5
 uUR9gobTz1+gMsBpXImou94e5ElSTbAo9PeLvbPiseypTYStQX9r6we7P
 2bOcXAWsV9iJuFniPWlrs/lwrjbPrNZ3FfiwkLznfd6ZBUmfflRb0BIbo w==;
X-CSE-ConnectionGUID: Lc4SujrgQkCffQ8TUsfXOQ==
X-CSE-MsgGUID: 0hcMf7sdTVGDQAaCmt+4Jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475361"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475361"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:13 -0800
X-CSE-ConnectionGUID: V+LP7cF1SBSljydAYvj3Wg==
X-CSE-MsgGUID: KxpHurChRRS+Rx1r9CEjGQ==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:11 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 09/32] drm/i915/cx0: Sanitize C10 PHY PLL SSC register setup
Date: Mon, 17 Nov 2025 12:45:39 +0200
Message-Id: <20251117104602.2363671-10-mika.kahola@intel.com>
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

Define the C10 PLL SSC register range via macros, so the HW/SW state of
these register can be verified by a follow-up change, reusing these
macros.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 2ab93d02fdf1..f190762e4871 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2059,6 +2059,9 @@ static void intel_cx0pll_update_ssc(struct intel_encoder *encoder,
 	}
 }
 
+#define C10_PLL_SSC_REG_START_IDX	4
+#define C10_PLL_SSC_REG_COUNT		5
+
 static void intel_c10pll_update_pll(struct intel_encoder *encoder,
 				    struct intel_cx0pll_state *pll_state)
 {
@@ -2068,8 +2071,11 @@ static void intel_c10pll_update_pll(struct intel_encoder *encoder,
 	if (pll_state->ssc_enabled)
 		return;
 
-	drm_WARN_ON(display->drm, ARRAY_SIZE(pll_state->c10.pll) < 9);
-	for (i = 4; i < 9; i++)
+	drm_WARN_ON(display->drm, ARRAY_SIZE(pll_state->c10.pll) <
+				  C10_PLL_SSC_REG_START_IDX + C10_PLL_SSC_REG_COUNT);
+	for (i = C10_PLL_SSC_REG_START_IDX;
+	     i < C10_PLL_SSC_REG_START_IDX + C10_PLL_SSC_REG_COUNT;
+	     i++)
 		pll_state->c10.pll[i] = 0;
 }
 
-- 
2.34.1

