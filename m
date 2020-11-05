Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 960202A8643
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 19:44:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF326E138;
	Thu,  5 Nov 2020 18:44:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 626916E138;
 Thu,  5 Nov 2020 18:44:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22906830-1500050 
 for multiple; Thu, 05 Nov 2020 18:43:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Nov 2020 18:43:55 +0000
Message-Id: <20201105184355.97296-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_pread,
 gem_pwrite: Exercise exhaustion
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
Cc: igt-dev@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use userfault to arbitrarily delay the completion of copy_from_user() in
order to trap many, many threads inside the core of
gem_pread/gem_pwrite. This allows us to exhaust the preferred paths and
potentially trip over unexpected fallback paths.

Suggested-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_pread.c  | 157 ++++++++++++++++++++++++++++++++++-
 tests/i915/gem_pwrite.c | 178 +++++++++++++++++++++++++++++++++++++++-
 2 files changed, 333 insertions(+), 2 deletions(-)

diff --git a/tests/i915/gem_pread.c b/tests/i915/gem_pread.c
index 6d12b8e9f..ad3a068b1 100644
--- a/tests/i915/gem_pread.c
+++ b/tests/i915/gem_pread.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <linux/userfaultfd.h>
+
 #include "igt.h"
 #include <unistd.h>
 #include <stdlib.h>
@@ -34,11 +36,15 @@
 #include <fcntl.h>
 #include <inttypes.h>
 #include <errno.h>
-#include <sys/stat.h>
 #include <sys/ioctl.h>
+#include <sys/resource.h>
+#include <sys/stat.h>
 #include <sys/time.h>
+#include <pthread.h>
 #include "drm.h"
 
+#include "igt_vgem.h"
+
 #define MiB(x) ((x) * 1024 * 1024)
 
 typedef void *(*mmap_fn_t)(int, uint32_t, uint64_t, uint64_t, unsigned int);
@@ -72,6 +78,152 @@ static void pread_self(int i915)
 	}
 }
 
+static int userfaultfd(int flags)
+{
+	return syscall(SYS_userfaultfd, flags);
+}
+
+struct ufd_thread {
+	uint32_t *page;
+	int i915;
+	int vgem;
+	int err;
+};
+
+static uint32_t dmabuf_create_handle(int i915, int vgem)
+{
+	struct vgem_bo scratch;
+	uint32_t handle;
+	int dmabuf;
+
+	scratch.width = 64;
+	scratch.height = 64;
+	scratch.bpp = 32;
+	vgem_create(vgem, &scratch);
+
+	dmabuf = prime_handle_to_fd(vgem, scratch.handle);
+	handle = prime_fd_to_handle(i915, dmabuf);
+	close(dmabuf);
+
+	return handle;
+}
+
+static void *ufd_thread(void *arg)
+{
+	struct ufd_thread *t = arg;
+	uint32_t handle = dmabuf_create_handle(t->i915, t->vgem);
+
+	t->err = __gem_read(t->i915, handle, 0, t->page, 1);
+	gem_close(t->i915, handle);
+
+	return NULL;
+}
+
+static void write_value(const char *path, int value)
+{
+	char buf[80];
+	int fd, len;
+
+	len = sprintf(buf, "%d", value);
+	if (len < 0)
+		return;
+
+	fd = open(path, O_WRONLY);
+	if (fd != -1) {
+		write(fd, buf, len);
+		close(fd);
+	}
+}
+
+static void unlimited_processes(unsigned int limit)
+{
+	struct rlimit rlim;
+
+	write_value("/proc/sys/kernel/threads-max", 150000);
+	write_value("/proc/sys/vm/max_map_count", 500000);
+	write_value("/proc/sys/kernel/pid_max", 200000);
+
+	if (getrlimit(RLIMIT_NPROC, &rlim))
+		return;
+
+	rlim.rlim_cur = limit;
+	rlim.rlim_max = limit;
+	setrlimit(RLIMIT_NPROC, &rlim);
+}
+
+static void test_exhaustion(int i915)
+{
+	struct uffdio_api api = { .api = UFFD_API };
+	struct uffdio_register reg;
+	struct uffdio_copy copy;
+	struct ufd_thread t = {
+		.i915 = i915,
+		.vgem = drm_open_driver(DRIVER_VGEM),
+	};
+	struct uffd_msg msg;
+	unsigned long count;
+	pthread_t *thread;
+	char buf[4096];
+	int ufd;
+
+	unlimited_processes(1024 * 1024);
+
+	ufd = userfaultfd(0);
+	igt_require_f(ufd != -1, "kernel support for userfaultfd\n");
+	igt_require_f(ioctl(ufd, UFFDIO_API, &api) == 0 && api.api == UFFD_API,
+		      "userfaultfd API v%lld:%lld\n", UFFD_API, api.api);
+
+
+	t.page = mmap(NULL, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, 0, 0);
+	igt_assert(t.page != MAP_FAILED);
+
+	/* Register our fault handler for t.page */
+	memset(&reg, 0, sizeof(reg));
+	reg.mode = UFFDIO_REGISTER_MODE_MISSING;
+	reg.range.start = to_user_pointer(t.page);
+	reg.range.len = 4096;
+	do_ioctl(ufd, UFFDIO_REGISTER, &reg);
+	igt_assert(reg.ioctls == UFFD_API_RANGE_IOCTLS);
+
+	count = 0;
+	while (!READ_ONCE(t.err)) {
+		if (is_power_of_two(count)) {
+			unsigned long sz = count ? 2 * count : 1;
+			thread = realloc(thread, sz * sizeof(*thread));
+			igt_assert(thread);
+		}
+		if (pthread_create(&thread[count], NULL, ufd_thread, &t))
+			break;
+
+		if (count == 0) { /* Wait for the first userfault */
+			igt_assert_eq(read(ufd, &msg, sizeof(msg)), sizeof(msg));
+			igt_assert_eq(msg.event, UFFD_EVENT_PAGEFAULT);
+			igt_assert(from_user_pointer(msg.arg.pagefault.address) == t.page);
+		}
+
+		count++;
+	}
+	igt_assert(count);
+	if (t.err)
+		igt_warn("err:%d after %lu threads\n", t.err, count);
+
+	/* Service the fault; releasing the stuck ioctls */
+	memset(&copy, 0, sizeof(copy));
+	copy.dst = msg.arg.pagefault.address;
+	copy.src = to_user_pointer(memset(buf, 0xc5, sizeof(buf)));
+	copy.len = 4096;
+	do_ioctl(ufd, UFFDIO_COPY, &copy);
+
+	while (count--)
+		pthread_join(thread[count], NULL);
+	free(thread);
+
+	munmap(t.page, 4096);
+	close(ufd);
+
+	close(t.vgem);
+}
+
 #define OBJECT_SIZE 16384
 #define KGRN "\x1B[32m"
 #define KRED "\x1B[31m"
@@ -172,6 +324,9 @@ igt_main_args("s:", NULL, help_str, opt_handler, NULL)
 	igt_subtest("self")
 		pread_self(fd);
 
+	igt_subtest("exhaustion")
+		test_exhaustion(fd);
+
 	for (c = cache; c->level != -1; c++) {
 		igt_subtest(c->name) {
 			gem_set_caching(fd, dst, c->level);
diff --git a/tests/i915/gem_pwrite.c b/tests/i915/gem_pwrite.c
index e491263fd..7a0864637 100644
--- a/tests/i915/gem_pwrite.c
+++ b/tests/i915/gem_pwrite.c
@@ -25,6 +25,9 @@
  *
  */
 
+#include <linux/userfaultfd.h>
+
+#include <pthread.h>
 #include <unistd.h>
 #include <stdlib.h>
 #include <stdint.h>
@@ -33,14 +36,16 @@
 #include <fcntl.h>
 #include <inttypes.h>
 #include <errno.h>
-#include <sys/stat.h>
 #include <sys/ioctl.h>
+#include <sys/resource.h>
+#include <sys/stat.h>
 #include <sys/time.h>
 
 #include "drm.h"
 
 #include "igt.h"
 #include "igt_rand.h"
+#include "igt_vgem.h"
 
 #define MiB(x) ((x) * 1024 * 1024)
 
@@ -276,6 +281,174 @@ static void test_random(int fd)
 	gem_close(fd, handle);
 }
 
+static int userfaultfd(int flags)
+{
+	return syscall(SYS_userfaultfd, flags);
+}
+
+struct ufd_thread {
+	uint32_t *page;
+	int i915;
+	int vgem;
+	int err;
+};
+
+static int __prime_handle_to_fd(int fd, uint32_t handle)
+{
+	struct drm_prime_handle args;
+
+	memset(&args, 0, sizeof(args));
+	args.handle = handle;
+	args.flags = DRM_CLOEXEC;
+	args.fd = -1;
+
+	ioctl(fd, DRM_IOCTL_PRIME_HANDLE_TO_FD, &args);
+	return args.fd;
+}
+
+static uint32_t dmabuf_create_handle(int i915, int vgem)
+{
+	struct vgem_bo scratch;
+	uint32_t handle;
+	int dmabuf;
+
+	scratch.width = 64;
+	scratch.height = 64;
+	scratch.bpp = 32;
+	vgem_create(vgem, &scratch);
+
+	dmabuf = __prime_handle_to_fd(vgem, scratch.handle);
+	if (dmabuf < 0)
+		return 0;
+
+	handle = prime_fd_to_handle(i915, dmabuf);
+	close(dmabuf);
+
+	return handle;
+}
+
+static void *ufd_thread(void *arg)
+{
+	struct ufd_thread *t = arg;
+	uint32_t handle = dmabuf_create_handle(t->i915, t->vgem);
+	int err;
+
+	err = -EMFILE;
+	if (handle) {
+		err = __gem_write(t->i915, handle, 0, t->page, 1);
+		gem_close(t->i915, handle);
+	}
+	if (err)
+		t->err = err;
+
+	return NULL;
+}
+
+static void write_value(const char *path, int value)
+{
+	char buf[80];
+	int fd, len;
+
+	len = sprintf(buf, "%d", value);
+	if (len < 0)
+		return;
+
+	fd = open(path, O_WRONLY);
+	if (fd != -1) {
+		write(fd, buf, len);
+		close(fd);
+	}
+}
+
+static void unlimited_processes(unsigned int limit)
+{
+	struct rlimit rlim;
+
+	write_value("/proc/sys/kernel/threads-max", 150000);
+	write_value("/proc/sys/vm/max_map_count", 500000);
+	write_value("/proc/sys/kernel/pid_max", 200000);
+
+	if (getrlimit(RLIMIT_NPROC, &rlim))
+		return;
+
+	rlim.rlim_cur = limit;
+	rlim.rlim_max = limit;
+	setrlimit(RLIMIT_NPROC, &rlim);
+}
+
+static void test_exhaustion(int i915)
+{
+	struct uffdio_api api = { .api = UFFD_API };
+	struct uffdio_register reg;
+	struct uffdio_copy copy;
+	struct ufd_thread t = {
+		.i915 = i915,
+		.vgem = drm_open_driver(DRIVER_VGEM),
+	};
+	struct uffd_msg msg;
+	unsigned long count;
+	pthread_t *thread;
+	char buf[4096];
+	int ufd;
+
+	unlimited_processes(1024 * 1024);
+
+	ufd = userfaultfd(0);
+	igt_require_f(ufd != -1, "kernel support for userfaultfd\n");
+	igt_require_f(ioctl(ufd, UFFDIO_API, &api) == 0 && api.api == UFFD_API,
+		      "userfaultfd API v%lld:%lld\n", UFFD_API, api.api);
+
+
+	t.page = mmap(NULL, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, 0, 0);
+	igt_assert(t.page != MAP_FAILED);
+
+	/* Register our fault handler for t.page */
+	memset(&reg, 0, sizeof(reg));
+	reg.mode = UFFDIO_REGISTER_MODE_MISSING;
+	reg.range.start = to_user_pointer(t.page);
+	reg.range.len = 4096;
+	do_ioctl(ufd, UFFDIO_REGISTER, &reg);
+	igt_assert(reg.ioctls == UFFD_API_RANGE_IOCTLS);
+
+	count = 0;
+	while (!READ_ONCE(t.err)) {
+		if (is_power_of_two(count)) {
+			unsigned long sz = count ? 2 * count : 1;
+			thread = realloc(thread, sz * sizeof(*thread));
+			igt_assert(thread);
+		}
+		if (pthread_create(&thread[count], NULL, ufd_thread, &t))
+			break;
+
+		if (count == 0) { /* Wait for the first userfault */
+			igt_assert_eq(read(ufd, &msg, sizeof(msg)), sizeof(msg));
+			igt_assert_eq(msg.event, UFFD_EVENT_PAGEFAULT);
+			igt_assert(from_user_pointer(msg.arg.pagefault.address) == t.page);
+		}
+
+		count++;
+	}
+	igt_assert(count);
+	if (t.err)
+		igt_warn("err:%d after %lu threads\n", t.err, count);
+
+	/* Service the fault; releasing the stuck ioctls */
+	memset(&copy, 0, sizeof(copy));
+	copy.dst = msg.arg.pagefault.address;
+	copy.src = to_user_pointer(memset(buf, 0xc5, sizeof(buf)));
+	copy.len = 4096;
+	do_ioctl(ufd, UFFDIO_COPY, &copy);
+
+	while (count--)
+		pthread_join(thread[count], NULL);
+	free(thread);
+
+	munmap(t.page, 4096);
+	close(ufd);
+
+	close(t.vgem);
+}
+
 uint32_t *src, dst;
 int fd;
 int object_size = 0;
@@ -340,6 +513,9 @@ igt_main_args("s:", NULL, help_str, opt_handler, NULL)
 	igt_subtest("self")
 		pwrite_self(fd);
 
+	igt_subtest("exhaustion")
+		test_exhaustion(fd);
+
 	for (c = cache; c->level != -1; c++) {
 		igt_subtest(c->name) {
 			gem_set_caching(fd, dst, c->level);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
