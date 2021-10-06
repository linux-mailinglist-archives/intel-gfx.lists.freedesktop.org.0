Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C73424843
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03EF76EE7D;
	Wed,  6 Oct 2021 20:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03FD06EE7D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:50:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="206910828"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="206910828"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:50:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="478264274"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 06 Oct 2021 13:50:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:50:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:27 +0300
Message-Id: <20211006204937.30774-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/16] drm/i915: Extract
 icl_combo_phy_loadgen_select()
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

Pull the convoluted loadgen calculation into a small helper.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b8ec53d9e3b0..d06c76694a08 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1023,6 +1023,18 @@ static u8 intel_ddi_dp_preemph_max(struct intel_dp *intel_dp)
 	return DP_TRAIN_PRE_EMPH_LEVEL_3;
 }
 
+static u32 icl_combo_phy_loadgen_select(const struct intel_crtc_state *crtc_state,
+					int lane)
+{
+	if (crtc_state->port_clock > 600000)
+		return 0;
+
+	if (crtc_state->lane_count == 4)
+		return lane >= 1 ? LOADGEN_SELECT : 0;
+	else
+		return lane == 1 || lane == 2 ? LOADGEN_SELECT : 0;
+}
+
 static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state)
 {
@@ -1089,11 +1101,8 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-	int width, rate, ln;
 	u32 val;
-
-	width = crtc_state->lane_count;
-	rate = crtc_state->port_clock;
+	int ln;
 
 	/*
 	 * 1. If port type is eDP or DP,
@@ -1117,11 +1126,7 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 	for (ln = 0; ln < 4; ln++) {
 		val = intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
 		val &= ~LOADGEN_SELECT;
-
-		if ((rate <= 600000 && width == 4 && ln >= 1) ||
-		    (rate <= 600000 && width < 4 && (ln == 1 || ln == 2))) {
-			val |= LOADGEN_SELECT;
-		}
+		val |= icl_combo_phy_loadgen_select(crtc_state, ln);
 		intel_de_write(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy), val);
 	}
 
-- 
2.32.0

