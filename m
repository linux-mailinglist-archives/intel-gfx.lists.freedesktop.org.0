Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEE917857F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 23:19:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A1C16E971;
	Tue,  3 Mar 2020 22:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEDF16E96C
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 22:19:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 14:19:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="232413674"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2020 14:19:05 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Tue,  3 Mar 2020 14:19:01 -0800
Message-Id: <20200303221905.25866-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/perf: only append status when data
 is available
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

The only bit of the status register we currently report in the
i915-perf stream is the "report loss" bit. Only report this when we
have some data to report with it. There was a kind of inconsistency
here in that we could report report loss without appending the reports
associated with the loss.

v2: Rebase (Umesh)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 54 ++++++++++++++++++++------------
 1 file changed, 34 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0ec4546f1330..21a63644846f 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -663,6 +663,7 @@ static int append_oa_sample(struct i915_perf_stream *stream,
  * Returns: 0 on success, negative error code on failure.
  */
 static int gen8_append_oa_reports(struct i915_perf_stream *stream,
+				  u32 oastatus,
 				  char __user *buf,
 				  size_t count,
 				  size_t *offset)
@@ -709,6 +710,21 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 			  head, tail))
 		return -EIO;
 
+	/*
+	 * If there is nothing to read, don't append the status report yet,
+	 * wait until we have some data available.
+	 */
+	if (!OA_TAKEN(tail, head))
+		return 0;
+
+	if (oastatus & GEN8_OASTATUS_REPORT_LOST) {
+		ret = append_oa_status(stream, buf, count, offset,
+				       DRM_I915_PERF_RECORD_OA_REPORT_LOST);
+		if (ret)
+			return ret;
+		intel_uncore_write(uncore, GEN8_OASTATUS,
+				   oastatus & ~GEN8_OASTATUS_REPORT_LOST);
+	}
 
 	for (/* none */;
 	     (taken = OA_TAKEN(tail, head));
@@ -921,16 +937,7 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
 		oastatus = intel_uncore_read(uncore, oastatus_reg);
 	}
 
-	if (oastatus & GEN8_OASTATUS_REPORT_LOST) {
-		ret = append_oa_status(stream, buf, count, offset,
-				       DRM_I915_PERF_RECORD_OA_REPORT_LOST);
-		if (ret)
-			return ret;
-		intel_uncore_write(uncore, oastatus_reg,
-				   oastatus & ~GEN8_OASTATUS_REPORT_LOST);
-	}
-
-	return gen8_append_oa_reports(stream, buf, count, offset);
+	return gen8_append_oa_reports(stream, oastatus, buf, count, offset);
 }
 
 /**
@@ -954,6 +961,7 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
  * Returns: 0 on success, negative error code on failure.
  */
 static int gen7_append_oa_reports(struct i915_perf_stream *stream,
+				  u32 oastatus1,
 				  char __user *buf,
 				  size_t count,
 				  size_t *offset)
@@ -998,6 +1006,21 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 			  head, tail))
 		return -EIO;
 
+	/*
+	 * If there is nothing to read, don't append the status report yet,
+	 * wait until we have some data available.
+	 */
+	if (!OA_TAKEN(tail, head))
+		return 0;
+
+	if (unlikely(oastatus1 & GEN7_OASTATUS1_REPORT_LOST)) {
+		ret = append_oa_status(stream, buf, count, offset,
+				       DRM_I915_PERF_RECORD_OA_REPORT_LOST);
+		if (ret)
+			return ret;
+		stream->perf->gen7_latched_oastatus1 |=
+			GEN7_OASTATUS1_REPORT_LOST;
+	}
 
 	for (/* none */;
 	     (taken = OA_TAKEN(tail, head));
@@ -1133,16 +1156,7 @@ static int gen7_oa_read(struct i915_perf_stream *stream,
 		oastatus1 = intel_uncore_read(uncore, GEN7_OASTATUS1);
 	}
 
-	if (unlikely(oastatus1 & GEN7_OASTATUS1_REPORT_LOST)) {
-		ret = append_oa_status(stream, buf, count, offset,
-				       DRM_I915_PERF_RECORD_OA_REPORT_LOST);
-		if (ret)
-			return ret;
-		stream->perf->gen7_latched_oastatus1 |=
-			GEN7_OASTATUS1_REPORT_LOST;
-	}
-
-	return gen7_append_oa_reports(stream, buf, count, offset);
+	return gen7_append_oa_reports(stream, oastatus1, buf, count, offset);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
