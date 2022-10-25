Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE7960D561
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 22:17:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9123410E1E6;
	Tue, 25 Oct 2022 20:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F06210E1EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 20:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666729031; x=1698265031;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FnCQd6/dfYi+SC8Zcyus2h0Pl1aP5tGzcTd0NpaAvgg=;
 b=h3mMJMliArBFfJCsH/2OP8fKkHva6lMSbWRpeijpdAGyNgLkgX9ZYIJe
 IbCik6Q6ppdnflknLPWZ+arWpOLzjSUEEISjv/4o59Z7IFb3LxsYduh1j
 32ew8pyUjcPgkOvaZJf0MkzKWE2n9xjrsurHVuiQXYEDxp4JAfN6u1CrA
 BQUMgxGknlHdCKVCK5R53q9oQx+k/2dJYm30TVhp0DA0bnR25Pl2epCyb
 ab/L14zn6nXsHDfQU8loPb31fUvt2Zk6ej191s1A6D+gPRxV/E70IWNif
 qVBYIEaa6fc+VPp7CbQQIfoReuWriv0oj79hepDolagFEFq8Ubtj4BnIo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="369847676"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="369847676"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609699728"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="609699728"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 20:17:02 +0000
Message-Id: <20221025201708.84018-11-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
References: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 10/16] drm/i915/perf: Store a pointer to
 oa_format in oa_buffer
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

DG2 introduces OA reports with 64 bit report header fields. Perf OA
would need more information about the OA format in order to process such
reports. Store all OA format info in oa_buffer instead of just the size
and format-id.

v2: Drop format_size variable (Ashutosh)

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 30 +++++++++++---------------
 drivers/gpu/drm/i915/i915_perf_types.h |  3 +--
 2 files changed, 13 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 2c8727253f0d..585079ae5f03 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -465,7 +465,7 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
 static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 {
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
-	int report_size = stream->oa_buffer.format_size;
+	int report_size = stream->oa_buffer.format->size;
 	unsigned long flags;
 	bool pollin;
 	u32 hw_tail;
@@ -602,7 +602,7 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 			    size_t *offset,
 			    const u8 *report)
 {
-	int report_size = stream->oa_buffer.format_size;
+	int report_size = stream->oa_buffer.format->size;
 	struct drm_i915_perf_record_header header;
 
 	header.type = DRM_I915_PERF_RECORD_SAMPLE;
@@ -652,7 +652,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 				  size_t *offset)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	int report_size = stream->oa_buffer.format_size;
+	int report_size = stream->oa_buffer.format->size;
 	u8 *oa_buf_base = stream->oa_buffer.vaddr;
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	u32 mask = (OA_BUFFER_SIZE - 1);
@@ -945,7 +945,7 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 				  size_t *offset)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	int report_size = stream->oa_buffer.format_size;
+	int report_size = stream->oa_buffer.format->size;
 	u8 *oa_buf_base = stream->oa_buffer.vaddr;
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	u32 mask = (OA_BUFFER_SIZE - 1);
@@ -2506,7 +2506,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
 {
 	int err;
 	struct intel_context *ce = stream->pinned_ctx;
-	u32 format = stream->oa_buffer.format;
+	u32 format = stream->oa_buffer.format->format;
 	u32 offset = stream->perf->ctx_oactxctrl_offset;
 	struct flex regs_context[] = {
 		{
@@ -2877,7 +2877,7 @@ static void gen7_oa_enable(struct i915_perf_stream *stream)
 	u32 ctx_id = stream->specific_ctx_id;
 	bool periodic = stream->periodic;
 	u32 period_exponent = stream->period_exponent;
-	u32 report_format = stream->oa_buffer.format;
+	u32 report_format = stream->oa_buffer.format->format;
 
 	/*
 	 * Reset buf pointers so we don't forward reports from before now.
@@ -2903,7 +2903,7 @@ static void gen7_oa_enable(struct i915_perf_stream *stream)
 static void gen8_oa_enable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	u32 report_format = stream->oa_buffer.format;
+	u32 report_format = stream->oa_buffer.format->format;
 
 	/*
 	 * Reset buf pointers so we don't forward reports from before now.
@@ -2929,7 +2929,7 @@ static void gen8_oa_enable(struct i915_perf_stream *stream)
 static void gen12_oa_enable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	u32 report_format = stream->oa_buffer.format;
+	u32 report_format = stream->oa_buffer.format->format;
 
 	/*
 	 * If we don't want OA reports from the OA buffer, then we don't even
@@ -3110,7 +3110,6 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct i915_perf *perf = stream->perf;
 	struct intel_gt *gt;
-	int format_size;
 	int ret;
 
 	if (!props->engine) {
@@ -3166,20 +3165,15 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 
 	stream->sample_size = sizeof(struct drm_i915_perf_record_header);
 
-	format_size = perf->oa_formats[props->oa_format].size;
+	stream->oa_buffer.format = &perf->oa_formats[props->oa_format];
+	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.format->size == 0))
+		return -EINVAL;
 
 	stream->sample_flags = props->sample_flags;
-	stream->sample_size += format_size;
-
-	stream->oa_buffer.format_size = format_size;
-	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.format_size == 0))
-		return -EINVAL;
+	stream->sample_size += stream->oa_buffer.format->size;
 
 	stream->hold_preemption = props->hold_preemption;
 
-	stream->oa_buffer.format =
-		perf->oa_formats[props->oa_format].format;
-
 	stream->periodic = props->oa_periodic;
 	if (stream->periodic)
 		stream->period_exponent = props->oa_period_exponent;
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index dc9bfd8086cf..e0c96b44eda8 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -250,11 +250,10 @@ struct i915_perf_stream {
 	 * @oa_buffer: State of the OA buffer.
 	 */
 	struct {
+		const struct i915_oa_format *format;
 		struct i915_vma *vma;
 		u8 *vaddr;
 		u32 last_ctx_id;
-		int format;
-		int format_size;
 		int size_exponent;
 
 		/**
-- 
2.25.1

