Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 132EB179A74
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 21:52:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 679716EB66;
	Wed,  4 Mar 2020 20:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DEBE6E0FF;
 Wed,  4 Mar 2020 20:52:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 12:52:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,515,1574150400"; d="scan'208";a="274813499"
Received: from ntitus-mobl1.ti.intel.com (HELO mwahaha-bdw.ger.corp.intel.com)
 ([10.252.24.210])
 by fmsmga002.fm.intel.com with ESMTP; 04 Mar 2020 12:52:43 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  4 Mar 2020 20:52:43 +0000
Message-Id: <20200304205243.106854-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] i915/gem_exec_params: add
 test_invalid_batch_start
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

Sanity check that kernel rejects too large batch_start_offset.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_params.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/tests/i915/gem_exec_params.c b/tests/i915/gem_exec_params.c
index cf7ea306..afc8d2c7 100644
--- a/tests/i915/gem_exec_params.c
+++ b/tests/i915/gem_exec_params.c
@@ -268,6 +268,23 @@ static void mmapped(int i915)
 	gem_close(i915, buf);
 }
 
+static void test_invalid_batch_start(int fd)
+{
+	struct drm_i915_gem_exec_object2 exec = {
+		.handle = batch_create(fd),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&exec),
+		.buffer_count = 1,
+		.batch_start_offset = 4096, /* space jump */
+	};
+
+	igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
+
+	gem_sync(fd, exec.handle);
+	gem_close(fd, exec.handle);
+}
+
 struct drm_i915_gem_execbuffer2 execbuf;
 struct drm_i915_gem_exec_object2 gem_exec[1];
 uint32_t batch[2] = {MI_BATCH_BUFFER_END};
@@ -507,6 +524,9 @@ igt_main
 	igt_subtest("batch-first")
 		test_batch_first(fd);
 
+	igt_subtest("invalid-batch-start-offset")
+		test_invalid_batch_start(fd);
+
 #define DIRT(name) \
 	igt_subtest(#name "-dirt") { \
 		execbuf.flags = 0; \
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
