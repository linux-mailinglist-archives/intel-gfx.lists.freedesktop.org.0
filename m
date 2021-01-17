Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7D32F8FF4
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Jan 2021 01:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68D3289A60;
	Sun, 17 Jan 2021 00:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C86A89A60
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Jan 2021 00:41:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23618009-1500050 
 for multiple; Sun, 17 Jan 2021 00:40:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 17 Jan 2021 00:40:44 +0000
Message-Id: <20210117004044.20764-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210116223117.12860-1-chris@chris-wilson.co.uk>
References: <20210116223117.12860-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Clear CACHE_MODE prior to clearing
 residuals
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we do a bare context switch with no restore, the clear residual
kernel runs on dirty state, and we must be careful to avoid executing
bad state from context registers inherited from a malicious client.

Fixes: 008ead6ef8f5 ("drm/i915/gt: Restore clear-residual mitigations for Ivybridge, Baytrail")
Fixes: 09aa9e45863e ("drm/i915/gt: Restore clear-residual mitigations for Ivybridge, Baytrail")
Testcase: igt/gem_ctx_isolation # ivb,vlv
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 drivers/gpu/drm/i915/gt/gen7_renderclear.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index 56bdcdaa9a88..9b52895b23e9 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -390,6 +390,13 @@ static void emit_batch(struct i915_vma * const vma,
 						     &cb_kernel_ivb,
 						     desc_count);
 
+	gen7_emit_pipeline_flush(&cmds);
+	batch_add(&cmds, MI_LOAD_REGISTER_IMM(2));
+	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_0_GEN7));
+	batch_add(&cmds, 0xffff0000);
+	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
+	batch_add(&cmds, 0xffff0000 | PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
+
 	gen7_emit_pipeline_invalidate(&cmds);
 	batch_add(&cmds, PIPELINE_SELECT | PIPELINE_SELECT_MEDIA);
 	batch_add(&cmds, MI_NOOP);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
