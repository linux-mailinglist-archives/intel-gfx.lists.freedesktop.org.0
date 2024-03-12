Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D74E4879911
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:37:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C8510F4C8;
	Tue, 12 Mar 2024 16:37:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CoY74d/Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73A0610F3D3;
 Tue, 12 Mar 2024 16:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710261422; x=1741797422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gVBrQvUFz0hWizFC+IxA+QzCLseYBf7KAgU93qZcM5E=;
 b=CoY74d/QpT5hch+CgLl6Mu48brKg4g1yi9ypK39D6+R635ObBDOOCGDq
 fx2+1//txJ7ZwtGsyMp/KlhbC3bbF3OwPNVxYmBX/6KMJ6RVkWySP+dQd
 hdpu3xRfaVphn/ksRweMStT2n7bmC3NRn2W/Le440dzp+vSCkFpyh5M4y
 HwOOTFOLWBm3dB66DU7B6yZp33pCUAohDgIxTKxXV8RgbolShQqGTgMyN
 aGV4d/zubKN8/ylsIYk831h1Br+EB1EJ0zxpPzsXpPcUNI0xA9xL0wlVQ
 9GMPf1J1YPEImtW7lpjPf0pp3ANN3wQ1KpArm7E0KLtVkdp67uL0ukiUH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="27458067"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="27458067"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16245811"
Received: from ticela-or-524.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.238])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:01 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 gustavo.sousa@intel.com
Subject: [PATCH v2 2/8] drm/i915/cdclk: Add and use mdclk_source_is_cdclk_pll()
Date: Tue, 12 Mar 2024 13:36:33 -0300
Message-ID: <20240312163639.172321-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240312163639.172321-1-gustavo.sousa@intel.com>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
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

Currently, only Xe2LPD uses CDCLK PLL as the source of MDCLK and
previous display IPs use the CD2XCLK. There will be changes in code
paths common to those platforms that will rely on which source is being
used. As such, let's make that information explicit with the addition of
the predicate function mdclk_source_is_cdclk_pll().

Arguably, an enum could be created, but using a boolean should suffice
here, since we there are only two possible sources and the logic that
will rely on it will be very localized.

In order to get the code into a more consistent state, let's also take
this opportunity to hook the selection of CDCLK_CTL's "MDCLK Source
Select" to that new function. Even though currently only
MDCLK_SOURCE_SEL_CDCLK_PLL will be returned, having this extra logic is
arguably better than keeping stuff untied and prone to bugs.

v2:
  - Extract mdclk_source_is_cdclk_pll() out of xe2lpd_mdclk_source_sel()
    to make latter only about the register's field.

Bspec: 69090
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 15 ++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h            |  4 +++-
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index be268c6abe21..ad0f03e51e4a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1876,6 +1876,19 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
 	return vco == ~0;
 }
 
+static bool mdclk_source_is_cdclk_pll(struct drm_i915_private *i915)
+{
+	return DISPLAY_VER(i915) >= 20;
+}
+
+static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
+{
+	if (mdclk_source_is_cdclk_pll(i915))
+		return MDCLK_SOURCE_SEL_CDCLK_PLL;
+
+	return MDCLK_SOURCE_SEL_CD2XCLK;
+}
+
 static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
 						    const struct intel_cdclk_config *old_cdclk_config,
 						    const struct intel_cdclk_config *new_cdclk_config,
@@ -1980,7 +1993,7 @@ static u32 bxt_cdclk_ctl(struct drm_i915_private *i915,
 		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
 
 	if (DISPLAY_VER(i915) >= 20)
-		val |= MDCLK_SOURCE_SEL_CDCLK_PLL;
+		val |= xe2lpd_mdclk_source_sel(i915);
 	else
 		val |= skl_cdclk_decimal(cdclk);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8823531b8770..d6193c858a74 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5891,7 +5891,9 @@ enum skl_power_gate {
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

