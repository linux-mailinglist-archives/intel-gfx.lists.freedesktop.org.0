Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE40B16F2E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 12:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 791FE10E764;
	Thu, 31 Jul 2025 10:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hd+A0UqH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A671F10E763;
 Thu, 31 Jul 2025 10:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753956335; x=1785492335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UKufhOwih0U7axfyr16iTBsq4N+S3UJCgSOBanrZXCk=;
 b=Hd+A0UqHcebji9bGJPJ0Z3URhMJtcUTqVBA1lDgLxleQC4ibMP4JCvCy
 eMwRdLtcz4cj0PP6hdGmCKHPyOhqrQiP1QPBc7N4WQPzpsoUjF2x3/Mva
 37ca6wnTozdr699GMmuRzxRxU5cx04r7Xr3uSEUPtsKLM+amVQCKwZtMI
 5cYz4spwGTV7N/LrVAJKRZGsUzm9NHtQZAQ7V1+KMkZowB2/eFowjgVlK
 G0XxFNyWE5WzRT2MvEUXF0k9T61SWQLoOsqj9I8xL8AZgO8DtQihri9ir
 HzgsfUxKstfzQpTS30a4lFNIlHRF8TLnIg23a/C+TxZ6a0WB9Slx36lLg g==;
X-CSE-ConnectionGUID: 0vafSyFJTLy1FLK8AOtoSg==
X-CSE-MsgGUID: AHlixBD3SduTMnQssJenWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="59922986"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="59922986"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:35 -0700
X-CSE-ConnectionGUID: zWmLcgVST3Kr9bwrBTwlHw==
X-CSE-MsgGUID: 9sgRQXO7TZm0X8gTvSGXUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167456292"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 3/7] drm/i915/dpll: use intel_de_wait_custom() instead of
 wait_for_us()
Date: Thu, 31 Jul 2025 13:05:10 +0300
Message-Id: <d8c381524d721e01228b76b71080c6e4ccc528e9.1753956266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer the register read specific wait function over i915 wait_for_us().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 20 +++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 33e0398120c8..8ea96cc524a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2046,6 +2046,7 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
 	enum dpio_phy phy = DPIO_PHY0;
 	enum dpio_channel ch = DPIO_CH0;
 	u32 temp;
+	int ret;
 
 	bxt_port_to_phy_channel(display, port, &phy, &ch);
 
@@ -2056,8 +2057,10 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
 		intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port),
 			     0, PORT_PLL_POWER_ENABLE);
 
-		if (wait_for_us((intel_de_read(display, BXT_PORT_PLL_ENABLE(port)) &
-				 PORT_PLL_POWER_STATE), 200))
+		ret = intel_de_wait_custom(display, BXT_PORT_PLL_ENABLE(port),
+					   PORT_PLL_POWER_STATE, PORT_PLL_POWER_STATE,
+					   200, 0, NULL);
+		if (ret)
 			drm_err(display->drm,
 				"Power state not set for PLL:%d\n", port);
 	}
@@ -2119,8 +2122,10 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
 	intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_ENABLE);
 	intel_de_posting_read(display, BXT_PORT_PLL_ENABLE(port));
 
-	if (wait_for_us((intel_de_read(display, BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
-			200))
+	ret = intel_de_wait_custom(display, BXT_PORT_PLL_ENABLE(port),
+				   PORT_PLL_LOCK, PORT_PLL_LOCK,
+				   200, 0, NULL);
+	if (ret)
 		drm_err(display->drm, "PLL %d not locked\n", port);
 
 	if (display->platform.geminilake) {
@@ -2144,6 +2149,7 @@ static void bxt_ddi_pll_disable(struct intel_display *display,
 				struct intel_dpll *pll)
 {
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
+	int ret;
 
 	intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port), PORT_PLL_ENABLE, 0);
 	intel_de_posting_read(display, BXT_PORT_PLL_ENABLE(port));
@@ -2152,8 +2158,10 @@ static void bxt_ddi_pll_disable(struct intel_display *display,
 		intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port),
 			     PORT_PLL_POWER_ENABLE, 0);
 
-		if (wait_for_us(!(intel_de_read(display, BXT_PORT_PLL_ENABLE(port)) &
-				  PORT_PLL_POWER_STATE), 200))
+		ret = intel_de_wait_custom(display, BXT_PORT_PLL_ENABLE(port),
+					   PORT_PLL_POWER_STATE, 0,
+					   200, 0, NULL);
+		if (ret)
 			drm_err(display->drm,
 				"Power state not reset for PLL:%d\n", port);
 	}
-- 
2.39.5

