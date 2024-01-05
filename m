Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA388254D9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 293AB10E617;
	Fri,  5 Jan 2024 14:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F35AC10E617
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704463573; x=1735999573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QZAxcwQHZHtw2GFwfVh7UCrsCZ+8isoRW3IasHvMv9w=;
 b=Y6/nVObGR71mV/hK8NeF+hVqBCnagkgtjtClKQJ5dsUa0PV8RsCCdzFH
 mytZtJ2FqqqFx4tFAc8nLI/YNTynoVYDli2TE28gcaHkZ7ChU1HFI9yPl
 OxcT/p5uMa581Tr/sR9C9Zdu+/6Hr2wHWzpl7fgDPhzDKAHlzESVYhWep
 DQ7lKfAlxh7BaMXNU7EB+k1n9cslntQmcMZFfFaiH/p0+fQggzhhDX/51
 JTtLuD5e9+iP9v68vBv3xKeUgDbZ68ZZvED9aJK1iuleXYUSR03psdYmO
 EwKQT/2DxRH3d7HC2N1JXd5VAFE4xVdcvtlkEJh+mQRYTzLydm0fjFijx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="10878654"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="10878654"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:06:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="780777975"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="780777975"
Received: from clspence-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.246.112.15])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:06:11 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 4/4] drm/i915/cdclk: Re-use bxt_cdclk_ctl() when sanitizing
Date: Fri,  5 Jan 2024 11:05:38 -0300
Message-ID: <20240105140538.183553-5-gustavo.sousa@intel.com>
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

The function bxt_cdclk_ctl() is responsible for deriving the value for
CDCLK_CTL; use it instead of repeating the same logic.

v2:
  - Use a better commit message body by making it more self-contained
    and not referring to stuff from the subject line. (Matt)

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
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

