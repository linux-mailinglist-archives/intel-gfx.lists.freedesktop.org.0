Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67ED628C420
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 23:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B4B6E7E6;
	Mon, 12 Oct 2020 21:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A555D6E7DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 21:30:55 +0000 (UTC)
IronPort-SDR: dGqdzxGuPkWH1aBor42Y1x0/P6Ln4qHiP9uoRt9cgssTP8o2SqgHxMSTjmoA8d9BSMPgQw43Ca
 L/dg+YlM2VeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="163169616"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="163169616"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:30:55 -0700
IronPort-SDR: 05zA13ZQOn3SgDRN+O2g0OAJwz16Ku7LskgxK92hRt4fRPUlmAhH0AQS7QRv/2oidX+miuWf7D
 1GLDrcwQ54cQ==
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="463244981"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:30:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 14:29:50 -0700
Message-Id: <20201012212959.871513-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012212959.871513-1-lucas.demarchi@intel.com>
References: <20201012212959.871513-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 06/15] drm/i915/dg1: Enable DPLL for DG1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add DG1 DPLL Enable register macro and use the macro to enable the
correct DPLL based on PLL id. Although we use
_MG_PLL1_ENABLE/_MG_PLL2_ENABLE these are rather combo phys.

While at it, fix coding style: wrong newlines and use if/else chain

v2: Rewrite original patch from Aditya Swarup based on refactors
upstream

Bspec: 49443, 49206

Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 ++++++------
 drivers/gpu/drm/i915/i915_reg.h               |  4 ++++
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6f093e4e6b43..298321cb2bbc 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -151,14 +151,14 @@ static i915_reg_t
 intel_combo_pll_enable_reg(struct drm_i915_private *i915,
 			   struct intel_shared_dpll *pll)
 {
-
-	if (IS_ELKHARTLAKE(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))
+	if (IS_DG1(i915))
+		return DG1_DPLL_ENABLE(pll->info->id);
+	else if (IS_ELKHARTLAKE(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))
 		return MG_PLL_ENABLE(0);
-
-	return CNL_DPLL_ENABLE(pll->info->id);
-
-
+	else
+		return CNL_DPLL_ENABLE(pll->info->id);
 }
+
 /**
  * intel_prepare_shared_dpll - call a dpll's prepare hook
  * @crtc_state: CRTC, and its state, which has a shared dpll
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0b67c868c51d..49945e33f573 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10316,6 +10316,10 @@ enum skl_power_gate {
 #define MG_PLL_ENABLE(tc_port)	_MMIO_PORT((tc_port), _MG_PLL1_ENABLE, \
 					   _MG_PLL2_ENABLE)
 
+/* DG1 PLL */
+#define DG1_DPLL_ENABLE(pll)    _MMIO_PLL3(pll, DPLL0_ENABLE, DPLL1_ENABLE, \
+					   _MG_PLL1_ENABLE, _MG_PLL2_ENABLE)
+
 #define _MG_REFCLKIN_CTL_PORT1				0x16892C
 #define _MG_REFCLKIN_CTL_PORT2				0x16992C
 #define _MG_REFCLKIN_CTL_PORT3				0x16A92C
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
