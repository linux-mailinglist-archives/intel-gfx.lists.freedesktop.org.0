Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 655C18A353C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B6210F78A;
	Fri, 12 Apr 2024 17:58:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QF2x7dkg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CA1310F789
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712944720; x=1744480720;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V7e1vNqYx5pZnc7c2a0cnFKtyNENKmZmWPnHUq7PnOI=;
 b=QF2x7dkgrmGu/uZYamoBBduRXUk4TnigT4cRS4WT/5RUGbGfw6DufuWm
 XyoTQF0TWIdnqx+85fcQDJxMfXIN/jt/v8KMKoAcPHd/8/pfR8QPJZOpl
 8fdFXC9a0HMCjvJDi68G3Wvoy6FB1eLSq9cIphkJedDGsAsmKcJioUqRw
 3I8uk2Xb7n2bfnMU6O3DvTbGHrm8aaAO56Hexn9BWg4pVoUPQtCBKOKW4
 mTrlBIF20UgCajJc/bShcg5htrDSxR4KetIcuPfcZgOvVv0uyb0EAUqXp
 V7GWCBa2YhlIfUeVHkc7wDxSDacWo1tmr1IX3ebd26HHumqHByrBZEf8C w==;
X-CSE-ConnectionGUID: bYwHGRU6TgO5GBv47fmgEQ==
X-CSE-MsgGUID: +yAFv1lxSbGVT5wmJVM6MA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8586978"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8586978"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:58:40 -0700
X-CSE-ConnectionGUID: 4t0bdYAuRmSAV2QgTpbo1w==
X-CSE-MsgGUID: xMQvi041R6+rbD2LGPmRHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21383078"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 10:58:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 20:58:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/8] drm/i915/dpio: Program bxt/glk PHY TX registers per-lane
Date: Fri, 12 Apr 2024 20:58:17 +0300
Message-ID: <20240412175818.29217-8-ville.syrjala@linux.intel.com>
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

Program each bxt/glk PHY TX lane with its own settings
instead of blasting them all with the same stuff via
group access.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 35 ++++++++++++-------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 77597edb391c..c72b76b61dff 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -292,12 +292,10 @@ void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int level = intel_ddi_level(encoder, crtc_state, 0);
 	const struct intel_ddi_buf_trans *trans;
 	enum dpio_channel ch;
 	enum dpio_phy phy;
-	int n_entries;
-	u32 val;
+	int lane, n_entries;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
@@ -313,26 +311,37 @@ void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
 			     BXT_PORT_PCS_DW10_GRP(phy, ch),
 			     TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT, 0);
 
-	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW2_LN(phy, ch, 0),
-			     BXT_PORT_TX_DW2_GRP(phy, ch),
+	for (lane = 0; lane < crtc_state->lane_count; lane++) {
+		int level = intel_ddi_level(encoder, crtc_state, lane);
+
+		intel_de_rmw(dev_priv, BXT_PORT_TX_DW2_LN(phy, ch, lane),
 			     MARGIN_000_MASK | UNIQ_TRANS_SCALE_MASK,
 			     MARGIN_000(trans->entries[level].bxt.margin) |
 			     UNIQ_TRANS_SCALE(trans->entries[level].bxt.scale));
+	}
 
-	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, 0),
-			     BXT_PORT_TX_DW3_GRP(phy, ch),
+	for (lane = 0; lane < crtc_state->lane_count; lane++) {
+		int level = intel_ddi_level(encoder, crtc_state, lane);
+		u32 val;
+
+		intel_de_rmw(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, lane),
 			     SCALE_DCOMP_METHOD,
 			     trans->entries[level].bxt.enable ?
 			     SCALE_DCOMP_METHOD : 0);
 
-	val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, 0));
-	if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
-		drm_err(&dev_priv->drm,
-			"Disabled scaling while ouniqetrangenmethod was set");
+		val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, lane));
+		if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
+			drm_err(&dev_priv->drm,
+				"Disabled scaling while ouniqetrangenmethod was set");
+	}
 
-	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW4_LN(phy, ch, 0),
-			     BXT_PORT_TX_DW4_GRP(phy, ch), DE_EMPHASIS_MASK,
+	for (lane = 0; lane < crtc_state->lane_count; lane++) {
+		int level = intel_ddi_level(encoder, crtc_state, lane);
+
+		intel_de_rmw(dev_priv, BXT_PORT_TX_DW4_LN(phy, ch, lane),
+			     DE_EMPHASIS_MASK,
 			     DE_EMPHASIS(trans->entries[level].bxt.deemphasis));
+	}
 
 	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
 			     BXT_PORT_PCS_DW10_GRP(phy, ch),
-- 
2.43.2

