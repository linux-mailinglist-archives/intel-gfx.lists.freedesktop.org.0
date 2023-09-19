Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DA27A6B84
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB21B10E2A7;
	Tue, 19 Sep 2023 19:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83ED810E288
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151287; x=1726687287;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LVycpaphrKAne/Gb5QNg69rrlXtrLR2eDex7bb7ykdw=;
 b=msZ5OOnfl335DLET3SMz6gdyE0cP8snJurG1mLsq0IjdoKEA/b6GUYqe
 EjyHSk8mgJzYrpvh3NyL7aEtcM850NFtO1Tsby0qGtv6T7VkD06ySoNKF
 y0zKUF0oazsnsatJFZsLB7LamFuShb92UQMzPWauz5FGT9Oq+TunKtzkw
 NLz7gyhH/uGeBTWo0IGMuN4VwBKKkBwiTPnMC3OzPlhjAxqYHHUOHxcyQ
 RstCrgkEVf7+z1Q357NWCERE2hq4RCY0uVl37My0GBzuPB7b3QO7U2AL/
 XCFSgYBtIHGQcqH7DK/StonDkhDPE1DpbjfSw2yevTEA8tVQQTYV3JT2f A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423150"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423150"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350113"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350113"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:28 -0700
Message-Id: <20230919192128.2045154-22-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 22/22] drm/i915/lnl: Start using CDCLK through PLL
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Introduce correspondent definitions for choosing between CD2X CDCLK
and PLL CDCLK as a source. All the entries in cdclk table for xe2lpd are
defined with PLL CDCLK as source, so simply set it. Also
skl_cdclk_decimal() shouldn't be set in CDCLK_CTL anymore, so skip it
for display version 20 and above.

v2:
  - Remove unneeded comment and use REG_BIT() (Matt Roper)
  - Rename CDCLK_SOURCE_SEL_CDCLK_PLL() to MDCLK_SOURCE_SEL_CDCLK_PLL
    to match spec (Lucas)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 9 +++++++--
 drivers/gpu/drm/i915/i915_reg.h            | 1 +
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4cde78db83a1..b55a3f75f392 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1906,8 +1906,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		dg2_cdclk_squash_program(dev_priv, waveform);
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
-		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
-		skl_cdclk_decimal(cdclk);
+		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
 
 	/*
 	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
@@ -1916,6 +1915,12 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
 	    cdclk >= 500000)
 		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
+
+	if (DISPLAY_VER(dev_priv) >= 20)
+		val |= MDCLK_SOURCE_SEL_CDCLK_PLL;
+	else
+		val |= skl_cdclk_decimal(cdclk);
+
 	intel_de_write(dev_priv, CDCLK_CTL, val);
 
 	if (pipe != INVALID_PIPE)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d67f381050dc..e0ea2dc13556 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5882,6 +5882,7 @@ enum skl_power_gate {
 #define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
 #define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
 #define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
+#define  MDCLK_SOURCE_SEL_CDCLK_PLL	REG_BIT(25)
 #define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
 #define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
 #define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
-- 
2.40.1

