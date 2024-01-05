Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDF28254D7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E28A110E60A;
	Fri,  5 Jan 2024 14:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4FDF10E60A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704463570; x=1735999570;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F8bUtLbmKZVj80Q+el7afR4CCgjOdBBtZixt9ng+0WE=;
 b=NUEV5cbdvCfEXiaRX7jlZ8Fwm+Ce9/4JZHRQ9efXLplz39HCpXPDdk9o
 ppvYY6pM8L79l0va/pcumJ7LquuiAdUyukgXv2EdvCnnSwQI37QySf/S0
 qNIQtfrmpq4jbr/I95LGNBApf4uzVzm8uv10dLBRFry+hY8P1s0GKIiV/
 76BqKj+oOLmjis1SMp9Bh3hx+lF2d6bNLZTcgx64fBjEceQRXtIqooQQ2
 8Io1YvwqHDIv8MikPswiAvjmondYaj/V25nupWBzbI1OVDA+DED3V2mqa
 D2eD5XyMifIgMZMkDbOB2n8T6V5CZnZQb8StAzg1wHJZHM01TB3kdZgIW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="10878633"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="10878633"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:06:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="780777963"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="780777963"
Received: from clspence-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.246.112.15])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:06:08 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/4] drm/i915/cdclk: Extract bxt_cdclk_ctl()
Date: Fri,  5 Jan 2024 11:05:36 -0300
Message-ID: <20240105140538.183553-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240105140538.183553-1-gustavo.sousa@intel.com>
References: <20240105140538.183553-1-gustavo.sousa@intel.com>
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extract logic for deriving the value for CDCLK_CTL into bxt_cdclk_ctl().
This makes the code better readable and will be used later in
bxt_sanitize_cdclk().

v2:
  - Improve body of commit message to be more self-contained.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
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

