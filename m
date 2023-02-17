Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E87569A33A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 01:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE11110E3C4;
	Fri, 17 Feb 2023 00:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ABF410E1AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 00:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676595536; x=1708131536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8L3cKir9V2CQd2KHyoZvlyYXFMwvzfv+OBUmX52xY9c=;
 b=UDG4AavS4sNOXk34rFOt8kWB2/xXJxAWzQquaFOMz/nOEOzhUUfUmiVs
 IBCsyo3TF3fdwkx1lz1cQQGBsZF9fKkdj6ibrHHw8ZFT9glXGETv1s+Ig
 4De89j8OUiIXMOxeR0D6y1UwTonRZJpurfvv5dHq0wve9L1URJNminrH2
 glyEs+/p63PxisJofYDNYQHzRudFjFXRtpNMd8/VrDSzxF91oxHky1xGk
 wqQuuEjgSIKWYQVUmgYL+wnMRaJhH3M+TWFDbQ+ycliJvMNVOEWRo6azL
 dTQ+OoojHzAo90Y5ErjY7hlsH41ARsga0HN84g70ckOO30gEcj9MeHEpl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311512384"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311512384"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="844390216"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="844390216"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:54 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 16:58:47 -0800
Message-Id: <20230217005850.2511422-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915/perf: Parse 64bit report header
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 105 ++++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_perf_types.h |   6 ++
 2 files changed, 92 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 3306653c0b85..9715b964aa1e 100644
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

