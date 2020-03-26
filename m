Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCEA19462C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 19:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9595E6E8FE;
	Thu, 26 Mar 2020 18:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FFD36E8F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 18:11:58 +0000 (UTC)
IronPort-SDR: Qkt2DU4iS2XHffZI1wNz6vQ9CBXbERbbNl6vMKjWTj41GnNh3GsHjW821pIF5sEjUO+ArG1t0j
 d1yHxo3VJM5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 11:11:58 -0700
IronPort-SDR: bNBJ6W8qbQGUISJgwqBF10VAnZMM8+qhIq9QgwE6koLy/1+GApWyYwNGRMWwE5dKlHC4qWfsPN
 e0rn+BFVBk+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="265955980"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 26 Mar 2020 11:11:58 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 11:11:17 -0700
Message-Id: <20200326181121.16869-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200326181121.16869-1-daniele.ceraolospurio@intel.com>
References: <20200326181121.16869-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/6] drm/i915/guc: drop stage_pool debugfs
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

The pool will be private to GuC in the new submission scheme, so we
won't be able to print it and we can just drop the current legacy code.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 53 -----------------------------
 1 file changed, 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 25bf997e2dd1..ef875cec3524 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1356,58 +1356,6 @@ static int i915_guc_info(struct seq_file *m, void *data)
 	return 0;
 }
 
-static int i915_guc_stage_pool(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct intel_uc *uc = &dev_priv->gt.uc;
-	struct guc_stage_desc *desc = uc->guc.stage_desc_pool_vaddr;
-	int index;
-
-	if (!intel_uc_uses_guc_submission(uc))
-		return -ENODEV;
-
-	for (index = 0; index < GUC_MAX_STAGE_DESCRIPTORS; index++, desc++) {
-		struct intel_engine_cs *engine;
-
-		if (!(desc->attribute & GUC_STAGE_DESC_ATTR_ACTIVE))
-			continue;
-
-		seq_printf(m, "GuC stage descriptor %u:\n", index);
-		seq_printf(m, "\tIndex: %u\n", desc->stage_id);
-		seq_printf(m, "\tAttribute: 0x%x\n", desc->attribute);
-		seq_printf(m, "\tPriority: %d\n", desc->priority);
-		seq_printf(m, "\tDoorbell id: %d\n", desc->db_id);
-		seq_printf(m, "\tEngines used: 0x%x\n",
-			   desc->engines_used);
-		seq_printf(m, "\tDoorbell trigger phy: 0x%llx, cpu: 0x%llx, uK: 0x%x\n",
-			   desc->db_trigger_phy,
-			   desc->db_trigger_cpu,
-			   desc->db_trigger_uk);
-		seq_printf(m, "\tProcess descriptor: 0x%x\n",
-			   desc->process_desc);
-		seq_printf(m, "\tWorkqueue address: 0x%x, size: 0x%x\n",
-			   desc->wq_addr, desc->wq_size);
-		seq_putc(m, '\n');
-
-		for_each_uabi_engine(engine, dev_priv) {
-			u32 guc_engine_id = engine->guc_id;
-			struct guc_execlist_context *lrc =
-						&desc->lrc[guc_engine_id];
-
-			seq_printf(m, "\t%s LRC:\n", engine->name);
-			seq_printf(m, "\t\tContext desc: 0x%x\n",
-				   lrc->context_desc);
-			seq_printf(m, "\t\tContext id: 0x%x\n", lrc->context_id);
-			seq_printf(m, "\t\tLRCA: 0x%x\n", lrc->ring_lrca);
-			seq_printf(m, "\t\tRing begin: 0x%x\n", lrc->ring_begin);
-			seq_printf(m, "\t\tRing end: 0x%x\n", lrc->ring_end);
-			seq_putc(m, '\n');
-		}
-	}
-
-	return 0;
-}
-
 static int i915_guc_log_dump(struct seq_file *m, void *data)
 {
 	struct drm_info_node *node = m->private;
@@ -2143,7 +2091,6 @@ static const struct drm_info_list i915_debugfs_list[] = {
 	{"i915_guc_load_status", i915_guc_load_status_info, 0},
 	{"i915_guc_log_dump", i915_guc_log_dump, 0},
 	{"i915_guc_load_err_log_dump", i915_guc_log_dump, 0, (void *)1},
-	{"i915_guc_stage_pool", i915_guc_stage_pool, 0},
 	{"i915_huc_load_status", i915_huc_load_status_info, 0},
 	{"i915_frequency_info", i915_frequency_info, 0},
 	{"i915_ring_freq_table", i915_ring_freq_table, 0},
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
