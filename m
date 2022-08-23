Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B5B59CCCA
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 02:06:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3955A74E1;
	Tue, 23 Aug 2022 00:04:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F39A74BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213025; x=1692749025;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KSPhBD3ej+vpyPmPJ21BATS8PpJRCGVihVpOxv40Zn4=;
 b=kRBhADQu7eUowmrw6wa+RVV/dqNgMW2re9tkL4FpN7ZLrw2L/fBYK49m
 mG9PU5hxEvRD8IXfEcpMaWvJlIOmXkJ/ftLHFdbp8Y5pRkYCXzZbj+bjA
 LwFUi1Kn3IOgtYfRZuFu2QQFLzxFF7ygNl3ARG5J87fIyRKR8tCX03Qgp
 s0dQBEUNVRrXi3bjriyqGnaWpVRTgcE6lQn6m2120Otu7G6Smpt7KiAl+
 Ach/XP0Thi+wm3FU8gQh8xtQQq0YQGCWQDB+hZ4QEaRTCmpo1BqG4Yfb9
 x7qUKSakCVPJnxJshIUFV8kF2jhr64xY73odx13agJeWEEFJcI33ze9R1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304837"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304837"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775539"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:34 +0000
Message-Id: <20220823000342.281222-12-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/19] drm/i915/perf: Store a pointer to
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 23 ++++++++++-------------
 drivers/gpu/drm/i915/i915_perf_types.h |  3 +--
 2 files changed, 11 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index e1e0d4369ea6..41634d614ba5 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -484,7 +484,7 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
 static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 {
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
-	int report_size = stream->oa_buffer.format_size;
+	int report_size = stream->oa_buffer.format->size;
 	unsigned long flags;
 	bool pollin;
 	u32 hw_tail;
@@ -631,7 +631,7 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 			    size_t *offset,
 			    const u8 *report)
 {
-	int report_size = stream->oa_buffer.format_size;
+	int report_size = stream->oa_buffer.format->size;
 	struct drm_i915_perf_record_header header;
 	int report_size_partial;
 	u8 *oa_buf_end;
@@ -695,7 +695,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 				  size_t *offset)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	int report_size = stream->oa_buffer.format_size;
+	int report_size = stream->oa_buffer.format->size;
 	u8 *oa_buf_base = stream->oa_buffer.vaddr;
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	size_t start_offset = *offset;
@@ -971,7 +971,7 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 				  size_t *offset)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	int report_size = stream->oa_buffer.format_size;
+	int report_size = stream->oa_buffer.format->size;
 	u8 *oa_buf_base = stream->oa_buffer.vaddr;
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	u32 mask = (OA_BUFFER_SIZE - 1);
@@ -2518,7 +2518,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
 {
 	int err;
 	struct intel_context *ce = stream->pinned_ctx;
-	u32 format = stream->oa_buffer.format;
+	u32 format = stream->oa_buffer.format->format;
 	u32 offset = stream->perf->ctx_oactxctrl_offset;
 	struct flex regs_context[] = {
 		{
@@ -2891,7 +2891,7 @@ static void gen7_oa_enable(struct i915_perf_stream *stream)
 	u32 ctx_id = stream->specific_ctx_id;
 	bool periodic = stream->periodic;
 	u32 period_exponent = stream->period_exponent;
-	u32 report_format = stream->oa_buffer.format;
+	u32 report_format = stream->oa_buffer.format->format;
 
 	/*
 	 * Reset buf pointers so we don't forward reports from before now.
@@ -2917,7 +2917,7 @@ static void gen7_oa_enable(struct i915_perf_stream *stream)
 static void gen8_oa_enable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	u32 report_format = stream->oa_buffer.format;
+	u32 report_format = stream->oa_buffer.format->format;
 
 	/*
 	 * Reset buf pointers so we don't forward reports from before now.
@@ -2943,7 +2943,7 @@ static void gen8_oa_enable(struct i915_perf_stream *stream)
 static void gen12_oa_enable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	u32 report_format = stream->oa_buffer.format;
+	u32 report_format = stream->oa_buffer.format->format;
 
 	/*
 	 * If we don't want OA reports from the OA buffer, then we don't even
@@ -3185,15 +3185,12 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	stream->sample_flags = props->sample_flags;
 	stream->sample_size += format_size;
 
-	stream->oa_buffer.format_size = format_size;
-	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.format_size == 0))
+	stream->oa_buffer.format = &perf->oa_formats[props->oa_format];
+	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.format->size == 0))
 		return -EINVAL;
 
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

