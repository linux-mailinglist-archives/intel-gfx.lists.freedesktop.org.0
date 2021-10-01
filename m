Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD06341EE0D
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 15:01:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1C616E497;
	Fri,  1 Oct 2021 13:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83CD36E497
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 13:01:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="205580992"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="205580992"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 06:01:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="564940027"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 01 Oct 2021 06:01:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 16:01:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Fri,  1 Oct 2021 16:01:03 +0300
Message-Id: <20211001130107.1746-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
References: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/10] drm/i915: Hoover the level>=n_entries
 WARN into intel_ddi_level()
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

All callers of intel_ddi_level() duplicate the check+WARN
to make sure the returned level is actually present in the
appropriate buf_trans table. Let's push that stuff into
intel_ddi_level() so the callers don't have to worry about it.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 27 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  2 --
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  2 --
 3 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e6dd8ca36e44..2b192694f484 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -151,8 +151,6 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
 		return;
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
-		level = n_entries - 1;
 
 	/* If we're boosting the current, set bit 31 of trans1 */
 	if (has_iboost(dev_priv) &&
@@ -987,8 +985,6 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 		trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
 		if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
 			return;
-		if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
-			level = n_entries - 1;
 
 		iboost = trans->entries[level].hsw.i_boost;
 	}
@@ -1047,8 +1043,6 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
 		return;
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
-		level = n_entries - 1;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -1173,8 +1167,6 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
 		return;
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
-		level = n_entries - 1;
 
 	/* Set MG_TX_LINK_PARAMS cri_use_fs32 to 0. */
 	for (ln = 0; ln < 2; ln++) {
@@ -1296,8 +1288,6 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
 		return;
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
-		level = n_entries - 1;
 
 	dpcnt_mask = (DKL_TX_PRESHOOT_COEFF_MASK |
 		      DKL_TX_DE_EMPAHSIS_COEFF_MASK |
@@ -1367,10 +1357,23 @@ static int intel_ddi_dp_level(struct intel_dp *intel_dp)
 int intel_ddi_level(struct intel_encoder *encoder,
 		    const struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	const struct intel_ddi_buf_trans *trans;
+	int level, n_entries;
+
+	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	if (drm_WARN_ON_ONCE(&i915->drm, !trans))
+		return 0;
+
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		return intel_ddi_hdmi_level(encoder, crtc_state);
+		level = intel_ddi_hdmi_level(encoder, crtc_state);
 	else
-		return intel_ddi_dp_level(enc_to_intel_dp(encoder));
+		level = intel_ddi_dp_level(enc_to_intel_dp(encoder));
+
+	if (drm_WARN_ON_ONCE(&i915->drm, level >= n_entries))
+		level = n_entries - 1;
+
+	return level;
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 4d604e4cfa5d..96650369164d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -282,8 +282,6 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
 		return;
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
-		level = n_entries - 1;
 
 	bxt_port_to_phy_channel(dev_priv, encoder->port, &phy, &ch);
 
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index f59cc320ce9c..7a9771dbb63f 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -64,8 +64,6 @@ void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
 		return;
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, level < 0 || level >= n_entries))
-		level = n_entries - 1;
 
 	for (ln = 0; ln < 4; ln++) {
 		u32 val = 0;
-- 
2.32.0

