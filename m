Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B03C27974B1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE25110E834;
	Thu,  7 Sep 2023 15:40:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FC8610E811;
 Thu,  7 Sep 2023 15:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101207; x=1725637207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NgV91TtJJ9Jz86l1g8bF6zD+vFCFYdQum/1AhV57+8U=;
 b=nrM/Iy3VNQV21zgLcAbzAQL993A7RIBnWB1lNtjL23XTujbYxDu19Iep
 I7IaoFaPpHG/RAg+HQudHu7/RyzQn4ckJx9k+PLSEZbrZihXagOrPoU49
 SPvGqDv5jop6LAZ4/j5wLNSQgxQvMsXd0vtN705CH4gQl/9NwUtYffnXL
 Q5Lw7O/lB9PYJr168/n2PENo65f5igXt2PhrRjUqBJmqzR70u5T2oLVJX
 le+SbtEcJfG/pnggzTyQc0+HI44xc7d5QbUeKyee5oYRlr83DBMHAM30O
 FSr0yBA3k5z1yjEFi6DHeU9bpSXxwpPFvXzIG/wVdaUltNjOIc6qzLz7+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445810"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445810"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930310"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930310"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:53 -0700
Message-Id: <20230907153757.2249452-24-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 23/27] drm/i915/lnl: Start using CDCLK
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Introduce correspondent definitions and for choosing between CD2X CDCLK
and PLL CDCLK as a source. All the entries in cdclk table for xe2lpd are
defined with PLL CDCLK as source, so simply set it.

v2:
  - Remove unneeded comment and use REG_BIT() (Matt Roper)
  - Rename CDCLK_SOURCE_SEL_CDCLK_PLL() to MDCLK_SOURCE_SEL_CDCLK_PLL
    to match spec (Lucas)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 9 +++++++--
 drivers/gpu/drm/i915/i915_reg.h            | 1 +
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7307af2a4af5..abe845906c7c 100644
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

