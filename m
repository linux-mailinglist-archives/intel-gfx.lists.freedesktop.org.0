Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 683AD26A5B1
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 14:58:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61EB76E038;
	Tue, 15 Sep 2020 12:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7903B89C98
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 12:58:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22434179-1500050 
 for multiple; Tue, 15 Sep 2020 13:41:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Sep 2020 13:41:47 +0100
Message-Id: <20200915124150.12045-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/gt: Widen CSB pointer to u64 for
 the parsers
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

A CSB entry is 64b, and it is simpler for us to treat it as an array of
64b entries than as an array of pairs of 32b entries.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 33 ++++++++++----------
 2 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index c400aaa2287b..ee6312601c56 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -278,7 +278,7 @@ struct intel_engine_execlists {
 	 *
 	 * Note these register may be either mmio or HWSP shadow.
 	 */
-	u32 *csb_status;
+	u64 *csb_status;
 
 	/**
 	 * @csb_size: context status buffer FIFO size
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 0412a44f25f2..d6e0f62337b4 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2464,7 +2464,7 @@ cancel_port_requests(struct intel_engine_execlists * const execlists)
 }
 
 static inline void
-invalidate_csb_entries(const u32 *first, const u32 *last)
+invalidate_csb_entries(const u64 *first, const u64 *last)
 {
 	clflush((void *)first);
 	clflush((void *)last);
@@ -2496,14 +2496,12 @@ invalidate_csb_entries(const u32 *first, const u32 *last)
  *     bits 47-57: sw context id of the lrc the GT switched away from
  *     bits 58-63: sw counter of the lrc the GT switched away from
  */
-static inline bool
-gen12_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
+static inline bool gen12_csb_parse(const u64 *csb)
 {
-	u32 lower_dw = csb[0];
-	u32 upper_dw = csb[1];
-	bool ctx_to_valid = GEN12_CSB_CTX_VALID(lower_dw);
-	bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_dw);
-	bool new_queue = lower_dw & GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE;
+	u64 entry = READ_ONCE(*csb);
+	bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(entry));
+	bool new_queue =
+		lower_32_bits(entry) & GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE;
 
 	/*
 	 * The context switch detail is not guaranteed to be 5 when a preemption
@@ -2513,7 +2511,7 @@ gen12_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
 	 * would require some extra handling, but we don't support that.
 	 */
 	if (!ctx_away_valid || new_queue) {
-		GEM_BUG_ON(!ctx_to_valid);
+		GEM_BUG_ON(!GEN12_CSB_CTX_VALID(lower_32_bits(entry)));
 		return true;
 	}
 
@@ -2522,12 +2520,11 @@ gen12_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
 	 * context switch on an unsuccessful wait instruction since we always
 	 * use polling mode.
 	 */
-	GEM_BUG_ON(GEN12_CTX_SWITCH_DETAIL(upper_dw));
+	GEM_BUG_ON(GEN12_CTX_SWITCH_DETAIL(upper_32_bits(entry)));
 	return false;
 }
 
-static inline bool
-gen8_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
+static inline bool gen8_csb_parse(const u64 *csb)
 {
 	return *csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
 }
@@ -2535,7 +2532,7 @@ gen8_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
 static void process_csb(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
-	const u32 * const buf = execlists->csb_status;
+	const u64 * const buf = execlists->csb_status;
 	const u8 num_entries = execlists->csb_size;
 	u8 head, tail;
 
@@ -2616,12 +2613,14 @@ static void process_csb(struct intel_engine_cs *engine)
 		 */
 
 		ENGINE_TRACE(engine, "csb[%d]: status=0x%08x:0x%08x\n",
-			     head, buf[2 * head + 0], buf[2 * head + 1]);
+			     head,
+			     upper_32_bits(buf[head]),
+			     lower_32_bits(buf[head]));
 
 		if (INTEL_GEN(engine->i915) >= 12)
-			promote = gen12_csb_parse(execlists, buf + 2 * head);
+			promote = gen12_csb_parse(buf + head);
 		else
-			promote = gen8_csb_parse(execlists, buf + 2 * head);
+			promote = gen8_csb_parse(buf + head);
 		if (promote) {
 			struct i915_request * const *old = execlists->active;
 
@@ -5157,7 +5156,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	}
 
 	execlists->csb_status =
-		&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
+		(u64 *)&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
 
 	execlists->csb_write =
 		&engine->status_page.addr[intel_hws_csb_write_index(i915)];
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
