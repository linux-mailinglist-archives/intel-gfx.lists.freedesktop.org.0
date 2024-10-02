Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6D798E1A2
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 19:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71A810E775;
	Wed,  2 Oct 2024 17:30:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="de/GQ2+M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E59DC10E777
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 17:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727890252; x=1759426252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IyGx2Y7j6urBMKt7GsmpF8+jEukyIVBjYbPwVbyk2yA=;
 b=de/GQ2+Mj8s334un4R5Aw+CXg7kXqinqTYNZ7Rj8uZro9j0zvt4A6YHl
 vnBZX9xh9PGXYCbGv3zmiTrPhOlowCSwNMyeKxsNaqFBNgwnL11MtmNL7
 gPHeCryhOWNZ+TMo8GGnUy4YpteFHdsF1rDHe4MUw/r1wtNPoLHe9dPjr
 wEU9kzCjCgYxsTnBDbUTTCrkI4sHQFP62/FORiMWQuhywX7BPUa//XU32
 F8hxXczZIONitkyG1vQPDTPLH0fkz/DIaE+zxe+lP2s1CvKp3z6beuQ4r
 r3IioSTM1R9YvfYug2/kDMsp4VrUaJvLxK2bDSW9sIUYXbB1hfTKFJTeV g==;
X-CSE-ConnectionGUID: o7B2l73QRX+LmAIvtSyP7Q==
X-CSE-MsgGUID: dBwxixGWRumtrTGH01kN2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="30860114"
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="30860114"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 10:30:45 -0700
X-CSE-ConnectionGUID: jLn/noJfRmyTnDF36T1hvg==
X-CSE-MsgGUID: NSY5VZ8hQcqKFP8R4Pd5Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="74493521"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 10:30:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/4] drm/i915/sbi: add intel_sbi_{lock,unlock}()
Date: Wed,  2 Oct 2024 20:30:28 +0300
Message-Id: <c4c1109843ca3a929d0792c6fd020bda888e7199.1727890136.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1727890136.git.jani.nikula@intel.com>
References: <cover.1727890136.git.jani.nikula@intel.com>
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

Abstract the LPT/WPT IOSF sideband locking by adding dedicated sbi
lock/unlock functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 26 +++++++++----------
 drivers/gpu/drm/i915/intel_sbi.c              | 10 +++++++
 drivers/gpu/drm/i915/intel_sbi.h              |  2 ++
 3 files changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 713cfba71475..9bf43c67362f 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -108,13 +108,13 @@ void lpt_disable_iclkip(struct drm_i915_private *dev_priv)
 
 	intel_de_write(dev_priv, PIXCLK_GATE, PIXCLK_GATE_GATE);
 
-	mutex_lock(&dev_priv->sb_lock);
+	intel_sbi_lock(dev_priv);
 
 	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
 	temp |= SBI_SSCCTL_DISABLE;
 	intel_sbi_write(dev_priv, SBI_SSCCTL6, temp, SBI_ICLK);
 
-	mutex_unlock(&dev_priv->sb_lock);
+	intel_sbi_unlock(dev_priv);
 }
 
 struct iclkip_params {
@@ -195,7 +195,7 @@ void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 		    "iCLKIP clock: found settings for %dKHz refresh rate: auxdiv=%x, divsel=%x, phasedir=%x, phaseinc=%x\n",
 		    clock, p.auxdiv, p.divsel, p.phasedir, p.phaseinc);
 
-	mutex_lock(&dev_priv->sb_lock);
+	intel_sbi_lock(dev_priv);
 
 	/* Program SSCDIVINTPHASE6 */
 	temp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
@@ -218,7 +218,7 @@ void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 	temp &= ~SBI_SSCCTL_DISABLE;
 	intel_sbi_write(dev_priv, SBI_SSCCTL6, temp, SBI_ICLK);
 
-	mutex_unlock(&dev_priv->sb_lock);
+	intel_sbi_unlock(dev_priv);
 
 	/* Wait for initialization time */
 	udelay(24);
@@ -236,11 +236,11 @@ int lpt_get_iclkip(struct drm_i915_private *dev_priv)
 
 	iclkip_params_init(&p);
 
-	mutex_lock(&dev_priv->sb_lock);
+	intel_sbi_lock(dev_priv);
 
 	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
 	if (temp & SBI_SSCCTL_DISABLE) {
-		mutex_unlock(&dev_priv->sb_lock);
+		intel_sbi_unlock(dev_priv);
 		return 0;
 	}
 
@@ -254,7 +254,7 @@ int lpt_get_iclkip(struct drm_i915_private *dev_priv)
 	p.auxdiv = (temp & SBI_SSCAUXDIV_FINALDIV2SEL_MASK) >>
 		SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT;
 
-	mutex_unlock(&dev_priv->sb_lock);
+	intel_sbi_unlock(dev_priv);
 
 	p.desired_divisor = (p.divsel + 2) * p.iclk_pi_range + p.phaseinc;
 
@@ -279,7 +279,7 @@ static void lpt_enable_clkout_dp(struct drm_i915_private *dev_priv,
 		     with_fdi, "LP PCH doesn't have FDI\n"))
 		with_fdi = false;
 
-	mutex_lock(&dev_priv->sb_lock);
+	intel_sbi_lock(dev_priv);
 
 	tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
 	tmp &= ~SBI_SSCCTL_DISABLE;
@@ -302,7 +302,7 @@ static void lpt_enable_clkout_dp(struct drm_i915_private *dev_priv,
 	tmp |= SBI_GEN0_CFG_BUFFENABLE_DISABLE;
 	intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);
 
-	mutex_unlock(&dev_priv->sb_lock);
+	intel_sbi_unlock(dev_priv);
 }
 
 /* Sequence to disable CLKOUT_DP */
@@ -310,7 +310,7 @@ void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv)
 {
 	u32 reg, tmp;
 
-	mutex_lock(&dev_priv->sb_lock);
+	intel_sbi_lock(dev_priv);
 
 	reg = HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
 	tmp = intel_sbi_read(dev_priv, reg, SBI_ICLK);
@@ -328,7 +328,7 @@ void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv)
 		intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
 	}
 
-	mutex_unlock(&dev_priv->sb_lock);
+	intel_sbi_unlock(dev_priv);
 }
 
 #define BEND_IDX(steps) ((50 + (steps)) / 5)
@@ -374,7 +374,7 @@ static void lpt_bend_clkout_dp(struct drm_i915_private *dev_priv, int steps)
 	if (drm_WARN_ON(&dev_priv->drm, idx >= ARRAY_SIZE(sscdivintphase)))
 		return;
 
-	mutex_lock(&dev_priv->sb_lock);
+	intel_sbi_lock(dev_priv);
 
 	if (steps % 10 != 0)
 		tmp = 0xAAAAAAAB;
@@ -387,7 +387,7 @@ static void lpt_bend_clkout_dp(struct drm_i915_private *dev_priv, int steps)
 	tmp |= sscdivintphase[idx];
 	intel_sbi_write(dev_priv, SBI_SSCDIVINTPHASE, tmp, SBI_ICLK);
 
-	mutex_unlock(&dev_priv->sb_lock);
+	intel_sbi_unlock(dev_priv);
 }
 
 #undef BEND_IDX
diff --git a/drivers/gpu/drm/i915/intel_sbi.c b/drivers/gpu/drm/i915/intel_sbi.c
index 5c6e517c73f4..862b5b9992eb 100644
--- a/drivers/gpu/drm/i915/intel_sbi.c
+++ b/drivers/gpu/drm/i915/intel_sbi.c
@@ -57,6 +57,16 @@ static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
 	return 0;
 }
 
+void intel_sbi_lock(struct drm_i915_private *i915)
+{
+	mutex_lock(&i915->sb_lock);
+}
+
+void intel_sbi_unlock(struct drm_i915_private *i915)
+{
+	mutex_unlock(&i915->sb_lock);
+}
+
 u32 intel_sbi_read(struct drm_i915_private *i915, u16 reg,
 		   enum intel_sbi_destination destination)
 {
diff --git a/drivers/gpu/drm/i915/intel_sbi.h b/drivers/gpu/drm/i915/intel_sbi.h
index f5a862210454..f91bd03aa826 100644
--- a/drivers/gpu/drm/i915/intel_sbi.h
+++ b/drivers/gpu/drm/i915/intel_sbi.h
@@ -15,6 +15,8 @@ enum intel_sbi_destination {
 	SBI_MPHY,
 };
 
+void intel_sbi_lock(struct drm_i915_private *i915);
+void intel_sbi_unlock(struct drm_i915_private *i915);
 u32 intel_sbi_read(struct drm_i915_private *i915, u16 reg,
 		   enum intel_sbi_destination destination);
 void intel_sbi_write(struct drm_i915_private *i915, u16 reg, u32 value,
-- 
2.39.5

