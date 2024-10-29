Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 784399B45B0
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 10:25:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12FE510E13E;
	Tue, 29 Oct 2024 09:25:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FF/Yq9tn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA42D10E5F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 09:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730193936; x=1761729936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RCPa1brl6TgiNuH5MbCvT5YAGWQgmTAsycLH5qn0b/Y=;
 b=FF/Yq9tnPwaQY4wRcXRxW360Sv4CtFuaWzcoVVn11SQotIt3gdIwjwPg
 2afYFGF9dd7pH5by1PdP6VG3hdXDZgFFTX0quh18/CUPQ/10OUO5CWtn6
 4hfze7r4+S5z2RrD35lZOMuU887e9xVrgYDEQKyMXnCzf6gVqLuhBSgtw
 7PmqLLfezBFQ+eMrv3CO5sFICZ5rzfjD0hTXHYu87On5+sWjcTWLiA4bw
 2tXYGSkR9Qwp+vNh/EPUalWvstngaHVLk+i70y4dczhZt6EopIeVVSd+W
 d2jPayg/6vrKl/9NBYbqOvkHfhlPLy3Stwv/B6j9xXNX0gelatytK2/pb w==;
X-CSE-ConnectionGUID: ACk9E/51QJCOvc4GJzN9yw==
X-CSE-MsgGUID: jVzXWKy7SUujn9F/Eg5LNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29723958"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="29723958"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:25:36 -0700
X-CSE-ConnectionGUID: aNolQHl7RAOy38ImcZx2hA==
X-CSE-MsgGUID: XVdzx5J2QtGs4N7ec9GuTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="105245182"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:25:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 1/4] drm/i915/sbi: add intel_sbi_{lock,unlock}()
Date: Tue, 29 Oct 2024 11:25:23 +0200
Message-Id: <61929c2fad4d4ff64e57ea2a28007f2efeb5113c.1730193891.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730193891.git.jani.nikula@intel.com>
References: <cover.1730193891.git.jani.nikula@intel.com>
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
index 84c55971e91a..d29b9adcbed1 100644
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

