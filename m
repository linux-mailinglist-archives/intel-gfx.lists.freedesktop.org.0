Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8375041EE0F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 15:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C364F6E4A2;
	Fri,  1 Oct 2021 13:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2219C6E4A2
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 13:01:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="204910469"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="204910469"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 06:01:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="480439319"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 01 Oct 2021 06:01:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 16:01:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Fri,  1 Oct 2021 16:01:02 +0300
Message-Id: <20211001130107.1746-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
References: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/10] drm/i915: De-wrapper
 bxt_ddi_phy_set_signal_levels()
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

Convert bxt_ddi_phy_set_signal_levels() to act as the full
.set_signal_levels() hook instead of going through a pointless wrapper.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 24 +--------------
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 30 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |  5 ++--
 3 files changed, 24 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index accdf456b1d0..e6dd8ca36e44 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1005,28 +1005,6 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 		_skl_ddi_set_iboost(dev_priv, PORT_E, iboost);
 }
 
-static void bxt_set_signal_levels(struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int level = intel_ddi_level(encoder, crtc_state);
-	const struct intel_ddi_buf_trans *trans;
-	enum port port = encoder->port;
-	int n_entries;
-
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
-		return;
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
-		level = n_entries - 1;
-
-	bxt_ddi_phy_set_signal_level(dev_priv, port,
-				     trans->entries[level].bxt.margin,
-				     trans->entries[level].bxt.scale,
-				     trans->entries[level].bxt.enable,
-				     trans->entries[level].bxt.deemphasis);
-}
-
 static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state)
 {
@@ -4580,7 +4558,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		else
 			encoder->set_signal_levels = icl_mg_phy_set_signal_levels;
 	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-		encoder->set_signal_levels = bxt_set_signal_levels;
+		encoder->set_signal_levels = bxt_ddi_phy_set_signal_levels;
 	} else {
 		encoder->set_signal_levels = hsw_set_signal_levels;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 48507ed79950..4d604e4cfa5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -23,6 +23,8 @@
 
 #include "display/intel_dp.h"
 
+#include "intel_ddi.h"
+#include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dpio_phy.h"
@@ -266,15 +268,24 @@ void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
 	*ch = DPIO_CH0;
 }
 
-void bxt_ddi_phy_set_signal_level(struct drm_i915_private *dev_priv,
-				  enum port port, u32 margin, u32 scale,
-				  u32 enable, u32 deemphasis)
+void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
+				   const struct intel_crtc_state *crtc_state)
 {
-	u32 val;
-	enum dpio_phy phy;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	int level = intel_ddi_level(encoder, crtc_state);
+	const struct intel_ddi_buf_trans *trans;
 	enum dpio_channel ch;
+	enum dpio_phy phy;
+	int n_entries;
+	u32 val;
 
-	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
+	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
+		return;
+	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
+		level = n_entries - 1;
+
+	bxt_port_to_phy_channel(dev_priv, encoder->port, &phy, &ch);
 
 	/*
 	 * While we write to the group register to program all lanes at once we
@@ -286,12 +297,13 @@ void bxt_ddi_phy_set_signal_level(struct drm_i915_private *dev_priv,
 
 	val = intel_de_read(dev_priv, BXT_PORT_TX_DW2_LN0(phy, ch));
 	val &= ~(MARGIN_000 | UNIQ_TRANS_SCALE);
-	val |= margin << MARGIN_000_SHIFT | scale << UNIQ_TRANS_SCALE_SHIFT;
+	val |= trans->entries[level].bxt.margin << MARGIN_000_SHIFT |
+		trans->entries[level].bxt.scale << UNIQ_TRANS_SCALE_SHIFT;
 	intel_de_write(dev_priv, BXT_PORT_TX_DW2_GRP(phy, ch), val);
 
 	val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN0(phy, ch));
 	val &= ~SCALE_DCOMP_METHOD;
-	if (enable)
+	if (trans->entries[level].bxt.enable)
 		val |= SCALE_DCOMP_METHOD;
 
 	if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
@@ -302,7 +314,7 @@ void bxt_ddi_phy_set_signal_level(struct drm_i915_private *dev_priv,
 
 	val = intel_de_read(dev_priv, BXT_PORT_TX_DW4_LN0(phy, ch));
 	val &= ~DE_EMPHASIS;
-	val |= deemphasis << DEEMPH_SHIFT;
+	val |= trans->entries[level].bxt.deemphasis << DEEMPH_SHIFT;
 	intel_de_write(dev_priv, BXT_PORT_TX_DW4_GRP(phy, ch), val);
 
 	val = intel_de_read(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch));
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
index 6473440e7457..9c3d008e8e1a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
@@ -17,9 +17,8 @@ struct intel_encoder;
 
 void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
 			     enum dpio_phy *phy, enum dpio_channel *ch);
-void bxt_ddi_phy_set_signal_level(struct drm_i915_private *dev_priv,
-				  enum port port, u32 margin, u32 scale,
-				  u32 enable, u32 deemphasis);
+void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
+				   const struct intel_crtc_state *crtc_state);
 void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy);
 void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy);
 bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,
-- 
2.32.0

