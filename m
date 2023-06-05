Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2F9722FE9
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 21:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E5F10E1DE;
	Mon,  5 Jun 2023 19:39:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A30510E1DE
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 19:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685993973; x=1717529973;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tw7tFqvMc1pxCySkZWfuGeqJlSu7LVppZVSJ0K8KJSw=;
 b=bkOeVQqZxViZEF4Lag+pkXapYvX0KkeWkQebGC6jf4QB72WUav4Y5XH6
 QFoUtLToPROkj2uRTGKexvLeets+uOnJCKey/mTs/kk/02mXIX48NvuPh
 PaU3KIoItcfpoTPb20wSIbwFztqgYr1TObZI4B/TgikZ2Ky1zDNsjU+rE
 QfHb0oO1fNKnrd1cwlmmRP6MT/LFDZ6jHU0vF+p1FztOzMFu//Y8nsodn
 Wa1ajdxR2m+Mc5iA9jRE2NVM4RKJT4D4Ay1pdm94K9zrMN6Nq8EJS7sFj
 zB6q8IwZIBX0m4RIqsyAStzmPLw8u3UFwrR4Bj8PlwH8JiNcKHcbucX/j A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="384775245"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="384775245"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 12:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="773851023"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="773851023"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 12:39:32 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jun 2023 12:39:22 -0700
Message-Id: <20230605193923.1836048-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230605193923.1836048-1-umesh.nerlige.ramappa@intel.com>
References: <20230605193923.1836048-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] i915/perf: Drop the aging_tail logic in
 perf OA
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On DG2, capturing OA reports while running heavy render workloads
sometimes results in invalid OA reports where 64-byte chunks inside
reports have stale values. Under memory pressure, high OA sampling rates
(13.3 us) and heavy render workload, occasionally, the OA HW TAIL
pointer does not progress as fast as the sampling rate. When these
glitches occur, the TAIL pointer takes approx. 200us to progress.  While
this is expected behavior from the HW perspective, invalid reports are
not expected.

In oa_buffer_check_unlocked(), when we execute the if condition, we are
updating the oa_buffer.tail to the aging tail and then setting pollin
based on this tail value, however, we do not have a chance to rewind and
validate the reports prior to setting pollin. The validation happens
in a subsequent call to oa_buffer_check_unlocked(). If a read occurs
before this validation, then we end up reading reports up until this
oa_buffer.tail value which includes invalid reports. Though found on
DG2, this affects all platforms.

The aging tail logic is no longer necessary since we are explicitly
checking for landed reports.

Start by dropping the aging tail logic.

v2:
- Drop extra blank line
- Add reason to drop aging logic (Ashutosh)
- Add bug links (Ashutosh)
- rename aged_tail to read_tail
- Squash patches 3 and 1

v3: (Ashutosh)
- Remove extra spaces
- Remove gtt_offset from the pollin calculation
- s/Bug:/Link/ in commit message (checkpatch)

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7484
Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7757
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 95 +++++++++++---------------
 drivers/gpu/drm/i915/i915_perf_types.h | 12 ----
 2 files changed, 38 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 58284156428d..a8d43bf1f6d5 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -531,8 +531,7 @@ static void oa_context_id_squash(struct i915_perf_stream *stream, u32 *report)
  * (See description of OA_TAIL_MARGIN_NSEC above for further details.)
  *
  * Besides returning true when there is data available to read() this function
- * also updates the tail, aging_tail and aging_timestamp in the oa_buffer
- * object.
+ * also updates the tail in the oa_buffer object.
  *
  * Note: It's safe to read OA config state here unlocked, assuming that this is
  * only called while the stream is enabled, while the global OA configuration
@@ -544,10 +543,10 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 {
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	int report_size = stream->oa_buffer.format->size;
+	u32 head, tail, read_tail;
 	unsigned long flags;
 	bool pollin;
 	u32 hw_tail;
-	u64 now;
 	u32 partial_report_size;
 
 	/* We have to consider the (unlikely) possibility that read() errors
@@ -568,62 +567,47 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	/* Subtract partial amount off the tail */
 	hw_tail = gtt_offset + OA_TAKEN(hw_tail, partial_report_size);
 
-	now = ktime_get_mono_fast_ns();
-
-	if (hw_tail == stream->oa_buffer.aging_tail &&
-	    (now - stream->oa_buffer.aging_timestamp) > OA_TAIL_MARGIN_NSEC) {
-		/* If the HW tail hasn't move since the last check and the HW
-		 * tail has been aging for long enough, declare it the new
-		 * tail.
-		 */
-		stream->oa_buffer.tail = stream->oa_buffer.aging_tail;
-	} else {
-		u32 head, tail, aged_tail;
-
-		/* NB: The head we observe here might effectively be a little
-		 * out of date. If a read() is in progress, the head could be
-		 * anywhere between this head and stream->oa_buffer.tail.
-		 */
-		head = stream->oa_buffer.head - gtt_offset;
-		aged_tail = stream->oa_buffer.tail - gtt_offset;
-
-		hw_tail -= gtt_offset;
-		tail = hw_tail;
-
-		/* Walk the stream backward until we find a report with report
-		 * id and timestmap not at 0. Since the circular buffer pointers
-		 * progress by increments of 64 bytes and that reports can be up
-		 * to 256 bytes long, we can't tell whether a report has fully
-		 * landed in memory before the report id and timestamp of the
-		 * following report have effectively landed.
-		 *
-		 * This is assuming that the writes of the OA unit land in
-		 * memory in the order they were written to.
-		 * If not : (╯°□°）╯︵ ┻━┻
-		 */
-		while (OA_TAKEN(tail, aged_tail) >= report_size) {
-			void *report = stream->oa_buffer.vaddr + tail;
+	/* NB: The head we observe here might effectively be a little
+	 * out of date. If a read() is in progress, the head could be
+	 * anywhere between this head and stream->oa_buffer.tail.
+	 */
+	head = stream->oa_buffer.head - gtt_offset;
+	read_tail = stream->oa_buffer.tail - gtt_offset;
+
+	hw_tail -= gtt_offset;
+	tail = hw_tail;
+
+	/* Walk the stream backward until we find a report with report
+	 * id and timestmap not at 0. Since the circular buffer pointers
+	 * progress by increments of 64 bytes and that reports can be up
+	 * to 256 bytes long, we can't tell whether a report has fully
+	 * landed in memory before the report id and timestamp of the
+	 * following report have effectively landed.
+	 *
+	 * This is assuming that the writes of the OA unit land in
+	 * memory in the order they were written to.
+	 * If not : (╯°□°）╯︵ ┻━┻
+	 */
+	while (OA_TAKEN(tail, read_tail) >= report_size) {
+		void *report = stream->oa_buffer.vaddr + tail;
 
-			if (oa_report_id(stream, report) ||
-			    oa_timestamp(stream, report))
-				break;
+		if (oa_report_id(stream, report) ||
+		    oa_timestamp(stream, report))
+			break;
 
-			tail = (tail - report_size) & (OA_BUFFER_SIZE - 1);
-		}
+		tail = (tail - report_size) & (OA_BUFFER_SIZE - 1);
+	}
 
-		if (OA_TAKEN(hw_tail, tail) > report_size &&
-		    __ratelimit(&stream->perf->tail_pointer_race))
-			drm_notice(&stream->uncore->i915->drm,
-				   "unlanded report(s) head=0x%x tail=0x%x hw_tail=0x%x\n",
-				   head, tail, hw_tail);
+	if (OA_TAKEN(hw_tail, tail) > report_size &&
+	    __ratelimit(&stream->perf->tail_pointer_race))
+		drm_notice(&stream->uncore->i915->drm,
+			   "unlanded report(s) head=0x%x tail=0x%x hw_tail=0x%x\n",
+		 head, tail, hw_tail);
 
-		stream->oa_buffer.tail = gtt_offset + tail;
-		stream->oa_buffer.aging_tail = gtt_offset + hw_tail;
-		stream->oa_buffer.aging_timestamp = now;
-	}
+	stream->oa_buffer.tail = gtt_offset + tail;
 
-	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
-			  stream->oa_buffer.head - gtt_offset) >= report_size;
+	pollin = OA_TAKEN(stream->oa_buffer.tail,
+			  stream->oa_buffer.head) >= report_size;
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
@@ -1727,7 +1711,6 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
 			   gtt_offset | OABUFFER_SIZE_16M);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.aging_tail = INVALID_TAIL_PTR;
 	stream->oa_buffer.tail = gtt_offset;
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
@@ -1779,7 +1762,6 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.aging_tail = INVALID_TAIL_PTR;
 	stream->oa_buffer.tail = gtt_offset;
 
 	/*
@@ -1833,7 +1815,6 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.aging_tail = INVALID_TAIL_PTR;
 	stream->oa_buffer.tail = gtt_offset;
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index 66dd5f74de05..fe3a5dae8c22 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -312,18 +312,6 @@ struct i915_perf_stream {
 		 */
 		spinlock_t ptr_lock;
 
-		/**
-		 * @aging_tail: The last HW tail reported by HW. The data
-		 * might not have made it to memory yet though.
-		 */
-		u32 aging_tail;
-
-		/**
-		 * @aging_timestamp: A monotonic timestamp for when the current aging tail pointer
-		 * was read; used to determine when it is old enough to trust.
-		 */
-		u64 aging_timestamp;
-
 		/**
 		 * @head: Although we can always read back the head pointer register,
 		 * we prefer to avoid trusting the HW state, just to avoid any
-- 
2.36.1

