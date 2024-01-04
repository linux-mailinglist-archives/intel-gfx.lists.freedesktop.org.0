Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26911823B10
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 04:22:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEBFC10E35B;
	Thu,  4 Jan 2024 03:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E89410E35B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 03:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704338555; x=1735874555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UPbTkOhrRqhyyB8Phf2x2nB9INtCOl4mAIM4puXupGM=;
 b=iBxD0k+9eMxaOJ8GwsC/lBUNvbNu1SB6K2EjYay5jeJLkSQuWlHePrtS
 fV07HOSC4p9iqH4jN0NSxCzdVm87y7E2L4VdLB06ik2JpGnMP0GeyD37e
 esToMsgpmFSaIZvv6oLmnJAYvFiq8KjidlJsBPYCKdsn2MCHb4vrxQoi7
 aj8q8RaL/fk7imDk0eQv1gWijA4qahzDoqBklheFMrdyRRESw/F2wvDLp
 wSE7X4lnuUGcPegLcYCBO4NxIpm+FcYgZJK+8stScbEt3ePN+ygd/XFzM
 yKQ77AoE9O14bsb6bk2wviKPmFhB2UJLpvsxxh7Qa/BtyODnWK0CSFofQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="483295290"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="483295290"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 19:22:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="850623674"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="850623674"
Received: from rpasham-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.176.66])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 19:22:30 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/cdclk: Extract bxt_cdclk_ctl()
Date: Thu,  4 Jan 2024 00:21:48 -0300
Message-ID: <20240104032150.118954-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240104032150.118954-1-gustavo.sousa@intel.com>
References: <20240104032150.118954-1-gustavo.sousa@intel.com>
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

This makes the code better readable and will be used later in
bxt_sanitize_cdclk().

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 57 +++++++++++++---------
 1 file changed, 35 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0012e3171f3f..b9354ad46fee 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1900,15 +1900,47 @@ static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
 		dev_priv->display.cdclk.hw.vco > 0;
 }
 
+static u32 bxt_cdclk_ctl(struct drm_i915_private *i915,
+			 const struct intel_cdclk_config *cdclk_config,
+			 enum pipe pipe)
+{
+	int cdclk = cdclk_config->cdclk;
+	int vco = cdclk_config->vco;
+	int unsquashed_cdclk;
+	u16 waveform;
+	u32 val;
+
+	waveform = cdclk_squash_waveform(i915, cdclk);
+
+	unsquashed_cdclk = DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
+					     cdclk_squash_divider(waveform));
+
+	val = bxt_cdclk_cd2x_div_sel(i915, unsquashed_cdclk, vco) |
+		bxt_cdclk_cd2x_pipe(i915, pipe);
+
+	/*
+	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
+	 * enable otherwise.
+	 */
+	if ((IS_GEMINILAKE(i915) || IS_BROXTON(i915)) &&
+	    cdclk >= 500000)
+		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
+
+	if (DISPLAY_VER(i915) >= 20)
+		val |= MDCLK_SOURCE_SEL_CDCLK_PLL;
+	else
+		val |= skl_cdclk_decimal(cdclk);
+
+	return val;
+}
+
 static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			   const struct intel_cdclk_config *cdclk_config,
 			   enum pipe pipe)
 {
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
-	int unsquashed_cdclk;
 	u16 waveform;
-	u32 val;
 
 	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
 	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
@@ -1925,29 +1957,10 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
 
-	unsquashed_cdclk = DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
-					     cdclk_squash_divider(waveform));
-
 	if (HAS_CDCLK_SQUASH(dev_priv))
 		dg2_cdclk_squash_program(dev_priv, waveform);
 
-	val = bxt_cdclk_cd2x_div_sel(dev_priv, unsquashed_cdclk, vco) |
-		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
-
-	/*
-	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
-	 * enable otherwise.
-	 */
-	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
-	    cdclk >= 500000)
-		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
-
-	if (DISPLAY_VER(dev_priv) >= 20)
-		val |= MDCLK_SOURCE_SEL_CDCLK_PLL;
-	else
-		val |= skl_cdclk_decimal(cdclk);
-
-	intel_de_write(dev_priv, CDCLK_CTL, val);
+	intel_de_write(dev_priv, CDCLK_CTL, bxt_cdclk_ctl(dev_priv, cdclk_config, pipe));
 
 	if (pipe != INVALID_PIPE)
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
-- 
2.43.0

