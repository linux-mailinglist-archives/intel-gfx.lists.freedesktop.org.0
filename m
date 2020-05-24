Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F31401E00C7
	for <lists+intel-gfx@lfdr.de>; Sun, 24 May 2020 18:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA18D89E14;
	Sun, 24 May 2020 16:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C06589BFB;
 Sun, 24 May 2020 16:56:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21280005-1500050 
 for multiple; Sun, 24 May 2020 17:56:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 24 May 2020 17:56:49 +0100
Message-Id: <20200524165649.3940178-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_reloc: Exercise concurrent
 relocations
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While we may chide userspace if they try to use the same batches from
multiple threads (the order of operations is undetermined), we do try to
ensure that each ioctl appears to be atomic from the perspective of
userspace.

In particular, relocations within execbuf are expected to be consistent
for the executing batch. That is we want the relocations applied by
this execbuf to be visible for the associated batch, and we especially
do not want to execute the batch with conflicting relocations from
another thread.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_reloc.c | 196 ++++++++++++++++++++++++++++++++++++
 1 file changed, 196 insertions(+)

diff --git a/tests/i915/gem_exec_reloc.c b/tests/i915/gem_exec_reloc.c
index 3951aab2f..467ec5a74 100644
--- a/tests/i915/gem_exec_reloc.c
+++ b/tests/i915/gem_exec_reloc.c
@@ -1010,6 +1010,197 @@ static void parallel(int i915)
 	munmap(reloc, reloc_sz);
 }
 
+#define CONCURRENT 1024
+
+static uint64_t concurrent_relocs(int i915, int idx, int count)
+{
+	struct drm_i915_gem_relocation_entry *reloc;
+	const int gen = intel_gen(intel_get_drm_devid(i915));
+	unsigned long sz;
+	int offset;
+
+	sz = count * sizeof(*reloc);
+	sz = ALIGN(sz, 4096);
+
+	reloc = mmap(0, sz, PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0);
+	igt_assert(reloc != MAP_FAILED);
+
+	offset = 1;
+	if (gen >= 4 && gen < 8)
+		offset += 1;
+
+	for (int n = 0; n < count; n++) {
+		reloc[n].presumed_offset = ~0ull;
+		reloc[n].offset = (4 * n + offset) * sizeof(uint32_t);
+		reloc[n].delta = (count * idx + n) * sizeof(uint32_t);
+	}
+	mprotect(reloc, sz, PROT_READ);
+
+	return to_user_pointer(reloc);
+}
+
+static int flags_to_index(const struct intel_execution_engine2 *e)
+{
+	return (e->flags & 63) | ((e->flags >> 13) & 3) << 4;
+}
+
+static void xchg_u32(void *array, unsigned i, unsigned j)
+{
+	uint32_t *u32 = array;
+	uint32_t tmp = u32[i];
+	u32[i] = u32[j];
+	u32[j] = tmp;
+}
+
+static void concurrent_child(int i915,
+			     const struct intel_execution_engine2 *e,
+			     uint32_t *common, int num_common,
+			     int in, int out)
+{
+	int idx = flags_to_index(e);
+	uint64_t relocs = concurrent_relocs(i915, idx, CONCURRENT);
+	struct drm_i915_gem_exec_object2 obj[num_common + 2];
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(obj),
+		.buffer_count = ARRAY_SIZE(obj),
+		.flags = e->flags | I915_EXEC_HANDLE_LUT,
+	};
+	uint32_t *batch = &obj[num_common + 1].handle;
+	unsigned long count = 0;
+	uint32_t *x;
+	int err = 0;
+
+	memset(obj, 0, sizeof(obj));
+	obj[0].handle = gem_create(i915, 64 * CONCURRENT * 4);
+
+	igt_permute_array(common, num_common, xchg_u32);
+	for (int n = 1; n <= num_common; n++) {
+		obj[n].handle = common[n - 1];
+		obj[n].relocation_count = CONCURRENT;
+		obj[n].relocs_ptr = relocs;
+	}
+
+	obj[num_common + 1].relocation_count = CONCURRENT;
+	obj[num_common + 1].relocs_ptr = relocs;
+
+	x = gem_mmap__device_coherent(i915, obj[0].handle,
+				      0, 64 * CONCURRENT * 4, PROT_READ);
+	x += idx * CONCURRENT;
+
+	do {
+		read(in, batch, sizeof(*batch));
+		if (!*batch)
+			break;
+
+		gem_execbuf(i915, &execbuf);
+		gem_sync(i915, *batch); /* write hazards lies */
+
+		for (int n = 0; n < CONCURRENT; n++) {
+			if (x[n] != *batch) {
+				igt_warn("%s: Invalid store [bad reloc] found at index %d\n",
+					 e->name, n);
+				err = -EINVAL;
+				break;
+			}
+		}
+
+		write(out, &err, sizeof(err));
+		count++;
+	} while (err == 0);
+
+	gem_close(i915, obj[0].handle);
+	igt_info("%s: completed %ld cycles\n", e->name, count);
+}
+
+static uint32_t create_concurrent_batch(int i915, unsigned int count)
+{
+	const int gen = intel_gen(intel_get_drm_devid(i915));
+	size_t sz = ALIGN(4 * (1 + 4 * count), 4096);
+	uint32_t handle = gem_create(i915, sz);
+	uint32_t *map, *cs;
+
+	cs = map = gem_mmap__device_coherent(i915, handle, 0, sz, PROT_WRITE);
+	for (int n = 0; n < count; n++) {
+		if (gen >= 4) {
+			*cs++ = MI_STORE_DWORD_IMM;
+			*cs++ = 0;
+			*cs++ = 0;
+			*cs++ = handle;
+		} else {
+			*cs++ = MI_STORE_DWORD_IMM - 1;
+			*cs++ = 0;
+			*cs++ = handle;
+			*cs++ = 0;
+		}
+	}
+	*cs++ = MI_BATCH_BUFFER_END;
+	munmap(map, sz);
+
+	return handle;
+}
+
+static void concurrent(int i915, int num_common)
+{
+	const struct intel_execution_engine2 *e;
+	int in[2], out[2];
+	uint32_t common[16];
+	uint32_t batch;
+	int nchild;
+	int result;
+
+	pipe(in);
+	pipe(out);
+
+	for (int n = 0; n < num_common; n++)
+		common[n] = gem_create(i915, 4 * 4 * CONCURRENT);
+
+	nchild = 0;
+	__for_each_physical_engine(i915, e) {
+		if (!gem_class_can_store_dword(i915, e->class))
+			continue;
+
+		igt_fork(child, 1)
+			concurrent_child(i915, e,
+					 common, num_common,
+					 in[0], out[1]);
+
+		nchild++;
+	}
+	close(in[0]);
+	close(out[1]);
+	igt_require(nchild > 1);
+
+	igt_until_timeout(5) {
+		batch = create_concurrent_batch(i915, CONCURRENT);
+
+		for (int n = 0; n < nchild; n++)
+			write(in[1], &batch, sizeof(batch));
+
+		for (int n = 0; n < nchild; n++) {
+			result = -1;
+			read(out[0], &result, sizeof(result));
+			if (result < 0)
+				break;
+		}
+
+		gem_close(i915, batch);
+	}
+
+	batch = 0;
+	for (int n = 0; n < nchild; n++)
+		write(in[1], &batch, sizeof(batch));
+
+	close(in[1]);
+	close(out[0]);
+
+	igt_waitchildren();
+
+	for (int n = 0; n < num_common; n++)
+		gem_close(i915, common[n]);
+
+	igt_assert_eq(result, 0);
+}
+
 igt_main
 {
 	const struct intel_execution_engine2 *e;
@@ -1149,6 +1340,11 @@ igt_main
 	igt_subtest("basic-parallel")
 		parallel(fd);
 
+	igt_subtest("basic-concurrent0")
+		concurrent(fd, 0);
+	igt_subtest("basic-concurrent16")
+		concurrent(fd, 16);
+
 	igt_fixture
 		close(fd);
 }
-- 
2.27.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
