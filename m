Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFB03B312D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 16:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B876EC09;
	Thu, 24 Jun 2021 14:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C66446EC09
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 14:23:13 +0000 (UTC)
IronPort-SDR: 9ixfir8uxgmr+CzEdLZFdnBMHz89uT4AuG5vCS5t9UzNl2ZyruMmgfUpj3wH2tuiP7ylN8TDWx
 c/MZcJI9hWLQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207294776"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="207294776"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 07:23:12 -0700
IronPort-SDR: zOdCmUXSX6VGQeHX1LIPv3EwDGlzW1GqVbf8ouAIre6ZGsMvkArGp64KAFYsLMA5ks+LUOkD7N
 iUf4XQO4BSMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="491142336"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jun 2021 07:23:11 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Jun 2021 22:28:56 +0800
Message-Id: <20210624142856.30532-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Fix invalid test parameter when
 run DP link layer compliance
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Run intel_dp_compliance would failed at video pattern related
test case sometimes. DP test applet read incorrect test type
from kernel to cause this symptom. Add "\n" (newline) in
seq_printf() then test daemon can get parameter properly.

Fixes: eb3394faeb97 ("drm/i915: Add debugfs test control
files for Displayport compliance testing")

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index db38891a9ef0..08b0a5c89f7e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1540,7 +1540,7 @@ static int i915_displayport_test_data_show(struct seq_file *m, void *data)
 			intel_dp = enc_to_intel_dp(encoder);
 			if (intel_dp->compliance.test_type ==
 			    DP_TEST_LINK_EDID_READ)
-				seq_printf(m, "%lx",
+				seq_printf(m, "%lx\n",
 					   intel_dp->compliance.test_data.edid);
 			else if (intel_dp->compliance.test_type ==
 				 DP_TEST_LINK_VIDEO_PATTERN) {
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
