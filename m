Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7AD870993
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 19:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72F311246F;
	Mon,  4 Mar 2024 18:31:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TyEiGoan";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0DAF11246D;
 Mon,  4 Mar 2024 18:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709577069; x=1741113069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vwh5BhC8CEiWQoZ7PP2zrTPvnlmj/OvbsGFhjwsdKzg=;
 b=TyEiGoanghB2wVBLUIxIvJxnr+n3IE0FC6m7nLenpeJLv+ZnItgp6MJd
 SuylydccSXoQvs9/V5HExf54sK7UG/vTQ65bCXCMfmFQ8sewKlkWjiCXm
 ntL7+UC5bjtabMQtFi7JUUz9iVUlysqJ58cOpZiOtWnhJv7qLtlQBY2Qn
 j/5K5TA91lqLxUsLjJo01F5XmIPStpTjpdcf9VdKDoFzlo4Uz4COR1XJr
 et+ri5g/PXX1sPCt/ICH6LE69Q0mwETK8gxpt3sE6NUV0sSadilbxT7QQ
 gY17ek5u4gAs9um7vJi0uVMiMDYF/p8g/DeIsFnbXl6F294LRdJRob1oP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="3943511"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="3943511"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13756448"
Received: from ticela-or-128.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.50])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:07 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, vinod.govindapillai@intel.com,
 stanislav.lisovskiy@intel.com, Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 2/8] drm/i915/cdclk: Add and use xe2lpd_mdclk_source_sel()
Date: Mon,  4 Mar 2024 15:30:21 -0300
Message-ID: <20240304183028.195057-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240304183028.195057-1-gustavo.sousa@intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
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

There will be future changes that rely on the source of the MDCLK. Let's
have xe2lpd_mdclk_source_sel() as the function responsible for reporting
that information.

Bspec: 69090
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 17 ++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h            |  4 +++-
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 407bd541eb46..bf84bf27213f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1876,6 +1876,21 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
 	return vco == ~0;
 }
 
+static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) >= 20)
+		return MDCLK_SOURCE_SEL_CDCLK_PLL;
+
+	/*
+	 * Earlier display IPs do not provide means of selecting the
+	 * MDCLK source, but MDCLK_SOURCE_SEL_CD2XCLK is a nice default,
+	 * since it reflects the source used for those and allows
+	 * xe2lpd_mdclk_source_sel() to be used in logic that depends on
+	 * it.
+	 */
+	return MDCLK_SOURCE_SEL_CD2XCLK;
+}
+
 static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
 						    const struct intel_cdclk_config *old_cdclk_config,
 						    const struct intel_cdclk_config *new_cdclk_config,
@@ -1980,7 +1995,7 @@ static u32 bxt_cdclk_ctl(struct drm_i915_private *i915,
 		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
 
 	if (DISPLAY_VER(i915) >= 20)
-		val |= MDCLK_SOURCE_SEL_CDCLK_PLL;
+		val |= xe2lpd_mdclk_source_sel(i915);
 	else
 		val |= skl_cdclk_decimal(cdclk);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e00557e1a57f..eb953ed1f113 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5900,7 +5900,9 @@ enum skl_power_gate {
 #define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
 #define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
 #define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
-#define  MDCLK_SOURCE_SEL_CDCLK_PLL	REG_BIT(25)
+#define  MDCLK_SOURCE_SEL_MASK		REG_GENMASK(25, 25)
+#define  MDCLK_SOURCE_SEL_CD2XCLK	REG_FIELD_PREP(MDCLK_SOURCE_SEL_MASK, 0)
+#define  MDCLK_SOURCE_SEL_CDCLK_PLL	REG_FIELD_PREP(MDCLK_SOURCE_SEL_MASK, 1)
 #define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
 #define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
 #define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
-- 
2.44.0

