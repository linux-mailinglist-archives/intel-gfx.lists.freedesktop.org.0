Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A069B181394
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 09:48:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074E86E59D;
	Wed, 11 Mar 2020 08:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50A716E59D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 08:48:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 01:48:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,540,1574150400"; d="scan'208";a="443486480"
Received: from cliu38-mobl3.sh.intel.com ([10.239.147.91])
 by fmsmga006.fm.intel.com with ESMTP; 11 Mar 2020 01:48:54 -0700
From: Chuansheng Liu <chuansheng.liu@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 16:47:04 +0800
Message-Id: <20200311084704.20468-1-chuansheng.liu@intel.com>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/debugfs: print more workaround
 registers
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

In the node i915_wa_registers, we could print out
more information with whitelist, GT workaround and
engine workaround.

In addition, fix the warning by checkpatch.pl:
WARNING: Prefer seq_puts to seq_printf

Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 60 ++++++++++++++++++++++++++++-
 1 file changed, 58 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8f2525e4ce0f..d4d9e0396d71 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1836,7 +1836,7 @@ static int i915_wa_registers(struct seq_file *m, void *unused)
 		if (!count)
 			continue;
 
-		seq_printf(m, "%s: Workarounds applied: %u\n",
+		seq_printf(m, "%s: context workarounds applied: %u\n",
 			   engine->name, count);
 
 		for (wa = wal->list; count--; wa++)
@@ -1844,9 +1844,65 @@ static int i915_wa_registers(struct seq_file *m, void *unused)
 				   i915_mmio_reg_offset(wa->reg),
 				   wa->set, wa->clr);
 
-		seq_printf(m, "\n");
+		seq_puts(m, "\n");
 	}
 
+	for_each_uabi_engine(engine, i915) {
+		const struct i915_wa_list *wal = &engine->whitelist;
+		const struct i915_wa *wa;
+		unsigned int count;
+
+		count = wal->count;
+		if (!count)
+			continue;
+
+		seq_printf(m, "%s: whitelist applied: %u\n",
+			   engine->name, count);
+
+		for (wa = wal->list; count--; wa++)
+			seq_printf(m, "0x%X: 0x%08X, mask: 0x%08X\n",
+				   i915_mmio_reg_offset(wa->reg),
+				   wa->set, wa->clr);
+
+		seq_puts(m, "\n");
+	}
+
+	{
+		const struct i915_wa_list *wal = &i915->gt_wa_list;
+		const struct i915_wa *wa;
+		unsigned int count;
+
+		count = wal->count;
+		if (count) {
+			seq_printf(m, "gt workarounds applied: %u\n", count);
+
+			for (wa = wal->list; count--; wa++)
+				seq_printf(m, "0x%X: 0x%08X, mask: 0x%08X\n",
+					   i915_mmio_reg_offset(wa->reg),
+					   wa->set, wa->clr);
+		}
+		seq_puts(m, "\n");
+	}
+
+	for_each_uabi_engine(engine, i915) {
+		const struct i915_wa_list *wal = &engine->wa_list;
+		const struct i915_wa *wa;
+		unsigned int count;
+
+		count = wal->count;
+		if (!count)
+			continue;
+
+		seq_printf(m, "%s: workaround list applied: %u\n",
+			   engine->name, count);
+
+		for (wa = wal->list; count--; wa++)
+			seq_printf(m, "0x%X: 0x%08X, mask: 0x%08X\n",
+				   i915_mmio_reg_offset(wa->reg),
+				   wa->set, wa->clr);
+
+		seq_puts(m, "\n");
+	}
 	return 0;
 }
 
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
