Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7392B27E180
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEAB6E513;
	Wed, 30 Sep 2020 06:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A4586E4FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:47 +0000 (UTC)
IronPort-SDR: jhrKk7cKKb3Oi/EWf4MCcqwVjpEyWfwnb7/98eTl4D9R03i3o1+6D+Mt9+Hi+NOK7VfuUtG62J
 PCrrSRr0tu4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387756"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387756"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:46 -0700
IronPort-SDR: hEnHVzczZwQz3iBDKUk61GWkO7xU5wHd9UD92w7e+LuV9m5LD33bCgFxqAmbm9ppc1Ha59UHQr
 DySzLq123Qyw==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487705"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:17 -0700
Message-Id: <20200930064234.85769-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 07/24] drm/i915/dg1: Add DPLL macros for DG1
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

From: Aditya Swarup <aditya.swarup@intel.com>

DG1 has 4 DPLLs where DPLL0 and DPLL1 drive DDIA/B and
DPLL2 and DPLL3 drive DDI-TC1/DDI-TC2.

Introduce DG1_DPLL_CFCRx() helper macros to configure
DPLL registers.

Bspec: 50288, 50299

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 17 +++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 17 ++++++++++++++++-
 2 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 5d9a2bc371e7..205542fb8dc7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -154,6 +154,23 @@ enum intel_dpll_id {
 	 * @DPLL_ID_TGL_MGPLL6: TGL TC PLL port 6 (TC6)
 	 */
 	DPLL_ID_TGL_MGPLL6 = 8,
+
+	/**
+	 * @DPLL_ID_DG1_DPLL0: DG1 combo PHY DPLL0
+	 */
+	DPLL_ID_DG1_DPLL0 = 0,
+	/**
+	 * @DPLL_ID_DG1_DPLL1: DG1 combo PHY DPLL1
+	 */
+	DPLL_ID_DG1_DPLL1 = 1,
+	/**
+	 * @DPLL_ID_DG1_DPLL2: DG1 combo PHY DPLL2
+	 */
+	DPLL_ID_DG1_DPLL2 = 2,
+	/**
+	 * @DPLL_ID_DG1_DPLL3: DG1 combo PHY DPLL3
+	 */
+	DPLL_ID_DG1_DPLL3 = 3,
 };
 
 #define I915_NUM_PLLS 9
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8582dbe6ef69..6d32d534543f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -242,7 +242,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
 #define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
 #define _MMIO_PHY3(phy, a, b, c)	_MMIO(_PHY3(phy, a, b, c))
-#define _MMIO_PLL3(pll, a, b, c)	_MMIO(_PICK(pll, a, b, c))
+#define _MMIO_PLL3(pll, ...)		_MMIO(_PICK(pll, __VA_ARGS__))
+
 
 /*
  * Device info offset array based helpers for groups of registers with unevenly
@@ -10527,6 +10528,20 @@ enum skl_power_gate {
 #define RKL_DPLL_CFGCR1(pll)		_MMIO_PLL(pll, _TGL_DPLL0_CFGCR1, \
 						  _TGL_DPLL1_CFGCR1)
 
+#define _DG1_DPLL2_CFGCR0		0x16C284
+#define _DG1_DPLL3_CFGCR0		0x16C28C
+#define DG1_DPLL_CFGCR0(pll)		_MMIO_PLL3(pll, _TGL_DPLL0_CFGCR0, \
+						   _TGL_DPLL1_CFGCR0, \
+						   _DG1_DPLL2_CFGCR0, \
+						   _DG1_DPLL3_CFGCR0)
+
+#define _DG1_DPLL2_CFGCR1               0x16C288
+#define _DG1_DPLL3_CFGCR1               0x16C290
+#define DG1_DPLL_CFGCR1(pll)            _MMIO_PLL3(pll, _TGL_DPLL0_CFGCR1, \
+						   _TGL_DPLL1_CFGCR1, \
+						   _DG1_DPLL2_CFGCR1, \
+						   _DG1_DPLL3_CFGCR1)
+
 #define _DKL_PHY1_BASE			0x168000
 #define _DKL_PHY2_BASE			0x169000
 #define _DKL_PHY3_BASE			0x16A000
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
