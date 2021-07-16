Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 347913CBD31
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 22:00:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3732C6EA46;
	Fri, 16 Jul 2021 19:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAA536EA06;
 Fri, 16 Jul 2021 19:59:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="210596752"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="210596752"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:43 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="507239028"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:43 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 16 Jul 2021 13:17:13 -0700
Message-Id: <20210716201724.54804-41-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210716201724.54804-1-matthew.brost@intel.com>
References: <20210716201724.54804-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 40/51] drm/i915/guc: Include scheduling policies
 in the debugfs state dump
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

From: John Harrison <John.C.Harrison@Intel.com>

Added the scheduling policy parameters to the 'guc_info' debugfs state
dump.

Signed-off-by: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c     | 14 ++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h     |  3 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c |  2 ++
 3 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index c6d0b762d82c..93b0ac35a508 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -92,6 +92,20 @@ static void guc_policies_init(struct intel_guc *guc, struct guc_policies *polici
 	policies->is_valid = 1;
 }
 
+void intel_guc_ads_print_policy_info(struct intel_guc *guc,
+				     struct drm_printer *dp)
+{
+	struct __guc_ads_blob *blob = guc->ads_blob;
+
+	if (unlikely(!blob))
+		return;
+
+	drm_printf(dp, "Global scheduling policies:\n");
+	drm_printf(dp, "  DPC promote time   = %u\n", blob->policies.dpc_promote_time);
+	drm_printf(dp, "  Max num work items = %u\n", blob->policies.max_num_work_items);
+	drm_printf(dp, "  Flags              = %u\n", blob->policies.global_flags);
+}
+
 static int guc_action_policies_update(struct intel_guc *guc, u32 policy_offset)
 {
 	u32 action[] = {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
index b00d3ae1113a..bdcb339a5321 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
@@ -7,9 +7,12 @@
 #define _INTEL_GUC_ADS_H_
 
 struct intel_guc;
+struct drm_printer;
 
 int intel_guc_ads_create(struct intel_guc *guc);
 void intel_guc_ads_destroy(struct intel_guc *guc);
 void intel_guc_ads_reset(struct intel_guc *guc);
+void intel_guc_ads_print_policy_info(struct intel_guc *guc,
+				     struct drm_printer *p);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
index 7a454c91a736..72ddfff42f7d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
@@ -10,6 +10,7 @@
 #include "intel_guc_debugfs.h"
 #include "intel_guc_log_debugfs.h"
 #include "gt/uc/intel_guc_ct.h"
+#include "gt/uc/intel_guc_ads.h"
 #include "gt/uc/intel_guc_submission.h"
 
 static int guc_info_show(struct seq_file *m, void *data)
@@ -29,6 +30,7 @@ static int guc_info_show(struct seq_file *m, void *data)
 
 	intel_guc_ct_print_info(&guc->ct, &p);
 	intel_guc_submission_print_info(guc, &p);
+	intel_guc_ads_print_policy_info(guc, &p);
 
 	return 0;
 }
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
