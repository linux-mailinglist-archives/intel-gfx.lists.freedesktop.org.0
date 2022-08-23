Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 292A459CCC2
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 02:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EE7A12BAF4;
	Tue, 23 Aug 2022 00:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B19A74B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213024; x=1692749024;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WfWeqiwSRUh5RFH4zFjmdjL4CDTCtTwB+tzp2ty892g=;
 b=E8rvVQlqdNSHEkTyMwaLEkaHWdmsgb1F46iahPDnpSp72Ri0+IiRzRSq
 doBhHvv78wKeosXrk4W0Nl+3dgTvJilUMoIfuMErLpKRkX+7ULROjnN7Y
 7LkQBmdbYBJc2m8e3YYSQg/nF4Vh0mQROuK4cCyjJ23D5cTN8wm0MSZki
 Rjl8zdlFhr5dnYOSAfwpbdR/Y8LgVWwG463MoRZN+f1eLDxRNkmfwcHRU
 zIxZRe8SyvHiUeSDwHLHtiSk216F5XT2qE4LhESUTHJn5lrxugT7+R3Vh
 usYIXT1A7onIoQpNH2Wy7Ia9esyg43yyr/pj4TCJPWhJcEa6Vr0T6Op1I A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304832"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304832"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775523"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:29 +0000
Message-Id: <20220823000342.281222-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/19] drm/i915/perf: Use helpers to process
 reports w.r.t. OA buffer size
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

DG2 has a new feature to supports OA buffer sizes up to 128Mb by
toggling a bit in OA_DEBUG. This would eventually be a user configurable
parameter. Use OA buffer vma size in all calculations with some helpers.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 47 ++++++++++++++++++++++----------
 1 file changed, 32 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 6fc4f0d8fc5a..18cc9a311b7e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -385,6 +385,22 @@ static struct ctl_table_header *sysctl_header;
 
 static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer);
 
+static inline u32 _oa_taken(struct i915_perf_stream * stream,
+			       u32 tail, u32 head)
+{
+	u32 size = stream->oa_buffer.vma->size;
+
+	return tail >= head ? tail - head : size - (head - tail);
+}
+
+static inline u32 _rewind_tail(struct i915_perf_stream * stream,
+			       u32 relative_hw_tail, u32 rewind_delta)
+{
+	return rewind_delta > relative_hw_tail ?
+	       stream->oa_buffer.vma->size - (rewind_delta - relative_hw_tail) :
+	       relative_hw_tail - rewind_delta;
+}
+
 void i915_oa_config_release(struct kref *ref)
 {
 	struct i915_oa_config *oa_config =
@@ -487,12 +503,14 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	 * sizes need not be integral multiples or 64 or powers of 2.
 	 * Compute potentially partially landed report in the OA buffer
 	 */
-	partial_report_size = OA_TAKEN(hw_tail, stream->oa_buffer.tail);
+	partial_report_size =
+		_oa_taken(stream, hw_tail, stream->oa_buffer.tail);
 	partial_report_size %= report_size;
 
 	/* Subtract partial amount off the tail */
-	hw_tail = gtt_offset + ((hw_tail - partial_report_size) &
-				(stream->oa_buffer.vma->size - 1));
+	hw_tail = gtt_offset + _rewind_tail(stream,
+					    hw_tail - gtt_offset,
+					    partial_report_size);
 
 	now = ktime_get_mono_fast_ns();
 
@@ -527,16 +545,16 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 		 * memory in the order they were written to.
 		 * If not : (╯°□°）╯︵ ┻━┻
 		 */
-		while (OA_TAKEN(tail, aged_tail) >= report_size) {
+		while (_oa_taken(stream, tail, aged_tail) >= report_size) {
 			u32 *report32 = (void *)(stream->oa_buffer.vaddr + tail);
 
 			if (report32[0] != 0 || report32[1] != 0)
 				break;
 
-			tail = (tail - report_size) & (OA_BUFFER_SIZE - 1);
+			tail = _rewind_tail(stream, tail, report_size);
 		}
 
-		if (OA_TAKEN(hw_tail, tail) > report_size &&
+		if (_oa_taken(stream, hw_tail, tail) > report_size &&
 		    __ratelimit(&stream->perf->tail_pointer_race))
 			DRM_NOTE("unlanded report(s) head=0x%x "
 				 "tail=0x%x hw_tail=0x%x\n",
@@ -547,8 +565,9 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 		stream->oa_buffer.aging_timestamp = now;
 	}
 
-	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
-			  stream->oa_buffer.head - gtt_offset) >= report_size;
+	pollin = _oa_taken(stream,
+			   stream->oa_buffer.tail,
+			   stream->oa_buffer.head) >= report_size;
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
@@ -679,11 +698,9 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 	int report_size = stream->oa_buffer.format_size;
 	u8 *oa_buf_base = stream->oa_buffer.vaddr;
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
-	u32 mask = (OA_BUFFER_SIZE - 1);
 	size_t start_offset = *offset;
 	unsigned long flags;
-	u32 head, tail;
-	u32 taken;
+	u32 head, tail, size;
 	int ret = 0;
 
 	if (drm_WARN_ON(&uncore->i915->drm, !stream->enabled))
@@ -693,6 +710,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 
 	head = stream->oa_buffer.head;
 	tail = stream->oa_buffer.tail;
+	size = stream->oa_buffer.vma->size;
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
@@ -711,16 +729,15 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 	 * all a power of two).
 	 */
 	if (drm_WARN_ONCE(&uncore->i915->drm,
-			  head > stream->oa_buffer.vma->size ||
-			  tail > stream->oa_buffer.vma->size,
+			  head > size || tail > size,
 			  "Inconsistent OA buffer pointers: head = %u, tail = %u\n",
 			  head, tail))
 		return -EIO;
 
 
 	for (/* none */;
-	     (taken = OA_TAKEN(tail, head));
-	     head = (head + report_size) & mask) {
+	     _oa_taken(stream, tail, head);
+	     head = (head + report_size) % size) {
 		u8 *report = oa_buf_base + head;
 		u32 *report32 = (void *)report;
 		u32 ctx_id;
-- 
2.25.1

