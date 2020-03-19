Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A42A18C353
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 23:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 038BF6EA9D;
	Thu, 19 Mar 2020 22:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F18236EA9A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 22:52:05 +0000 (UTC)
IronPort-SDR: MzD6im07aOoYi6yqM/emA8DPHQKJkmw6W/UFaGbgJcRir5Pogv88RiHY5wMK85ITjGKFBWavbG
 5d5T0KgfOhXg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 15:52:05 -0700
IronPort-SDR: Vv/EaSXU/hI2d2kDD6OEhkvrgehdCfi1zn0x4A/OqxxBBQnBIhtcDWEGgfyGCLHHk57Yv/I8ZP
 MMEjTabiJtCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,573,1574150400"; d="scan'208";a="446464404"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga006.fm.intel.com with ESMTP; 19 Mar 2020 15:52:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Thu, 19 Mar 2020 15:52:02 -0700
Message-Id: <20200319225203.29679-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200319225203.29679-1-umesh.nerlige.ramappa@intel.com>
References: <20200319225203.29679-1-umesh.nerlige.ramappa@intel.com>
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
index c1429d3acaf9..22a1a7300180 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1421,8 +1421,6 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
 	 * memory...
 	 */
 	memset(stream->oa_buffer.vaddr, 0, OA_BUFFER_SIZE);
-
-	stream->pollin = false;
 }
 
 static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
@@ -1477,8 +1475,6 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	 * memory...
 	 */
 	memset(stream->oa_buffer.vaddr, 0, OA_BUFFER_SIZE);
-
-	stream->pollin = false;
 }
 
 static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
@@ -1534,8 +1530,6 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 */
 	memset(stream->oa_buffer.vaddr, 0,
 	       stream->oa_buffer.vma->size);
-
-	stream->pollin = false;
 }
 
 static int alloc_oa_buffer(struct i915_perf_stream *stream)
@@ -2603,6 +2597,8 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
  */
 static void i915_oa_stream_enable(struct i915_perf_stream *stream)
 {
+	stream->pollin = false;
+
 	stream->perf->ops.oa_enable(stream);
 
 	if (stream->periodic)
@@ -3026,12 +3022,8 @@ static ssize_t i915_perf_read(struct file *file,
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
