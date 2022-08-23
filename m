Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9705F59CCCD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 02:06:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3802EA74E6;
	Tue, 23 Aug 2022 00:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA1EA74BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213025; x=1692749025;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ft18jXGq2BqHP3hdmPTLb6bHPvvHYHSUakh9IQLAPHY=;
 b=oFKbpZVssVrX/RCQu+sIsuHlcisGj7PO+ltbWs0K0VUWsNdMBslVyHaj
 UnODdHb4FrUHih+TmSse5LKgwUP9OvT2EyTZe2m7PSTYDyjzFNJlQ3OEn
 DThC09g4zjhcoi+pFw6Y/csAz3uSkk5ODSKzjCPyLXx3N5KoLUIp8cpC2
 jAy9vm7csxJvOFk4Kyq42vvtGpuOqRMLjcqKonlJvptsRQ3fYibzOatAW
 rlzeR2jUlbdy3hFJX6QbO8J+vViGTJUYL3deruWWZwi4pbrupBzpPBJ9R
 In+8H8nJH0GNDEOkd5p2dkl+7+DRXMabbIVf4/BI0rKB2NJ03P4XpBCRY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304838"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304838"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775542"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:35 +0000
Message-Id: <20220823000342.281222-13-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/19] drm/i915/perf: Parse 64bit report header
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 109 ++++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_perf_types.h |   6 ++
 2 files changed, 94 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 41634d614ba5..c3183aedc712 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -324,8 +324,8 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
 	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
 	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
-	[I915_OAR_FORMAT_A36u64_B8_C8]		= { 1, 384 },
-	[I915_OA_FORMAT_A38u64_R2u64_B8_C8]	= { 1, 448 },
+	[I915_OAR_FORMAT_A36u64_B8_C8]		= { 1, 384, HDR_64_BIT },
+	[I915_OA_FORMAT_A38u64_R2u64_B8_C8]	= { 1, 448, HDR_64_BIT },
 };
 
 #define SAMPLE_OA_REPORT      (1<<0)
@@ -457,6 +457,75 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
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
@@ -546,9 +615,10 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 		 * If not : (╯°□°）╯︵ ┻━┻
 		 */
 		while (_oa_taken(stream, tail, aged_tail) >= report_size) {
-			u32 *report32 = (void *)(stream->oa_buffer.vaddr + tail);
+			void *report = stream->oa_buffer.vaddr + tail;
 
-			if (report32[0] != 0 || report32[1] != 0)
+			if (oa_report_id(stream, report) ||
+			    oa_timestamp(stream, report))
 				break;
 
 			tail = _rewind_tail(stream, tail, report_size);
@@ -741,23 +811,19 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		u8 *report = oa_buf_base + head;
 		u32 *report32 = (void *)report;
 		u32 ctx_id;
-		u32 reason;
+		u64 reason;
 
 		/*
 		 * The reason field includes flags identifying what
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
@@ -767,9 +833,10 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
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
@@ -813,7 +880,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 			 */
 			if (stream->ctx &&
 			    stream->specific_ctx_id != ctx_id) {
-				report32[2] = INVALID_CTX_ID;
+				oa_context_id_squash(stream, report32);
 			}
 
 			ret = append_oa_sample(stream, buf, count, offset,
@@ -825,11 +892,11 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
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
index e0c96b44eda8..68db5f94bc58 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -30,9 +30,15 @@ struct i915_vma;
 struct intel_context;
 struct intel_engine_cs;
 
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
2.25.1

