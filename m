Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571C0603619
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 00:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A759610E977;
	Tue, 18 Oct 2022 22:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B557A10F03D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 22:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666132630; x=1697668630;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FnCQd6/dfYi+SC8Zcyus2h0Pl1aP5tGzcTd0NpaAvgg=;
 b=D3I7uaIcoqtOTOTTo6cPObAvVMZzLC69M5VAIBlDsbllw7H6h4Ia1USw
 SXn0yBdry4GZ4eWD7Aj32BnnbOxT0aJPVKugdMIQfZCYfSBjEWHykTimw
 i5hlYdCnfhesGG83ZpanLvfe/URrPzeSFRJ60jmsjLn4w1yGr3dqrKNOD
 4ny1ct+iN173mdjUyDFRO7IToa+s4xg2iN/UrmkyzxH1A7En8Lql5OcX9
 kzLd4pD1xNONJLwqBOVXZi6QwQ5BaOT1SXRZMw5O7JdAmUb+NK848Fqgr
 NPLCyJUxhHU4ZogNEk4owlm4bfto1rdm7b/Qg96yaGf/GZNoK5HuOr3Cn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="304986540"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="304986540"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:52 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="803986542"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="803986542"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:52 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 18 Oct 2022 22:36:42 +0000
Message-Id: <20221018223648.5244-11-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
References: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
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

