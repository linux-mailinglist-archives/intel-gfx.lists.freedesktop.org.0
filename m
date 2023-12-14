Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86520812C5E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 10:59:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FCC610E0AA;
	Thu, 14 Dec 2023 09:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C31CD10E24A
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 09:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702547951; x=1734083951;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ymFm2piVAGY0O/0L25EtNOLq0xgue/X+XPv9im2GnKA=;
 b=Ir5Y01yvG5Alh61mRfzMxjJLz9GeD4Nc3q6JDriY6NOPGm5ddQ/oNz8L
 Cl8sSp1j8wEebPsD9CpwN6W8CrbrRANq5X0HTnbSW66k21kmWXpFVCQz6
 rAdKEas+DEKai7dQhmGcm6VVLIHzvplMMnVctArrYeV/xTRMopeI2LxAR
 FqkfPoNVykOIUIKEl2//xmruIgEkOJoHFr3Df56eGSowGQcegq2zVn6J8
 02s5HIFXSnI1S4KnANHxkRf8FUXxLRRYZS/mV77VkydyfwynLGAA5nRpI
 /w5TRzJ633Ym3WmzcT6I+sdWlsXGUAXMc8SZSkSJvrXLo2VVdzbwcFMQF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="397881101"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="397881101"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 01:59:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="22337572"
Received: from sinjan-super-server.iind.intel.com ([10.145.169.153])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 01:59:09 -0800
From: Karthik Poosa <karthik.poosa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/xe: Add wait for completion after gt force reset
Date: Thu, 14 Dec 2023 15:36:41 +0530
Message-Id: <20231214100641.2479582-1-karthik.poosa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: Karthik Poosa <karthik.poosa@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wait for gt reset to complete before returning from force_reset
sysfs call. Without this igt test freq_reset_multiple fails
sporadically in case xe_guc_pc is not started.

Testcase: igt@xe_guc_pc@freq_reset_multiple
Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
---
 drivers/gpu/drm/xe/xe_gt.c         |  3 +++
 drivers/gpu/drm/xe/xe_gt_debugfs.c | 10 ++++++++++
 drivers/gpu/drm/xe/xe_gt_types.h   |  3 +++
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
index dfd9cf01a5d5..eb7552b6dfa5 100644
--- a/drivers/gpu/drm/xe/xe_gt.c
+++ b/drivers/gpu/drm/xe/xe_gt.c
@@ -65,6 +65,7 @@ struct xe_gt *xe_gt_alloc(struct xe_tile *tile)
 
 	gt->tile = tile;
 	gt->ordered_wq = alloc_ordered_workqueue("gt-ordered-wq", 0);
+	init_completion(&gt->reset_done);
 
 	return gt;
 }
@@ -647,6 +648,8 @@ static int gt_reset(struct xe_gt *gt)
 	xe_device_mem_access_put(gt_to_xe(gt));
 	XE_WARN_ON(err);
 
+	complete(&gt->reset_done);
+
 	xe_gt_info(gt, "reset done\n");
 
 	return 0;
diff --git a/drivers/gpu/drm/xe/xe_gt_debugfs.c b/drivers/gpu/drm/xe/xe_gt_debugfs.c
index c4b67cf09f8f..49b30937a28b 100644
--- a/drivers/gpu/drm/xe/xe_gt_debugfs.c
+++ b/drivers/gpu/drm/xe/xe_gt_debugfs.c
@@ -23,6 +23,8 @@
 #include "xe_uc_debugfs.h"
 #include "xe_wa.h"
 
+#define XE_GT_RESET_TIMEOUT_MS	(msecs_to_jiffies(5*1000))
+
 static struct xe_gt *node_to_gt(struct drm_info_node *node)
 {
 	return node->info_ent->data;
@@ -58,9 +60,17 @@ static int hw_engines(struct seq_file *m, void *data)
 static int force_reset(struct seq_file *m, void *data)
 {
 	struct xe_gt *gt = node_to_gt(m->private);
+	struct xe_device *xe = gt_to_xe(gt);
+	unsigned long timeout;
 
 	xe_gt_reset_async(gt);
 
+	timeout = wait_for_completion_timeout(&gt->reset_done, XE_GT_RESET_TIMEOUT_MS);
+	if (timeout == 0) {
+		drm_err(&xe->drm, "gt reset timed out");
+		return -ETIMEDOUT;
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/xe/xe_gt_types.h b/drivers/gpu/drm/xe/xe_gt_types.h
index f74684660475..6f2fb9e3cfea 100644
--- a/drivers/gpu/drm/xe/xe_gt_types.h
+++ b/drivers/gpu/drm/xe/xe_gt_types.h
@@ -358,6 +358,9 @@ struct xe_gt {
 		/** @oob: bitmap with active OOB workaroudns */
 		unsigned long *oob;
 	} wa_active;
+
+	/** @reset_done : Completion of GT reset */
+	struct completion reset_done;
 };
 
 #endif
-- 
2.25.1

