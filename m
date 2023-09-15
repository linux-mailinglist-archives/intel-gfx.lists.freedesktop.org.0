Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 441AA7A2523
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DCF610E665;
	Fri, 15 Sep 2023 17:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA6010E675;
 Fri, 15 Sep 2023 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800012; x=1726336012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MxGVFyctYSYubYKqyVsJkYnxQ7j6QBwmBkx7nbP4OZ0=;
 b=eVqSH/tYIMXk4gGzJly8AWPf95IKKzPNoHJxPkZlTiVEwFN+Tdwo5KtO
 ul4jCknxRThuBg2I7zntVty0KDk3We2NXu3csHE0LJ5wuVmnD9R3H04I4
 dLZF/NmHB9VpFyJMu8QQLHXzUhZhxAAkhtdrH/VPzGkmWaD+eMxnDbo6K
 2mJYWN/n1lE6aXgm/5RlqHsYp3FWXYYhcaHK+9SIwboNUq3CWSGK/3QQC
 Awqqb8k9/0Daj7U/PklTrnZ+zkJB7U7QIyjiMiKXS9uxMjuPUsy4L3Ewg
 5Pr2NSUxq1cuVzg3U1XG1lZrKHPqs+Yv2CYAy1RARSq9wPeJK1JRJfYJT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779287"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779287"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818309"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818309"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:47 -0700
Message-Id: <20230915174651.1928176-27-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 26/30] drm/i915/lnl: Start using CDCLK
 through PLL
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
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
index efcf1461988f..c59eb411cf06 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5884,6 +5884,7 @@ enum skl_power_gate {
 #define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
 #define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
 #define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
+#define  MDCLK_SOURCE_SEL_CDCLK_PLL	REG_BIT(25)
 #define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
 #define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
 #define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
-- 
2.40.1

