Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE78F18696B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 11:49:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22E656E3E5;
	Mon, 16 Mar 2020 10:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D45E96E3E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 10:49:55 +0000 (UTC)
IronPort-SDR: /zaAeCgaXTZM0JmAGexu+YnSjIEHBEJwQfNGUBTQl3E/t18JkA13B35F4taonnpfTTMs0TL7tF
 IIre6yvvsD6g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 03:49:55 -0700
IronPort-SDR: SBRGGiG9aTLx0B3WOmdNhAvqmQAHudXTVYn1okxxQahkqeHzjJNbYI5/wdSe1GdTHelswBr6oi
 B762AVX3FFYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="417099564"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2020 03:49:54 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 16:07:57 +0530
Message-Id: <20200316103759.12867-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200316103759.12867-1-animesh.manna@intel.com>
References: <20200316103759.12867-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 5/7] drm/i915/dp: Add debugfs entry for DP
 phy compliance
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

These debugfs entry will help testapp to understand the test request
during dp phy compliance mode.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 1e6eb7f2f72d..ab20b7ea26f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1326,6 +1326,16 @@ static int i915_displayport_test_data_show(struct seq_file *m, void *data)
 					   intel_dp->compliance.test_data.vdisplay);
 				seq_printf(m, "bpc: %u\n",
 					   intel_dp->compliance.test_data.bpc);
+			} else if (intel_dp->compliance.test_type ==
+				   DP_TEST_LINK_PHY_TEST_PATTERN) {
+				seq_printf(m, "pattern: %d\n",
+					   intel_dp->compliance.test_data.phytest.phy_pattern);
+				seq_printf(m, "Number of lanes: %d\n",
+					   intel_dp->compliance.test_data.phytest.num_lanes);
+				seq_printf(m, "Link Rate: %d\n",
+					   intel_dp->compliance.test_data.phytest.link_rate);
+				seq_printf(m, "level: %02x\n",
+					   intel_dp->train_set[0]);
 			}
 		} else
 			seq_puts(m, "0");
@@ -1358,7 +1368,7 @@ static int i915_displayport_test_type_show(struct seq_file *m, void *data)
 
 		if (encoder && connector->status == connector_status_connected) {
 			intel_dp = enc_to_intel_dp(encoder);
-			seq_printf(m, "%02lx", intel_dp->compliance.test_type);
+			seq_printf(m, "%02lx\n", intel_dp->compliance.test_type);
 		} else
 			seq_puts(m, "0");
 	}
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
