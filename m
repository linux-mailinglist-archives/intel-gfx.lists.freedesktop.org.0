Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 614F8186966
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 11:49:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77ED6E3DF;
	Mon, 16 Mar 2020 10:49:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824A26E3DF
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 10:49:47 +0000 (UTC)
IronPort-SDR: wvcl5oTZwtJI0ANAfoQWEPUhp5YjSkzj/7RcCXcrvyOgIJdAWf1M0MEKCGLy27di2FgDcaC0wd
 ty74LvNDIxtg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 03:49:47 -0700
IronPort-SDR: bJms6r6v8BL72YYCSeXCckgzYaGFEmklOWDExhl6lXQIk3WMmdZ8/xxfU7l8lnWGljE410dh65
 vrXotPGlR4IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="417099521"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2020 03:49:45 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 16:07:54 +0530
Message-Id: <20200316103759.12867-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200316103759.12867-1-animesh.manna@intel.com>
References: <20200316103759.12867-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 2/7] drm/dp: get/set phy compliance pattern
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
Cc: Harry Wentland <harry.wentland@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

During phy compliance auto test mode source need to read
requested test pattern from sink through DPCD. After processing
the request source need to set the pattern. So set/get method
added in drm layer as it is DP protocol.

v2: As per review feedback from Manasi on RFC version,
- added dp revision as function argument in set_phy_pattern api.
- used int for link_rate and u8 for lane_count to align with existing code.

v3: As per review feedback from Harry,
- used sizeof() instead of magic number.
- corrected kernel-doc for drm_dp_phy_test_params structure.

Reviewed-by: Harry Wentland <harry.wentland@amd.com>
Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/drm_dp_helper.c | 94 +++++++++++++++++++++++++++++++++
 include/drm/drm_dp_helper.h     | 31 +++++++++++
 2 files changed, 125 insertions(+)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index c6fbe6e6bc9d..28e59d1ffa93 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -1533,3 +1533,97 @@ int drm_dp_dsc_sink_supported_input_bpcs(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_S
 	return num_bpc;
 }
 EXPORT_SYMBOL(drm_dp_dsc_sink_supported_input_bpcs);
+
+/**
+ * drm_dp_get_phy_test_pattern() - get the requested pattern from the sink.
+ * @aux: DisplayPort AUX channel
+ * @data: DP phy compliance test parameters.
+ *
+ * Returns 0 on success or a negative error code on failure.
+ */
+int drm_dp_get_phy_test_pattern(struct drm_dp_aux *aux,
+				struct drm_dp_phy_test_params *data)
+{
+	int err;
+	u8 rate, lanes;
+
+	err = drm_dp_dpcd_readb(aux, DP_TEST_LINK_RATE, &rate);
+	if (err < 0)
+		return err;
+	data->link_rate = drm_dp_bw_code_to_link_rate(rate);
+
+	err = drm_dp_dpcd_readb(aux, DP_TEST_LANE_COUNT, &lanes);
+	if (err < 0)
+		return err;
+	data->num_lanes = lanes & DP_MAX_LANE_COUNT_MASK;
+
+	if (lanes & DP_ENHANCED_FRAME_CAP)
+		data->enhanced_frame_cap = true;
+
+	err = drm_dp_dpcd_readb(aux, DP_PHY_TEST_PATTERN, &data->phy_pattern);
+	if (err < 0)
+		return err;
+
+	switch (data->phy_pattern) {
+	case DP_PHY_TEST_PATTERN_80BIT_CUSTOM:
+		err = drm_dp_dpcd_read(aux, DP_TEST_80BIT_CUSTOM_PATTERN_7_0,
+				       &data->custom80, sizeof(data->custom80));
+		if (err < 0)
+			return err;
+
+		break;
+	case DP_PHY_TEST_PATTERN_CP2520:
+		err = drm_dp_dpcd_read(aux, DP_TEST_HBR2_SCRAMBLER_RESET,
+				       &data->hbr2_reset,
+				       sizeof(data->hbr2_reset));
+		if (err < 0)
+			return err;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_dp_get_phy_test_pattern);
+
+/**
+ * drm_dp_set_phy_test_pattern() - set the pattern to the sink.
+ * @aux: DisplayPort AUX channel
+ * @data: DP phy compliance test parameters.
+ *
+ * Returns 0 on success or a negative error code on failure.
+ */
+int drm_dp_set_phy_test_pattern(struct drm_dp_aux *aux,
+				struct drm_dp_phy_test_params *data, u8 dp_rev)
+{
+	int err, i;
+	u8 link_config[2];
+	u8 test_pattern;
+
+	link_config[0] = drm_dp_link_rate_to_bw_code(data->link_rate);
+	link_config[1] = data->num_lanes;
+	if (data->enhanced_frame_cap)
+		link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
+	err = drm_dp_dpcd_write(aux, DP_LINK_BW_SET, link_config, 2);
+	if (err < 0)
+		return err;
+
+	test_pattern = data->phy_pattern;
+	if (dp_rev < 0x12) {
+		test_pattern = (test_pattern << 2) &
+			       DP_LINK_QUAL_PATTERN_11_MASK;
+		err = drm_dp_dpcd_writeb(aux, DP_TRAINING_PATTERN_SET,
+					 test_pattern);
+		if (err < 0)
+			return err;
+	} else {
+		for (i = 0; i < data->num_lanes; i++) {
+			err = drm_dp_dpcd_writeb(aux,
+						 DP_LINK_QUAL_LANE0_SET + i,
+						 test_pattern);
+			if (err < 0)
+				return err;
+		}
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_dp_set_phy_test_pattern);
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 10ddb622a73e..e22cf5b2f174 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -702,6 +702,15 @@
 # define DP_TEST_COUNT_MASK		    0xf
 
 #define DP_PHY_TEST_PATTERN                 0x248
+# define DP_PHY_TEST_PATTERN_SEL_MASK       0x7
+# define DP_PHY_TEST_PATTERN_NONE           0x0
+# define DP_PHY_TEST_PATTERN_D10_2          0x1
+# define DP_PHY_TEST_PATTERN_ERROR_COUNT    0x2
+# define DP_PHY_TEST_PATTERN_PRBS7          0x3
+# define DP_PHY_TEST_PATTERN_80BIT_CUSTOM   0x4
+# define DP_PHY_TEST_PATTERN_CP2520         0x5
+
+#define DP_TEST_HBR2_SCRAMBLER_RESET        0x24A
 #define DP_TEST_80BIT_CUSTOM_PATTERN_7_0    0x250
 #define	DP_TEST_80BIT_CUSTOM_PATTERN_15_8   0x251
 #define	DP_TEST_80BIT_CUSTOM_PATTERN_23_16  0x252
@@ -1598,4 +1607,26 @@ static inline void drm_dp_cec_unset_edid(struct drm_dp_aux *aux)
 
 #endif
 
+/**
+ * struct drm_dp_phy_test_params - DP Phy Compliance parameters
+ * @link_rate: Requested Link rate from DPCD 0x219
+ * @num_lanes: Number of lanes requested by sing through DPCD 0x220
+ * @phy_pattern: DP Phy test pattern from DPCD 0x248
+ * @hb2_reset: DP HBR2_COMPLIANCE_SCRAMBLER_RESET from DCPD 0x24A and 0x24B
+ * @custom80: DP Test_80BIT_CUSTOM_PATTERN from DPCDs 0x250 through 0x259
+ * @enhanced_frame_cap: flag for enhanced frame capability.
+ */
+struct drm_dp_phy_test_params {
+	int link_rate;
+	u8 num_lanes;
+	u8 phy_pattern;
+	u8 hbr2_reset[2];
+	u8 custom80[10];
+	bool enhanced_frame_cap;
+};
+
+int drm_dp_get_phy_test_pattern(struct drm_dp_aux *aux,
+				struct drm_dp_phy_test_params *data);
+int drm_dp_set_phy_test_pattern(struct drm_dp_aux *aux,
+				struct drm_dp_phy_test_params *data, u8 dp_rev);
 #endif /* _DRM_DP_HELPER_H_ */
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
