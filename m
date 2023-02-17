Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E3869A339
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 01:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8557D10E3C2;
	Fri, 17 Feb 2023 00:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3499310E138
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 00:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676595536; x=1708131536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rg+KwdU8X8oQwtzPyniJU+LpIejlcn+0x7CPAi/hWQg=;
 b=FsTW8oyNhN/LHSXNq7Jiyddn6eCkJEhbVIni4RZ4ZpruASMQZOTwjS12
 dDDikVKH4gi2fax3LLRPmX+t/dVoVaKH1DkihjF11WcflHWxA4gZBSSyy
 ePem/HsIi+2Soc9UCUd9FR7CN7xZF7FuupYHRS0kaF3XIUknreFyxPEIM
 6LaALkhoxi7fS2KblOj90GItuTOi5fGXeCTrUPRZKqrthUoLtjYJUP52r
 HgD7sxDwsA9zH57R+anzmIpuqSUpGDAge175r4Ly2xR2NGCnscIy7Gl1q
 wQlvg6AXUbKShq0MkVWVuwOeiUtNixaK+IlmDAQH2OHWzN0fH3YTidEcS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311512386"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311512386"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="844390219"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="844390219"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:54 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 16:58:48 -0800
Message-Id: <20230217005850.2511422-8-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915/perf: Handle non-power-of-2
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 50 ++++++++++++++++++--------------
 1 file changed, 28 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 9715b964aa1e..d3a1892c93be 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -542,6 +542,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	bool pollin;
 	u32 hw_tail;
 	u64 now;
+	u32 partial_report_size;
 
 	/* We have to consider the (unlikely) possibility that read() errors
 	 * could result in an OA buffer reset which might reset the head and
@@ -551,10 +552,16 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 
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
 
@@ -677,6 +684,8 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 {
 	int report_size = stream->oa_buffer.format->size;
 	struct drm_i915_perf_record_header header;
+	int report_size_partial;
+	u8 *oa_buf_end;
 
 	header.type = DRM_I915_PERF_RECORD_SAMPLE;
 	header.pad = 0;
@@ -690,8 +699,21 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 		return -EFAULT;
 	buf += sizeof(header);
 
-	if (copy_to_user(buf, report, report_size))
+	oa_buf_end = stream->oa_buffer.vaddr +
+		     stream->oa_buffer.vma->size;
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
 
@@ -759,8 +781,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 	 * all a power of two).
 	 */
 	if (drm_WARN_ONCE(&uncore->i915->drm,
-			  head > OA_BUFFER_SIZE || head % report_size ||
-			  tail > OA_BUFFER_SIZE || tail % report_size,
+			  head > OA_BUFFER_SIZE ||
+			  tail > OA_BUFFER_SIZE,
 			  "Inconsistent OA buffer pointers: head = %u, tail = %u\n",
 			  head, tail))
 		return -EIO;
@@ -774,22 +796,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
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

