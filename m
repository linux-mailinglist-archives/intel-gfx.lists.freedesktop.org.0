Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 101C56972E6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 01:54:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BCAD10EA38;
	Wed, 15 Feb 2023 00:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2411310E9FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 00:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676422461; x=1707958461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fOtHwnrH0EMAh3wkZw9+OJAHnFRFF6ijiIca4BMbqWk=;
 b=P+dNA+KLOTWxCycpt9kjuF4gwsz5s0zchad7Ntg+bCakH+9upvP7IGOS
 G1+pLgyPvty2ocN8XQ2iIkQXAVvEZmHjnoDkCturZExDeNqo7TWUVavRI
 3p4tSIRvxUGWKQ1MVh3gcdug32mSUQ3Tf3XMCCxn08JgLBIFTA1WqMCZn
 Xy9Xfj9AvEXRFe0QpZPt9fpw2bxZVgAuUFSbIJLFZj7Q3nYUMrO3FDZoC
 wvFuYCC740SCJckxujk/nWl8urImRenM5LhLn3UfTtZ25+dMEG1m3KPzm
 vp4U69ilwRdeRgICfW2bXEkcy/Scp62La//jRvxGkJkoJMO/EN1ds9NJt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417536043"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="417536043"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="914951630"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="914951630"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 16:54:16 -0800
Message-Id: <20230215005419.2100887-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/perf: Parse 64bit report header
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that OA formats come in flavor of 64 bit reports, the report header
has 64 bit report-id, timestamp, context-id and gpu-ticks fields. When
filtering these reports, use the right width for these fields.

Note that upper dword of context id is reserved, so squash lower dword
only.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 105 ++++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_perf_types.h |   6 ++
 2 files changed, 92 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index fda779b2c16f..030f3a598229 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -441,6 +441,75 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
 	return oastatus1 & GEN7_OASTATUS1_TAIL_MASK;
 }
 
+#define oa_report_header_64bit(__s) \
+	((__s)->oa_buffer.format->header == HDR_64_BIT)
+
+static inline u64
+oa_report_id(struct i915_perf_stream *stream, void *report)
+{
+	return oa_report_header_64bit(stream) ? *(u64 *)report : *(u32 *)report;
+}
+
+static inline u64
+oa_report_reason(struct i915_perf_stream *stream, void *report)
+{
+	return (oa_report_id(stream, report) >> OAREPORT_REASON_SHIFT) &
+	       (GRAPHICS_VER(stream->perf->i915) == 12 ?
+		OAREPORT_REASON_MASK_EXTENDED :
+		OAREPORT_REASON_MASK);
+}
+
+static inline void
+oa_report_id_clear(struct i915_perf_stream *stream, u32 *report)
+{
+	if (oa_report_header_64bit(stream))
+		*(u64 *)report = 0;
+	else
+		*report = 0;
+}
+
+static inline bool
+oa_report_ctx_invalid(struct i915_perf_stream *stream, void *report)
+{
+	return !(oa_report_id(stream, report) &
+	       stream->perf->gen8_valid_ctx_bit) &&
+	       GRAPHICS_VER(stream->perf->i915) <= 11;
+}
+
+static inline u64
+oa_timestamp(struct i915_perf_stream *stream, void *report)
+{
+	return oa_report_header_64bit(stream) ?
+		*((u64 *)report + 1) :
+		*((u32 *)report + 1);
+}
+
+static inline void
+oa_timestamp_clear(struct i915_perf_stream *stream, u32 *report)
+{
+	if (oa_report_header_64bit(stream))
+		*(u64 *)&report[2] = 0;
+	else
+		report[1] = 0;
+}
+
+static inline u32
+oa_context_id(struct i915_perf_stream *stream, u32 *report)
+{
+	u32 ctx_id = oa_report_header_64bit(stream) ? report[4] : report[2];
+
+	return ctx_id & stream->specific_ctx_id_mask;
+}
+
+static inline void
+oa_context_id_squash(struct i915_perf_stream *stream, u32 *report)
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
@@ -521,9 +590,10 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
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
@@ -702,7 +772,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		u8 *report = oa_buf_base + head;
 		u32 *report32 = (void *)report;
 		u32 ctx_id;
-		u32 reason;
+		u64 reason;
 
 		/*
 		 * All the report sizes factor neatly into the buffer
@@ -725,16 +795,12 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
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
@@ -744,9 +810,10 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
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
@@ -790,7 +857,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 			 */
 			if (stream->ctx &&
 			    stream->specific_ctx_id != ctx_id) {
-				report32[2] = INVALID_CTX_ID;
+				oa_context_id_squash(stream, report32);
 			}
 
 			ret = append_oa_sample(stream, buf, count, offset,
@@ -802,11 +869,11 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
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
index ce99551ad0fd..8ccb0b89d019 100644
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

