Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D37119197E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 19:55:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 157DB6E513;
	Tue, 24 Mar 2020 18:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 332006E513
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 18:54:59 +0000 (UTC)
IronPort-SDR: PCBJ49e7JVGkxe1yd4KNNsLEW3+gikxTaqCTG9qKfPUSly+BwVR4Ale7CMe+hYMyTTuZoFg+SH
 BrpKleRNJ7cQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 11:54:58 -0700
IronPort-SDR: vMvOW7S6V2EywwqnLcDSik4uM7BTVAQAqi7UOtBiqyLA9popdaQS4GhIKLM258s6SrM1/aSm6D
 v/TRcrKIPahw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,301,1580803200"; d="scan'208";a="246817667"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by orsmga003.jf.intel.com with ESMTP; 24 Mar 2020 11:54:57 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 24 Mar 2020 11:54:56 -0700
Message-Id: <20200324185457.14635-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200324185457.14635-1-umesh.nerlige.ramappa@intel.com>
References: <20200324185457.14635-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/perf: move pollin setup to non hw
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
v3: Remove comment, pollin is a per stream state already (Ashutosh)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 4583ae9b77be..4cadf97f94bc 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1418,8 +1418,6 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
 	 * memory...
 	 */
 	memset(stream->oa_buffer.vaddr, 0, OA_BUFFER_SIZE);
-
-	stream->pollin = false;
 }
 
 static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
@@ -1474,8 +1472,6 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	 * memory...
 	 */
 	memset(stream->oa_buffer.vaddr, 0, OA_BUFFER_SIZE);
-
-	stream->pollin = false;
 }
 
 static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
@@ -1531,8 +1527,6 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 */
 	memset(stream->oa_buffer.vaddr, 0,
 	       stream->oa_buffer.vma->size);
-
-	stream->pollin = false;
 }
 
 static int alloc_oa_buffer(struct i915_perf_stream *stream)
@@ -2600,6 +2594,8 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
  */
 static void i915_oa_stream_enable(struct i915_perf_stream *stream)
 {
+	stream->pollin = false;
+
 	stream->perf->ops.oa_enable(stream);
 
 	if (stream->periodic)
@@ -3023,12 +3019,8 @@ static ssize_t i915_perf_read(struct file *file,
 	 * effectively ensures we back off until the next hrtimer callback
 	 * before reporting another EPOLLIN event.
 	 */
-	if (ret >= 0 || ret == -EAGAIN) {
-		/* Maybe make ->pollin per-stream state if we support multiple
-		 * concurrent streams in the future.
-		 */
+	if (ret >= 0 || ret == -EAGAIN)
 		stream->pollin = false;
-	}
 
 	return ret;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
