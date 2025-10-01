Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF87BBAFAE1
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ED7410E6C9;
	Wed,  1 Oct 2025 08:38:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DFu69j4t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC51310E6B7;
 Wed,  1 Oct 2025 08:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307936; x=1790843936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TROFwasUuH0ogtwuF+rkik+t6kq+VVTHv9XK/ojWw84=;
 b=DFu69j4t6+JxpHamkngQ1kUykSKudiBJB2AgVp3akwusHtPv25l6PFBO
 xGWYXQxqJUGhn1a7L5Yg3Oc0ZbTa6iFOFSGVean5uMiywqyi+81sP782I
 vOsdqq5/6G3pg/qtWq8bKA2mWp3fQJeAex1f2MEvx/JG4DBaY9Q8Zh/64
 d0hT9t8xmPgJRajcmFm2LkMaoQbrOVtTatcksjEcf4iup/pSP45e3duu6
 g/riCNg1E+bjTHGrgdFKhWmDxP1XaQQ9guEv3LxMWDnNAEMiAJ/i7HESV
 LlfgNOynsseIdWKBEUTYnlYgtZYuJSJKm//+dBmX0sWPTpxI+XErlHUpz A==;
X-CSE-ConnectionGUID: 6FePS0GJSmqgqwOX9Uf/tg==
X-CSE-MsgGUID: MQKFRe8MTG+LLQkiObTe4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742747"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742747"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:56 -0700
X-CSE-ConnectionGUID: Opq5d+UpQ0OR2ZQMClKMnA==
X-CSE-MsgGUID: 9ac9tIfDS1mZZt+2TzntWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142584"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:54 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 16/39] drm/i915/display: Sanitize C10 PHY PLL SSC register
 setup
Date: Wed,  1 Oct 2025 11:28:16 +0300
Message-Id: <20251001082839.2585559-17-mika.kahola@intel.com>
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

Define the C10 PLL SSC register range via macros, so the HW/SW state of
these register can be verified by a follow-up change, reusing these
macros.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d69ff9115659..88cb605e95dd 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2064,6 +2064,9 @@ static void intel_cx0pll_update_ssc(struct intel_encoder *encoder,
 	}
 }
 
+#define C10_PLL_SSC_REG_START_IDX	4
+#define C10_PLL_SSC_REG_COUNT		5
+
 static void intel_c10pll_update_pll(struct intel_encoder *encoder,
 				    struct intel_cx0pll_state *pll_state)
 {
@@ -2073,8 +2076,11 @@ static void intel_c10pll_update_pll(struct intel_encoder *encoder,
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

