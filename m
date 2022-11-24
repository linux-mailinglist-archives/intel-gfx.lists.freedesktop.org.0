Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5D263769D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 11:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46EB410E6D9;
	Thu, 24 Nov 2022 10:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7016010E6D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Nov 2022 10:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669286293; x=1700822293;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4kTtzZ7GLFkBVMjKrzP0kUkK+mLhcbTRPkLlym5OKmY=;
 b=a39QiwFHPaYU3ibCNGWUkNgO42/Qt/IFJjqMb5vQwmGexFpumOcXv8Qg
 yrnjAtfjqWrXui7knxSAKI1kyRFYAJLnUMY/8/uj7CFUSp4jWGaOKXBMH
 KWwtaa0AFR5Uh1ap3XYoHSNMa+6sE6Nx2wODP/6IFmZ2GnpfJmscxbfNw
 0uHjTkpcFpov+v2C0JdeVrwoi1YHBQ/iD79cAlTRRTrRg326axPcd5DvG
 nj/yG4eTgo8+TM9KJimcPDPblEsfxViBbATNiypghQf+dkntaFYMaWlej
 tuBwW5Ws30lLDwmXL1iT/S5BWPTgvzbbn7BU9zJt+HJ9TxXyoXk7SL0ul A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="400566045"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="400566045"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 02:36:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="675050048"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="675050048"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 24 Nov 2022 02:36:26 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Nov 2022 12:36:23 +0200
Message-Id: <20221124103623.13974-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221124103623.13974-1-stanislav.lisovskiy@intel.com>
References: <20221124103623.13974-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for CDCLK
 PLL disable/enable
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It was reported that we might get a hung and loss of register access in
some cases when CDCLK PLL is disabled and then enabled, while squashing
is enabled.
As a workaround it was proposed by HW team that SW should disable squashing
when CDCLK PLL is being reenabled.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0c107a38f9d0..e338f288c9ac 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1801,6 +1801,13 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 	return true;
 }
 
+static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
+{
+	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
+		&& dev_priv->display.cdclk.hw.vco > 0
+		&& HAS_CDCLK_SQUASH(dev_priv));
+}
+
 static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			   const struct intel_cdclk_config *cdclk_config,
 			   enum pipe pipe)
@@ -1815,9 +1822,12 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
 		if (dev_priv->display.cdclk.hw.vco != vco)
 			adlp_cdclk_pll_crawl(dev_priv, vco);
-	} else if (DISPLAY_VER(dev_priv) >= 11)
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
+		if (pll_enable_wa_needed(dev_priv))
+			dg2_cdclk_squash_program(dev_priv, 0);
+
 		icl_cdclk_pll_update(dev_priv, vco);
-	else
+	} else
 		bxt_cdclk_pll_update(dev_priv, vco);
 
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
-- 
2.37.3

