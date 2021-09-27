Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDCA419E29
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 20:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0EB96E859;
	Mon, 27 Sep 2021 18:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 116D66E03C
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 18:25:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="224603049"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="224603049"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 11:25:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="518689410"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 27 Sep 2021 11:25:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Sep 2021 21:25:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Sep 2021 21:24:53 +0300
Message-Id: <20210927182455.27119-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
References: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915: Pass the lane to intel_ddi_level()
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

In order to have per-lane drive settings we need intel_ddi_level()
to accept the lane as a parameter. That is, the eventual goal is to
call intel_ddi_level() once for each lane. For now we just pass in
a hardcoded 0 and use the same settings for every lane. Ie. no
change in behaviour yet.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 19 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_ddi.h      |  3 ++-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  2 +-
 4 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 05124bf4abac..e6256d4c5af8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -125,7 +125,7 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int level = intel_ddi_level(encoder, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state, 0);
 	u32 iboost_bit = 0;
 	int n_entries;
 	enum port port = encoder->port;
@@ -1017,7 +1017,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int level = intel_ddi_level(encoder, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state, 0);
 	const struct intel_ddi_buf_trans *trans;
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 	int n_entries, ln;
@@ -1139,7 +1139,7 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
-	int level = intel_ddi_level(encoder, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state, 0);
 	const struct intel_ddi_buf_trans *trans;
 	int n_entries, ln;
 	u32 val;
@@ -1260,7 +1260,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
-	int level = intel_ddi_level(encoder, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state, 0);
 	const struct intel_ddi_buf_trans *trans;
 	u32 val, dpcnt_mask, dpcnt_val;
 	int n_entries, ln;
@@ -1328,9 +1328,9 @@ static int translate_signal_level(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static int intel_ddi_dp_level(struct intel_dp *intel_dp)
+static int intel_ddi_dp_level(struct intel_dp *intel_dp, int lane)
 {
-	u8 train_set = intel_dp->train_set[0];
+	u8 train_set = intel_dp->train_set[lane];
 	u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
 					DP_TRAIN_PRE_EMPHASIS_MASK);
 
@@ -1338,7 +1338,8 @@ static int intel_ddi_dp_level(struct intel_dp *intel_dp)
 }
 
 int intel_ddi_level(struct intel_encoder *encoder,
-		    const struct intel_crtc_state *crtc_state)
+		    const struct intel_crtc_state *crtc_state,
+		    int lane)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_ddi_buf_trans *trans;
@@ -1351,7 +1352,7 @@ int intel_ddi_level(struct intel_encoder *encoder,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		level = intel_ddi_hdmi_level(encoder, trans);
 	else
-		level = intel_ddi_dp_level(enc_to_intel_dp(encoder));
+		level = intel_ddi_dp_level(enc_to_intel_dp(encoder), lane);
 
 	if (drm_WARN_ON_ONCE(&i915->drm, level >= n_entries))
 		level = n_entries - 1;
@@ -1365,7 +1366,7 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	int level = intel_ddi_level(encoder, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state, 0);
 	enum port port = encoder->port;
 	u32 signal_levels;
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index d6947c06a455..d6971717ef9c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -64,6 +64,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 			       bool enable, u32 hdcp_mask);
 void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
 int intel_ddi_level(struct intel_encoder *encoder,
-		    const struct intel_crtc_state *crtc_state);
+		    const struct intel_crtc_state *crtc_state,
+		    int lane);
 
 #endif /* __INTEL_DDI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 96650369164d..5a2eccb12fe4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -272,7 +272,7 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int level = intel_ddi_level(encoder, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state, 0);
 	const struct intel_ddi_buf_trans *trans;
 	enum dpio_channel ch;
 	enum dpio_phy phy;
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 7a9771dbb63f..b18f08c851dc 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -58,7 +58,7 @@ void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	const struct intel_ddi_buf_trans *trans;
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-	int level = intel_ddi_level(encoder, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state, 0);
 	int n_entries, ln;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-- 
2.32.0

