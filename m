Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1672EF48B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 16:10:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65036E418;
	Fri,  8 Jan 2021 15:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8E2E6E418
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 15:10:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23539641-1500050 
 for multiple; Fri, 08 Jan 2021 15:09:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 15:09:24 +0000
Message-Id: <20210108150924.29437-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Prevent use of engine->wa_ctx
 after error
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On error we unpin and free the wa_ctx.vma, but do not clear any of the
derived flags. During lrc_init, we look at the flags and attempt to
dereference the wa_ctx.vma if they are set. To protect the error path
where we try to limp along without the wa_ctx, make sure we clear those
flags!

Reported-by: Matt Roper <matthew.d.roper@intel.com>
Fixes: 604a8f6f1e33 ("drm/i915/lrc: Only enable per-context and per-bb buffers if set")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: <stable@vger.kernel.org> # v4.15+
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4e856947fb13..703d9ecc3f7e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1453,6 +1453,9 @@ static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
 void lrc_fini_wa_ctx(struct intel_engine_cs *engine)
 {
 	i915_vma_unpin_and_release(&engine->wa_ctx.vma, 0);
+
+	/* Called on error unwind, clear all flags to prevent further use */
+	memset(&engine->wa_ctx, 0, sizeof(engine->wa_ctx));
 }
 
 typedef u32 *(*wa_bb_func_t)(struct intel_engine_cs *engine, u32 *batch);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
