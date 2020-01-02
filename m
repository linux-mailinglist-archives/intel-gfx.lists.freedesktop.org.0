Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6028112E66D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 14:17:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D986E0E2;
	Thu,  2 Jan 2020 13:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F076E0E2
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 13:17:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19749374-1500050 
 for multiple; Thu, 02 Jan 2020 13:17:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jan 2020 13:17:05 +0000
Message-Id: <20200102131707.1463945-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
References: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/gt: Ignore stale context state
 upon resume
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We leave the kernel_context on the HW as we suspend (and while idle).
There is no guarantee that is complete in memory, so we try to inhibit
restoration from the kernel_context. Reinforce the inhibition by
scrubbing the context.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c             | 11 ++++++++++-
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  2 +-
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b36fd108f0c6..b21a191bda3b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2602,6 +2602,9 @@ static int execlists_context_alloc(struct intel_context *ce)
 
 static void execlists_context_reset(struct intel_context *ce)
 {
+	CE_TRACE(ce, "reset\n");
+	GEM_BUG_ON(!intel_context_is_pinned(ce));
+
 	/*
 	 * Because we emit WA_TAIL_DWORDS there may be a disparity
 	 * between our bookkeeping in ce->ring->head and ce->ring->tail and
@@ -2618,8 +2621,14 @@ static void execlists_context_reset(struct intel_context *ce)
 	 * So to avoid that we reset the context images upon resume. For
 	 * simplicity, we just zero everything out.
 	 */
-	intel_ring_reset(ce->ring, 0);
+	intel_ring_reset(ce->ring, ce->ring->emit);
+
+	/* Scrub away the garbage */
+	execlists_init_reg_state(ce->lrc_reg_state,
+				 ce, ce->engine, ce->ring, true);
 	__execlists_update_reg_state(ce, ce->engine);
+
+	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 }
 
 static const struct intel_context_ops execlists_context_ops = {
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 48dbe46edbff..2e1478a48a4b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1347,7 +1347,7 @@ static int ring_context_pin(struct intel_context *ce)
 
 static void ring_context_reset(struct intel_context *ce)
 {
-	intel_ring_reset(ce->ring, 0);
+	intel_ring_reset(ce->ring, ce->ring->emit);
 }
 
 static const struct intel_context_ops ring_context_ops = {
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
