Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B451775BC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 13:15:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 326686EA46;
	Tue,  3 Mar 2020 12:15:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35FCD6EA2C;
 Tue,  3 Mar 2020 12:15:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 04:15:24 -0800
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="412722434"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 04:15:22 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  3 Mar 2020 13:15:08 +0100
Message-Id: <20200303121509.29662-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200303121509.29662-1-janusz.krzysztofik@linux.intel.com>
References: <20200303121509.29662-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 1/2] tests/gem_userptr_blits: Refresh
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
index fcad374ef..efe34c512 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -1222,7 +1222,7 @@ static void sigjmp_handler(int sig)
 	siglongjmp(sigjmp, sig);
 }
 
-static void test_readonly_mmap(int i915)
+static void test_readonly_mmap(int i915, const struct mmap_offset *t)
 {
 	char *original, *result;
 	uint32_t handle;
@@ -1239,6 +1239,14 @@ static void test_readonly_mmap(int i915)
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
@@ -1252,11 +1260,11 @@ static void test_readonly_mmap(int i915)
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
@@ -2052,8 +2060,11 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
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
