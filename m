Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B52178580
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 23:19:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C4C86E976;
	Tue,  3 Mar 2020 22:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA306E96B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 22:19:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 14:19:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="232413671"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2020 14:19:05 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Tue,  3 Mar 2020 14:19:00 -0800
Message-Id: <20200303221905.25866-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/perf: move pollin setup to non hw
 specific code
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

This isn't really gen specific stuff, so just move it to the common
code.

v2: Rebase (Umesh)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 92c5c75e2a2b..0ec4546f1330 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1441,8 +1441,6 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
 	 * memory...
 	 */
 	memset(stream->oa_buffer.vaddr, 0, OA_BUFFER_SIZE);
-
-	stream->pollin = false;
 }
 
 static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
@@ -1497,8 +1495,6 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	 * memory...
 	 */
 	memset(stream->oa_buffer.vaddr, 0, OA_BUFFER_SIZE);
-
-	stream->pollin = false;
 }
 
 static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
@@ -1554,8 +1550,6 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 */
 	memset(stream->oa_buffer.vaddr, 0,
 	       stream->oa_buffer.vma->size);
-
-	stream->pollin = false;
 }
 
 static int alloc_oa_buffer(struct i915_perf_stream *stream)
@@ -2626,6 +2620,12 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
  */
 static void i915_oa_stream_enable(struct i915_perf_stream *stream)
 {
+	/*
+	 * Maybe make ->pollin per-stream state if we support multiple
+	 * concurrent streams in the future.
+	 */
+	stream->pollin = false;
+
 	stream->perf->ops.oa_enable(stream);
 
 	if (stream->periodic)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
