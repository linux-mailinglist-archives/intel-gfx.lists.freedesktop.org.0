Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159FA180023
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 15:30:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A7626E2FF;
	Tue, 10 Mar 2020 14:30:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A16FA6E2FF
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 14:30:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 07:30:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="260804754"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.27])
 by orsmga002.jf.intel.com with ESMTP; 10 Mar 2020 07:30:00 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 14:29:58 +0000
Message-Id: <20200310142958.12039-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Consolidate forcewake status display
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Use new common helper intel_gt_show_forcewake from both old and new
debugfs code.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c |  7 +++++--
 drivers/gpu/drm/i915/gt/intel_gt.h      |  2 ++
 drivers/gpu/drm/i915/i915_debugfs.c     | 13 ++-----------
 3 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index 059c9e5c002e..23328fd4bc91 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -17,9 +17,8 @@
 #include "intel_sideband.h"
 #include "intel_uncore.h"
 
-static int fw_domains_show(struct seq_file *m, void *data)
+void intel_gt_show_forcewake(struct intel_gt *gt, struct seq_file *m)
 {
-	struct intel_gt *gt = m->private;
 	struct intel_uncore *uncore = gt->uncore;
 	struct intel_uncore_forcewake_domain *fw_domain;
 	unsigned int tmp;
@@ -31,7 +30,11 @@ static int fw_domains_show(struct seq_file *m, void *data)
 		seq_printf(m, "%s.wake_count = %u\n",
 			   intel_uncore_forcewake_domain_to_str(fw_domain->id),
 			   READ_ONCE(fw_domain->wake_count));
+}
 
+static int fw_domains_show(struct seq_file *m, void *data)
+{
+	intel_gt_show_forcewake(m->private, m);
 	return 0;
 }
 DEFINE_GT_DEBUGFS_ATTRIBUTE(fw_domains);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 4fac043750aa..119d188807b7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -68,4 +68,6 @@ static inline bool intel_gt_has_init_error(const struct intel_gt *gt)
 	return test_bit(I915_WEDGED_ON_INIT, &gt->reset.flags);
 }
 
+void intel_gt_show_forcewake(struct intel_gt *gt, struct seq_file *m);
+
 #endif /* __INTEL_GT_H__ */
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8f2525e4ce0f..0ffcb5cfa9e2 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -32,6 +32,7 @@
 #include <drm/drm_debugfs.h>
 
 #include "gem/i915_gem_context.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/intel_reset.h"
@@ -1057,18 +1058,8 @@ static int ilk_drpc_info(struct seq_file *m)
 static int i915_forcewake_domains(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_uncore *uncore = &i915->uncore;
-	struct intel_uncore_forcewake_domain *fw_domain;
-	unsigned int tmp;
-
-	seq_printf(m, "user.bypass_count = %u\n",
-		   uncore->user_forcewake_count);
-
-	for_each_fw_domain(fw_domain, uncore, tmp)
-		seq_printf(m, "%s.wake_count = %u\n",
-			   intel_uncore_forcewake_domain_to_str(fw_domain->id),
-			   READ_ONCE(fw_domain->wake_count));
 
+	intel_gt_show_forcewake(&i915->gt, m);
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
