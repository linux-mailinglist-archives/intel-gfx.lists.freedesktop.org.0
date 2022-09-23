Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CDD5E82FB
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 22:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F9010E926;
	Fri, 23 Sep 2022 20:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF4F10E92F
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 20:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663963925; x=1695499925;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Zwf7c5FlDxAFVXeMuguIVdLm5EzAbWp2do1FY/C838E=;
 b=jmZrFEa/D0FjM9PBPgdNp72NY/9ZUF8jeqbB3TizKkpMuhWdG+c5UbSS
 er3JxRgH5DsyQJVZtHy/6yX3WziT7Ua0fCPRr2l+QWJj9FtqJbPTtUVvv
 tjM1wSq4ZvFPl27I0sAYqMPaWh6ObYr3hx6pczn56fj43Bh35KsEoNUjr
 H3WgqrWPPvT+RpQRBQoOuIuQ/vfPjTme5xcpr7p0JNFYg5Gj8fUGvMs9C
 G3F6jtKjKET5oo9LuVTjCKvmJhcqAVeWFf8lUEEsCE4nQzQBm5LQk7EWl
 ZKolnkkq6/WMAhMYVH8AQcChMbaKsR3dMSJbXDQ2mSlYlX8fWyX358W1k A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="299410027"
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="299410027"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 13:12:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="762747300"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 13:12:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Fri, 23 Sep 2022 20:11:49 +0000
Message-Id: <20220923201154.283784-11-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/15] drm/i915/perf: Store a pointer to
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
index e875d1722802..bd886ba4b927 100644
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
@@ -946,7 +946,7 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 				  size_t *offset)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	int report_size = stream->oa_buffer.format_size;
+	int report_size = stream->oa_buffer.format->size;
 	u8 *oa_buf_base = stream->oa_buffer.vaddr;
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	u32 mask = (OA_BUFFER_SIZE - 1);
@@ -2494,7 +2494,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
 {
 	int err;
 	struct intel_context *ce = stream->pinned_ctx;
-	u32 format = stream->oa_buffer.format;
+	u32 format = stream->oa_buffer.format->format;
 	u32 offset = stream->perf->ctx_oactxctrl_offset;
 	struct flex regs_context[] = {
 		{
@@ -2867,7 +2867,7 @@ static void gen7_oa_enable(struct i915_perf_stream *stream)
 	u32 ctx_id = stream->specific_ctx_id;
 	bool periodic = stream->periodic;
 	u32 period_exponent = stream->period_exponent;
-	u32 report_format = stream->oa_buffer.format;
+	u32 report_format = stream->oa_buffer.format->format;
 
 	/*
 	 * Reset buf pointers so we don't forward reports from before now.
@@ -2893,7 +2893,7 @@ static void gen7_oa_enable(struct i915_perf_stream *stream)
 static void gen8_oa_enable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	u32 report_format = stream->oa_buffer.format;
+	u32 report_format = stream->oa_buffer.format->format;
 
 	/*
 	 * Reset buf pointers so we don't forward reports from before now.
@@ -2919,7 +2919,7 @@ static void gen8_oa_enable(struct i915_perf_stream *stream)
 static void gen12_oa_enable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	u32 report_format = stream->oa_buffer.format;
+	u32 report_format = stream->oa_buffer.format->format;
 
 	/*
 	 * If we don't want OA reports from the OA buffer, then we don't even
@@ -3100,7 +3100,6 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct i915_perf *perf = stream->perf;
 	struct intel_gt *gt;
-	int format_size;
 	int ret;
 
 	if (!props->engine) {
@@ -3156,20 +3155,15 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 
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

