Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C11D18254D8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:06:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF79710E615;
	Fri,  5 Jan 2024 14:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7158710E615
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704463572; x=1735999572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VGTXxAJPNA85BCUb5i+W7KvmiJt9B9FZGiLLSzJa/es=;
 b=GgZMXCPuA27t2i9yx38lRI0Lb7Gdad9BBCEo0hMs13jBD24BW2BN6wUT
 4GyU8dEwO/8OFUsYvEc3sEY4wwg0MSbFtF/l2mKd7//EETKp5fRZaTSon
 dDiJxJdUlWHA/Xk+2z6yRohoIpHQ6dwqCGyjJ2VvqrzKidQhgHVIpXc+M
 Gb6zdusy7k01qjW7smIxX++VPnwKYaxzifSnhR59prWmtJQoOhTzdaS68
 K7KRiotkLB83XpHSsL2Jxz0HffGQM+NS+mMXTp+NmuSJjOCNOgV0gxWN/
 J3Msi6BAvgMCXFoE5heJ0BQtJdWoSqWjUa0mcLQKdppQH9M7mR1/T8iDP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="10878642"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="10878642"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:06:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="780777971"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="780777971"
Received: from clspence-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.246.112.15])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:06:09 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 3/4] drm/i915/cdclk: Reorder bxt_sanitize_cdclk()
Date: Fri,  5 Jan 2024 11:05:37 -0300
Message-ID: <20240105140538.183553-4-gustavo.sousa@intel.com>
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

Make the sequence of steps in bxt_sanitize_cdclk() more logical by
grouping things related to the check on the value of CDCLK_CTL into a
single "block". Also, this will make an upcoming change replacing that
block with a single function call easier to follow.

v2:
  - Improve body of commit message to be more self-contained.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
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

