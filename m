Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDAE12F4DB
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 08:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1D846E192;
	Fri,  3 Jan 2020 07:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 445366E192
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 07:09:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 23:09:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,389,1571727600"; d="scan'208";a="214380585"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga008.jf.intel.com with ESMTP; 02 Jan 2020 23:09:30 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jan 2020 23:07:37 +0800
Message-Id: <20200103150737.17934-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
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
