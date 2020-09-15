Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4566026A689
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 15:49:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5579A6E45F;
	Tue, 15 Sep 2020 13:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 943A06E34E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 13:49:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22434960-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 14:49:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Sep 2020 14:49:23 +0100
Message-Id: <20200915134923.30088-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200915134923.30088-1-chris@chris-wilson.co.uk>
References: <20200915134923.30088-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915/gt: Use a mmio read of the CSB in
 case of failure
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

If we find the GPU didn't update the CSB within 50us, we currently fail
and eventually reset the GPU. Lets report the value from the mmio space
as a last resort, it may just stave off an unnecessary GPU reset.

References: HSDES#22011327657
Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c     | 35 ++++++++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h |  3 +++
 2 files changed, 32 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index fcb6ec3d55f4..0d57b54e5a69 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2528,19 +2528,42 @@ static inline bool gen8_csb_parse(const u64 csb)
 	return csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
 }
 
-static noinline u64 wa_csb_read(u64 * const csb)
+static noinline u64
+wa_csb_read(const struct intel_engine_cs *engine, u64 * const csb)
 {
 	u64 entry;
 
+	/*
+	 * Reading from the HWSP has one particular advantage: we can detect
+	 * a stale entry. Since the write into HWSP is broken, we have no reason
+	 * to trust the HW at all, the mmio entry may equally be unordered, so
+	 * we prefer the path that is self-checking and as a last resort,
+	 * return the mmio value.
+	 *
+	 * tgl,dg1:HSDES#22011327657
+	 */
 	preempt_disable();
-	if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
-		GEM_WARN_ON("50us CSB timeout");
+	if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 10)) {
+		int idx = csb - engine->execlists.csb_status;
+		int status;
+
+		status = GEN8_EXECLISTS_STATUS_BUF;
+		if (idx >= 6) {
+			status = GEN11_EXECLISTS_STATUS_BUF2;
+			idx -= 6;
+		}
+		status += sizeof(u64) * idx;
+
+		entry = intel_uncore_read64(engine->uncore,
+					    _MMIO(engine->mmio_base + status));
+	}
 	preempt_enable();
 
 	return entry;
 }
 
-static inline u64 csb_read(u64 * const csb)
+static inline u64
+csb_read(const struct intel_engine_cs *engine, u64 * const csb)
 {
 	u64 entry = READ_ONCE(*csb);
 
@@ -2556,7 +2579,7 @@ static inline u64 csb_read(u64 * const csb)
 	 * tgl:HSDES#22011248461
 	 */
 	if (unlikely(entry == -1))
-		entry = wa_csb_read(csb);
+		entry = wa_csb_read(engine, csb);
 
 	/* Consume this entry so that we can spot its future reuse. */
 	WRITE_ONCE(*csb, -1);
@@ -2649,7 +2672,7 @@ static void process_csb(struct intel_engine_cs *engine)
 		 * status notifier.
 		 */
 
-		csb = csb_read(buf + head);
+		csb = csb_read(engine, buf + head);
 		ENGINE_TRACE(engine, "csb[%d]: status=0x%08x:0x%08x\n",
 			     head, upper_32_bits(csb), lower_32_bits(csb));
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
index 93cb6c460508..1b51f7b9a5c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
@@ -49,4 +49,7 @@
 #define GEN11_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT	0x1A
 #define GEN12_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT	0xD
 
+#define GEN8_EXECLISTS_STATUS_BUF 0x370
+#define GEN11_EXECLISTS_STATUS_BUF2 0x3c0
+
 #endif /* _INTEL_LRC_REG_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
