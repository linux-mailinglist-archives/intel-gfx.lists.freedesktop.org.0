Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AADF27C5E21
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 22:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B4210E1D4;
	Wed, 11 Oct 2023 20:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295BF10E1C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 20:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697055345; x=1728591345;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WK+vO2J9zMAHTbRyclkSrgFd62dR4rn1YINYwT2SKg4=;
 b=YwoFePjGzN3VcmwfYpjmrXSGEYKdSnuAaNiKscDrNFHxaeN0h1C6Y7p7
 2pMyRZ7Hjs8QgO5m9k4CXpiVxWfslts2i74REyxwm2t9Ot2OFg/gXlNCC
 NC+bjSkg+b8MScI4qTteNx9MO3bI+5B5wE/VNvfyRBO1WBYA6OqmhOxmT
 4sqk82xP7WkGWc2b5Fn3+EW8tU4VdWhNg+Ht6PmOmALgJtHprHgSuAmua
 ck9N9hxYeoi4T2BS258PRm8w0YH3b7UcFWPF7NsLM5NRRtjn5+cAQmdIM
 bzq/C53gc44hPfh5QkzdmMpcKROIIzOfHpF3SuMfsl1sYpINYohHSMMGr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="471013435"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="471013435"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 13:15:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="789115538"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="789115538"
Received: from lpaczyn-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.43])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 13:15:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 23:15:33 +0300
Message-Id: <20231011201533.1081368-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011201533.1081368-1-jani.nikula@intel.com>
References: <20231011201533.1081368-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/aux: rename dev_priv to i915
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

No reason to stick to dev_priv, rename to i915.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 58 ++++++++++-----------
 1 file changed, 28 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index c106598a78c5..2e2af71bcd5a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -74,7 +74,7 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 
 static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (index)
 		return 0;
@@ -83,12 +83,12 @@ static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 	 * The clock divider is based off the hrawclk, and would like to run at
 	 * 2MHz.  So, take the hrawclk value and divide by 2000 and use that
 	 */
-	return DIV_ROUND_CLOSEST(RUNTIME_INFO(dev_priv)->rawclk_freq, 2000);
+	return DIV_ROUND_CLOSEST(RUNTIME_INFO(i915)->rawclk_freq, 2000);
 }
 
 static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u32 freq;
 
@@ -101,18 +101,18 @@ static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 	 * divide by 2000 and use that
 	 */
 	if (dig_port->aux_ch == AUX_CH_A)
-		freq = dev_priv->display.cdclk.hw.cdclk;
+		freq = i915->display.cdclk.hw.cdclk;
 	else
-		freq = RUNTIME_INFO(dev_priv)->rawclk_freq;
+		freq = RUNTIME_INFO(i915)->rawclk_freq;
 	return DIV_ROUND_CLOSEST(freq, 2000);
 }
 
 static u32 hsw_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-	if (dig_port->aux_ch != AUX_CH_A && HAS_PCH_LPT_H(dev_priv)) {
+	if (dig_port->aux_ch != AUX_CH_A && HAS_PCH_LPT_H(i915)) {
 		/* Workaround for non-ULT HSW */
 		switch (index) {
 		case 0: return 63;
@@ -165,12 +165,11 @@ static u32 g4x_get_aux_send_ctl(struct intel_dp *intel_dp,
 				u32 aux_clock_divider)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv =
-			to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	u32 timeout;
 
 	/* Max timeout value on G4x-BDW: 1.6ms */
-	if (IS_BROADWELL(dev_priv))
+	if (IS_BROADWELL(i915))
 		timeout = DP_AUX_CH_CTL_TIME_OUT_600us;
 	else
 		timeout = DP_AUX_CH_CTL_TIME_OUT_400us;
@@ -229,8 +228,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		  u32 aux_send_ctl_flags)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *i915 =
-			to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	bool is_tc_port = intel_phy_is_tc(i915, phy);
 	i915_reg_t ch_ctl, ch_data[5];
@@ -715,7 +713,7 @@ static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
 
 static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum aux_ch aux_ch = dig_port->aux_ch;
 
@@ -726,16 +724,16 @@ static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
 	case AUX_CH_USBC2:
 	case AUX_CH_USBC3:
 	case AUX_CH_USBC4:
-		return XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch);
+		return XELPDP_DP_AUX_CH_CTL(i915, aux_ch);
 	default:
 		MISSING_CASE(aux_ch);
-		return XELPDP_DP_AUX_CH_CTL(dev_priv, AUX_CH_A);
+		return XELPDP_DP_AUX_CH_CTL(i915, AUX_CH_A);
 	}
 }
 
 static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum aux_ch aux_ch = dig_port->aux_ch;
 
@@ -746,10 +744,10 @@ static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
 	case AUX_CH_USBC2:
 	case AUX_CH_USBC3:
 	case AUX_CH_USBC4:
-		return XELPDP_DP_AUX_CH_DATA(dev_priv, aux_ch, index);
+		return XELPDP_DP_AUX_CH_DATA(i915, aux_ch, index);
 	default:
 		MISSING_CASE(aux_ch);
-		return XELPDP_DP_AUX_CH_DATA(dev_priv, AUX_CH_A, index);
+		return XELPDP_DP_AUX_CH_DATA(i915, AUX_CH_A, index);
 	}
 }
 
@@ -763,25 +761,25 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
 
 void intel_dp_aux_init(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	enum aux_ch aux_ch = dig_port->aux_ch;
 	char buf[AUX_CH_NAME_BUFSIZE];
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(i915) >= 14) {
 		intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = xelpdp_aux_data_reg;
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(i915) >= 12) {
 		intel_dp->aux_ch_ctl_reg = tgl_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = tgl_aux_data_reg;
-	} else if (DISPLAY_VER(dev_priv) >= 9) {
+	} else if (DISPLAY_VER(i915) >= 9) {
 		intel_dp->aux_ch_ctl_reg = skl_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = skl_aux_data_reg;
-	} else if (HAS_PCH_SPLIT(dev_priv)) {
+	} else if (HAS_PCH_SPLIT(i915)) {
 		intel_dp->aux_ch_ctl_reg = ilk_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = ilk_aux_data_reg;
-	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 		intel_dp->aux_ch_ctl_reg = vlv_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = vlv_aux_data_reg;
 	} else {
@@ -789,26 +787,26 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 		intel_dp->aux_ch_data_reg = g4x_aux_data_reg;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 9)
+	if (DISPLAY_VER(i915) >= 9)
 		intel_dp->get_aux_clock_divider = skl_get_aux_clock_divider;
-	else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
+	else if (IS_BROADWELL(i915) || IS_HASWELL(i915))
 		intel_dp->get_aux_clock_divider = hsw_get_aux_clock_divider;
-	else if (HAS_PCH_SPLIT(dev_priv))
+	else if (HAS_PCH_SPLIT(i915))
 		intel_dp->get_aux_clock_divider = ilk_get_aux_clock_divider;
 	else
 		intel_dp->get_aux_clock_divider = g4x_get_aux_clock_divider;
 
-	if (DISPLAY_VER(dev_priv) >= 9)
+	if (DISPLAY_VER(i915) >= 9)
 		intel_dp->get_aux_send_ctl = skl_get_aux_send_ctl;
 	else
 		intel_dp->get_aux_send_ctl = g4x_get_aux_send_ctl;
 
-	intel_dp->aux.drm_dev = &dev_priv->drm;
+	intel_dp->aux.drm_dev = &i915->drm;
 	drm_dp_aux_init(&intel_dp->aux);
 
 	/* Failure to allocate our preferred name is not critical */
 	intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX %s/%s",
-				       aux_ch_name(dev_priv, buf, sizeof(buf), aux_ch),
+				       aux_ch_name(i915, buf, sizeof(buf), aux_ch),
 				       encoder->base.name);
 
 	intel_dp->aux.transfer = intel_dp_aux_transfer;
-- 
2.39.2

