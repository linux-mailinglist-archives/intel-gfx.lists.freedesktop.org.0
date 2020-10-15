Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE05428F1B9
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 14:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9538C6ECD7;
	Thu, 15 Oct 2020 12:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3826ECC4
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 12:00:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22723896-1500050 
 for multiple; Thu, 15 Oct 2020 12:59:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 12:59:54 +0100
Message-Id: <20201015115954.871-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201015115820.665-1-chris@chris-wilson.co.uk>
References: <20201015115820.665-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Support parsing of oversize
 batches
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Matthew Auld noted that on more recent systems (such as the parser for
gen9) we may have objects that are larger than expected by the GEM uAPI
(i.e. greater than u32). These objects would have incorrect implicit
batch lengths, causing the parser to reject them for being incomplete,
or worse.

Based on a patch by Matthew Auld.

Reported-by: Matthew Auld <matthew.auld@intel.com>
Fixes: 435e8fc059db ("drm/i915: Allow parsing of unsized batches")
Testcase: igt/gem_exec_params/larger-than-life-batch
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 4b09bcd70cf4..44b4558d5e86 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -287,8 +287,8 @@ struct i915_execbuffer {
 	u64 invalid_flags; /** Set of execobj.flags that are invalid */
 	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
 
+	u64 batch_len; /** Length of batch within object */
 	u32 batch_start_offset; /** Location within object of batch */
-	u32 batch_len; /** Length of batch within object */
 	u32 batch_flags; /** Flags composed for emit_bb_start() */
 	struct intel_gt_buffer_pool_node *batch_pool; /** pool node for batch buffer */
 
@@ -871,6 +871,10 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 
 	if (eb->batch_len == 0)
 		eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;
+	if (eb->batch_len == 0) {
+		drm_dbg(&i915->drm, "Invalid batch length\n");
+		return -EINVAL;
+	}
 
 	return 0;
 
@@ -2424,7 +2428,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 	struct drm_i915_private *i915 = eb->i915;
 	struct intel_gt_buffer_pool_node *pool = eb->batch_pool;
 	struct i915_vma *shadow, *trampoline, *batch;
-	unsigned int len;
+	unsigned long len = eb->batch_len;
 	int err;
 
 	if (!eb_use_cmdparser(eb)) {
@@ -2435,7 +2439,6 @@ static int eb_parse(struct i915_execbuffer *eb)
 		goto secure_batch;
 	}
 
-	len = eb->batch_len;
 	if (!CMDPARSER_USES_GGTT(eb->i915)) {
 		/*
 		 * ppGTT backed shadow buffers must be mapped RO, to prevent
@@ -2449,6 +2452,8 @@ static int eb_parse(struct i915_execbuffer *eb)
 	} else {
 		len += I915_CMD_PARSER_TRAMPOLINE_SIZE;
 	}
+	if (len < eb->batch_len)
+		return -EINVAL;
 
 	if (!pool) {
 		pool = intel_gt_get_buffer_pool(eb->engine->gt, len);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
