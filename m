Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD6E37AC6A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EFB26E7D1;
	Tue, 11 May 2021 16:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 969FD6EA91;
 Tue, 11 May 2021 16:51:45 +0000 (UTC)
IronPort-SDR: KWtehvvVcpVqWop6MzxKqOaH3g58av9EQ+CEJXzee34X3KGp3PLMrz9odbTrzngafLY8R/QLev
 YUVtCsDw65eg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="179754352"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="179754352"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:40 -0700
IronPort-SDR: iZpGC53iYpZ1ilowMy7FXhTnbr3/9kIdnoEobvaD8FQN13l4EBKvUuQcIKRHoE2edkxO11U7QH
 X0CHiKWlrd3A==
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="537104766"
Received: from rdavies-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.2.133])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:37 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 11 May 2021 17:51:09 +0100
Message-Id: <20210511165117.428062-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511165117.428062-1-matthew.auld@intel.com>
References: <20210511165117.428062-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 04/12] tests/i915/gem_exec_basic: Use
 memory region interface
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
Cc: thomas.hellstrom@linux.intel.com,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>,
 intel-gfx@lists.freedesktop.org, Andrzej Turko <andrzej.turko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Andrzej Turko <andrzej.turko@linux.intel.com>

Converted the test gem_exec_basic to use the memory region uapi.

Signed-off-by: Andrzej Turko <andrzej.turko@linux.intel.com>
Cc: Zbigniew Kempczynski <zbigniew.kempczynski@intel.com>
Cc: Dominik Grzegorzek <dominik.grzegorzek@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 tests/i915/gem_exec_basic.c | 50 +++++++++++++++++++++++++------------
 1 file changed, 34 insertions(+), 16 deletions(-)

diff --git a/tests/i915/gem_exec_basic.c b/tests/i915/gem_exec_basic.c
index 5021852f..d1569781 100644
--- a/tests/i915/gem_exec_basic.c
+++ b/tests/i915/gem_exec_basic.c
@@ -22,17 +22,18 @@
  */
 
 #include "igt.h"
+#include "igt_collection.h"
 
 #include "i915/gem_create.h"
 
 IGT_TEST_DESCRIPTION("Basic sanity check of execbuf-ioctl rings.");
 
-static uint32_t batch_create(int fd)
+static uint32_t batch_create(int fd, uint32_t batch_size, uint32_t region)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
 	uint32_t handle;
 
-	handle = gem_create(fd, 4096);
+	handle = gem_create_in_memory_regions(fd, batch_size, region);
 	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
 
 	return handle;
@@ -41,36 +42,53 @@ static uint32_t batch_create(int fd)
 igt_main
 {
 	const struct intel_execution_engine2 *e;
+	struct local_drm_i915_query_memory_regions *query_info;
+	struct igt_collection *regions, *set;
+	uint32_t batch_size;
 	int fd = -1;
 
 	igt_fixture {
 		fd = drm_open_driver(DRIVER_INTEL);
 		/* igt_require_gem(fd); // test is mandatory */
 		igt_fork_hang_detector(fd);
+
+		query_info = gem_get_query_memory_regions(fd);
+		igt_assert(query_info);
+
+		set = get_memory_region_set(query_info,
+					    I915_SYSTEM_MEMORY);
 	}
 
 	igt_subtest_with_dynamic("basic") {
-		struct drm_i915_gem_exec_object2 exec = {
-			.handle = batch_create(fd),
-		};
+		for_each_combination(regions, 1, set) {
+			char *sub_name = memregion_dynamic_subtest_name(regions);
+			struct drm_i915_gem_exec_object2 exec;
+			uint32_t region = igt_collection_get_value(regions, 0);
 
-		__for_each_physical_engine(fd, e) {
-			igt_dynamic_f("%s", e->name) {
-				struct drm_i915_gem_execbuffer2 execbuf = {
-					.buffers_ptr = to_user_pointer(&exec),
-					.buffer_count = 1,
-					.flags = e->flags,
-				};
+			batch_size = gem_get_batch_size(fd, MEMORY_TYPE_FROM_REGION(region));
+			memset(&exec, 0, sizeof(exec));
+			exec.handle = batch_create(fd, batch_size, region);
 
-				gem_execbuf(fd, &execbuf);
+			__for_each_physical_engine(fd, e) {
+				igt_dynamic_f("%s-%s", e->name, sub_name) {
+					struct drm_i915_gem_execbuffer2 execbuf = {
+						.buffers_ptr = to_user_pointer(&exec),
+						.buffer_count = 1,
+						.flags = e->flags,
+					};
+
+					gem_execbuf(fd, &execbuf);
+				}
 			}
+			gem_sync(fd, exec.handle); /* catch any GPU hang */
+			gem_close(fd, exec.handle);
+			free(sub_name);
 		}
-
-		gem_sync(fd, exec.handle); /* catch any GPU hang */
-		gem_close(fd, exec.handle);
 	}
 
 	igt_fixture {
+		free(query_info);
+		igt_collection_destroy(set);
 		igt_stop_hang_detector();
 		close(fd);
 	}
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
