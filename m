Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 592021866D9
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 09:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A199889F9F;
	Mon, 16 Mar 2020 08:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5B706E393;
 Mon, 16 Mar 2020 08:46:04 +0000 (UTC)
IronPort-SDR: 0XlVAtMWQlS6wBUOUq/3Qb7Yzi/LSJ/RWnk5E9k87/RzHPKR7XXPaWDE7Aa+ERa6nFvrzeEi+k
 3TGMtgbX/ojg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 01:46:04 -0700
IronPort-SDR: 0a/UY/vutT7KL2M3fDrzuXBenb9BYWo/e8tZmUx7k7jlb6GuWSnflQorQ58PXqbgmG8BeZFOrK
 p8LAq162XuVw==
X-IronPort-AV: E=Sophos;i="5.70,559,1574150400"; d="scan'208";a="417069105"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 01:46:02 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 16 Mar 2020 09:45:43 +0100
Message-Id: <20200316084543.15421-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200316084543.15421-1-janusz.krzysztofik@linux.intel.com>
References: <20200316084543.15421-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RESUBMIT PATCH 2/2] tests/gem_userptr_blits: Refresh
 other now MMAP_GTT dependent subtests
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

Extend initial check for support of MMAP_GTT mapping to userptr with
equivalent checks for each MMAP_OFFSET mapping type supported by i915
driver.  Based on that, extend coverage of process-exit-gtt* subtests
over non-GTT mapping types.  In case of dmabuf-* subtests, use first
supported mapping type if there are any.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_userptr_blits.c | 108 ++++++++++++++++++++++++---------
 1 file changed, 79 insertions(+), 29 deletions(-)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index 975cd9dab..475200930 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -73,18 +73,30 @@
 
 static uint32_t userptr_flags = LOCAL_I915_USERPTR_UNSYNCHRONIZED;
 
-static bool can_gtt_mmap;
+static bool *can_mmap;
 
 #define WIDTH 512
 #define HEIGHT 512
 
 static uint32_t linear[WIDTH*HEIGHT];
 
-static bool has_gtt_mmap(int i915)
+static bool has_mmap(int i915, const struct mmap_offset *t)
 {
 	void *ptr, *map = NULL;
 	uint32_t handle;
 
+	handle = gem_create(i915, PAGE_SIZE);
+	map = __gem_mmap_offset(i915, handle, 0, PAGE_SIZE, PROT_WRITE,
+				t->type);
+	gem_close(i915, handle);
+	if (map) {
+		munmap(map, PAGE_SIZE);
+	} else {
+		igt_debug("no HW / kernel support for mmap-offset(%s)\n",
+			  t->name);
+		return false;
+	}
+
 	igt_assert(posix_memalign(&ptr, PAGE_SIZE, PAGE_SIZE) == 0);
 
 	if (__gem_userptr(i915, ptr, 4096, 0,
@@ -92,9 +104,12 @@ static bool has_gtt_mmap(int i915)
 		goto out_ptr;
 	igt_assert(handle != 0);
 
-	map = __gem_mmap__gtt(i915, handle, 4096, PROT_WRITE);
+	map = __gem_mmap_offset(i915, handle, 0, 4096, PROT_WRITE, t->type);
 	if (map)
 		munmap(map, 4096);
+	else if (errno == ENODEV)
+		igt_debug("mmap-offset(%s) banned, lockdep loop prevention\n",
+			  t->name);
 
 	gem_close(i915, handle);
 out_ptr:
@@ -642,20 +657,25 @@ static int test_invalid_mapping(int fd, const struct mmap_offset *t)
 	return 0;
 }
 
-#define PE_GTT_MAP 0x1
-#define PE_BUSY 0x2
-static void test_process_exit(int fd, int flags)
+#define PE_BUSY 0x1
+static void test_process_exit(int fd, const struct mmap_offset *mmo, int flags)
 {
-	if (flags & PE_GTT_MAP)
-		igt_require(can_gtt_mmap);
+	if (mmo)
+		igt_require_f(can_mmap[mmo->type],
+			      "HW & kernel support for LLC and mmap-offset(%s) over userptr\n",
+			      mmo->name);
 
 	igt_fork(child, 1) {
 		uint32_t handle;
 
 		handle = create_userptr_bo(fd, sizeof(linear));
 
-		if (flags & PE_GTT_MAP) {
-			uint32_t *ptr = __gem_mmap__gtt(fd, handle, sizeof(linear), PROT_READ | PROT_WRITE);
+		if (mmo) {
+			uint32_t *ptr;
+
+			ptr = __gem_mmap_offset(fd, handle, 0, sizeof(linear),
+						PROT_READ | PROT_WRITE,
+						mmo->type);
 			if (ptr)
 				*ptr = 0;
 		}
@@ -933,13 +953,14 @@ static void (* volatile orig_sigbus)(int sig, siginfo_t *info, void *param);
 static volatile unsigned long sigbus_start;
 static volatile long sigbus_cnt = -1;
 
-static void *umap(int fd, uint32_t handle)
+static void *umap(int fd, uint32_t handle, const struct mmap_offset *mmo)
 {
 	void *ptr;
 
-	if (can_gtt_mmap) {
-		ptr = gem_mmap__gtt(fd, handle, sizeof(linear),
-				    PROT_READ | PROT_WRITE);
+	if (mmo) {
+		ptr = __gem_mmap_offset(fd, handle, 0, sizeof(linear),
+					PROT_READ | PROT_WRITE, mmo->type);
+		igt_assert(ptr);
 	} else {
 		uint32_t tmp = gem_create(fd, sizeof(linear));
 		igt_assert_eq(copy(fd, tmp, handle), 0);
@@ -951,16 +972,17 @@ static void *umap(int fd, uint32_t handle)
 }
 
 static void
-check_bo(int fd1, uint32_t handle1, int is_userptr, int fd2, uint32_t handle2)
+check_bo(int fd1, uint32_t handle1, int is_userptr, int fd2, uint32_t handle2,
+	 const struct mmap_offset *mmo)
 {
 	unsigned char *ptr1, *ptr2;
 	unsigned long size = sizeof(linear);
 
-	ptr2 = umap(fd2, handle2);
+	ptr2 = umap(fd2, handle2, mmo);
 	if (is_userptr)
 		ptr1 = is_userptr > 0 ? get_handle_ptr(handle1) : ptr2;
 	else
-		ptr1 = umap(fd1, handle1);
+		ptr1 = umap(fd1, handle1, mmo);
 
 	igt_assert(ptr1);
 	igt_assert(ptr2);
@@ -968,7 +990,7 @@ check_bo(int fd1, uint32_t handle1, int is_userptr, int fd2, uint32_t handle2)
 	sigbus_start = (unsigned long)ptr2;
 	igt_assert(memcmp(ptr1, ptr2, sizeof(linear)) == 0);
 
-	if (can_gtt_mmap) {
+	if (mmo) {
 		counter++;
 		memset(ptr1, counter, size);
 		memset(ptr2, counter, size);
@@ -1026,9 +1048,17 @@ static int test_dmabuf(void)
 	uint32_t handle, handle_import;
 	int dma_buf_fd = -1;
 	int ret;
+	const struct mmap_offset *mmo = NULL;
 
 	fd1 = drm_open_driver(DRIVER_INTEL);
 
+	for_each_mmap_offset_type(fd1, t)
+		if (can_mmap[t->type]) {
+			igt_debug("using mmap-offset(%s)\n", t->name);
+			mmo = t;
+			break;
+	}
+
 	handle = create_userptr_bo(fd1, sizeof(linear));
 	memset(get_handle_ptr(handle), counter, sizeof(linear));
 
@@ -1045,17 +1075,17 @@ static int test_dmabuf(void)
 
 	fd2 = drm_open_driver(DRIVER_INTEL);
 	handle_import = prime_fd_to_handle(fd2, dma_buf_fd);
-	check_bo(fd1, handle, 1, fd2, handle_import);
+	check_bo(fd1, handle, 1, fd2, handle_import, mmo);
 
 	/* close dma_buf, check whether nothing disappears. */
 	close(dma_buf_fd);
-	check_bo(fd1, handle, 1, fd2, handle_import);
+	check_bo(fd1, handle, 1, fd2, handle_import, mmo);
 
 	/* destroy userptr object and expect SIGBUS */
 	free_userptr_bo(fd1, handle);
 	close(fd1);
 
-	if (can_gtt_mmap) {
+	if (mmo) {
 		struct sigaction sigact, orig_sigact;
 
 		memset(&sigact, 0, sizeof(sigact));
@@ -1067,7 +1097,7 @@ static int test_dmabuf(void)
 		orig_sigbus = orig_sigact.sa_sigaction;
 
 		sigbus_cnt = 0;
-		check_bo(fd2, handle_import, -1, fd2, handle_import);
+		check_bo(fd2, handle_import, -1, fd2, handle_import, mmo);
 		igt_assert(sigbus_cnt > 0);
 
 		ret = sigaction(SIGBUS, &orig_sigact, NULL);
@@ -2030,12 +2060,23 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 	int size = sizeof(linear);
 
 	igt_fixture {
+		unsigned int mmo_max = 0;
+
 		fd = drm_open_driver(DRIVER_INTEL);
 		igt_assert(fd >= 0);
 		igt_require_gem(fd);
 		gem_require_blitter(fd);
 
-		can_gtt_mmap = has_gtt_mmap(fd) && gem_has_llc(fd);
+		for_each_mmap_offset_type(fd, t)
+			if (t->type >= mmo_max)
+				mmo_max = t->type + 1;
+		igt_assert(mmo_max);
+
+		can_mmap = calloc(mmo_max, sizeof(*can_mmap));
+		igt_assert(can_mmap);
+
+		for_each_mmap_offset_type(fd, t)
+			can_mmap[t->type] = has_mmap(fd, t) && gem_has_llc(fd);
 
 		size = sizeof(linear);
 
@@ -2193,16 +2234,22 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 		}
 
 		igt_subtest("process-exit")
-			test_process_exit(fd, 0);
+			test_process_exit(fd, NULL, 0);
 
-		igt_subtest("process-exit-gtt")
-			test_process_exit(fd, PE_GTT_MAP);
+		igt_describe("Test process exit with userptr object mmapped via mmap-offset");
+		igt_subtest_with_dynamic("process-exit-mmap")
+			for_each_mmap_offset_type(fd, t)
+				igt_dynamic(t->name)
+					test_process_exit(fd, t, 0);
 
 		igt_subtest("process-exit-busy")
-			test_process_exit(fd, PE_BUSY);
+			test_process_exit(fd, NULL, PE_BUSY);
 
-		igt_subtest("process-exit-gtt-busy")
-			test_process_exit(fd, PE_GTT_MAP | PE_BUSY);
+		igt_describe("Test process exit with busy userptr object mmapped via mmap-offset");
+		igt_subtest_with_dynamic("process-exit-mmap-busy")
+			for_each_mmap_offset_type(fd, t)
+				igt_dynamic(t->name)
+					test_process_exit(fd, t, PE_BUSY);
 
 		igt_subtest("create-destroy-sync")
 			test_create_destroy(fd, 5);
@@ -2325,4 +2372,7 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 
 	igt_subtest("access-control")
 		test_access_control(fd);
+
+	igt_fixture
+		free(can_mmap);
 }
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
