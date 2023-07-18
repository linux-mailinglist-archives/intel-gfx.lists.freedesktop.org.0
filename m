Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA78F7571E6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 04:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F00110E2CA;
	Tue, 18 Jul 2023 02:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23D1610E058
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 02:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689648206; x=1721184206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IQNeTmhtd42jJHFCDp1Lt6UM7umUib5oMl6F52kpark=;
 b=iGlnWHEqHKSNnYyKcXzlaZs1M+RuXcP4XmzOZU2LFvAA6el1QDaGAU0y
 VxjkEup33a1sTPR5k7XajfMdHaQTK16U0F2zm0TEqcIXPj70RU3lxf6ud
 ev7SSc1dkDWhGjmRSChjXEJSLDLH0aR7NAKY2glKxdqUms1h6sv5MojYw
 PiOq7zlGRYYDk616Bx6mAVqQ0CdkFP2BpTLvLdtISxZE476mQt+D5fNHy
 TAiyPZmhzOCinqvb5fSlXKX+6dbSHg1cKmFZvCq/pRQLZh1BozskkOLCq
 bYb0Cpqq+IKRQm26rOtJUaxLuy0NC6DzPXSLNMsdNGD4wOfWKj8p99l9W A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="364963437"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="364963437"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 19:43:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723420872"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723420872"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 19:43:25 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 19:43:18 -0700
Message-ID: <20230718024318.2911899-3-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230718024318.2911899-1-ashutosh.dixit@intel.com>
References: <20230718024318.2911899-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/perf: Remove gtt_offset from
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
index f7888a44d1284..5cd2346c7df80 100644
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
 
@@ -1712,7 +1685,7 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
 	 */
 	intel_uncore_write(uncore, GEN7_OASTATUS2, /* head */
 			   gtt_offset | GEN7_OASTATUS2_MEM_SELECT_GGTT);
-	stream->oa_buffer.head = gtt_offset;
+	stream->oa_buffer.head = 0;
 
 	intel_uncore_write(uncore, GEN7_OABUFFER, gtt_offset);
 
@@ -1720,7 +1693,7 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
 			   gtt_offset | OABUFFER_SIZE_16M);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.tail = gtt_offset;
+	stream->oa_buffer.tail = 0;
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
@@ -1754,7 +1727,7 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 
 	intel_uncore_write(uncore, GEN8_OASTATUS, 0);
 	intel_uncore_write(uncore, GEN8_OAHEADPTR, gtt_offset);
-	stream->oa_buffer.head = gtt_offset;
+	stream->oa_buffer.head = 0;
 
 	intel_uncore_write(uncore, GEN8_OABUFFER_UDW, 0);
 
@@ -1771,7 +1744,7 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.tail = gtt_offset;
+	stream->oa_buffer.tail = 0;
 
 	/*
 	 * Reset state used to recognise context switches, affecting which
@@ -1808,7 +1781,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	intel_uncore_write(uncore, __oa_regs(stream)->oa_status, 0);
 	intel_uncore_write(uncore, __oa_regs(stream)->oa_head_ptr,
 			   gtt_offset & GEN12_OAG_OAHEADPTR_MASK);
-	stream->oa_buffer.head = gtt_offset;
+	stream->oa_buffer.head = 0;
 
 	/*
 	 * PRM says:
@@ -1824,7 +1797,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
-	stream->oa_buffer.tail = gtt_offset;
+	stream->oa_buffer.tail = 0;
 
 	/*
 	 * Reset state used to recognise context switches, affecting which
-- 
2.41.0

