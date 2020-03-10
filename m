Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBB018025E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 16:49:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75EF06E893;
	Tue, 10 Mar 2020 15:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E48A86E886
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 15:49:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 08:49:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="236075946"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga008.jf.intel.com with ESMTP; 10 Mar 2020 08:49:19 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 21:07:42 +0530
Message-Id: <20200310153745.22814-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200310153745.22814-1-animesh.manna@intel.com>
References: <20200310153745.22814-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 4/7] drm/i915/dp: Preparation for DP phy
 compliance auto test
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

During DP phy compliance auto test mode, sink will request
combination of different test pattern with differnt level of
vswing, pre-emphasis. Function added to prepare for it.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 5e00e611f077..42d0b102c2cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1238,6 +1238,7 @@ struct intel_dp_compliance_data {
 	u8 video_pattern;
 	u16 hdisplay, vdisplay;
 	u8 bpc;
+	struct drm_dp_phy_test_params phytest;
 };
 
 struct intel_dp_compliance {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0a417cd2af2b..16a4a48c8168 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5001,9 +5001,33 @@ static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
 	return test_result;
 }
 
+static u8 intel_dp_prepare_phytest(struct intel_dp *intel_dp)
+{
+	struct drm_dp_phy_test_params *data =
+		&intel_dp->compliance.test_data.phytest;
+
+	if (drm_dp_get_phy_test_pattern(&intel_dp->aux, data)) {
+		DRM_DEBUG_KMS("DP Phy Test pattern AUX read failure\n");
+		return DP_TEST_NAK;
+	}
+
+	/*
+	 * link_mst is set to false to avoid executing mst related code
+	 * during compliance testing.
+	 */
+	intel_dp->link_mst = false;
+
+	return DP_TEST_ACK;
+}
+
 static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
 {
 	u8 test_result = DP_TEST_NAK;
+
+	test_result = intel_dp_prepare_phytest(intel_dp);
+	if (test_result != DP_TEST_ACK)
+		DRM_ERROR("Phy test preparation failed\n");
+
 	return test_result;
 }
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
