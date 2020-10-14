Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E8228E736
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 21:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567E56EB3E;
	Wed, 14 Oct 2020 19:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D5BA6EB37
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 19:20:51 +0000 (UTC)
IronPort-SDR: cNBwqqp+auqxQwtyNdWTuYaOUQvcsam+flm5miOrXcuEszQK0aJVmf++VQAE/sARVAh8imvyYC
 7vbaMCs5D3Dw==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="183703016"
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="183703016"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:44 -0700
IronPort-SDR: NEcjXk407+uKA/ABKSBQdD/+Q5j3+Kc/Q1gEvgAVEm08oXchVtnOTN5AoYwB9kd3ObbxJWqlfy
 HZZ9xOewlZ8Q==
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="345781248"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 12:19:32 -0700
Message-Id: <20201014191937.1266226-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014191937.1266226-1-lucas.demarchi@intel.com>
References: <20201014191937.1266226-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 06/11] drm/i915/dg1: Enable DPLL for DG1
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
Reviewed-by: Aditya Swarup <aditya.swarup@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 ++++----
 drivers/gpu/drm/i915/i915_reg.h               | 4 ++++
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 2f412d2c9d09..eaef7a2d041f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -151,14 +151,14 @@ static i915_reg_t
 intel_combo_pll_enable_reg(struct drm_i915_private *i915,
 			   struct intel_shared_dpll *pll)
 {
-
-	if (IS_JSL_EHL(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))
+	if (IS_DG1(i915))
+		return DG1_DPLL_ENABLE(pll->info->id);
+	else if (IS_JSL_EHL(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))
 		return MG_PLL_ENABLE(0);
 
 	return CNL_DPLL_ENABLE(pll->info->id);
-
-
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
