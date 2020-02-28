Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C63172ED4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 03:29:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E49B6EDC8;
	Fri, 28 Feb 2020 02:29:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3D646EDC6
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 02:29:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 18:29:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="227392676"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 27 Feb 2020 18:29:41 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 18:28:41 -0800
Message-Id: <20200228022843.1936-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
References: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/debugfs: move uC printers and
 update debugfs file names
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

Move the printers to the respective files for clarity. The
guc_load_status debugfs has been squashed in the guc_info one, has
having separate ones wasn't very useful. The HuC debugfs has been
renamed huc_info to match.

While at it, fix the register printed in the HuC debugfs for gen11+.

Suggested-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Tony Ye <tony.ye@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c     |  44 +++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h     |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c |  94 ++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h |   4 +
 drivers/gpu/drm/i915/gt/uc/intel_huc.c     |  29 +++++
 drivers/gpu/drm/i915/gt/uc/intel_huc.h     |   2 +
 drivers/gpu/drm/i915/i915_debugfs.c        | 131 +++------------------
 7 files changed, 190 insertions(+), 116 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 827d75073879..9647002b0e2f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -723,3 +723,47 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
 
 	return 0;
 }
+
+/**
+ * intel_guc_load_status - dump information about GuC load status
+ * @guc: the GuC
+ * @p: the &drm_printer
+ *
+ * Pretty printer for GuC load status.
+ */
+void intel_guc_load_status(const struct intel_guc *guc, struct drm_printer *p)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct intel_uncore *uncore = gt->uncore;
+	intel_wakeref_t wakeref;
+
+	if (!intel_guc_is_supported(guc)) {
+		drm_printf(p, "GuC not supported\n");
+		return;
+	}
+
+	if (!intel_guc_is_wanted(guc)) {
+		drm_printf(p, "GuC disabled\n");
+		return;
+	}
+
+	intel_uc_fw_dump(&guc->fw, p);
+
+	with_intel_runtime_pm(uncore->rpm, wakeref) {
+		u32 status = intel_uncore_read(uncore, GUC_STATUS);
+		u32 i;
+
+		drm_printf(p, "\nGuC status 0x%08x:\n", status);
+		drm_printf(p, "\tBootrom status = 0x%x\n",
+			   (status & GS_BOOTROM_MASK) >> GS_BOOTROM_SHIFT);
+		drm_printf(p, "\tuKernel status = 0x%x\n",
+			   (status & GS_UKERNEL_MASK) >> GS_UKERNEL_SHIFT);
+		drm_printf(p, "\tMIA Core status = 0x%x\n",
+			   (status & GS_MIA_MASK) >> GS_MIA_SHIFT);
+		drm_puts(p, "\nScratch registers:\n");
+		for (i = 0; i < 16; i++) {
+			drm_printf(p, "\t%2d: \t0x%x\n",
+				   i, intel_uncore_read(uncore, SOFT_SCRATCH(i)));
+		}
+	}
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 969147bd9973..7d1ae9879b94 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -190,4 +190,6 @@ static inline void intel_guc_disable_msg(struct intel_guc *guc, u32 mask)
 int intel_guc_reset_engine(struct intel_guc *guc,
 			   struct intel_engine_cs *engine);
 
+void intel_guc_load_status(const struct intel_guc *guc, struct drm_printer *p);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index caed0d57e704..fbb73b8d9178 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -55,7 +55,7 @@ static int guc_action_control_log(struct intel_guc *guc, bool enable,
 	return intel_guc_send(guc, action, ARRAY_SIZE(action));
 }
 
-static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
+static inline struct intel_guc *log_to_guc(const struct intel_guc_log *log)
 {
 	return container_of(log, struct intel_guc, log);
 }
@@ -672,3 +672,95 @@ void intel_guc_log_handle_flush_event(struct intel_guc_log *log)
 {
 	queue_work(system_highpri_wq, &log->relay.flush_work);
 }
+
+static const char *
+stringify_guc_log_type(enum guc_log_buffer_type type)
+{
+	switch (type) {
+	case GUC_ISR_LOG_BUFFER:
+		return "ISR";
+	case GUC_DPC_LOG_BUFFER:
+		return "DPC";
+	case GUC_CRASH_DUMP_LOG_BUFFER:
+		return "CRASH";
+	default:
+		MISSING_CASE(type);
+	}
+
+	return "";
+}
+
+/**
+ * intel_guc_log_info - dump information about GuC log relay
+ * @guc: the GuC
+ * @p: the &drm_printer
+ *
+ * Pretty printer for GuC log info
+ */
+void intel_guc_log_info(struct intel_guc_log *log, struct drm_printer *p)
+{
+	enum guc_log_buffer_type type;
+
+	if (!intel_guc_log_relay_created(log)) {
+		drm_puts(p, "GuC log relay not created\n");
+		return;
+	}
+
+	drm_puts(p, "GuC logging stats:\n");
+
+	drm_printf(p, "\tRelay full count: %u\n", log->relay.full_count);
+
+	for (type = GUC_ISR_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
+		drm_printf(p, "\t%s:\tflush count %10u, overflow count %10u\n",
+			   stringify_guc_log_type(type),
+			   log->stats[type].flush,
+			   log->stats[type].sampled_overflow);
+	}
+}
+
+/**
+ * intel_guc_log_dump - dump the contents of the GuC log
+ * @log: the GuC log
+ * @p: the &drm_printer
+ * @dump_load_err: dump the log saved on GuC load error
+ *
+ * Pretty printer for the GuC log
+ */
+int intel_guc_log_dump(const struct intel_guc_log *log, struct drm_printer *p,
+		       bool dump_load_err)
+{
+	struct intel_guc *guc = log_to_guc(log);
+	struct intel_uc *uc = container_of(guc, struct intel_uc, guc);
+	struct drm_i915_gem_object *obj = NULL;
+	u32 *map;
+	int i = 0;
+
+	if (!intel_guc_is_supported(guc))
+		return -ENODEV;
+
+	if (dump_load_err)
+		obj = uc->load_err_log;
+	else if (guc->log.vma)
+		obj = guc->log.vma->obj;
+
+	if (!obj)
+		return 0;
+
+	map = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	if (IS_ERR(map)) {
+		DRM_DEBUG("Failed to pin object\n");
+		drm_puts(p, "(log data unaccessible)\n");
+		return PTR_ERR(map);
+	}
+
+	for (i = 0; i < obj->base.size / sizeof(u32); i += 4)
+		drm_printf(p, "0x%08x 0x%08x 0x%08x 0x%08x\n",
+			   *(map + i), *(map + i + 1),
+			   *(map + i + 2), *(map + i + 3));
+
+	drm_puts(p, "\n");
+
+	i915_gem_object_unpin_map(obj);
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index c252c022c5fc..e57b94a1badd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -79,4 +79,8 @@ static inline u32 intel_guc_log_get_level(struct intel_guc_log *log)
 	return log->level;
 }
 
+void intel_guc_log_info(struct intel_guc_log *log, struct drm_printer *p);
+int intel_guc_log_dump(const struct intel_guc_log *log, struct drm_printer *p,
+		       bool dump_load_err);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index d73dc21686e7..093d6988cfb1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -218,3 +218,32 @@ int intel_huc_check_status(struct intel_huc *huc)
 
 	return (status & huc->status.mask) == huc->status.value;
 }
+
+/**
+ * intel_huc_load_status - dump information about HuC load status
+ * @huc: the HuC
+ * @p: the &drm_printer
+ *
+ * Pretty printer for HuC load status.
+ */
+void intel_huc_load_status(const struct intel_huc *huc, struct drm_printer *p)
+{
+	struct intel_gt *gt = huc_to_gt(huc);
+	intel_wakeref_t wakeref;
+
+	if (!intel_huc_is_supported(huc)) {
+		drm_printf(p, "HuC not supported\n");
+		return;
+	}
+
+	if (!intel_huc_is_wanted(huc)) {
+		drm_printf(p, "HuC disabled\n");
+		return;
+	}
+
+	intel_uc_fw_dump(&huc->fw, p);
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		drm_printf(p, "\nHuC status 0x%08x:\n",
+			   intel_uncore_read(gt->uncore, huc->status.reg));
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
index 19651b46d6a4..f1299c0138e5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
@@ -57,4 +57,6 @@ static inline bool intel_huc_is_authenticated(const struct intel_huc *huc)
 	return intel_uc_fw_is_running(&huc->fw);
 }
 
+void intel_huc_load_status(const struct intel_huc *huc, struct drm_printer *p);
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 37cb8b4bf4dc..1bec4cdeb92f 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1465,105 +1465,32 @@ static int i915_llc(struct seq_file *m, void *data)
 	return 0;
 }
 
-static int i915_huc_load_status_info(struct seq_file *m, void *data)
+static int i915_huc_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	intel_wakeref_t wakeref;
-	struct drm_printer p;
-
-	if (!HAS_GT_UC(dev_priv))
-		return -ENODEV;
-
-	p = drm_seq_file_printer(m);
-	intel_uc_fw_dump(&dev_priv->gt.uc.huc.fw, &p);
-
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
-		seq_printf(m, "\nHuC status 0x%08x:\n", I915_READ(HUC_STATUS2));
-
-	return 0;
-}
-
-static int i915_guc_load_status_info(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	intel_wakeref_t wakeref;
-	struct drm_printer p;
+	struct intel_huc *huc = &dev_priv->gt.uc.huc;
+	struct drm_printer p = drm_seq_file_printer(m);
 
-	if (!HAS_GT_UC(dev_priv))
+	if (!intel_huc_is_supported(huc))
 		return -ENODEV;
 
-	p = drm_seq_file_printer(m);
-	intel_uc_fw_dump(&dev_priv->gt.uc.guc.fw, &p);
-
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
-		u32 tmp = I915_READ(GUC_STATUS);
-		u32 i;
-
-		seq_printf(m, "\nGuC status 0x%08x:\n", tmp);
-		seq_printf(m, "\tBootrom status = 0x%x\n",
-			   (tmp & GS_BOOTROM_MASK) >> GS_BOOTROM_SHIFT);
-		seq_printf(m, "\tuKernel status = 0x%x\n",
-			   (tmp & GS_UKERNEL_MASK) >> GS_UKERNEL_SHIFT);
-		seq_printf(m, "\tMIA Core status = 0x%x\n",
-			   (tmp & GS_MIA_MASK) >> GS_MIA_SHIFT);
-		seq_puts(m, "\nScratch registers:\n");
-		for (i = 0; i < 16; i++) {
-			seq_printf(m, "\t%2d: \t0x%x\n",
-				   i, I915_READ(SOFT_SCRATCH(i)));
-		}
-	}
+	intel_huc_load_status(huc, &p);
 
 	return 0;
 }
 
-static const char *
-stringify_guc_log_type(enum guc_log_buffer_type type)
-{
-	switch (type) {
-	case GUC_ISR_LOG_BUFFER:
-		return "ISR";
-	case GUC_DPC_LOG_BUFFER:
-		return "DPC";
-	case GUC_CRASH_DUMP_LOG_BUFFER:
-		return "CRASH";
-	default:
-		MISSING_CASE(type);
-	}
-
-	return "";
-}
-
-static void i915_guc_log_info(struct seq_file *m, struct intel_guc_log *log)
-{
-	enum guc_log_buffer_type type;
-
-	if (!intel_guc_log_relay_created(log)) {
-		seq_puts(m, "GuC log relay not created\n");
-		return;
-	}
-
-	seq_puts(m, "GuC logging stats:\n");
-
-	seq_printf(m, "\tRelay full count: %u\n",
-		   log->relay.full_count);
-
-	for (type = GUC_ISR_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
-		seq_printf(m, "\t%s:\tflush count %10u, overflow count %10u\n",
-			   stringify_guc_log_type(type),
-			   log->stats[type].flush,
-			   log->stats[type].sampled_overflow);
-	}
-}
-
 static int i915_guc_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct intel_uc *uc = &dev_priv->gt.uc;
+	struct intel_guc *guc = &dev_priv->gt.uc.guc;
+	struct drm_printer p = drm_seq_file_printer(m);
 
-	if (!intel_uc_uses_guc(uc))
+	if (!intel_guc_is_supported(guc))
 		return -ENODEV;
 
-	i915_guc_log_info(m, &uc->guc.log);
+	intel_guc_load_status(guc, &p);
+	drm_puts(&p, "\n");
+	intel_guc_log_info(&guc->log, &p);
 
 	/* Add more as required ... */
 
@@ -1574,39 +1501,14 @@ static int i915_guc_log_dump(struct seq_file *m, void *data)
 {
 	struct drm_info_node *node = m->private;
 	struct drm_i915_private *dev_priv = node_to_i915(node);
+	struct intel_guc *guc = &dev_priv->gt.uc.guc;
 	bool dump_load_err = !!node->info_ent->data;
-	struct drm_i915_gem_object *obj = NULL;
-	u32 *log;
-	int i = 0;
+	struct drm_printer p = drm_seq_file_printer(m);
 
-	if (!HAS_GT_UC(dev_priv))
+	if (!intel_guc_is_supported(guc))
 		return -ENODEV;
 
-	if (dump_load_err)
-		obj = dev_priv->gt.uc.load_err_log;
-	else if (dev_priv->gt.uc.guc.log.vma)
-		obj = dev_priv->gt.uc.guc.log.vma->obj;
-
-	if (!obj)
-		return 0;
-
-	log = i915_gem_object_pin_map(obj, I915_MAP_WC);
-	if (IS_ERR(log)) {
-		DRM_DEBUG("Failed to pin object\n");
-		seq_puts(m, "(log data unaccessible)\n");
-		return PTR_ERR(log);
-	}
-
-	for (i = 0; i < obj->base.size / sizeof(u32); i += 4)
-		seq_printf(m, "0x%08x 0x%08x 0x%08x 0x%08x\n",
-			   *(log + i), *(log + i + 1),
-			   *(log + i + 2), *(log + i + 3));
-
-	seq_putc(m, '\n');
-
-	i915_gem_object_unpin_map(obj);
-
-	return 0;
+	return intel_guc_log_dump(&guc->log, &p, dump_load_err);
 }
 
 static int i915_guc_log_level_get(void *data, u64 *val)
@@ -2302,10 +2204,9 @@ static const struct drm_info_list i915_debugfs_list[] = {
 	{"i915_gem_fence_regs", i915_gem_fence_regs_info, 0},
 	{"i915_gem_interrupt", i915_interrupt_info, 0},
 	{"i915_guc_info", i915_guc_info, 0},
-	{"i915_guc_load_status", i915_guc_load_status_info, 0},
 	{"i915_guc_log_dump", i915_guc_log_dump, 0},
 	{"i915_guc_load_err_log_dump", i915_guc_log_dump, 0, (void *)1},
-	{"i915_huc_load_status", i915_huc_load_status_info, 0},
+	{"i915_huc_info", i915_huc_info, 0},
 	{"i915_frequency_info", i915_frequency_info, 0},
 	{"i915_drpc_info", i915_drpc_info, 0},
 	{"i915_ring_freq_table", i915_ring_freq_table, 0},
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
