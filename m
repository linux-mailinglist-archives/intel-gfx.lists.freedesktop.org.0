Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7298E785E42
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:10:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585D710E4C6;
	Wed, 23 Aug 2023 17:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B45B10E48B;
 Wed, 23 Aug 2023 17:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810562; x=1724346562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pp0TDJaGm9dtjJIRuV1jfu2eMpRn1OexCRCwmX0AYYk=;
 b=TWuHuEtU4saVSwWcekXzdUjzGlNqBGnTByplCgZvGOCqJmtgJuGVZFNk
 hPUz+vXlB+KqqUVv0DC+vWHSqHLepm8EnNGnLu/3IdsL4Ud3CyAPmlOwQ
 q7zIblGZ4UMjDgt3v03lp+wU1eUF9aOpscx5BF7ANHkzOx1ftVPQhzbgh
 JtKwWq6bFZ17wVw+WdKNHjnQuq5p7LtvB6AXhdx7C+AecWs+94LYD+rRF
 j3LLH/JWnGlUysL4wqPwQidz4kj68AJNfEtLDNPqzy6bh2Of9xsYkdWaP
 efQQEdfP4vUfjhBrZ+BcQ5D7GeBMYs8woOgr2I3yaDDAoIRM3TLfvxXjA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147509"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147509"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204870"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204870"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:21 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:32 -0700
Message-Id: <20230823170740.1180212-35-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 34/42] drm/i915/lnl: Start using CDCLK through
 PLL
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Introduce correspondent definitions and for choosing between CD2X CDCLK
and PLL CDCLK as a source.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h            |  3 +++
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ed45a2cf5c9a..04937aaabcee 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1932,8 +1932,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		dg2_cdclk_squash_program(dev_priv, waveform);
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
-		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
-		skl_cdclk_decimal(cdclk);
+		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
 
 	/*
 	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
@@ -1942,6 +1941,17 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
 	    cdclk >= 500000)
 		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
+
+	if (DISPLAY_VER(dev_priv) >= 20)
+		/*
+		 * Using CDCLK through PLL seems to be always better option when
+		 * its supported, both in terms of performance and power
+		 * consumption.
+		 */
+		val |= CDCLK_SOURCE_SEL_CDCLK_PLL;
+	else
+		val |= skl_cdclk_decimal(cdclk);
+
 	intel_de_write(dev_priv, CDCLK_CTL, val);
 
 	if (pipe != INVALID_PIPE)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fa85530afac3..d5850761a75a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5933,6 +5933,9 @@ enum skl_power_gate {
 #define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
 #define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
 #define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
+#define  CDCLK_SOURCE_SEL_MASK		REG_BIT(25)
+#define  CDCLK_SOURCE_SEL_CD2X		REG_FIELD_PREP(CDCLK_SOURCE_SEL_MASK, 0)
+#define  CDCLK_SOURCE_SEL_CDCLK_PLL	REG_FIELD_PREP(CDCLK_SOURCE_SEL_MASK, 1)
 #define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
 #define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
 #define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
-- 
2.40.1

