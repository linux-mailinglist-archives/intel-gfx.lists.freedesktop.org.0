Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FE412D1AE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:01:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133CF89E65;
	Mon, 30 Dec 2019 16:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A60F89EAE
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:01:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19727707-1500050 
 for multiple; Mon, 30 Dec 2019 16:01:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Dec 2019 16:01:10 +0000
Message-Id: <20191230160112.3838434-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
References: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Ignore stale context state
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We leave the kernel_context on the HW as we suspend (and while idle).
There is no guarantee that is complete in memory, so we try to inhibit
restoration from the kernel_context. Reinforce the inhibition by
scrubbing the context.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c             | 11 ++++++++++-
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  2 +-
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 2bf6dc6d528d..6d26d84812b6 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2504,6 +2504,9 @@ static int execlists_context_alloc(struct intel_context *ce)
 
 static void execlists_context_reset(struct intel_context *ce)
 {
+	CE_TRACE(ce, "reset\n");
+	GEM_BUG_ON(!intel_context_is_pinned(ce));
+
 	/*
 	 * Because we emit WA_TAIL_DWORDS there may be a disparity
 	 * between our bookkeeping in ce->ring->head and ce->ring->tail and
@@ -2520,8 +2523,14 @@ static void execlists_context_reset(struct intel_context *ce)
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
index 066c4eddf5d0..843111b7b015 100644
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
