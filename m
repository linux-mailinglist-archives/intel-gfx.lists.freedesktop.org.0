Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D59A388373
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 02:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67BF56E131;
	Wed, 19 May 2021 00:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 189766E14D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 00:06:55 +0000 (UTC)
IronPort-SDR: 11zpMC9K1E0+4RFwRwQqAtpLrFD/dwfnDfJ5OFQxpjJvinDh+zCSyG8NwN5ZShvhAxr9gnM7wh
 rVFn21e6OOjg==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264768414"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="264768414"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:52 -0700
IronPort-SDR: piiDszH1EyEUZxyWEWRuxih8XvoWebzC+fx1gusA6Cn3iyQOPkhlnIYyEFmEXfUZ60IsMRCQOt
 9T61U9GMm4LQ==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="473214783"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 May 2021 17:06:21 -0700
Message-Id: <20210519000625.3184321-14-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210519000625.3184321-1-lucas.demarchi@intel.com>
References: <20210519000625.3184321-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 13/17] drm/i915/adl_p: Define and use ADL-P
 specific DP translation tables
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mika Kahola <mika.kahola@intel.com>

Define and use DP voltage swing and pre-emphasis translation tables
for ADL-P.

v2:
 - Update according to recent bspec updates; there are now separate
   tables for RBR/HBR and HBR2/HBR3.  (Anusha)

BSpec: 54956
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  7 ++-
 .../drm/i915/display/intel_ddi_buf_trans.c    | 53 +++++++++++++++++++
 .../drm/i915/display/intel_ddi_buf_trans.h    |  4 ++
 3 files changed, 63 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 38a4f251b9c9..e0adb14ecd0d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -985,6 +985,8 @@ static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		if (intel_phy_is_combo(dev_priv, phy))
 			tgl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
+		else if (IS_ALDERLAKE_P(dev_priv))
+			adlp_get_dkl_buf_trans(encoder, crtc_state, &n_entries);
 		else
 			tgl_get_dkl_buf_trans(encoder, crtc_state, &n_entries);
 	} else if (DISPLAY_VER(dev_priv) == 11) {
@@ -1431,7 +1433,10 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	if (enc_to_dig_port(encoder)->tc_mode == TC_PORT_TBT_ALT)
 		return;
 
-	ddi_translations = tgl_get_dkl_buf_trans(encoder, crtc_state, &n_entries);
+	if (IS_ALDERLAKE_P(dev_priv))
+		ddi_translations = adlp_get_dkl_buf_trans(encoder, crtc_state, &n_entries);
+	else
+		ddi_translations = tgl_get_dkl_buf_trans(encoder, crtc_state, &n_entries);
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 7bcdd5c12028..ce5d5d13b7c1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -735,6 +735,34 @@ static const struct cnl_ddi_buf_trans rkl_combo_phy_ddi_translations_dp_hbr2_hbr
 	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
 };
 
+static const struct tgl_dkl_phy_ddi_buf_trans adlp_dkl_phy_dp_ddi_trans_hbr[] = {
+				/* VS	pre-emp	Non-trans mV	Pre-emph dB */
+	{ 0x7, 0x0, 0x01 },	/* 0	0	400mV		0 dB */
+	{ 0x5, 0x0, 0x06 },	/* 0	1	400mV		3.5 dB */
+	{ 0x2, 0x0, 0x0B },	/* 0	2	400mV		6 dB */
+	{ 0x0, 0x0, 0x17 },	/* 0	3	400mV		9.5 dB */
+	{ 0x5, 0x0, 0x00 },	/* 1	0	600mV		0 dB */
+	{ 0x2, 0x0, 0x08 },	/* 1	1	600mV		3.5 dB */
+	{ 0x0, 0x0, 0x14 },	/* 1	2	600mV		6 dB */
+	{ 0x2, 0x0, 0x00 },	/* 2	0	800mV		0 dB */
+	{ 0x0, 0x0, 0x0B },	/* 2	1	800mV		3.5 dB */
+	{ 0x0, 0x0, 0x00 },	/* 3	0	1200mV		0 dB */
+};
+
+static const struct tgl_dkl_phy_ddi_buf_trans adlp_dkl_phy_dp_ddi_trans_hbr2_hbr3[] = {
+				/* VS	pre-emp	Non-trans mV	Pre-emph dB */
+	{ 0x7, 0x0, 0x00 },	/* 0	0	400mV		0 dB */
+	{ 0x5, 0x0, 0x04 },	/* 0	1	400mV		3.5 dB */
+	{ 0x2, 0x0, 0x0A },	/* 0	2	400mV		6 dB */
+	{ 0x0, 0x0, 0x18 },	/* 0	3	400mV		9.5 dB */
+	{ 0x5, 0x0, 0x00 },	/* 1	0	600mV		0 dB */
+	{ 0x2, 0x0, 0x06 },	/* 1	1	600mV		3.5 dB */
+	{ 0x0, 0x0, 0x14 },	/* 1	2	600mV		6 dB */
+	{ 0x2, 0x0, 0x00 },	/* 2	0	800mV		0 dB */
+	{ 0x0, 0x0, 0x09 },	/* 2	1	800mV		3.5 dB */
+	{ 0x0, 0x0, 0x00 },	/* 3	0	1200mV		0 dB */
+};
+
 bool is_hobl_buf_trans(const struct cnl_ddi_buf_trans *table)
 {
 	return table == tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
@@ -1348,6 +1376,31 @@ tgl_get_dkl_buf_trans(struct intel_encoder *encoder,
 		return tgl_get_dkl_buf_trans_dp(encoder, crtc_state, n_entries);
 }
 
+static const struct tgl_dkl_phy_ddi_buf_trans *
+adlp_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state,
+			  int *n_entries)
+{
+	if (crtc_state->port_clock > 270000) {
+		*n_entries = ARRAY_SIZE(adlp_dkl_phy_dp_ddi_trans_hbr2_hbr3);
+		return adlp_dkl_phy_dp_ddi_trans_hbr;
+	}
+
+	*n_entries = ARRAY_SIZE(adlp_dkl_phy_dp_ddi_trans_hbr);
+	return adlp_dkl_phy_dp_ddi_trans_hbr;
+}
+
+const struct tgl_dkl_phy_ddi_buf_trans *
+adlp_get_dkl_buf_trans(struct intel_encoder *encoder,
+		       const struct intel_crtc_state *crtc_state,
+		       int *n_entries)
+{
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		return tgl_get_dkl_buf_trans_hdmi(encoder, crtc_state, n_entries);
+	else
+		return adlp_get_dkl_buf_trans_dp(encoder, crtc_state, n_entries);
+}
+
 int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       int *default_entry)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index f8f0ef87e977..4c2efab38642 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -67,6 +67,10 @@ bxt_get_buf_trans(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state,
 		  int *n_entries);
 
+const struct tgl_dkl_phy_ddi_buf_trans *
+adlp_get_dkl_buf_trans(struct intel_encoder *encoder,
+		       const struct intel_crtc_state *crtc_state,
+		       int *n_entries);
 const struct cnl_ddi_buf_trans *
 tgl_get_combo_buf_trans(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state,
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
