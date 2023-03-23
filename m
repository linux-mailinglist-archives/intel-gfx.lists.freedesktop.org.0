Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2606C7373
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 23:59:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1D610E4C4;
	Thu, 23 Mar 2023 22:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1420B10E4A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 22:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679612343; x=1711148343;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=60rUZ6UAZrUGqvjue58FFjeuSj63VgIbE/e0LlqyRZg=;
 b=NvIH+B09w7V3f6/9+utC0Z428FfqTwtFcP3rxYk7Xdg6m4mwo0CkTXMw
 Y3ha8ihkLtMOsNknkaTjjVwmNSXPSJ9WOJBcYKs7sAH+obGCarFN5D5mo
 EgRRe0JibKPlqMlj2obajBwNhTaYj/zNMTWGpEQ4MlrOtkcCakeTvEY0j
 h3YCVwYEeNfuDrJ33YY+ET26RPhQXi5UCZaL/3yzUITvuKZzUXfqbSYHV
 1SPMtfVCsytsdCiR0QZrUwwVUkVkGJxN5AkC4K3uSx170/AhmogcnPN+n
 Q6if2BYouzH+UyHfxl5Zu93CmmFDIbEZIOivXWZdzkyuJAiIDJDVSP/Uq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="320033253"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="320033253"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="771639219"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="771639219"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 15:58:56 -0700
Message-Id: <20230323225901.3743681-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
References: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] drm/i915/perf: Parse 64bit report header
 formats correctly
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

Now that OA formats come in flavor of 64 bit reports, the report header
has 64 bit report-id, timestamp, context-id and gpu-ticks fields. When
filtering these reports, use the right width for these fields.

Note that upper dword of context id is reserved, so squash lower dword
only.

v2: (Ashutosh)
- Drop inline
- Update comment with dword definitions - report id and timestamp

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 109 +++++++++++++++++++------
 drivers/gpu/drm/i915/i915_perf_types.h |   6 ++
 2 files changed, 90 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 584e3e7b9e77..d1f7266bec6d 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -441,6 +441,67 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
 	return oastatus1 & GEN7_OASTATUS1_TAIL_MASK;
 }
 
+#define oa_report_header_64bit(__s) \
+	((__s)->oa_buffer.format->header == HDR_64_BIT)
+
+static u64 oa_report_id(struct i915_perf_stream *stream, void *report)
+{
+	return oa_report_header_64bit(stream) ? *(u64 *)report : *(u32 *)report;
+}
+
+static u64 oa_report_reason(struct i915_perf_stream *stream, void *report)
+{
+	return (oa_report_id(stream, report) >> OAREPORT_REASON_SHIFT) &
+	       (GRAPHICS_VER(stream->perf->i915) == 12 ?
+		OAREPORT_REASON_MASK_EXTENDED :
+		OAREPORT_REASON_MASK);
+}
+
+static void oa_report_id_clear(struct i915_perf_stream *stream, u32 *report)
+{
+	if (oa_report_header_64bit(stream))
+		*(u64 *)report = 0;
+	else
+		*report = 0;
+}
+
+static bool oa_report_ctx_invalid(struct i915_perf_stream *stream, void *report)
+{
+	return !(oa_report_id(stream, report) &
+	       stream->perf->gen8_valid_ctx_bit) &&
+	       GRAPHICS_VER(stream->perf->i915) <= 11;
+}
+
+static u64 oa_timestamp(struct i915_perf_stream *stream, void *report)
+{
+	return oa_report_header_64bit(stream) ?
+		*((u64 *)report + 1) :
+		*((u32 *)report + 1);
+}
+
+static void oa_timestamp_clear(struct i915_perf_stream *stream, u32 *report)
+{
+	if (oa_report_header_64bit(stream))
+		*(u64 *)&report[2] = 0;
+	else
+		report[1] = 0;
+}
+
+static u32 oa_context_id(struct i915_perf_stream *stream, u32 *report)
+{
+	u32 ctx_id = oa_report_header_64bit(stream) ? report[4] : report[2];
+
+	return ctx_id & stream->specific_ctx_id_mask;
+}
+
+static void oa_context_id_squash(struct i915_perf_stream *stream, u32 *report)
+{
+	if (oa_report_header_64bit(stream))
+		report[4] = INVALID_CTX_ID;
+	else
+		report[2] = INVALID_CTX_ID;
+}
+
 /**
  * oa_buffer_check_unlocked - check for data and update tail ptr state
  * @stream: i915 stream instance
@@ -509,21 +570,22 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 		hw_tail -= gtt_offset;
 		tail = hw_tail;
 
-		/* Walk the stream backward until we find a report with dword 0
-		 * & 1 not at 0. Since the circular buffer pointers progress by
-		 * increments of 64 bytes and that reports can be up to 256
-		 * bytes long, we can't tell whether a report has fully landed
-		 * in memory before the first 2 dwords of the following report
-		 * have effectively landed.
+		/* Walk the stream backward until we find a report with report
+		 * id and timestmap not at 0. Since the circular buffer pointers
+		 * progress by increments of 64 bytes and that reports can be up
+		 * to 256 bytes long, we can't tell whether a report has fully
+		 * landed in memory before the report id and timestamp of the
+		 * following report have effectively landed.
 		 *
 		 * This is assuming that the writes of the OA unit land in
 		 * memory in the order they were written to.
 		 * If not : (╯°□°）╯︵ ┻━┻
 		 */
 		while (OA_TAKEN(tail, aged_tail) >= report_size) {
-			u32 *report32 = (void *)(stream->oa_buffer.vaddr + tail);
+			void *report = stream->oa_buffer.vaddr + tail;
 
-			if (report32[0] != 0 || report32[1] != 0)
+			if (oa_report_id(stream, report) ||
+			    oa_timestamp(stream, report))
 				break;
 
 			tail = (tail - report_size) & (OA_BUFFER_SIZE - 1);
@@ -702,7 +764,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		u8 *report = oa_buf_base + head;
 		u32 *report32 = (void *)report;
 		u32 ctx_id;
-		u32 reason;
+		u64 reason;
 
 		/*
 		 * All the report sizes factor neatly into the buffer
@@ -725,16 +787,12 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * triggered this specific report (mostly timer
 		 * triggered or e.g. due to a context switch).
 		 *
-		 * This field is never expected to be zero so we can
-		 * check that the report isn't invalid before copying
-		 * it to userspace...
+		 * In MMIO triggered reports, some platforms do not set the
+		 * reason bit in this field and it is valid to have a reason
+		 * field of zero.
 		 */
-		reason = ((report32[0] >> OAREPORT_REASON_SHIFT) &
-			  (GRAPHICS_VER(stream->perf->i915) == 12 ?
-			   OAREPORT_REASON_MASK_EXTENDED :
-			   OAREPORT_REASON_MASK));
-
-		ctx_id = report32[2] & stream->specific_ctx_id_mask;
+		reason = oa_report_reason(stream, report);
+		ctx_id = oa_context_id(stream, report32);
 
 		/*
 		 * Squash whatever is in the CTX_ID field if it's marked as
@@ -744,9 +802,10 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * Note: that we don't clear the valid_ctx_bit so userspace can
 		 * understand that the ID has been squashed by the kernel.
 		 */
-		if (!(report32[0] & stream->perf->gen8_valid_ctx_bit) &&
-		    GRAPHICS_VER(stream->perf->i915) <= 11)
-			ctx_id = report32[2] = INVALID_CTX_ID;
+		if (oa_report_ctx_invalid(stream, report)) {
+			ctx_id = INVALID_CTX_ID;
+			oa_context_id_squash(stream, report32);
+		}
 
 		/*
 		 * NB: For Gen 8 the OA unit no longer supports clock gating
@@ -790,7 +849,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 			 */
 			if (stream->ctx &&
 			    stream->specific_ctx_id != ctx_id) {
-				report32[2] = INVALID_CTX_ID;
+				oa_context_id_squash(stream, report32);
 			}
 
 			ret = append_oa_sample(stream, buf, count, offset,
@@ -802,11 +861,11 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		}
 
 		/*
-		 * Clear out the first 2 dword as a mean to detect unlanded
+		 * Clear out the report id and timestamp as a means to detect unlanded
 		 * reports.
 		 */
-		report32[0] = 0;
-		report32[1] = 0;
+		oa_report_id_clear(stream, report32);
+		oa_timestamp_clear(stream, report32);
 	}
 
 	if (start_offset != *offset) {
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index e7c83dcbec08..d8b92508a632 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -38,9 +38,15 @@ enum {
 	PERF_GROUP_INVALID = U32_MAX,
 };
 
+enum report_header {
+	HDR_32_BIT = 0,
+	HDR_64_BIT,
+};
+
 struct i915_oa_format {
 	u32 format;
 	int size;
+	enum report_header header;
 };
 
 struct i915_oa_reg {
-- 
2.36.1

