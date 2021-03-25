Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E051334991D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF466EE27;
	Thu, 25 Mar 2021 18:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4D96EE37
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:34 +0000 (UTC)
IronPort-SDR: BFeplnmlZVRLroCqq4V0a5QhR86sYWkXHWxSMfeZWirZ+4zuWqZIhVSVGWKw2eiEeXybSPSUCR
 N57PWoZRvvAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112562"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112562"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:34 -0700
IronPort-SDR: PsPCsJqtOXuJBdC3CSB3gPpivNjJaz9WEPkiXbI/1Suhx6OTvnF1Sn1W1tRQKcM86vwXpxSzhl
 x+k5Z9bus3NQ==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176711"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:07:08 -0700
Message-Id: <20210325180720.401410-39-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 38/50] drm/i915/adl_p: Define and use ADL-P
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
Cc: me@freedesktop.org
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
index 933af861253e..1a5213447db1 100644
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
 	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
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
index 5d9ce6042e87..bb4f799a8ef2 100644
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
