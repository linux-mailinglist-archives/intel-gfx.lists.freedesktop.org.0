Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5712823B12
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 04:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F44010E373;
	Thu,  4 Jan 2024 03:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D2FC10E373
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 03:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704338555; x=1735874555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xN+WWRdXKJKpYAXhN5QkJKM07ftTfSNzABM6r8mN5NU=;
 b=HRh3qQZqJiqgLxpE007Nq9N/JpYIwgIrfHB415nbnPyq6dPCFCWDaJpT
 pBWRqn/QwZPZzzvszeO+quiOO1rrmS2UYd5xBeHV0NY41KRClI0jFFVla
 0wcMTFOKyhPrU+F4oyikdF5kcs3tMV95WdyV3Cl60DhMaC7SawTk4/Btu
 X5VHK09/n0Ok45Wmj5gf3KiREA6MzcexYQUoy7R8n+8QzV0o8+bkrAi7P
 LTx/2pTwFkSoJFR7MilpeqKGtuS5dS6VNS9h3PJnVckw+edXDxAAsjDYa
 JdNny0YsZbbaNRy9EBuUY+9Zri7owzHU1EycWzGVJPqN+8SjFyx2ZtjZM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="483295291"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="483295291"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 19:22:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="850623678"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="850623678"
Received: from rpasham-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.176.66])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 19:22:31 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/cdclk: Reorder bxt_sanitize_cdclk()
Date: Thu,  4 Jan 2024 00:21:49 -0300
Message-ID: <20240104032150.118954-4-gustavo.sousa@intel.com>
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

Make the sequence of steps more logical by grouping things related to
the check on the value of CDCLK_CTL into a single "block". Also, this
will make an upcoming change replacing that block with a single function
call easier to follow.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 24 +++++++++++-----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b9354ad46fee..fbe9aba41c35 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2060,13 +2060,23 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	    dev_priv->display.cdclk.hw.cdclk == dev_priv->display.cdclk.hw.bypass)
 		goto sanitize;
 
-	/* DPLL okay; verify the cdclock
-	 *
+	/* Make sure this is a legal cdclk value for the platform */
+	cdclk = bxt_calc_cdclk(dev_priv, dev_priv->display.cdclk.hw.cdclk);
+	if (cdclk != dev_priv->display.cdclk.hw.cdclk)
+		goto sanitize;
+
+	/* Make sure the VCO is correct for the cdclk */
+	vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk);
+	if (vco != dev_priv->display.cdclk.hw.vco)
+		goto sanitize;
+
+	/*
 	 * Some BIOS versions leave an incorrect decimal frequency value and
 	 * set reserved MBZ bits in CDCLK_CTL at least during exiting from S4,
 	 * so sanitize this register.
 	 */
 	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
+
 	/*
 	 * Let's ignore the pipe field, since BIOS could have configured the
 	 * dividers both synching to an active pipe, or asynchronously
@@ -2074,16 +2084,6 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	 */
 	cdctl &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
 
-	/* Make sure this is a legal cdclk value for the platform */
-	cdclk = bxt_calc_cdclk(dev_priv, dev_priv->display.cdclk.hw.cdclk);
-	if (cdclk != dev_priv->display.cdclk.hw.cdclk)
-		goto sanitize;
-
-	/* Make sure the VCO is correct for the cdclk */
-	vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk);
-	if (vco != dev_priv->display.cdclk.hw.vco)
-		goto sanitize;
-
 	if (DISPLAY_VER(dev_priv) >= 20)
 		expected = MDCLK_SOURCE_SEL_CDCLK_PLL;
 	else
-- 
2.43.0

