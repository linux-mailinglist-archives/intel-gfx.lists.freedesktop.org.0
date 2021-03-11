Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA4C338091
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FDD86EF33;
	Thu, 11 Mar 2021 22:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8EE56EE9F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:50 +0000 (UTC)
IronPort-SDR: sG/LmmcR85+kmMeWBvTuC9/XgmKiPO4LHWnH53lB8LuD3CVLbLZlxVOv3tvkrh9grnKp7GYGdO
 DYkJ2Kv2aJcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175865728"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175865728"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:47 -0800
IronPort-SDR: Wss1Okz+9f1TRUTNxLDTpavEW79ewB0/fO3hcvbc8trInQ3e5OjIVyuM7vOxvNUpjfhopKXkeq
 yxAsyCeqOudw==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852782"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:36:20 -0800
Message-Id: <20210311223632.3191939-45-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 44/56] drm/i915/adl_p: Define and use ADL-P
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

BSpec: 54956

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  7 +++-
 .../drm/i915/display/intel_ddi_buf_trans.c    | 34 +++++++++++++++++++
 .../drm/i915/display/intel_ddi_buf_trans.h    |  4 +++
 3 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f404547bb95a..7a2a5c92899b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -975,6 +975,8 @@ static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		if (intel_phy_is_combo(dev_priv, phy))
 			tgl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
+		else if (IS_ALDERLAKE_P(dev_priv))
+			adlp_get_dkl_buf_trans(encoder, crtc_state, &n_entries);
 		else
 			tgl_get_dkl_buf_trans(encoder, crtc_state, &n_entries);
 	} else if (DISPLAY_VER(dev_priv) == 11) {
@@ -1421,7 +1423,10 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
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
index 50746e2725e8..11b5903dca67 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -734,6 +734,20 @@ static const struct cnl_ddi_buf_trans rkl_combo_phy_ddi_translations_dp_hbr2_hbr
 	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
 };
 
+static const struct tgl_dkl_phy_ddi_buf_trans adlp_dkl_phy_dp_ddi_trans[] = {
+				/* VS	pre-emp	Non-trans mV	Pre-emph dB */
+	{ 0x7, 0x0, 0x00 },	/* 0	0	400mV		0 dB */
+	{ 0x5, 0x0, 0x03 },	/* 0	1	400mV		3.5 dB */
+	{ 0x2, 0x0, 0x0B },	/* 0	2	400mV		6 dB */
+	{ 0x0, 0x0, 0x19 },	/* 0	3	400mV		9.5 dB */
+	{ 0x5, 0x0, 0x00 },	/* 1	0	600mV		0 dB */
+	{ 0x2, 0x0, 0x03 },	/* 1	1	600mV		3.5 dB */
+	{ 0x0, 0x0, 0x14 },	/* 1	2	600mV		6 dB */
+	{ 0x2, 0x0, 0x00 },	/* 2	0	800mV		0 dB */
+	{ 0x0, 0x0, 0x0B },	/* 2	1	800mV		3.5 dB */
+	{ 0x0, 0x0, 0x00 },	/* 3	0	1200mV		0 dB */
+};
+
 bool is_hobl_buf_trans(const struct cnl_ddi_buf_trans *table)
 {
 	return table == tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
@@ -1347,6 +1361,26 @@ tgl_get_dkl_buf_trans(struct intel_encoder *encoder,
 		return tgl_get_dkl_buf_trans_dp(encoder, crtc_state, n_entries);
 }
 
+static const struct tgl_dkl_phy_ddi_buf_trans *
+adlp_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state,
+			  int *n_entries)
+{
+	*n_entries = ARRAY_SIZE(tgl_dkl_phy_dp_ddi_trans);
+	return adlp_dkl_phy_dp_ddi_trans;
+}
+
+const struct tgl_dkl_phy_ddi_buf_trans *
+adlp_get_dkl_buf_trans(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state,
+		      int *n_entries)
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
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
