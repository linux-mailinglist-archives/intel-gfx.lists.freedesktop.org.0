Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AFCAB548A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 14:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55F0A10E589;
	Tue, 13 May 2025 12:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lapycrm+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 142F710E589;
 Tue, 13 May 2025 12:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747138642; x=1778674642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZEY/kaUCfMqcYEgWTKzU+c7MJ6QOb1mKQhl3FPwa8rI=;
 b=lapycrm+DiG9kWiFQ8QnP/fsp/LxJ/WZENh0/vNGdyiPOulgj7hiWN8H
 Ak0dvGzUP/kDLJT2za1j1xKF03TriyTpBHVeoiAz/FqO+HwG3tae5BlgD
 xrSDfCbQTHj0ryouxMGQ1RaOG6LzCw3yfAXV6qqZnGhDzfUmTIgbucm74
 I4Yk4A+AoUm0ZiM/tBGTIduICsacsOxjGB7KODW2+b4rsk4iJu8mPuhSv
 EEGAknpJRg5K/fVFC3ujF4OjwVAnHUG1ZBlhaias7vTxtw0kZNffNLT5N
 QpVqT13vDQMq/JMu4VSUMQHoNVFbmFvo9mJF2yjiBQ2ZtIsWhJgDoLuGw Q==;
X-CSE-ConnectionGUID: gENSlYrpQ2Sc2Izlk7EWHQ==
X-CSE-MsgGUID: xi33ObrgRMeAt+I3dPossw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48235880"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="48235880"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:22 -0700
X-CSE-ConnectionGUID: hYzjApuZTM+3oZF7+ifz+A==
X-CSE-MsgGUID: 2Flmcp+dSYWmsTuvvQwxQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="138205805"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/8] drm/i915/sbi: convert intel_sbi.[ch] to struct
 intel_display
Date: Tue, 13 May 2025 15:17:01 +0300
Message-Id: <5b1723ca71a1bbcb3ed541410c70f60b990ce48a.1747138550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747138550.git.jani.nikula@intel.com>
References: <cover.1747138550.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Convert intel_sbi.[ch] to struct intel_display, as much as possible
anyway, and as a consequence drop the dependency on i915_drv.h from
intel_pch_refclk.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 148 +++++++++---------
 drivers/gpu/drm/i915/display/intel_sbi.c      |  35 +++--
 drivers/gpu/drm/i915/display/intel_sbi.h      |  14 +-
 drivers/gpu/drm/i915/i915_driver.c            |   4 +-
 4 files changed, 101 insertions(+), 100 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 693b90e3dfc3..efa78b3883b5 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -3,8 +3,10 @@
  * Copyright © 2021 Intel Corporation
  */
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_panel.h"
@@ -29,95 +31,93 @@ static void lpt_fdi_reset_mphy(struct intel_display *display)
 /* WaMPhyProgramming:hsw */
 static void lpt_fdi_program_mphy(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 tmp;
 
 	lpt_fdi_reset_mphy(display);
 
-	tmp = intel_sbi_read(dev_priv, 0x8008, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x8008, SBI_MPHY);
 	tmp &= ~(0xFF << 24);
 	tmp |= (0x12 << 24);
-	intel_sbi_write(dev_priv, 0x8008, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x8008, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x2008, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x2008, SBI_MPHY);
 	tmp |= (1 << 11);
-	intel_sbi_write(dev_priv, 0x2008, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x2008, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x2108, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x2108, SBI_MPHY);
 	tmp |= (1 << 11);
-	intel_sbi_write(dev_priv, 0x2108, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x2108, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x206C, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x206C, SBI_MPHY);
 	tmp |= (1 << 24) | (1 << 21) | (1 << 18);
-	intel_sbi_write(dev_priv, 0x206C, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x206C, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x216C, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x216C, SBI_MPHY);
 	tmp |= (1 << 24) | (1 << 21) | (1 << 18);
-	intel_sbi_write(dev_priv, 0x216C, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x216C, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x2080, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x2080, SBI_MPHY);
 	tmp &= ~(7 << 13);
 	tmp |= (5 << 13);
-	intel_sbi_write(dev_priv, 0x2080, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x2080, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x2180, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x2180, SBI_MPHY);
 	tmp &= ~(7 << 13);
 	tmp |= (5 << 13);
-	intel_sbi_write(dev_priv, 0x2180, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x2180, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x208C, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x208C, SBI_MPHY);
 	tmp &= ~0xFF;
 	tmp |= 0x1C;
-	intel_sbi_write(dev_priv, 0x208C, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x208C, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x218C, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x218C, SBI_MPHY);
 	tmp &= ~0xFF;
 	tmp |= 0x1C;
-	intel_sbi_write(dev_priv, 0x218C, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x218C, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x2098, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x2098, SBI_MPHY);
 	tmp &= ~(0xFF << 16);
 	tmp |= (0x1C << 16);
-	intel_sbi_write(dev_priv, 0x2098, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x2098, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x2198, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x2198, SBI_MPHY);
 	tmp &= ~(0xFF << 16);
 	tmp |= (0x1C << 16);
-	intel_sbi_write(dev_priv, 0x2198, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x2198, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x20C4, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x20C4, SBI_MPHY);
 	tmp |= (1 << 27);
-	intel_sbi_write(dev_priv, 0x20C4, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x20C4, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x21C4, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x21C4, SBI_MPHY);
 	tmp |= (1 << 27);
-	intel_sbi_write(dev_priv, 0x21C4, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x21C4, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x20EC, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x20EC, SBI_MPHY);
 	tmp &= ~(0xF << 28);
 	tmp |= (4 << 28);
-	intel_sbi_write(dev_priv, 0x20EC, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x20EC, tmp, SBI_MPHY);
 
-	tmp = intel_sbi_read(dev_priv, 0x21EC, SBI_MPHY);
+	tmp = intel_sbi_read(display, 0x21EC, SBI_MPHY);
 	tmp &= ~(0xF << 28);
 	tmp |= (4 << 28);
-	intel_sbi_write(dev_priv, 0x21EC, tmp, SBI_MPHY);
+	intel_sbi_write(display, 0x21EC, tmp, SBI_MPHY);
 }
 
 void lpt_disable_iclkip(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 temp;
 
 	intel_de_write(display, PIXCLK_GATE, PIXCLK_GATE_GATE);
 
-	intel_sbi_lock(dev_priv);
+	intel_sbi_lock(display);
 
-	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
+	temp = intel_sbi_read(display, SBI_SSCCTL6, SBI_ICLK);
 	temp |= SBI_SSCCTL_DISABLE;
-	intel_sbi_write(dev_priv, SBI_SSCCTL6, temp, SBI_ICLK);
+	intel_sbi_write(display, SBI_SSCCTL6, temp, SBI_ICLK);
 
-	intel_sbi_unlock(dev_priv);
+	intel_sbi_unlock(display);
 }
 
 struct iclkip_params {
@@ -178,8 +178,6 @@ int lpt_iclkip(const struct intel_crtc_state *crtc_state)
 void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
 	struct iclkip_params p;
 	u32 temp;
@@ -199,30 +197,30 @@ void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 		    "iCLKIP clock: found settings for %dKHz refresh rate: auxdiv=%x, divsel=%x, phasedir=%x, phaseinc=%x\n",
 		    clock, p.auxdiv, p.divsel, p.phasedir, p.phaseinc);
 
-	intel_sbi_lock(dev_priv);
+	intel_sbi_lock(display);
 
 	/* Program SSCDIVINTPHASE6 */
-	temp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
+	temp = intel_sbi_read(display, SBI_SSCDIVINTPHASE6, SBI_ICLK);
 	temp &= ~SBI_SSCDIVINTPHASE_DIVSEL_MASK;
 	temp |= SBI_SSCDIVINTPHASE_DIVSEL(p.divsel);
 	temp &= ~SBI_SSCDIVINTPHASE_INCVAL_MASK;
 	temp |= SBI_SSCDIVINTPHASE_INCVAL(p.phaseinc);
 	temp |= SBI_SSCDIVINTPHASE_DIR(p.phasedir);
 	temp |= SBI_SSCDIVINTPHASE_PROPAGATE;
-	intel_sbi_write(dev_priv, SBI_SSCDIVINTPHASE6, temp, SBI_ICLK);
+	intel_sbi_write(display, SBI_SSCDIVINTPHASE6, temp, SBI_ICLK);
 
 	/* Program SSCAUXDIV */
-	temp = intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
+	temp = intel_sbi_read(display, SBI_SSCAUXDIV6, SBI_ICLK);
 	temp &= ~SBI_SSCAUXDIV_FINALDIV2SEL(1);
 	temp |= SBI_SSCAUXDIV_FINALDIV2SEL(p.auxdiv);
-	intel_sbi_write(dev_priv, SBI_SSCAUXDIV6, temp, SBI_ICLK);
+	intel_sbi_write(display, SBI_SSCAUXDIV6, temp, SBI_ICLK);
 
 	/* Enable modulator and associated divider */
-	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
+	temp = intel_sbi_read(display, SBI_SSCCTL6, SBI_ICLK);
 	temp &= ~SBI_SSCCTL_DISABLE;
-	intel_sbi_write(dev_priv, SBI_SSCCTL6, temp, SBI_ICLK);
+	intel_sbi_write(display, SBI_SSCCTL6, temp, SBI_ICLK);
 
-	intel_sbi_unlock(dev_priv);
+	intel_sbi_unlock(display);
 
 	/* Wait for initialization time */
 	udelay(24);
@@ -232,7 +230,6 @@ void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 
 int lpt_get_iclkip(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct iclkip_params p;
 	u32 temp;
 
@@ -241,25 +238,25 @@ int lpt_get_iclkip(struct intel_display *display)
 
 	iclkip_params_init(&p);
 
-	intel_sbi_lock(dev_priv);
+	intel_sbi_lock(display);
 
-	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
+	temp = intel_sbi_read(display, SBI_SSCCTL6, SBI_ICLK);
 	if (temp & SBI_SSCCTL_DISABLE) {
-		intel_sbi_unlock(dev_priv);
+		intel_sbi_unlock(display);
 		return 0;
 	}
 
-	temp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
+	temp = intel_sbi_read(display, SBI_SSCDIVINTPHASE6, SBI_ICLK);
 	p.divsel = (temp & SBI_SSCDIVINTPHASE_DIVSEL_MASK) >>
 		SBI_SSCDIVINTPHASE_DIVSEL_SHIFT;
 	p.phaseinc = (temp & SBI_SSCDIVINTPHASE_INCVAL_MASK) >>
 		SBI_SSCDIVINTPHASE_INCVAL_SHIFT;
 
-	temp = intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
+	temp = intel_sbi_read(display, SBI_SSCAUXDIV6, SBI_ICLK);
 	p.auxdiv = (temp & SBI_SSCAUXDIV_FINALDIV2SEL_MASK) >>
 		SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT;
 
-	intel_sbi_unlock(dev_priv);
+	intel_sbi_unlock(display);
 
 	p.desired_divisor = (p.divsel + 2) * p.iclk_pi_range + p.phaseinc;
 
@@ -275,7 +272,6 @@ int lpt_get_iclkip(struct intel_display *display)
 static void lpt_enable_clkout_dp(struct intel_display *display,
 				 bool with_spread, bool with_fdi)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 reg, tmp;
 
 	if (drm_WARN(display->drm, with_fdi && !with_spread,
@@ -285,57 +281,56 @@ static void lpt_enable_clkout_dp(struct intel_display *display,
 		     with_fdi, "LP PCH doesn't have FDI\n"))
 		with_fdi = false;
 
-	intel_sbi_lock(dev_priv);
+	intel_sbi_lock(display);
 
-	tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
+	tmp = intel_sbi_read(display, SBI_SSCCTL, SBI_ICLK);
 	tmp &= ~SBI_SSCCTL_DISABLE;
 	tmp |= SBI_SSCCTL_PATHALT;
-	intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
+	intel_sbi_write(display, SBI_SSCCTL, tmp, SBI_ICLK);
 
 	udelay(24);
 
 	if (with_spread) {
-		tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
+		tmp = intel_sbi_read(display, SBI_SSCCTL, SBI_ICLK);
 		tmp &= ~SBI_SSCCTL_PATHALT;
-		intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
+		intel_sbi_write(display, SBI_SSCCTL, tmp, SBI_ICLK);
 
 		if (with_fdi)
 			lpt_fdi_program_mphy(display);
 	}
 
 	reg = HAS_PCH_LPT_LP(display) ? SBI_GEN0 : SBI_DBUFF0;
-	tmp = intel_sbi_read(dev_priv, reg, SBI_ICLK);
+	tmp = intel_sbi_read(display, reg, SBI_ICLK);
 	tmp |= SBI_GEN0_CFG_BUFFENABLE_DISABLE;
-	intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);
+	intel_sbi_write(display, reg, tmp, SBI_ICLK);
 
-	intel_sbi_unlock(dev_priv);
+	intel_sbi_unlock(display);
 }
 
 /* Sequence to disable CLKOUT_DP */
 void lpt_disable_clkout_dp(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 reg, tmp;
 
-	intel_sbi_lock(dev_priv);
+	intel_sbi_lock(display);
 
 	reg = HAS_PCH_LPT_LP(display) ? SBI_GEN0 : SBI_DBUFF0;
-	tmp = intel_sbi_read(dev_priv, reg, SBI_ICLK);
+	tmp = intel_sbi_read(display, reg, SBI_ICLK);
 	tmp &= ~SBI_GEN0_CFG_BUFFENABLE_DISABLE;
-	intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);
+	intel_sbi_write(display, reg, tmp, SBI_ICLK);
 
-	tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
+	tmp = intel_sbi_read(display, SBI_SSCCTL, SBI_ICLK);
 	if (!(tmp & SBI_SSCCTL_DISABLE)) {
 		if (!(tmp & SBI_SSCCTL_PATHALT)) {
 			tmp |= SBI_SSCCTL_PATHALT;
-			intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
+			intel_sbi_write(display, SBI_SSCCTL, tmp, SBI_ICLK);
 			udelay(32);
 		}
 		tmp |= SBI_SSCCTL_DISABLE;
-		intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
+		intel_sbi_write(display, SBI_SSCCTL, tmp, SBI_ICLK);
 	}
 
-	intel_sbi_unlock(dev_priv);
+	intel_sbi_unlock(display);
 }
 
 #define BEND_IDX(steps) ((50 + (steps)) / 5)
@@ -372,7 +367,6 @@ static const u16 sscdivintphase[] = {
  */
 static void lpt_bend_clkout_dp(struct intel_display *display, int steps)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 tmp;
 	int idx = BEND_IDX(steps);
 
@@ -382,20 +376,20 @@ static void lpt_bend_clkout_dp(struct intel_display *display, int steps)
 	if (drm_WARN_ON(display->drm, idx >= ARRAY_SIZE(sscdivintphase)))
 		return;
 
-	intel_sbi_lock(dev_priv);
+	intel_sbi_lock(display);
 
 	if (steps % 10 != 0)
 		tmp = 0xAAAAAAAB;
 	else
 		tmp = 0x00000000;
-	intel_sbi_write(dev_priv, SBI_SSCDITHPHASE, tmp, SBI_ICLK);
+	intel_sbi_write(display, SBI_SSCDITHPHASE, tmp, SBI_ICLK);
 
-	tmp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE, SBI_ICLK);
+	tmp = intel_sbi_read(display, SBI_SSCDIVINTPHASE, SBI_ICLK);
 	tmp &= 0xffff0000;
 	tmp |= sscdivintphase[idx];
-	intel_sbi_write(dev_priv, SBI_SSCDIVINTPHASE, tmp, SBI_ICLK);
+	intel_sbi_write(display, SBI_SSCDIVINTPHASE, tmp, SBI_ICLK);
 
-	intel_sbi_unlock(dev_priv);
+	intel_sbi_unlock(display);
 }
 
 #undef BEND_IDX
diff --git a/drivers/gpu/drm/i915/display/intel_sbi.c b/drivers/gpu/drm/i915/display/intel_sbi.c
index 41e85ac773dc..0666acfd5a10 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi.c
+++ b/drivers/gpu/drm/i915/display/intel_sbi.c
@@ -10,10 +10,11 @@
 #include "i915_reg.h"
 
 /* SBI access */
-static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
+static int intel_sbi_rw(struct intel_display *display, u16 reg,
 			enum intel_sbi_destination destination,
 			u32 *val, bool is_read)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_uncore *uncore = &i915->uncore;
 	u32 cmd;
 
@@ -22,8 +23,7 @@ static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
 	if (intel_wait_for_register_fw(uncore,
 				       SBI_CTL_STAT, SBI_BUSY, 0,
 				       100)) {
-		drm_err(&i915->drm,
-			"timeout waiting for SBI to become ready\n");
+		drm_err(display->drm, "timeout waiting for SBI to become ready\n");
 		return -EBUSY;
 	}
 
@@ -41,13 +41,12 @@ static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
 	if (__intel_wait_for_register_fw(uncore,
 					 SBI_CTL_STAT, SBI_BUSY, 0,
 					 100, 100, &cmd)) {
-		drm_err(&i915->drm,
-			"timeout waiting for SBI to complete read\n");
+		drm_err(display->drm, "timeout waiting for SBI to complete read\n");
 		return -ETIMEDOUT;
 	}
 
 	if (cmd & SBI_RESPONSE_FAIL) {
-		drm_err(&i915->drm, "error during SBI read of reg %x\n", reg);
+		drm_err(display->drm, "error during SBI read of reg %x\n", reg);
 		return -ENXIO;
 	}
 
@@ -57,38 +56,46 @@ static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
 	return 0;
 }
 
-void intel_sbi_lock(struct drm_i915_private *i915)
+void intel_sbi_lock(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	mutex_lock(&i915->sbi_lock);
 }
 
-void intel_sbi_unlock(struct drm_i915_private *i915)
+void intel_sbi_unlock(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	mutex_unlock(&i915->sbi_lock);
 }
 
-u32 intel_sbi_read(struct drm_i915_private *i915, u16 reg,
+u32 intel_sbi_read(struct intel_display *display, u16 reg,
 		   enum intel_sbi_destination destination)
 {
 	u32 result = 0;
 
-	intel_sbi_rw(i915, reg, destination, &result, true);
+	intel_sbi_rw(display, reg, destination, &result, true);
 
 	return result;
 }
 
-void intel_sbi_write(struct drm_i915_private *i915, u16 reg, u32 value,
+void intel_sbi_write(struct intel_display *display, u16 reg, u32 value,
 		     enum intel_sbi_destination destination)
 {
-	intel_sbi_rw(i915, reg, destination, &value, false);
+	intel_sbi_rw(display, reg, destination, &value, false);
 }
 
-void intel_sbi_init(struct drm_i915_private *i915)
+void intel_sbi_init(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	mutex_init(&i915->sbi_lock);
 }
 
-void intel_sbi_fini(struct drm_i915_private *i915)
+void intel_sbi_fini(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	mutex_destroy(&i915->sbi_lock);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_sbi.h b/drivers/gpu/drm/i915/display/intel_sbi.h
index 85161a4f13b8..841f77a142a1 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi.h
+++ b/drivers/gpu/drm/i915/display/intel_sbi.h
@@ -8,20 +8,20 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
+struct intel_display;
 
 enum intel_sbi_destination {
 	SBI_ICLK,
 	SBI_MPHY,
 };
 
-void intel_sbi_init(struct drm_i915_private *i915);
-void intel_sbi_fini(struct drm_i915_private *i915);
-void intel_sbi_lock(struct drm_i915_private *i915);
-void intel_sbi_unlock(struct drm_i915_private *i915);
-u32 intel_sbi_read(struct drm_i915_private *i915, u16 reg,
+void intel_sbi_init(struct intel_display *display);
+void intel_sbi_fini(struct intel_display *display);
+void intel_sbi_lock(struct intel_display *display);
+void intel_sbi_unlock(struct intel_display *display);
+u32 intel_sbi_read(struct intel_display *display, u16 reg,
 		   enum intel_sbi_destination destination);
-void intel_sbi_write(struct drm_i915_private *i915, u16 reg, u32 value,
+void intel_sbi_write(struct intel_display *display, u16 reg, u32 value,
 		     enum intel_sbi_destination destination);
 
 #endif /* _INTEL_SBI_H_ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 092a700d2046..80fa349b7ad5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -236,7 +236,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	spin_lock_init(&dev_priv->gpu_error.lock);
 
-	intel_sbi_init(dev_priv);
+	intel_sbi_init(display);
 	vlv_iosf_sb_init(dev_priv);
 	mutex_init(&dev_priv->sb_lock);
 
@@ -297,7 +297,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 
 	mutex_destroy(&dev_priv->sb_lock);
 	vlv_iosf_sb_fini(dev_priv);
-	intel_sbi_fini(dev_priv);
+	intel_sbi_fini(display);
 
 	i915_params_free(&dev_priv->params);
 }
-- 
2.39.5

