Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD7B823B11
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 04:22:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51BF010E376;
	Thu,  4 Jan 2024 03:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AAE710E376
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 03:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704338555; x=1735874555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TOeC0Cx3kqtcBbBsAMoqt23jSD+SeQhTzPLKE3vTxGE=;
 b=GC0oM6nC4JYFdPPfdFrF9yrr4/YiJt5JutqyzFXWEjR0Sc1tlnNjwU0B
 TJYacd/MQX8Tc+JQy4xz0IB3eszcmXQCf8ojmrBeShpMSo+T37eH315Xi
 52qlum+oe+fXwrkWY7Th05hMG1iKfc7wptK4JECPDK0wlgZE4Q+7bol4o
 RGNgIX/6SVnD10GqzV72rs2eseZ+P4M0Asy2jNWAj/nrRi8WymkDgm+UD
 lJ972IN8GjD64++BwJcHQrC++FS+SKeH6oKFcMcd23CSDGCUsfdQU0kED
 Ymbt3rnv8jpoOIt/gWBApKKdOLLGN5wrYFTI8qLBU8XNIwE4OfSjXwYjB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="483295296"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="483295296"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 19:22:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="850623685"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="850623685"
Received: from rpasham-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.176.66])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 19:22:32 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/cdclk: Re-use bxt_cdclk_ctl() when sanitizing
Date: Thu,  4 Jan 2024 00:21:50 -0300
Message-ID: <20240104032150.118954-5-gustavo.sousa@intel.com>
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

That's the function responsible for deriving that register's value; use
it.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 26 +++-------------------
 1 file changed, 3 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index fbe9aba41c35..26200ee3e23f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2051,7 +2051,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 {
 	u32 cdctl, expected;
-	int cdclk, clock, vco;
+	int cdclk, vco;
 
 	intel_update_cdclk(dev_priv);
 	intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "Current CDCLK");
@@ -2076,6 +2076,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	 * so sanitize this register.
 	 */
 	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
+	expected = bxt_cdclk_ctl(dev_priv, &dev_priv->display.cdclk.hw, INVALID_PIPE);
 
 	/*
 	 * Let's ignore the pipe field, since BIOS could have configured the
@@ -2083,28 +2084,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	 * (PIPE_NONE).
 	 */
 	cdctl &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
-
-	if (DISPLAY_VER(dev_priv) >= 20)
-		expected = MDCLK_SOURCE_SEL_CDCLK_PLL;
-	else
-		expected = skl_cdclk_decimal(cdclk);
-
-	/* Figure out what CD2X divider we should be using for this cdclk */
-	if (HAS_CDCLK_SQUASH(dev_priv))
-		clock = dev_priv->display.cdclk.hw.vco / 2;
-	else
-		clock = dev_priv->display.cdclk.hw.cdclk;
-
-	expected |= bxt_cdclk_cd2x_div_sel(dev_priv, clock,
-					   dev_priv->display.cdclk.hw.vco);
-
-	/*
-	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
-	 * enable otherwise.
-	 */
-	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
-	    dev_priv->display.cdclk.hw.cdclk >= 500000)
-		expected |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
+	expected &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
 
 	if (cdctl == expected)
 		/* All well; nothing to sanitize */
-- 
2.43.0

