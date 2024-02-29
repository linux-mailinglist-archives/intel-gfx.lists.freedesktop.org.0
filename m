Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FD786D3E2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 21:04:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D4D310E225;
	Thu, 29 Feb 2024 20:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l0faglng";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F8310E225
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 20:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709237050; x=1740773050;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LEtWx+m6MoY9C04020tXGXiuXXoqVk9Nx6f8t+3UPMI=;
 b=l0faglngS79JrMW3JgdgoZttmV79syC0Uw9Yj5ckzSRQQw7JgDt81Ylv
 CL9+hed7Nyex4bI1S1C4skffddCWcBufJhPeq2a6O6hpdteX0HzrmL9ah
 R0uMF4uD82A0KN8U5LthucedTnqkK0i0ZUQveKu6QThyNL7fIbWg90SCz
 GXoiZ+iqCjH7q/ZNkIiWb7NVQkq+MmjX7gXnE/8sLWFYuzLYcFUZ4Sl0/
 FbJqSjhvx7nMrbZlr6L/qt8tP9wjZPoPYaNIV/Vki7HSAq6nN/ggxkj2/
 P4AifFF6s2iU0ZCQdK+BrOLMip84PDBefhinhn4PF2UmrOpgho5gBT9tJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="14310424"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="14310424"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 12:04:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="827771643"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="827771643"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 29 Feb 2024 12:04:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Feb 2024 22:04:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915: Streamline eDP handling in
 icl_combo_phy_aux_power_well_enable()
Date: Thu, 29 Feb 2024 22:03:57 +0200
Message-ID: <20240229200357.7969-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
References: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Drop the pointless phy/port detour from the eDP handling
in icl_combo_phy_aux_power_well_enable(). We can just directly
consult the dig_port and determine whether it's eDP or not.

This also removes the assumption that port==phy, although that is
always trued on ICL, so it wasn't really doing any harm.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_power_well.c   | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index f25ad7d2c784..217f82f1da84 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -394,17 +394,11 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
 	hsw_wait_for_power_well_disable(dev_priv, power_well);
 }
 
-static bool intel_port_is_edp(struct drm_i915_private *i915, enum port port)
+static bool intel_aux_ch_is_edp(struct drm_i915_private *i915, enum aux_ch aux_ch)
 {
-	struct intel_encoder *encoder;
+	struct intel_digital_port *dig_port = aux_ch_to_digital_port(i915, aux_ch);
 
-	for_each_intel_encoder(&i915->drm, encoder) {
-		if (encoder->type == INTEL_OUTPUT_EDP &&
-		    encoder->port == port)
-			return true;
-	}
-
-	return false;
+	return dig_port && dig_port->base.type == INTEL_OUTPUT_EDP;
 }
 
 static void
@@ -413,7 +407,6 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
-	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 
 	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
 
@@ -430,7 +423,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 	/* Display WA #1178: icl */
 	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
-	    !intel_port_is_edp(dev_priv, (enum port)phy))
+	    !intel_aux_ch_is_edp(dev_priv, ICL_AUX_PW_TO_CH(pw_idx)))
 		intel_de_rmw(dev_priv, ICL_PORT_TX_DW6_AUX(ICL_AUX_PW_TO_PHY(pw_idx)),
 			     0, ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS);
 }
-- 
2.43.0

