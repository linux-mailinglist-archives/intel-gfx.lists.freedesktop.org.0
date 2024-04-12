Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 683508A35A8
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8831D10F7B5;
	Fri, 12 Apr 2024 18:27:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F3mN9Jtl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A8A10F7AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946463; x=1744482463;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8S6BGCfgdvCib1c1lNIzjimmMs5eoZNu3ePxA6Ek+Ss=;
 b=F3mN9JtldTaxF6shGP4iyP3AcrEdEGNXKXkDE/q0QA4tBfCsIL5nWyAJ
 X2Ef2fy0RMWZPpXAYcikpI9wME0oZeSKtSz9CrVXjAVG7tTAcvCoHkUrY
 L/W/uiLk2R40CPynckNkEollCxOXDhsLoYWa8ynWtnpuUPc2p7z7mxZH5
 o8+tSRz5xbI43YGcmUON06wZXfxZtQrWro7sic/6k7oT+Ephmuq5ZF7Qb
 qRHkhM3tGaisSZ1PeWvFT9VVuto/eAy1vXD8EN9/4lLwwYlXIy/I4kBaW
 4tmK/U0FO76cRPOtPiSbl4bzgvTEP2yk/2EkEwTBdU3iO4PIiA6GM1Brk w==;
X-CSE-ConnectionGUID: 9NO0h38/TzqJ2nNdUslZ+Q==
X-CSE-MsgGUID: Al2B4wLvSOOoR1IAb76gJA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560577"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560577"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:42 -0700
X-CSE-ConnectionGUID: gx3lNfkpSzav0oA0Qp65Tg==
X-CSE-MsgGUID: XdblvmDCQMOEfrd2DXH6oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394800"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/18] drm/i915: Modernize i9xx_pll_refclk()
Date: Fri, 12 Apr 2024 21:26:57 +0300
Message-ID: <20240412182703.19916-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Drop the redundant 'dev' argument from i9xx_pll_refclk()
and rename its variables to conform to modern standards.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 43d36ea56798..5246b8a8d461 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -369,17 +369,16 @@ int chv_calc_dpll_params(int refclk, struct dpll *clock)
 	return clock->dot;
 }
 
-static int i9xx_pll_refclk(struct drm_device *dev,
-			   const struct intel_crtc_state *pipe_config)
+static int i9xx_pll_refclk(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	u32 dpll = pipe_config->dpll_hw_state.dpll;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	u32 dpll = crtc_state->dpll_hw_state.dpll;
 
 	if ((dpll & PLL_REF_INPUT_MASK) == PLLB_REF_INPUT_SPREADSPECTRUMIN)
-		return dev_priv->display.vbt.lvds_ssc_freq;
-	else if (HAS_PCH_SPLIT(dev_priv))
+		return i915->display.vbt.lvds_ssc_freq;
+	else if (HAS_PCH_SPLIT(i915))
 		return 120000;
-	else if (DISPLAY_VER(dev_priv) != 2)
+	else if (DISPLAY_VER(i915) != 2)
 		return 96000;
 	else
 		return 48000;
@@ -425,7 +424,7 @@ void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 	u32 fp;
 	struct dpll clock;
 	int port_clock;
-	int refclk = i9xx_pll_refclk(dev, pipe_config);
+	int refclk = i9xx_pll_refclk(pipe_config);
 
 	if ((dpll & DISPLAY_RATE_SELECT_FPA1) == 0)
 		fp = pipe_config->dpll_hw_state.fp0;
-- 
2.43.2

