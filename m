Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4061E14B648
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 15:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 970B06EE58;
	Tue, 28 Jan 2020 14:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80EAF6EE49
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 14:03:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 06:03:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="429334464"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jan 2020 06:03:53 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 19:24:24 +0530
Message-Id: <20200128135425.14596-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200128135425.14596-1-anshuman.gupta@intel.com>
References: <20200128135425.14596-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: debugfs info print "HDCP shim
 isn't available"
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

If HDCP shim is not initialized, i915_display_info
connector info returns EINVAL without providing any debug
information. Adding a print for that will be useful for debugging.

CC: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 0ac98e39eb75..6d913a71cbdb 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -2405,7 +2405,8 @@ static void intel_dp_info(struct seq_file *m,
 	if (intel_connector->hdcp.shim) {
 		seq_puts(m, "\tHDCP version: ");
 		intel_hdcp_info(m, intel_connector);
-	}
+	} else if (!intel_dp_is_edp(intel_dp))
+		seq_puts(m, "\tHDCP shim isn't available\n");
 }
 
 static void intel_dp_mst_info(struct seq_file *m,
@@ -2432,6 +2433,8 @@ static void intel_hdmi_info(struct seq_file *m,
 	if (intel_connector->hdcp.shim) {
 		seq_puts(m, "\tHDCP version: ");
 		intel_hdcp_info(m, intel_connector);
+	} else {
+		seq_puts(m, "\tHDCP shim isn't available\n");
 	}
 }
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
