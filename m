Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A78BB189D78
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 14:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0B96E8B8;
	Wed, 18 Mar 2020 13:58:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18.mo3.mail-out.ovh.net (18.mo3.mail-out.ovh.net
 [87.98.172.162])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26C4C6E8B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 13:58:52 +0000 (UTC)
Received: from player698.ha.ovh.net (unknown [10.108.42.83])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 124B5246177
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:58:49 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player698.ha.ovh.net (Postfix) with ESMTPSA id F222910878E6F;
 Wed, 18 Mar 2020 13:58:43 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Wed, 18 Mar 2020 15:58:37 +0200
Message-Id: <20200318135837.79467-1-andi@etezian.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 2961398231709696605
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudefjedgheejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheileekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: [Intel-gfx] [PATCH] drm/i915/gt: move files more files into debugfs
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

From: Andi Shyti <andi.shyti@intel.com>

The following interfaces:

i915_wedged
i915_forcewake_user
i915_gem_interrupt
i915_gem_drop_caches

are dependent on gt values. Put them inside gt/ and drop the
"i915_" prefix name. This would be the new structure:

  gt
  |
  +-- drop_caches
  |
  +-- forcewake_user
  |
  +-- interrupt_info_show
  |
  +-- wedge

Signed-off-by: Andi Shyti <andi.shyti@intel.com>
---
Hi,

this patch is the first of a series that aims to refactor the
debugfs structure in the i915. Some changes will affect the
debugfs framework as well.

Andi

 drivers/gpu/drm/i915/gt/debugfs_engines.c |  54 +++++++++
 drivers/gpu/drm/i915/gt/debugfs_gt.c      | 140 +++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   |  32 +++++
 3 files changed, 225 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_engines.c b/drivers/gpu/drm/i915/gt/debugfs_engines.c
index 5e3725e62241..0d0fee1a166d 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_engines.c
@@ -11,6 +11,59 @@
 #include "i915_drv.h" /* for_each_engine! */
 #include "intel_engine.h"
 
+static int interrupt_info_show(struct seq_file *m, void *data)
+{
+	struct intel_gt *gt = m->private;
+	struct intel_uncore *uncore = gt->uncore;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
+
+	wakeref = intel_runtime_pm_get(uncore->rpm);
+
+	if (INTEL_GEN(gt->i915) >= 11) {
+		seq_printf(m, "RCS Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_RCS0_RSVD_INTR_MASK));
+		seq_printf(m, "BCS Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_BCS_RSVD_INTR_MASK));
+		seq_printf(m, "VCS0/VCS1 Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_VCS0_VCS1_INTR_MASK));
+		seq_printf(m, "VCS2/VCS3 Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_VCS2_VCS3_INTR_MASK));
+		seq_printf(m, "VECS0/VECS1 Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_VECS0_VECS1_INTR_MASK));
+		seq_printf(m, "GUC/SG Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_GUC_SG_INTR_MASK));
+		seq_printf(m, "GPM/WGBOXPERF Intr Mask: %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_GPM_WGBOXPERF_INTR_MASK));
+		seq_printf(m, "Crypto Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_CRYPTO_RSVD_INTR_MASK));
+		seq_printf(m, "Gunit/CSME Intr Mask:\t %08x\n",
+			   intel_uncore_read(gt->uncore,
+					     GEN11_GUNIT_CSME_INTR_MASK));
+
+	} else if (INTEL_GEN(gt->i915) >= 6) {
+		for_each_engine(engine, gt, id) {
+			seq_printf(m,
+				   "Graphics Interrupt mask (%s):	%08x\n",
+				   engine->name, ENGINE_READ(engine, RING_IMR));
+		}
+	}
+
+	intel_runtime_pm_put(uncore->rpm, wakeref);
+
+	return 0;
+}
+DEFINE_GT_DEBUGFS_ATTRIBUTE(interrupt_info);
+
 static int engines_show(struct seq_file *m, void *data)
 {
 	struct intel_gt *gt = m->private;
@@ -29,6 +82,7 @@ DEFINE_GT_DEBUGFS_ATTRIBUTE(engines);
 void debugfs_engines_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct debugfs_gt_file files[] = {
+		{ "interrupt_info_show", &interrupt_info_fops, NULL },
 		{ "engines", &engines_fops },
 	};
 
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
index fcbc57e226c3..1fc960ebba06 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
@@ -5,12 +5,148 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/sched/mm.h>
 
 #include "debugfs_engines.h"
 #include "debugfs_gt.h"
 #include "debugfs_gt_pm.h"
-#include "uc/debugfs_uc.h"
 #include "i915_drv.h"
+#include "intel_gt_pm.h"
+#include "intel_gt_requests.h"
+#include "uc/debugfs_uc.h"
+
+#define DROP_UNBOUND	BIT(0)
+#define DROP_BOUND	BIT(1)
+#define DROP_RETIRE	BIT(2)
+#define DROP_ACTIVE	BIT(3)
+#define DROP_FREED	BIT(4)
+#define DROP_SHRINK_ALL	BIT(5)
+#define DROP_IDLE	BIT(6)
+#define DROP_RESET_ACTIVE	BIT(7)
+#define DROP_RESET_SEQNO	BIT(8)
+#define DROP_RCU	BIT(9)
+#define DROP_ALL (DROP_UNBOUND	| \
+		  DROP_BOUND	| \
+		  DROP_RETIRE	| \
+		  DROP_ACTIVE	| \
+		  DROP_FREED	| \
+		  DROP_SHRINK_ALL |\
+		  DROP_IDLE	| \
+		  DROP_RESET_ACTIVE | \
+		  DROP_RESET_SEQNO | \
+		  DROP_RCU)
+
+static int drop_caches_get(void *data, u64 *val)
+{
+	*val = DROP_ALL;
+
+	return 0;
+}
+
+static int drop_caches(struct intel_gt *gt, u64 val)
+{
+	int ret;
+
+	if (val & DROP_RESET_ACTIVE &&
+	    wait_for(intel_engines_are_idle(gt), I915_IDLE_ENGINES_TIMEOUT))
+		intel_gt_set_wedged(gt);
+
+	if (val & DROP_RETIRE)
+		intel_gt_retire_requests(gt);
+
+	if (val & (DROP_IDLE | DROP_ACTIVE)) {
+		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
+		if (ret)
+			return ret;
+	}
+
+	if (val & DROP_IDLE) {
+		ret = intel_gt_pm_wait_for_idle(gt);
+		if (ret)
+			return ret;
+	}
+
+	if (val & DROP_RESET_ACTIVE && intel_gt_terminally_wedged(gt))
+		intel_gt_handle_error(gt, ALL_ENGINES, 0, NULL);
+
+	return 0;
+}
+
+static int drop_caches_set(void *data, u64 val)
+{
+	struct intel_gt *gt = data;
+	int ret;
+
+	DRM_DEBUG("Dropping caches: 0x%08llx [0x%08llx]\n",
+		  val, val & DROP_ALL);
+
+	ret = drop_caches(gt, val);
+	if (ret)
+		return ret;
+
+	fs_reclaim_acquire(GFP_KERNEL);
+	if (val & DROP_BOUND)
+		i915_gem_shrink(gt->i915, LONG_MAX, NULL, I915_SHRINK_BOUND);
+
+	if (val & DROP_UNBOUND)
+		i915_gem_shrink(gt->i915, LONG_MAX, NULL, I915_SHRINK_UNBOUND);
+
+	if (val & DROP_SHRINK_ALL)
+		i915_gem_shrink_all(gt->i915);
+	fs_reclaim_release(GFP_KERNEL);
+
+	if (val & DROP_RCU)
+		rcu_barrier();
+
+	if (val & DROP_FREED)
+		i915_gem_drain_freed_objects(gt->i915);
+
+	return 0;
+}
+DEFINE_SIMPLE_ATTRIBUTE(drop_caches_fops,
+			drop_caches_get, drop_caches_set,
+			"0x%08llx\n");
+
+static int wedged_get(void *data, u64 *val)
+{
+	struct intel_gt *gt = data;
+	int ret = intel_gt_terminally_wedged(gt);
+
+	switch (ret) {
+	case -EIO:
+		*val = 1;
+		return 0;
+	case 0:
+		*val = 0;
+		return 0;
+	default:
+		return ret;
+	}
+}
+
+static int wedged_set(void *data, u64 val)
+{
+	struct intel_gt *gt = data;
+
+	/* Flush any previous reset before applying for a new one */
+	wait_event(gt->reset.queue,
+		   !test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
+
+	intel_gt_handle_error(gt, val, I915_ERROR_CAPTURE,
+			      "Manually set wedged engine mask = %llx", val);
+	return 0;
+}
+DEFINE_SIMPLE_ATTRIBUTE(wedged_fops, wedged_get, wedged_set, "%llu\n");
+
+static void __debugfs_gt_register(struct intel_gt *gt, struct dentry *root)
+{
+	static const struct debugfs_gt_file files[] = {
+		{ "drop_caches", &drop_caches_fops, NULL },
+		{ "wedge", &wedged_fops, NULL },
+	};
+
+	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
+}
 
 void debugfs_gt_register(struct intel_gt *gt)
 {
@@ -23,6 +159,8 @@ void debugfs_gt_register(struct intel_gt *gt)
 	if (IS_ERR(root))
 		return;
 
+	__debugfs_gt_register(gt, root);
+
 	debugfs_engines_register(gt, root);
 	debugfs_gt_pm_register(gt, root);
 
diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index dc024944873a..5b1f109c4abb 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -10,6 +10,7 @@
 #include "debugfs_gt_pm.h"
 #include "i915_drv.h"
 #include "intel_gt.h"
+#include "intel_gt_pm.h"
 #include "intel_llc.h"
 #include "intel_rc6.h"
 #include "intel_rps.h"
@@ -17,6 +18,36 @@
 #include "intel_sideband.h"
 #include "intel_uncore.h"
 
+static int forcewake_user_open(struct inode *inode, struct file *file)
+{
+	struct intel_gt *gt = inode->i_private;
+
+	atomic_inc(&gt->user_wakeref);
+	intel_gt_pm_get(gt);
+	if (INTEL_GEN(gt->i915) >= 6)
+		intel_uncore_forcewake_user_get(gt->uncore);
+
+	return 0;
+}
+
+static int forcewake_user_release(struct inode *inode, struct file *file)
+{
+	struct intel_gt *gt = inode->i_private;
+
+	if (INTEL_GEN(gt->i915) >= 6)
+		intel_uncore_forcewake_user_put(gt->uncore);
+	intel_gt_pm_put(gt);
+	atomic_dec(&gt->user_wakeref);
+
+	return 0;
+}
+
+static const struct file_operations forcewake_user_fops = {
+	.owner = THIS_MODULE,
+	.open = forcewake_user_open,
+	.release = forcewake_user_release,
+};
+
 static int fw_domains_show(struct seq_file *m, void *data)
 {
 	struct intel_gt *gt = m->private;
@@ -597,6 +628,7 @@ void debugfs_gt_pm_register(struct intel_gt *gt, struct dentry *root)
 		{ "drpc", &drpc_fops, NULL },
 		{ "frequency", &frequency_fops, NULL },
 		{ "forcewake", &fw_domains_fops, NULL },
+		{ "forcewake_user", &forcewake_user_fops, NULL},
 		{ "llc", &llc_fops, llc_eval },
 		{ "rps_boost", &rps_boost_fops, rps_eval },
 	};
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
