Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF7B6BC310
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 02:01:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD2E10EBD8;
	Thu, 16 Mar 2023 01:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3992310E81F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 01:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678928475; x=1710464475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fJOuOB9TqbN7Ild8uKNcOqrcAP8UpfiVpWLZfZ2Hnxw=;
 b=apXOoNQ8FojDWTGNWHZ9b5TgmW9UR/otVQUXYDMO322xVSPC5S/mHsgx
 oPwHiH4VPEOk+voGsvVP1HbSPujkU9o/kF0c8k8c3pEIKR8m34LGA8+X9
 iNawo/xkSA/l+m74Z/5K6fT5qWuvMzMZiId6WuuCi6KXSpOBy8p4/DWSN
 yPwcoxMKzqAzAv2A7SZJ9528F0jZXS1Tv0Z++Ur13WWtsRiWln3DI0vYV
 PhwJBxHL3b00jKDBxlKHk68dak3xcwIVVb1ZXVOnvtIanZ/uM6UuHseCL
 lEq6QPXf3iGo62wETUwUfHhueyW6N+rQnI04zrjWJy1e/fbaeJSts3uIZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="400434071"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="400434071"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 18:01:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="743916693"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="743916693"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 18:01:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Mar 2023 18:00:57 -0700
Message-Id: <20230316010101.2590309-9-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230316010101.2590309-1-umesh.nerlige.ramappa@intel.com>
References: <20230316010101.2590309-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 08/12] drm/i915/perf: Handle non-power-of-2
 reports
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

Some of the newer OA formats are not powers of 2. For those formats,
adjust the hw_tail accordingly when checking for new reports.

v2: (Ashutosh)
- Switch to OA_TAKEN for diff calculation
- Use OA_BUFFER_SIZE instead of the vma size
- Update comments

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 51 +++++++++++++++++---------------
 1 file changed, 27 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 8336430aa27f..9e6da8859284 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -534,6 +534,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	bool pollin;
 	u32 hw_tail;
 	u64 now;
+	u32 partial_report_size;
 
 	/* We have to consider the (unlikely) possibility that read() errors
 	 * could result in an OA buffer reset which might reset the head and
@@ -543,10 +544,15 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 
 	hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
 
-	/* The tail pointer increases in 64 byte increments,
-	 * not in report_size steps...
+	/* The tail pointer increases in 64 byte increments, not in report_size
+	 * steps. Also the report size may not be a power of 2. Compute
+	 * potentially partially landed report in the OA buffer
 	 */
-	hw_tail &= ~(report_size - 1);
+	partial_report_size = OA_TAKEN(hw_tail, stream->oa_buffer.tail);
+	partial_report_size %= report_size;
+
+	/* Subtract partial amount off the tail */
+	hw_tail = gtt_offset + OA_TAKEN(hw_tail, partial_report_size);
 
 	now = ktime_get_mono_fast_ns();
 
@@ -669,6 +675,8 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 {
 	int report_size = stream->oa_buffer.format->size;
 	struct drm_i915_perf_record_header header;
+	int report_size_partial;
+	u8 *oa_buf_end;
 
 	header.type = DRM_I915_PERF_RECORD_SAMPLE;
 	header.pad = 0;
@@ -682,8 +690,20 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 		return -EFAULT;
 	buf += sizeof(header);
 
-	if (copy_to_user(buf, report, report_size))
+	oa_buf_end = stream->oa_buffer.vaddr + OA_BUFFER_SIZE;
+	report_size_partial = oa_buf_end - report;
+
+	if (report_size_partial < report_size) {
+		if (copy_to_user(buf, report, report_size_partial))
+			return -EFAULT;
+		buf += report_size_partial;
+
+		if (copy_to_user(buf, stream->oa_buffer.vaddr,
+				 report_size - report_size_partial))
+			return -EFAULT;
+	} else if (copy_to_user(buf, report, report_size)) {
 		return -EFAULT;
+	}
 
 	(*offset) += header.size;
 
@@ -747,12 +767,11 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 	 * An out of bounds or misaligned head or tail pointer implies a driver
 	 * bug since we validate + align the tail pointers we read from the
 	 * hardware and we are in full control of the head pointer which should
-	 * only be incremented by multiples of the report size (notably also
-	 * all a power of two).
+	 * only be incremented by multiples of the report size.
 	 */
 	if (drm_WARN_ONCE(&uncore->i915->drm,
-			  head > OA_BUFFER_SIZE || head % report_size ||
-			  tail > OA_BUFFER_SIZE || tail % report_size,
+			  head > OA_BUFFER_SIZE ||
+			  tail > OA_BUFFER_SIZE,
 			  "Inconsistent OA buffer pointers: head = %u, tail = %u\n",
 			  head, tail))
 		return -EIO;
@@ -766,22 +785,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		u32 ctx_id;
 		u64 reason;
 
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
-- 
2.36.1

