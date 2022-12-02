Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EE4640651
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 13:03:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCC210E6E7;
	Fri,  2 Dec 2022 12:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C2F910E6E8;
 Fri,  2 Dec 2022 12:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669982577; x=1701518577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8eFGMLUUkte6rhiMNUFMGgTLUnuoLJvZ3qGx13u0Ey8=;
 b=RzRQcpYhJGGvfpIvznGJGitNMXi2S+3chba+mmsDf+j4HBxUtyJ7kp8d
 qos0lkEvyG0Ncu2V83JmXBewCYFuKlyP3XjRYV8E8jzfgNO4gCxYMRwSj
 iLDMv8Dyz4j89gGhuGNrNjaTy0bB9ECWnX+STQxqiFFzI63b7MGXrTq7x
 S/Q8ltUq6Pfg/LzlVfVjZCEnp0bubxO6rTVooOsLgoWW0A/DoOayAxk/4
 T6ZGlXv3kDOuD3vfFOGDBnQV0hOQBY3UbBj/Lt0gT3UCnjj8PFxbx8wjf
 fzXla3S9Bf3PeoNNaNqjWH5ohEAMf6S2QnaXGumM+FI8JW/PvtHyiD36r w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="342876068"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="342876068"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 04:02:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="751238148"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="751238148"
Received: from ctfarrel-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.18.53])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 04:02:55 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  2 Dec 2022 12:02:42 +0000
Message-Id: <20221202120242.425128-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221202120242.425128-1-matthew.auld@intel.com>
References: <20221202120242.425128-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 2/2] tests/i915/gem_exec_balancer:
 exercise dmabuf import
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With parallel submission it should be easy to get a fence array as the
output fence. Try importing this into dma-buf reservation object, to see
if anything explodes.

v2: (Kamil)
 - Use ifdef __linux__ for linux headers
 - Add igt_describe() for new test

References: https://gitlab.freedesktop.org/drm/intel/-/issues/7532
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 tests/i915/gem_exec_balancer.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index 4300dbd1..d7acdca1 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -27,6 +27,7 @@
 #include <sys/signal.h>
 #include <poll.h>
 
+#include "dmabuf_sync_file.h"
 #include "i915/gem.h"
 #include "i915/gem_engine_topology.h"
 #include "i915/gem_create.h"
@@ -2856,6 +2857,7 @@ static void logical_sort_siblings(int i915,
 #define PARALLEL_SUBMIT_FENCE		(0x1 << 3)
 #define PARALLEL_CONTEXTS		(0x1 << 4)
 #define PARALLEL_VIRTUAL		(0x1 << 5)
+#define PARALLEL_OUT_FENCE_DMABUF	(0x1 << 6)
 
 static void parallel_thread(int i915, unsigned int flags,
 			    struct i915_engine_class_instance *siblings,
@@ -2871,6 +2873,8 @@ static void parallel_thread(int i915, unsigned int flags,
 	uint32_t target_bo_idx = 0;
 	uint32_t first_bb_idx = 1;
 	intel_ctx_cfg_t cfg;
+	uint32_t dmabuf_handle;
+	int dmabuf;
 
 	igt_assert(bb_per_execbuf < 32);
 
@@ -2924,11 +2928,20 @@ static void parallel_thread(int i915, unsigned int flags,
 	execbuf.buffers_ptr = to_user_pointer(obj);
 	execbuf.rsvd1 = ctx->id;
 
+	if (flags & PARALLEL_OUT_FENCE_DMABUF) {
+		dmabuf_handle = gem_create(i915, 4096);
+		dmabuf = prime_handle_to_fd(i915, dmabuf_handle);
+	}
+
 	for (n = 0; n < PARALLEL_BB_LOOP_COUNT; ++n) {
 		execbuf.flags &= ~0x3full;
 		gem_execbuf_wr(i915, &execbuf);
 
 		if (flags & PARALLEL_OUT_FENCE) {
+			if (flags & PARALLEL_OUT_FENCE_DMABUF)
+				dmabuf_import_sync_file(dmabuf, DMA_BUF_SYNC_WRITE,
+							execbuf.rsvd2 >> 32);
+
 			igt_assert_eq(sync_fence_wait(execbuf.rsvd2 >> 32,
 						      1000), 0);
 			igt_assert_eq(sync_fence_status(execbuf.rsvd2 >> 32), 1);
@@ -2959,6 +2972,11 @@ static void parallel_thread(int i915, unsigned int flags,
 	if (fence)
 		close(fence);
 
+	if (flags & PARALLEL_OUT_FENCE_DMABUF) {
+		gem_close(i915, dmabuf_handle);
+		close(dmabuf);
+	}
+
 	check_bo(i915, obj[target_bo_idx].handle,
 		 bb_per_execbuf * PARALLEL_BB_LOOP_COUNT, true);
 
@@ -3420,6 +3438,11 @@ igt_main
 		igt_subtest("parallel-out-fence")
 			parallel(i915, PARALLEL_OUT_FENCE);
 
+		igt_describe("Regression test to check that dmabuf imported sync file can handle fence array");
+		igt_subtest("parallel-dmabuf-import-out-fence")
+			parallel(i915, PARALLEL_OUT_FENCE |
+				 PARALLEL_OUT_FENCE_DMABUF);
+
 		igt_subtest("parallel-keep-in-fence")
 			parallel(i915, PARALLEL_OUT_FENCE | PARALLEL_IN_FENCE);
 
-- 
2.38.1

