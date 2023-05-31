Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DF8718F44
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 01:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80DB10E1EB;
	Wed, 31 May 2023 23:56:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 206E710E0E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 23:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685577399; x=1717113399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hz9/ZCwDYv4fH5PSedeHpKfyRzxNHKOc1EDlUBG7j+o=;
 b=l+FnOpi/v8j4lXsioYpKG90SGXpOrer0OZy+JM3YSTzVDkkg4fweGMdx
 3elOCWpdQj3/2NCvFbNtanEd5c2jI8dUqhlqiaGhyHpLR+vP2QCmLk7A7
 r09RjtjKWzG5lMomhd/ChRsxJeuLGj8NriEdFNePDn5nXKJyXitRwSBu4
 BXNsLFGJRrjqgbmwgtIgkpAYKr7knxPkE7lCY2DUXI3g+Cl57powDVPxi
 g47YJ5OwYw0jJrVjCDq6RFEGVTIq9mMOTeyoR61gX7lvRIPlQfJq8GVcE
 uwKTMYOY0e7jIfW80Vcq6wey7zxt2TPMEn+rvn+q1AgEXzS76PkeYz+Hf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="383666369"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="383666369"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 16:56:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="796910851"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="796910851"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 16:56:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:56:32 -0700
Message-Id: <20230531235634.1309525-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230531235634.1309525-1-umesh.nerlige.ramappa@intel.com>
References: <20230531235634.1309525-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] i915/perf: Drop the aging_tail logic in
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>
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

Start by dropping the aging tail logic.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 74 ++++++++++----------------
 drivers/gpu/drm/i915/i915_perf_types.h | 12 -----
 2 files changed, 28 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 58284156428d..29124dcba8e2 100644
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
+	u32 head, tail, aged_tail;
 	unsigned long flags;
 	bool pollin;
 	u32 hw_tail;
-	u64 now;
 	u32 partial_report_size;
 
 	/* We have to consider the (unlikely) possibility that read() errors
@@ -568,27 +567,16 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	/* Subtract partial amount off the tail */
 	hw_tail = gtt_offset + OA_TAKEN(hw_tail, partial_report_size);
 
-	now = ktime_get_mono_fast_ns();
 
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
+	/* NB: The head we observe here might effectively be a little
+	 * out of date. If a read() is in progress, the head could be
+	 * anywhere between this head and stream->oa_buffer.tail.
+	 */
+	head = stream->oa_buffer.head - gtt_offset;
+	aged_tail = stream->oa_buffer.tail - gtt_offset;
 
-		hw_tail -= gtt_offset;
-		tail = hw_tail;
+	hw_tail -= gtt_offset;
+	tail = hw_tail;
 
 		/* Walk the stream backward until we find a report with report
 		 * id and timestmap not at 0. Since the circular buffer pointers
@@ -596,31 +584,28 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 		 * to 256 bytes long, we can't tell whether a report has fully
 		 * landed in memory before the report id and timestamp of the
 		 * following report have effectively landed.
-		 *
-		 * This is assuming that the writes of the OA unit land in
-		 * memory in the order they were written to.
-		 * If not : (╯°□°）╯︵ ┻━┻
-		 */
-		while (OA_TAKEN(tail, aged_tail) >= report_size) {
-			void *report = stream->oa_buffer.vaddr + tail;
+	 *
+	 * This is assuming that the writes of the OA unit land in
+	 * memory in the order they were written to.
+	 * If not : (╯°□°）╯︵ ┻━┻
+	 */
+	while (OA_TAKEN(tail, aged_tail) >= report_size) {
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
 
 	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
 			  stream->oa_buffer.head - gtt_offset) >= report_size;
@@ -1727,7 +1712,6 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
 			   gtt_offset | OABUFFER_SIZE_16M);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.aging_tail = INVALID_TAIL_PTR;
 	stream->oa_buffer.tail = gtt_offset;
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
@@ -1779,7 +1763,6 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.aging_tail = INVALID_TAIL_PTR;
 	stream->oa_buffer.tail = gtt_offset;
 
 	/*
@@ -1833,7 +1816,6 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
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

