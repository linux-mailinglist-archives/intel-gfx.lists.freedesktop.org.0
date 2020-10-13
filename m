Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C904528CDD7
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 14:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A5C6E8CF;
	Tue, 13 Oct 2020 12:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C54A86E8C6;
 Tue, 13 Oct 2020 12:11:54 +0000 (UTC)
IronPort-SDR: 1hh+I99taqbevhtVhpfnZRtXIjq42gnNiyjMhHqWk8EQI+Pgst0ZVB86iO1nbwVoSBzzmYyifF
 UlKHC+LN4Jmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="227536539"
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="227536539"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 05:11:52 -0700
IronPort-SDR: pgrTxwE6GWu9FQMe/GuJxq9BGbSOgi9mKHz9Slk4Fa9d86qDlyz9djAzXPCuasi/w2HhII1tBu
 60Pf8knILwKw==
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="530373402"
Received: from jnavarro-mobl3.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.3.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 05:11:51 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 13 Oct 2020 13:11:39 +0100
Message-Id: <20201013121139.104017-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] tests/gem_exec_params: test overly large batch
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

See if can make something explode with too large batch (1ULL << 32),
while also making the batch_len implicit. We should also try each engine
since batch_len seems to have different interactions related to that.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 tests/i915/gem_exec_params.c | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_exec_params.c b/tests/i915/gem_exec_params.c
index f8a94074..e00bbd04 100644
--- a/tests/i915/gem_exec_params.c
+++ b/tests/i915/gem_exec_params.c
@@ -273,7 +273,7 @@ static void mmapped(int i915)
 	gem_close(i915, buf);
 }
 
-static uint32_t batch_create_size(int fd, uint32_t size)
+static uint32_t batch_create_size(int fd, uint64_t size)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
 	uint32_t handle;
@@ -317,6 +317,32 @@ static void test_invalid_batch_start(int fd)
 	gem_close(fd, exec.handle);
 }
 
+static void test_larger_than_life_batch(int fd)
+{
+       uint64_t size = 1ULL << 32; /* batch_len is __u32 as per the ABI */
+       struct drm_i915_gem_exec_object2 exec = {
+               .handle = batch_create_size(fd, size),
+       };
+       struct drm_i915_gem_execbuffer2 execbuf = {
+               .buffers_ptr = to_user_pointer(&exec),
+               .buffer_count = 1,
+       };
+
+       /*
+	* batch_len seems like it can have different interaction depending on
+	* the engine and HW.
+	*/
+       for_each_engine(e, fd) {
+	       execbuf.flags = eb_ring(e);
+	       /* Make the batch_len implicit */
+	       __gem_execbuf(fd, &execbuf);
+
+	       gem_sync(fd, exec.handle);
+       }
+
+       gem_close(fd, exec.handle);
+}
+
 struct drm_i915_gem_execbuffer2 execbuf;
 struct drm_i915_gem_exec_object2 gem_exec[1];
 uint32_t batch[2] = {MI_BATCH_BUFFER_END};
@@ -586,6 +612,9 @@ igt_main
 	igt_subtest("invalid-batch-start-offset")
 		test_invalid_batch_start(fd);
 
+	igt_subtest("larger-than-life-batch")
+		test_larger_than_life_batch(fd);
+
 #define DIRT(name) \
 	igt_subtest(#name "-dirt") { \
 		execbuf.flags = 0; \
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
