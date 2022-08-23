Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6329159EE06
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 23:11:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC33710EC01;
	Tue, 23 Aug 2022 21:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBECD10EC01
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 21:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661289097; x=1692825097;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=K6RZQw6pIb88gz5/2mnYcaxrla2yzXS3+ZCR6vw4pek=;
 b=FGNbSkAbjPwUdx1zd/S+d1P3P92bIraUZRFIi9X1AUBYyz5bkb1iHSZq
 LWmOl1yVgDDaiHM+mBPzdzSWLN/m+TGG2xnJOq8visZAx+Kx+wfwm8jBU
 wvuyQhy30D+SHpaxGWkyUzVILzSwz4/qpsngoI5WmtNxnf2lN6KFtzhBq
 LEUsahDQgMBgMJrE2jckGJcl6YiHgoV1JpcItXWfAoLMRF4y2wTWVuADR
 AjBFf7mvs3Fc08nulzSg8KNA+mgR3eQMkUYGMFvUz46vqnCxB5c67fvrB
 9R9Lvo7wjDQ53qmVMr8cKKlKV8qbP+Phq+Mg+nLn0GOysuEdh+c5z6do0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="293796860"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="293796860"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 14:11:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638824468"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 14:11:36 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 21:11:32 +0000
Message-Id: <20220823211132.8629-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/19] drm/i915/perf: Add OA formats for DG2
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

Add new OA formats for DG2. Some of the newer OA formats are not
multples of 64 bytes and are not powers of 2. For those formats, adjust
hw_tail accordingly when checking for new reports.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramampa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 63 ++++++++++++++++++++------------
 include/uapi/drm/i915_drm.h      |  6 +++
 2 files changed, 46 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 735244a3aedd..c8331b549d31 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -306,7 +306,8 @@ static u32 i915_oa_max_sample_rate = 100000;
 
 /* XXX: beware if future OA HW adds new report formats that the current
  * code assumes all reports have a power-of-two size and ~(size - 1) can
- * be used as a mask to align the OA tail pointer.
+ * be used as a mask to align the OA tail pointer. In some of the
+ * formats, R is used to denote reserved field.
  */
 static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A13]	    = { 0, 64 },
@@ -320,6 +321,10 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A12]		    = { 0, 64 },
 	[I915_OA_FORMAT_A12_B8_C8]	    = { 2, 128 },
 	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
+	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
+	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
+	[I915_OAR_FORMAT_A36u64_B8_C8]		= { 1, 384 },
+	[I915_OA_FORMAT_A38u64_R2u64_B8_C8]	= { 1, 448 },
 };
 
 #define SAMPLE_OA_REPORT      (1<<0)
@@ -467,6 +472,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	bool pollin;
 	u32 hw_tail;
 	u64 now;
+	u32 partial_report_size;
 
 	/* We have to consider the (unlikely) possibility that read() errors
 	 * could result in an OA buffer reset which might reset the head and
@@ -476,10 +482,16 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 
 	hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
 
-	/* The tail pointer increases in 64 byte increments,
-	 * not in report_size steps...
+	/* The tail pointer increases in 64 byte increments, whereas report
+	 * sizes need not be integral multiples or 64 or powers of 2.
+	 * Compute potentially partially landed report in the OA buffer
 	 */
-	hw_tail &= ~(report_size - 1);
+	partial_report_size = OA_TAKEN(hw_tail, stream->oa_buffer.tail);
+	partial_report_size %= report_size;
+
+	/* Subtract partial amount off the tail */
+	hw_tail = gtt_offset + ((hw_tail - partial_report_size) &
+				(stream->oa_buffer.vma->size - 1));
 
 	now = ktime_get_mono_fast_ns();
 
@@ -601,6 +613,8 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 {
 	int report_size = stream->oa_buffer.format_size;
 	struct drm_i915_perf_record_header header;
+	int report_size_partial;
+	u8 *oa_buf_end;
 
 	header.type = DRM_I915_PERF_RECORD_SAMPLE;
 	header.pad = 0;
@@ -614,7 +628,19 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 		return -EFAULT;
 	buf += sizeof(header);
 
-	if (copy_to_user(buf, report, report_size))
+	oa_buf_end = stream->oa_buffer.vaddr +
+		     stream->oa_buffer.vma->size;
+	report_size_partial = oa_buf_end - report;
+
+	if (report_size_partial < report_size) {
+		if(copy_to_user(buf, report, report_size_partial))
+			return -EFAULT;
+		buf += report_size_partial;
+
+		if(copy_to_user(buf, stream->oa_buffer.vaddr,
+				report_size - report_size_partial))
+			return -EFAULT;
+	} else if (copy_to_user(buf, report, report_size))
 		return -EFAULT;
 
 	(*offset) += header.size;
@@ -684,8 +710,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 	 * all a power of two).
 	 */
 	if (drm_WARN_ONCE(&uncore->i915->drm,
-			  head > OA_BUFFER_SIZE || head % report_size ||
-			  tail > OA_BUFFER_SIZE || tail % report_size,
+			  head > stream->oa_buffer.vma->size ||
+			  tail > stream->oa_buffer.vma->size,
 			  "Inconsistent OA buffer pointers: head = %u, tail = %u\n",
 			  head, tail))
 		return -EIO;
@@ -699,22 +725,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		u32 ctx_id;
 		u32 reason;
 
-		/*
-		 * All the report sizes factor neatly into the buffer
-		 * size so we never expect to see a report split
-		 * between the beginning and end of the buffer.
-		 *
-		 * Given the initial alignment check a misalignment
-		 * here would imply a driver bug that would result
-		 * in an overrun.
-		 */
-		if (drm_WARN_ON(&uncore->i915->drm,
-				(OA_BUFFER_SIZE - head) < report_size)) {
-			drm_err(&uncore->i915->drm,
-				"Spurious OA head ptr: non-integral report offset\n");
-			break;
-		}
-
 		/*
 		 * The reason field includes flags identifying what
 		 * triggered this specific report (mostly timer
@@ -4513,6 +4523,13 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 		oa_format_add(perf, I915_OA_FORMAT_C4_B8);
 		break;
 
+	case INTEL_DG2:
+		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
+		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
+		oa_format_add(perf, I915_OAR_FORMAT_A36u64_B8_C8);
+		oa_format_add(perf, I915_OA_FORMAT_A38u64_R2u64_B8_C8);
+		break;
+
 	default:
 		MISSING_CASE(platform);
 	}
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 520ad2691a99..d20d723925b5 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2650,6 +2650,12 @@ enum drm_i915_oa_format {
 	I915_OA_FORMAT_A12_B8_C8,
 	I915_OA_FORMAT_A32u40_A4u32_B8_C8,
 
+	/* DG2 */
+	I915_OAR_FORMAT_A32u40_A4u32_B8_C8,
+	I915_OA_FORMAT_A24u40_A14u32_B8_C8,
+	I915_OAR_FORMAT_A36u64_B8_C8,
+	I915_OA_FORMAT_A38u64_R2u64_B8_C8,
+
 	I915_OA_FORMAT_MAX	    /* non-ABI */
 };
 
-- 
2.25.1

