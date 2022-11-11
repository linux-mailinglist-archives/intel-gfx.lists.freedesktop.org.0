Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 507DC6261D5
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 20:25:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7507A10E83E;
	Fri, 11 Nov 2022 19:25:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1AB610E1BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 19:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668194739; x=1699730739;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I0OvyX7EE/u/rBs6vqkUyz+NoysYkh45c229uStycpY=;
 b=ekA+oBuEKLZ9vMQGBjmEzcMK417Mx44VVhVYcDnI5V5DGq53GmLHbXOh
 Hi0NuSNGQvt9cRtirzrGK7Hv0GqRv/CY1T9lOZaSj1kswxFsmDbK33P9m
 0cd+y6oDkU2jwghMQpX5E7zB+sPim5hWOse7/yjr5vg/UBjNjhFpDleuj
 kaarltf7mZB4oczZSXPby0MqMZeB34GAR8+4aTsiW3l4CYLTi5WjlhBlV
 Bm5vnAh4F2+lZy/xfjaHt24I4K2U25Q+TPSkMTb5LY4LCA9aAf1wuEUWl
 doozSN3NFiojb3zb9atz0F6141DW5GoCwLu0+uJy6V+WL/vLbs/lRkJ6D w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="309278778"
X-IronPort-AV: E=Sophos;i="5.96,157,1665471600"; d="scan'208";a="309278778"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 11:25:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="726877454"
X-IronPort-AV: E=Sophos;i="5.96,157,1665471600"; d="scan'208";a="726877454"
Received: from smukhe4-mobl1.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.244.173])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 11:25:39 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Nov 2022 11:26:02 -0800
Message-Id: <20221111192602.257418-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add missing checks for cdclk
 crawling
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8a9031012d74..2d9b7ba58358 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1716,6 +1716,16 @@ static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
 	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
 }
 
+static bool cdclk_pll_is_unknown(unsigned int vco)
+{
+	/*
+	 * Ensure driver does not take the crawl path for the
+	 * case when the vco is set to ~0 in the
+	 * sanitize path.
+	 */
+	return (vco == ~0);
+}
+
 static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
@@ -1748,7 +1758,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
+	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
+	    (!cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco))) {
 		if (dev_priv->display.cdclk.hw.vco != vco)
 			adlp_cdclk_pll_crawl(dev_priv, vco);
 	} else if (DISPLAY_VER(dev_priv) >= 11)
-- 
2.25.1

