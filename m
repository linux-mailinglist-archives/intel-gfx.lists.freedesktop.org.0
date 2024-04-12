Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861268A353B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:58:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45FE710F77B;
	Fri, 12 Apr 2024 17:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KfHSg9GG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5050910F641
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712944712; x=1744480712;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KXidDxAW4o2MQ9HWwZYRtiOpi1ME+98Pl3y2jq8rgtc=;
 b=KfHSg9GGFEnU1weMffYaQmpTaaQ274ljvyi5HD86sLybNrjLfO6yd3Xf
 VRnUkLlfrWy4EuUjiQJibsqFN8Pt3NNg//fg9gdLBmjR79P/6/bEpknwb
 eScjBlIjPhjJNEJvCIbhBAXNmQIhhBJ8i4/5B5u1L6g04a+A/TK41KFYl
 LTo96aaooDOh+fjjSHv5tERAmbQtToyQSuEcapsDAICBS2mQoVGEiPiEE
 NeHx2G0zlUsz38blnC49Hv6gQIxf4DqotPGHZSNiPlTRZjF3bmb3mwUfc
 IyrlAMrL+E5qWXx4pzj/QOT5WdGLIzI6mfaX21nP0gljlmQDBbTkHHoVF g==;
X-CSE-ConnectionGUID: 4/aQ324lQdezFj6y+w8+2A==
X-CSE-MsgGUID: 9jC9bU1vQ8Wq1d0RtSvf0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8586957"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8586957"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:58:32 -0700
X-CSE-ConnectionGUID: 5+iE5Gy8T9ChLILdkWWpGA==
X-CSE-MsgGUID: UWo8EzIVRh6asCusbITzbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21383038"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 10:58:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 20:58:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/8] drm/i915/dpio: Introdude bxt_ddi_phy_rmw_grp()
Date: Fri, 12 Apr 2024 20:58:14 +0300
Message-ID: <20240412175818.29217-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
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

Add a helper to do the "read from one per-lane register
and write to the group register" rmw cycle.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 59 ++++++++++++-------
 1 file changed, 38 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index a793a872dfa3..3d1295da1106 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -270,6 +270,24 @@ void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
 	*ch = DPIO_CH0;
 }
 
+/*
+ * Like intel_de_rmw() but reads from a single per-lane register and
+ * writes to the group register to write the same value to all the lanes.
+ */
+static u32 bxt_ddi_phy_rmw_grp(struct drm_i915_private *i915,
+			       i915_reg_t reg_single,
+			       i915_reg_t reg_group,
+			       u32 clear, u32 set)
+{
+	u32 old, val;
+
+	old = intel_de_read(i915, reg_single);
+	val = (old & ~clear) | set;
+	intel_de_write(i915, reg_group, val);
+
+	return old;
+}
+
 void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state)
 {
@@ -291,35 +309,34 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 	 * While we write to the group register to program all lanes at once we
 	 * can read only lane registers and we pick lanes 0/1 for that.
 	 */
-	val = intel_de_read(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch));
-	val &= ~(TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
-	intel_de_write(dev_priv, BXT_PORT_PCS_DW10_GRP(phy, ch), val);
+	bxt_ddi_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
+			    BXT_PORT_PCS_DW10_GRP(phy, ch),
+			    TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT, 0);
 
-	val = intel_de_read(dev_priv, BXT_PORT_TX_DW2_LN(phy, ch, 0));
-	val &= ~(MARGIN_000_MASK | UNIQ_TRANS_SCALE_MASK);
-	val |= MARGIN_000(trans->entries[level].bxt.margin) |
-		UNIQ_TRANS_SCALE(trans->entries[level].bxt.scale);
-	intel_de_write(dev_priv, BXT_PORT_TX_DW2_GRP(phy, ch), val);
+	bxt_ddi_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW2_LN(phy, ch, 0),
+			    BXT_PORT_TX_DW2_GRP(phy, ch),
+			    MARGIN_000_MASK | UNIQ_TRANS_SCALE_MASK,
+			    MARGIN_000(trans->entries[level].bxt.margin) |
+			    UNIQ_TRANS_SCALE(trans->entries[level].bxt.scale));
+
+	bxt_ddi_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, 0),
+			    BXT_PORT_TX_DW3_GRP(phy, ch),
+			    SCALE_DCOMP_METHOD,
+			    trans->entries[level].bxt.enable ?
+			    SCALE_DCOMP_METHOD : 0);
 
 	val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, 0));
-	val &= ~SCALE_DCOMP_METHOD;
-	if (trans->entries[level].bxt.enable)
-		val |= SCALE_DCOMP_METHOD;
-
 	if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
 		drm_err(&dev_priv->drm,
 			"Disabled scaling while ouniqetrangenmethod was set");
 
-	intel_de_write(dev_priv, BXT_PORT_TX_DW3_GRP(phy, ch), val);
+	bxt_ddi_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW4_LN(phy, ch, 0),
+			    BXT_PORT_TX_DW4_GRP(phy, ch), DE_EMPHASIS_MASK,
+			    DE_EMPHASIS(trans->entries[level].bxt.deemphasis));
 
-	val = intel_de_read(dev_priv, BXT_PORT_TX_DW4_LN(phy, ch, 0));
-	val &= ~DE_EMPHASIS_MASK;
-	val |= DE_EMPHASIS(trans->entries[level].bxt.deemphasis);
-	intel_de_write(dev_priv, BXT_PORT_TX_DW4_GRP(phy, ch), val);
-
-	val = intel_de_read(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch));
-	val |= TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT;
-	intel_de_write(dev_priv, BXT_PORT_PCS_DW10_GRP(phy, ch), val);
+	bxt_ddi_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
+			    BXT_PORT_PCS_DW10_GRP(phy, ch),
+			    0, TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
 }
 
 bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,
-- 
2.43.2

