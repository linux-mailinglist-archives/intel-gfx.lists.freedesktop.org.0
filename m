Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3556799578
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 03:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC1710E093;
	Sat,  9 Sep 2023 01:16:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B28110E093
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Sep 2023 01:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694222190; x=1725758190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bhf+7XaSRTDEX6nElJomyMGfpwM34lEfs43D5uAAVMU=;
 b=Xj3ZeL02ZmyTVcRS6umSdoWtPuV5Yjf1fl3JYR2gEqAUlUGeeH/2nMCr
 GPxCzClGEjbgTZ4z/cpzpumE6OyC+Yctdyjl4+HEgBMmbBv2IlX3LBOvB
 3oLsSgA2niMFwWKMdymJMeT5lvUtZXMUBUNqGOe67yzEYeKBW4Y0EAprd
 ln9LqFTrVacRXNfIrt4wVAPG1FW7gkzlJH/R4c08MT27cDh7WLx6pAtfr
 SFK9c+4i9TyS9e2k+9SpajOps/Mq9QSX9ts8fXFfWJuDL4iIwWpvpt5BG
 Zq4rNh7H97p5/CcmPGlb83jz71xowryRF7bMMtIzRxy6Ug5yL82gcZol5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="441792747"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="441792747"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 18:16:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="719342294"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="719342294"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 18:16:29 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Sep 2023 18:16:25 -0700
Message-ID: <20230909011626.1643734-3-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
References: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/perf: Remove gtt_offset from
 stream->oa_buffer.head/.tail
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

There is no reason to add gtt_offset to the cached head/tail pointers
stream->oa_buffer.head and stream->oa_buffer.tail. This causes the code to
constantly add gtt_offset and subtract gtt_offset and is error
prone (e.g. see previous patch).

It is much simpler to maintain stream->oa_buffer.head and
stream->oa_buffer.tail without adding gtt_offset to them and just allow for
the gtt_offset when reading/writing from/to HW registers.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 53 ++++++++------------------------
 1 file changed, 13 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index ec0fc2934045a..1347e4ec9dd5a 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -543,10 +543,9 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 {
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	int report_size = stream->oa_buffer.format->size;
-	u32 head, tail, read_tail;
+	u32 tail, hw_tail;
 	unsigned long flags;
 	bool pollin;
-	u32 hw_tail;
 	u32 partial_report_size;
 
 	/* We have to consider the (unlikely) possibility that read() errors
@@ -556,6 +555,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
 
 	hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
+	hw_tail -= gtt_offset;
 
 	/* The tail pointer increases in 64 byte increments, not in report_size
 	 * steps. Also the report size may not be a power of 2. Compute
@@ -565,16 +565,8 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	partial_report_size %= report_size;
 
 	/* Subtract partial amount off the tail */
-	hw_tail -= gtt_offset;
 	hw_tail = OA_TAKEN(hw_tail, partial_report_size);
 
-	/* NB: The head we observe here might effectively be a little
-	 * out of date. If a read() is in progress, the head could be
-	 * anywhere between this head and stream->oa_buffer.tail.
-	 */
-	head = stream->oa_buffer.head - gtt_offset;
-	read_tail = stream->oa_buffer.tail - gtt_offset;
-
 	tail = hw_tail;
 
 	/* Walk the stream backward until we find a report with report
@@ -588,7 +580,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	 * memory in the order they were written to.
 	 * If not : (╯°□°）╯︵ ┻━┻
 	 */
-	while (OA_TAKEN(tail, read_tail) >= report_size) {
+	while (OA_TAKEN(tail, stream->oa_buffer.tail) >= report_size) {
 		void *report = stream->oa_buffer.vaddr + tail;
 
 		if (oa_report_id(stream, report) ||
@@ -602,9 +594,9 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	    __ratelimit(&stream->perf->tail_pointer_race))
 		drm_notice(&stream->uncore->i915->drm,
 			   "unlanded report(s) head=0x%x tail=0x%x hw_tail=0x%x\n",
-		 head, tail, hw_tail);
+		 stream->oa_buffer.head, tail, hw_tail);
 
-	stream->oa_buffer.tail = gtt_offset + tail;
+	stream->oa_buffer.tail = tail;
 
 	pollin = OA_TAKEN(stream->oa_buffer.tail,
 			  stream->oa_buffer.head) >= report_size;
@@ -754,13 +746,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
-	/*
-	 * NB: oa_buffer.head/tail include the gtt_offset which we don't want
-	 * while indexing relative to oa_buf_base.
-	 */
-	head -= gtt_offset;
-	tail -= gtt_offset;
-
 	/*
 	 * An out of bounds or misaligned head or tail pointer implies a driver
 	 * bug since we validate + align the tail pointers we read from the
@@ -896,9 +881,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * We removed the gtt_offset for the copy loop above, indexing
 		 * relative to oa_buf_base so put back here...
 		 */
-		head += gtt_offset;
 		intel_uncore_write(uncore, oaheadptr,
-				   head & GEN12_OAG_OAHEADPTR_MASK);
+				   (head + gtt_offset) & GEN12_OAG_OAHEADPTR_MASK);
 		stream->oa_buffer.head = head;
 
 		spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
@@ -1043,12 +1027,6 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
-	/* NB: oa_buffer.head/tail include the gtt_offset which we don't want
-	 * while indexing relative to oa_buf_base.
-	 */
-	head -= gtt_offset;
-	tail -= gtt_offset;
-
 	/* An out of bounds or misaligned head or tail pointer implies a driver
 	 * bug since we validate + align the tail pointers we read from the
 	 * hardware and we are in full control of the head pointer which should
@@ -1111,13 +1089,8 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 	if (start_offset != *offset) {
 		spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
 
-		/* We removed the gtt_offset for the copy loop above, indexing
-		 * relative to oa_buf_base so put back here...
-		 */
-		head += gtt_offset;
-
 		intel_uncore_write(uncore, GEN7_OASTATUS2,
-				   (head & GEN7_OASTATUS2_HEAD_MASK) |
+				   ((head + gtt_offset) & GEN7_OASTATUS2_HEAD_MASK) |
 				   GEN7_OASTATUS2_MEM_SELECT_GGTT);
 		stream->oa_buffer.head = head;
 
@@ -1705,7 +1678,7 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
 	 */
 	intel_uncore_write(uncore, GEN7_OASTATUS2, /* head */
 			   gtt_offset | GEN7_OASTATUS2_MEM_SELECT_GGTT);
-	stream->oa_buffer.head = gtt_offset;
+	stream->oa_buffer.head = 0;
 
 	intel_uncore_write(uncore, GEN7_OABUFFER, gtt_offset);
 
@@ -1713,7 +1686,7 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
 			   gtt_offset | OABUFFER_SIZE_16M);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.tail = gtt_offset;
+	stream->oa_buffer.tail = 0;
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
@@ -1747,7 +1720,7 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 
 	intel_uncore_write(uncore, GEN8_OASTATUS, 0);
 	intel_uncore_write(uncore, GEN8_OAHEADPTR, gtt_offset);
-	stream->oa_buffer.head = gtt_offset;
+	stream->oa_buffer.head = 0;
 
 	intel_uncore_write(uncore, GEN8_OABUFFER_UDW, 0);
 
@@ -1764,7 +1737,7 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.tail = gtt_offset;
+	stream->oa_buffer.tail = 0;
 
 	/*
 	 * Reset state used to recognise context switches, affecting which
@@ -1801,7 +1774,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	intel_uncore_write(uncore, __oa_regs(stream)->oa_status, 0);
 	intel_uncore_write(uncore, __oa_regs(stream)->oa_head_ptr,
 			   gtt_offset & GEN12_OAG_OAHEADPTR_MASK);
-	stream->oa_buffer.head = gtt_offset;
+	stream->oa_buffer.head = 0;
 
 	/*
 	 * PRM says:
@@ -1817,7 +1790,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.tail = gtt_offset;
+	stream->oa_buffer.tail = 0;
 
 	/*
 	 * Reset state used to recognise context switches, affecting which
-- 
2.41.0

