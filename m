Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8B3628AE5
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 21:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68FF89DFB;
	Mon, 14 Nov 2022 20:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32B7089DFB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 20:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668459416; x=1699995416;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6XDzJoefW5QQXpXxIBGugVQ+EpZ9SkVsEKyqurMEvCk=;
 b=HWljnI7I1YvnQ2vqE1MD8Mg5yBEbF0xn+hnJcSHVWGdeI3AtFFqEPkk4
 0Gb383lT6wddVx56qdvSvgKitfSeS3K93Wc5VJKiJLYfECdZJOOblSwvU
 o/QqgXavYjtV7R5KHkyBNFnznC7ATAGyHHrqqGmeabYY9ylJ4RJaRZjGb
 fH/kzmtMORBUV6ZXnfi7klbJplIGsUi5eNssIEVaXuvR01ubRhT6S72oI
 NAXoqUrRY0/rfL3rWpft5ZertDJ2CyzjOCt4L40InBWpdViaD+XbOm58/
 2Iyz23BjlJSAxm5RCQiX3KS4MX3f0+W0bO4XEbTogK3uZ/+Shgrr7Sqyi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="291793885"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="291793885"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 12:56:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="669816923"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="669816923"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.23])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 12:56:52 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 12:57:15 -0800
Message-Id: <20221114205717.386681-1-anusha.srivatsa@intel.com>
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

