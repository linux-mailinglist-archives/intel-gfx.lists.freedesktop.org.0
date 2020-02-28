Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DA1172ED1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 03:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36576ED88;
	Fri, 28 Feb 2020 02:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E90C96ED88
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 02:29:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 18:29:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="227392643"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 27 Feb 2020 18:29:35 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 18:28:38 -0800
Message-Id: <20200228022843.1936-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
References: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/guc: drop stage_pool debugfs
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
---
 drivers/gpu/drm/i915/i915_debugfs.c | 53 -----------------------------
 1 file changed, 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8f2525e4ce0f..37cb8b4bf4dc 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1570,58 +1570,6 @@ static int i915_guc_info(struct seq_file *m, void *data)
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
@@ -2357,7 +2305,6 @@ static const struct drm_info_list i915_debugfs_list[] = {
 	{"i915_guc_load_status", i915_guc_load_status_info, 0},
 	{"i915_guc_log_dump", i915_guc_log_dump, 0},
 	{"i915_guc_load_err_log_dump", i915_guc_log_dump, 0, (void *)1},
-	{"i915_guc_stage_pool", i915_guc_stage_pool, 0},
 	{"i915_huc_load_status", i915_huc_load_status_info, 0},
 	{"i915_frequency_info", i915_frequency_info, 0},
 	{"i915_drpc_info", i915_drpc_info, 0},
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
