Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 196511866D8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 09:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2CC6E38A;
	Mon, 16 Mar 2020 08:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86AA66E37F;
 Mon, 16 Mar 2020 08:46:02 +0000 (UTC)
IronPort-SDR: DR+l4DWfAbBiSQG5EAwGDOQuaYIwpUt56j2mFJj4DuoGWB7ZV4Um8OJqzvjpLpNE1ZFtPZanfn
 2Sy8krCS5vRg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 01:46:02 -0700
IronPort-SDR: SEvs8zTzfFVepyRS1niak+DpPnFx8bMBnjW3oJF1jezhQmD6WSteEvwFgK3DRb3p6JaLfaF6Bb
 hNbhxh5NBXZw==
X-IronPort-AV: E=Sophos;i="5.70,559,1574150400"; d="scan'208";a="417069096"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 01:46:00 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 16 Mar 2020 09:45:42 +0100
Message-Id: <20200316084543.15421-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200316084543.15421-1-janusz.krzysztofik@linux.intel.com>
References: <20200316084543.15421-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RESUBMIT PATCH 1/2] tests/gem_userptr_blits: Refresh
 readonly-mmap-unsync exercise
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

Upgrade the subtest to use MMAP_GTT API v4 (aka MMAP_OFFSET),
dynamically examine each mapping type supported by i915 driver.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_userptr_blits.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index beced298a..975cd9dab 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -1277,7 +1277,7 @@ static void sigjmp_handler(int sig)
 	siglongjmp(sigjmp, sig);
 }
 
-static void test_readonly_mmap(int i915)
+static void test_readonly_mmap(int i915, const struct mmap_offset *t)
 {
 	char *original, *result;
 	uint32_t handle;
@@ -1294,6 +1294,14 @@ static void test_readonly_mmap(int i915)
 	 * on the GPU as well.
 	 */
 
+	handle = gem_create(i915, PAGE_SIZE);
+	ptr = __gem_mmap_offset(i915, handle, 0, PAGE_SIZE,
+				PROT_READ | PROT_WRITE, t->type);
+	gem_close(i915, handle);
+	igt_require_f(ptr, "HW & kernel support for mmap-offset(%s)\n",
+		      t->name);
+	munmap(ptr, PAGE_SIZE);
+
 	igt_require(igt_setup_clflush());
 
 	sz = 16 << 12;
@@ -1307,11 +1315,11 @@ static void test_readonly_mmap(int i915)
 	igt_clflush_range(pages, sz);
 	original = g_compute_checksum_for_data(G_CHECKSUM_SHA1, pages, sz);
 
-	ptr = __gem_mmap__gtt(i915, handle, sz, PROT_WRITE);
+	ptr = __gem_mmap_offset(i915, handle, 0, sz, PROT_WRITE, t->type);
 	igt_assert(ptr == NULL);
 
 	/* Optional kernel support for GTT mmaps of userptr */
-	ptr = __gem_mmap__gtt(i915, handle, sz, PROT_READ);
+	ptr = __gem_mmap_offset(i915, handle, 0, sz, PROT_READ, t->type);
 	gem_close(i915, handle);
 
 	if (ptr) { /* Check that a write into the GTT readonly map fails */
@@ -2110,8 +2118,11 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 		igt_subtest("readonly-unsync")
 			test_readonly(fd);
 
-		igt_subtest("readonly-mmap-unsync")
-			test_readonly_mmap(fd);
+		igt_describe("Examine mmap-offset mapping to read-only userptr");
+		igt_subtest_with_dynamic("readonly-mmap-unsync")
+			for_each_mmap_offset_type(fd, t)
+				igt_dynamic(t->name)
+					test_readonly_mmap(fd, t);
 
 		igt_subtest("readonly-pwrite-unsync")
 			test_readonly_pwrite(fd);
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
