Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE33962CD22
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 22:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EABA210E509;
	Wed, 16 Nov 2022 21:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D5510E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 21:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668635417; x=1700171417;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6XDzJoefW5QQXpXxIBGugVQ+EpZ9SkVsEKyqurMEvCk=;
 b=Xg74WKwh+TIh9WEsymbbNOalftTgLWDiBe2XN5NR2LsDl3eQplcCtg89
 WX223avEiR2e4Jyiff7Ty2rikuYeMHW16au9JzWTGT+ZJXpe0b6G5uVJM
 jZq61vN+ZyOIfQ0vsb3zGd4jadY663QAwQfPtKr5a4LoycuyRIRUCWxov
 Rv3aDm6dSc3ffkFFrFundF/5k7oVmCrfj3G/DgpM3oydN/5BGnLPeI892
 nt+EsFaaKlEX5SlHGkqQZLEXyK8KqBMqMQMm07cMLybugE5tkFmwHL1Fq
 kVxP/CXZEj0bu32meSPaPXW8b+GiRlXmFBJw1viZqxU8FQaKktMnXIPuv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="339497813"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="339497813"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 13:50:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="745235705"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="745235705"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.52])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 13:50:12 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 13:50:38 -0800
Message-Id: <20221116215040.713104-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/display: Add missing checks for
 cdclk crawling
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

cdclk_sanitize() function was written assuming vco was a signed integer.
vco gets assigned to -1 (essentially ~0) for the case where PLL
might be enabled and vco is not a frequency that will ever
get used. In such a scenario the right thing to do is disable the
PLL and re-enable it again with a valid frequency.
However the vco is declared as a unsigned variable.
With the above assumption, driver takes crawl path when not needed.
Add explicit check to not crawl in the case of an invalid PLL.

v2: Move the check from .h to .c (MattR)
- Move check to bxt_set_cdclk() instead of
intel_modeset_calc_cdclk() which is directly in
the path of the sanitize() function (Ville)

v3: remove unwanted parenthesis(Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b74e36d76013..25d01271dc09 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1717,6 +1717,16 @@ static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
 	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
 }
 
+static bool cdclk_pll_is_unknown(unsigned int vco)
+{
+	/*
+	 * Ensure driver does not take the crawl path for the
+	 * case when the vco is set to ~0 in the
+	 * sanitize path.
+	 */
+	return vco == ~0;
+}
+
 static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
@@ -1749,7 +1759,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
+	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
+	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
 		if (dev_priv->display.cdclk.hw.vco != vco)
 			adlp_cdclk_pll_crawl(dev_priv, vco);
 	} else if (DISPLAY_VER(dev_priv) >= 11)
-- 
2.25.1

