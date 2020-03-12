Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A844A183CFF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 00:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 864286E261;
	Thu, 12 Mar 2020 23:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 896166E12C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 23:05:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 16:05:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="243193470"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga003.jf.intel.com with ESMTP; 12 Mar 2020 16:05:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 12 Mar 2020 16:05:00 -0700
Message-Id: <20200312230502.36898-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200312230502.36898-1-umesh.nerlige.ramappa@intel.com>
References: <20200312230502.36898-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/perf: move pollin setup to non hw
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
