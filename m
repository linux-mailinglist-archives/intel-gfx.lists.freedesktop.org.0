Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDA4124B95
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 16:25:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5966C6E52E;
	Wed, 18 Dec 2019 15:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF0A96E53C;
 Wed, 18 Dec 2019 15:25:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 07:25:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="205873207"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga007.jf.intel.com with ESMTP; 18 Dec 2019 07:25:04 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 18 Dec 2019 20:43:47 +0530
Message-Id: <20191218151350.19579-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191218151350.19579-1-animesh.manna@intel.com>
References: <20191218151350.19579-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915/dp: Add debugfs entry for DP
 phy compliance.
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These debugfs entry will help testapp to understand the test request
during dp phy compliance mode.

Acked-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index d28468eaed57..715a6c26d0c9 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -3173,6 +3173,16 @@ static int i915_displayport_test_data_show(struct seq_file *m, void *data)
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
@@ -3205,7 +3215,7 @@ static int i915_displayport_test_type_show(struct seq_file *m, void *data)
 
 		if (encoder && connector->status == connector_status_connected) {
 			intel_dp = enc_to_intel_dp(&encoder->base);
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
