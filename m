Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AD4130C1E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 03:32:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B886E202;
	Mon,  6 Jan 2020 02:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98CBB6E202
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 02:32:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jan 2020 18:32:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,400,1571727600"; d="scan'208";a="421990820"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jan 2020 18:32:15 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jan 2020 18:30:29 +0800
Message-Id: <20200106103029.27944-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103150737.17934-1-shawn.c.lee@intel.com>
References: <20200103150737.17934-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Fix incorrect test parameter for
 DP link layer compliance
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Run intel_dp_compliance would failed at video pattern related
test case sometimes. DP test applet read incorrect test type
from kernel to cause this symptom. Add a "\n" (newline) in
seq_printf() then DP test applet will get proper parameters.

Fixes: eb3394faeb97 ("drm/i915: Add debugfs test control
files for Displayport compliance testing")

v2: Add "Fixes" comment.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 0ac98e39eb75..74180158a909 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -3167,7 +3167,7 @@ static int i915_displayport_test_data_show(struct seq_file *m, void *data)
 			intel_dp = enc_to_intel_dp(&encoder->base);
 			if (intel_dp->compliance.test_type ==
 			    DP_TEST_LINK_EDID_READ)
-				seq_printf(m, "%lx",
+				seq_printf(m, "%lx\n",
 					   intel_dp->compliance.test_data.edid);
 			else if (intel_dp->compliance.test_type ==
 				 DP_TEST_LINK_VIDEO_PATTERN) {
@@ -3209,7 +3209,7 @@ static int i915_displayport_test_type_show(struct seq_file *m, void *data)
 
 		if (encoder && connector->status == connector_status_connected) {
 			intel_dp = enc_to_intel_dp(&encoder->base);
-			seq_printf(m, "%02lx", intel_dp->compliance.test_type);
+			seq_printf(m, "%02lx\n", intel_dp->compliance.test_type);
 		} else
 			seq_puts(m, "0");
 	}
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
