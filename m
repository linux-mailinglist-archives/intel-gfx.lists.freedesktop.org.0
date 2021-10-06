Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67906424846
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:50:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84AFE6EE82;
	Wed,  6 Oct 2021 20:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 296FA6EE82
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:50:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="225992365"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="225992365"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:50:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="458555908"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 06 Oct 2021 13:50:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:50:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:30 +0300
Message-Id: <20211006204937.30774-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/16] drm/i915: Query the vswing levels
 per-lane for icl mg phy
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

Prepare for per-lane drive settings by querying the desired vswing
level per-lane.

Note that the code only does two loops, with each one writing the
levels for two TX lanes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4c400f0e7347..1874a2ca8f3b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1163,7 +1163,6 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
-	int level = intel_ddi_level(encoder, crtc_state, 0);
 	const struct intel_ddi_buf_trans *trans;
 	int n_entries, ln;
 	u32 val;
@@ -1188,12 +1187,18 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 
 	/* Program MG_TX_SWINGCTRL with values from vswing table */
 	for (ln = 0; ln < 2; ln++) {
+		int level;
+
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
+
 		val = intel_de_read(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port));
 		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
 		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
 			trans->entries[level].mg.cri_txdeemph_override_17_12);
 		intel_de_write(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port), val);
 
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
+
 		val = intel_de_read(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port));
 		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
 		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
@@ -1203,6 +1208,10 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 
 	/* Program MG_TX_DRVCTRL with values from vswing table */
 	for (ln = 0; ln < 2; ln++) {
+		int level;
+
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
+
 		val = intel_de_read(dev_priv, MG_TX1_DRVCTRL(ln, tc_port));
 		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
 			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
@@ -1213,6 +1222,8 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 			CRI_TXDEEMPH_OVERRIDE_EN;
 		intel_de_write(dev_priv, MG_TX1_DRVCTRL(ln, tc_port), val);
 
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
+
 		val = intel_de_read(dev_priv, MG_TX2_DRVCTRL(ln, tc_port));
 		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
 			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
-- 
2.32.0

