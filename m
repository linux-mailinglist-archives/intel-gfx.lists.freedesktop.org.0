Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8CE22DC25
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Jul 2020 07:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298066E095;
	Sun, 26 Jul 2020 05:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 527696E092
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Jul 2020 05:08:58 +0000 (UTC)
IronPort-SDR: upQteNWZQey63aJXNDys8pFACIh09sTDPcFgxbIlX1JHnr/JKLqrWerpPuSUuTaoEMLOzdE03W
 V7qx9u/9/HlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9693"; a="150054556"
X-IronPort-AV: E=Sophos;i="5.75,397,1589266800"; d="scan'208";a="150054556"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2020 22:08:58 -0700
IronPort-SDR: 5C4m1/dhfJP6vviGDB1jybcYZvYhx1z3BorsBVL56wGiPzco/Li7jfBSgtWDoceS+0nt7xeF8v
 gvm0goJET09g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,397,1589266800"; d="scan'208";a="285334911"
Received: from bhanu-nuc8i7beh.iind.intel.com ([10.145.162.210])
 by orsmga003.jf.intel.com with ESMTP; 25 Jul 2020 22:08:56 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: bhanuprakash.modem@intel.com,
	intel-gfx@lists.freedesktop.org
Date: Sun, 26 Jul 2020 18:34:00 +0530
Message-Id: <20200726130400.10160-3-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200726130400.10160-1-bhanuprakash.modem@intel.com>
References: <20200726130400.10160-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] i915/debug: Expose Max BPC info via debugfs
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

[Why]
It's useful to know the max supported panel BPC for IGT testing.

[How]
Expose the max supported BPC for the panel via a debugfs file on the
connector, "output_bpc".

Example usage: cat /sys/kernel/debug/dri/0/DP-1/output_bpc

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c    | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 3644752cc5ec..0877d029af77 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2185,6 +2185,20 @@ static const struct file_operations i915_dsc_fec_support_fops = {
 	.write = i915_dsc_fec_support_write
 };
 
+/*
+ * Returns the maximum output bpc for the connector.
+ * Example usage: cat /sys/kernel/debug/dri/0/DP-1/output_bpc
+ */
+static int output_bpc_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+
+	seq_printf(m, "Maximum: %u\n", connector->display_info.bpc);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(output_bpc);
+
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
  * @connector: pointer to a registered drm_connector
@@ -2235,5 +2249,8 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
 		debugfs_create_file("i915_lpsp_capability", 0444, root,
 				    connector, &i915_lpsp_capability_fops);
 
+	debugfs_create_file("output_bpc", S_IRUGO, root,
+			connector, &output_bpc_fops);
+
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
