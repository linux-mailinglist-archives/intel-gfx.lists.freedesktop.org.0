Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE2912A970
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 01:57:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D039B89B3B;
	Thu, 26 Dec 2019 00:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 890ED898C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 00:57:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19692252-1500050 
 for multiple; Thu, 26 Dec 2019 00:57:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Dec 2019 00:56:57 +0000
Message-Id: <20191226005701.2534997-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/gt: Ignore stale context state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c             | 10 ++++++++++
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  2 +-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4fb70a7716e3..2eeb95c61a48 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2494,6 +2494,8 @@ static int execlists_context_alloc(struct intel_context *ce)
 
 static void execlists_context_reset(struct intel_context *ce)
 {
+	GEM_BUG_ON(!intel_context_is_pinned(ce));
+
 	/*
 	 * Because we emit WA_TAIL_DWORDS there may be a disparity
 	 * between our bookkeeping in ce->ring->head and ce->ring->tail and
@@ -2511,7 +2513,15 @@ static void execlists_context_reset(struct intel_context *ce)
 	 * simplicity, we just zero everything out.
 	 */
 	intel_ring_reset(ce->ring, 0);
+
+	memset(ce->lrc_reg_state, 0, PAGE_SIZE);
+	execlists_init_reg_state(ce->lrc_reg_state,
+				 ce, ce->engine, ce->ring, false);
 	__execlists_update_reg_state(ce, ce->engine);
+	ce->lrc_reg_state[CTX_CONTEXT_CONTROL] |=
+		_MASKED_BIT_ENABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
+
+	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 }
 
 static const struct intel_context_ops execlists_context_ops = {
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 81f872f9ef03..2caf07b3ec22 100644
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
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
