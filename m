Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC98A5AA87F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 09:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCEA110E77A;
	Fri,  2 Sep 2022 07:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 786F310E77A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 07:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662102284; x=1693638284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x9oikPek19Q4wejjqO2KD4Fb/bwiBpGjCAfvNau/KyA=;
 b=LFMs/OY0Nk0TUraMvocKLq4AAE9h297SBAZIbnEjujdQ2gn92aT8k1+k
 aL3dLV3yORjwTklwE20MrfywUwva/QLgdCg9rddx3tW4I2gVjoo1ykKCY
 GY43GHhRlDz3me5U+kAYK8XNh+0PS/Gmmt7+tfzdcm3quMk+fSf9xEZ81
 3YgCQCT7w47a5vFPOO4+V3ZB6GY/swZo2REj0feox2zm1IxKx+5XfdJwh
 8AR9kfCP94MUNJWNnoJARIBtfibRtxZq9sj+UMe5iG+HwNqAjwo9mCu54
 kpqgaPRz2V9G6xFPpkublRgQAIOt2dSWyjDDnGrzMteBfd6vusRcOS6JK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="295917862"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="295917862"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 00:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="615623924"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 02 Sep 2022 00:03:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Sep 2022 10:03:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 10:03:19 +0300
Message-Id: <20220902070319.15395-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220902070319.15395-1-ville.syrjala@linux.intel.com>
References: <20220902070319.15395-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] Revert "drm/i915/display: Re-add check for
 low voltage sku for max dp source rate"
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

This reverts commit d5929835080a60f9119d024fa42f315913942f76.

With the Parade PS8461E MUX workaround (WaEdpLinkRateDataReload)
implemented we can get finally rid of the is_low_voltage_sku()
check that incorrectly prevents many machines from using the
8.1Gpbs link rate.

Cc: Jason A. Donenfeld <Jason@zx2c4.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5272
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6323
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 +++----------------------
 1 file changed, 3 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d4e037450ac5..dd7351c0bed1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -389,23 +389,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
 	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
 }
 
-static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
-{
-	u32 voltage;
-
-	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
-
-	return voltage == VOLTAGE_INFO_0_85V;
-}
-
 static int icl_max_source_rate(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
 
-	if (intel_phy_is_combo(dev_priv, phy) &&
-	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
+	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
 		return 540000;
 
 	return 810000;
@@ -413,23 +403,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
 
 static int ehl_max_source_rate(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
-
-	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
-		return 540000;
-
-	return 810000;
-}
-
-static int dg1_max_source_rate(struct intel_dp *intel_dp)
-{
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
-
-	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
+	if (intel_dp_is_edp(intel_dp))
 		return 540000;
 
 	return 810000;
@@ -491,7 +465,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 			max_rate = dg2_max_source_rate(intel_dp);
 		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
 			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
-			max_rate = dg1_max_source_rate(intel_dp);
+			max_rate = 810000;
 		else if (IS_JSL_EHL(dev_priv))
 			max_rate = ehl_max_source_rate(intel_dp);
 		else
-- 
2.35.1

