Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF5226A687
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 15:49:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D242E6E46F;
	Tue, 15 Sep 2020 13:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF9C46E33C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 13:49:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22434959-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 14:49:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Sep 2020 14:49:22 +0100
Message-Id: <20200915134923.30088-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200915134923.30088-1-chris@chris-wilson.co.uk>
References: <20200915134923.30088-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/4] drm/i915/gt: Apply the CSB w/a for all
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

Since we expect to inline the csb_parse() routines, the w/a for the
stale CSB data on Tigerlake will be pulled into process_csb(), and so we
might as well simply reuse the logic for all, and so will hopefully
avoid any strange behaviour on Icelake that was not covered by our
previous w/a.

References: d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Bruce Chang <yu.bruce.chang@intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 79 +++++++++++++++++++----------
 1 file changed, 51 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d75712a503b7..fcb6ec3d55f4 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2496,25 +2496,11 @@ invalidate_csb_entries(const u64 *first, const u64 *last)
  *     bits 47-57: sw context id of the lrc the GT switched away from
  *     bits 58-63: sw counter of the lrc the GT switched away from
  */
-static inline bool gen12_csb_parse(const u64 *csb)
+static inline bool gen12_csb_parse(const u64 csb)
 {
-	bool ctx_away_valid;
-	bool new_queue;
-	u64 entry;
-
-	/* HSD#22011248461 */
-	entry = READ_ONCE(*csb);
-	if (unlikely(entry == -1)) {
-		preempt_disable();
-		if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
-			GEM_WARN_ON("50us CSB timeout");
-		preempt_enable();
-	}
-	WRITE_ONCE(*(u64 *)csb, -1);
-
-	ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(entry));
-	new_queue =
-		lower_32_bits(entry) & GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE;
+	bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(csb));
+	bool new_queue =
+		lower_32_bits(csb) & GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE;
 
 	/*
 	 * The context switch detail is not guaranteed to be 5 when a preemption
@@ -2524,7 +2510,7 @@ static inline bool gen12_csb_parse(const u64 *csb)
 	 * would require some extra handling, but we don't support that.
 	 */
 	if (!ctx_away_valid || new_queue) {
-		GEM_BUG_ON(!GEN12_CSB_CTX_VALID(lower_32_bits(entry)));
+		GEM_BUG_ON(!GEN12_CSB_CTX_VALID(lower_32_bits(csb)));
 		return true;
 	}
 
@@ -2533,19 +2519,56 @@ static inline bool gen12_csb_parse(const u64 *csb)
 	 * context switch on an unsuccessful wait instruction since we always
 	 * use polling mode.
 	 */
-	GEM_BUG_ON(GEN12_CTX_SWITCH_DETAIL(upper_32_bits(entry)));
+	GEM_BUG_ON(GEN12_CTX_SWITCH_DETAIL(upper_32_bits(csb)));
 	return false;
 }
 
-static inline bool gen8_csb_parse(const u64 *csb)
+static inline bool gen8_csb_parse(const u64 csb)
+{
+	return csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
+}
+
+static noinline u64 wa_csb_read(u64 * const csb)
 {
-	return *csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
+	u64 entry;
+
+	preempt_disable();
+	if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
+		GEM_WARN_ON("50us CSB timeout");
+	preempt_enable();
+
+	return entry;
+}
+
+static inline u64 csb_read(u64 * const csb)
+{
+	u64 entry = READ_ONCE(*csb);
+
+	/*
+	 * Unfortunately, the GPU does not always serialise its write
+	 * of the CSB entries before its write of the CSB pointer, at least
+	 * from the perspective of the CPU, using what is known as a Global
+	 * Observation Point. We may read a new CSB tail pointer, but then
+	 * read the stale CSB entries, causing us to misinterpret the
+	 * context-switch events, and eventually declare the GPU hung.
+	 *
+	 * icl:HSDES#1806554093
+	 * tgl:HSDES#22011248461
+	 */
+	if (unlikely(entry == -1))
+		entry = wa_csb_read(csb);
+
+	/* Consume this entry so that we can spot its future reuse. */
+	WRITE_ONCE(*csb, -1);
+
+	/* ELSP is an implicit wmb() before the GPU wraps and overwrites csb */
+	return entry;
 }
 
 static void process_csb(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
-	const u64 * const buf = execlists->csb_status;
+	u64 * const buf = execlists->csb_status;
 	const u8 num_entries = execlists->csb_size;
 	u8 head, tail;
 
@@ -2603,6 +2626,7 @@ static void process_csb(struct intel_engine_cs *engine)
 	rmb();
 	do {
 		bool promote;
+		u64 csb;
 
 		if (++head == num_entries)
 			head = 0;
@@ -2625,15 +2649,14 @@ static void process_csb(struct intel_engine_cs *engine)
 		 * status notifier.
 		 */
 
+		csb = csb_read(buf + head);
 		ENGINE_TRACE(engine, "csb[%d]: status=0x%08x:0x%08x\n",
-			     head,
-			     upper_32_bits(buf[head]),
-			     lower_32_bits(buf[head]));
+			     head, upper_32_bits(csb), lower_32_bits(csb));
 
 		if (INTEL_GEN(engine->i915) >= 12)
-			promote = gen12_csb_parse(buf + head);
+			promote = gen12_csb_parse(csb);
 		else
-			promote = gen8_csb_parse(buf + head);
+			promote = gen8_csb_parse(csb);
 		if (promote) {
 			struct i915_request * const *old = execlists->active;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
