Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C21C3C1EC67
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:34:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4125B10E8BF;
	Thu, 30 Oct 2025 07:34:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tjx6J7Bl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F23310E8CA;
 Thu, 30 Oct 2025 07:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809692; x=1793345692;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DVN14h5NPrLVTefIexgQ3WzN9heTMNGBkFdx43fhrWg=;
 b=Tjx6J7BldxBXbn2tYH2DA4jSlU39Wb2BIm+7rbnKGPXsqmzBWToZ88sy
 3kqCUiYuLMO/ftnnryDMZfw7p8H/ZYb0ypCXgmlJ0cKlCfSVAaXpIPqd3
 5oELRiVv4dPl5wPFYh8PxsHe3OUR1wVYntxECPU4Mh5P2lZkZEWoKVP2q
 GLy0nWM+M5vpxdNsZt74OrXTi9OC8FMa+tZzYJqSb4Hp834tnQSHV/Y96
 uJBP+wv+CBWsMbSpA/C3fgBs8eluUpkN+NsHEu6trmd/5Fu27ToVTg6x/
 /XsW6g/QHONkZeaiEtZdrl1pPxqH+22fMwiZwj+fogax6fYsuhIIQISEK g==;
X-CSE-ConnectionGUID: coVuvIu8QkSaF868376gOQ==
X-CSE-MsgGUID: 8cI3/4gIQDKrC/FbdAE7cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063371"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063371"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:34:52 -0700
X-CSE-ConnectionGUID: mzbt+CPnT1Ku2BS0Ncsvhw==
X-CSE-MsgGUID: MOr1AVB9Qrq42AfjL8BWBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075337"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:34:50 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 09/32] drm/i915/display: Sanitize C10 PHY PLL SSC register
 setup
Date: Thu, 30 Oct 2025 09:22:26 +0200
Message-Id: <20251030072249.155095-10-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030072249.155095-1-mika.kahola@intel.com>
References: <20251030072249.155095-1-mika.kahola@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index cc5aa38c3364..b394b0397d62 100644
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

