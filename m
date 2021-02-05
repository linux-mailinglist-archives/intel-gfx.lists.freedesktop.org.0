Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB59C3108B8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 11:10:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD8E6F3D8;
	Fri,  5 Feb 2021 10:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714D66F3D6;
 Fri,  5 Feb 2021 10:10:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from haswell.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23795809-1500050 
 for multiple; Fri, 05 Feb 2021 10:10:06 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 10:10:05 +0000
Message-Id: <20210205101005.3916764-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210205090743.8464-1-ramalingam.c@intel.com>
References: <20210205090743.8464-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/module_load: Tidy up gem_exec_store
 workalike
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

We emit a store on each GPU after loading the module to confirm the
basic liveness of command submission. Trim away some of the chaff.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 tests/i915/i915_module_load.c | 146 ++++++++++++++--------------------
 1 file changed, 58 insertions(+), 88 deletions(-)

diff --git a/tests/i915/i915_module_load.c b/tests/i915/i915_module_load.c
index 06522ba61..f1fb13914 100644
--- a/tests/i915/i915_module_load.c
+++ b/tests/i915/i915_module_load.c
@@ -37,41 +37,45 @@
 #include "igt_sysfs.h"
 #include "igt_core.h"
 
-static void store_all(int fd)
+static void store_all(int i915)
 {
-	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
-	unsigned int permuted[I915_EXEC_RING_MASK + 1];
-	unsigned int engines[I915_EXEC_RING_MASK + 1];
-	struct drm_i915_gem_exec_object2 obj[2];
-	struct drm_i915_gem_relocation_entry reloc[2 * ARRAY_SIZE(engines)];
-	struct drm_i915_gem_execbuffer2 execbuf;
-	const struct intel_execution_engine2 *e;
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
+	uint32_t engines[I915_EXEC_RING_MASK + 1];
 	uint32_t batch[16];
-	uint64_t offset;
-	unsigned nengine;
-	int value;
-	int i, j;
-
-	memset(&execbuf, 0, sizeof(execbuf));
-	execbuf.buffers_ptr = (uintptr_t)obj;
-	execbuf.buffer_count = 2;
-
-	memset(reloc, 0, sizeof(reloc));
-	memset(obj, 0, sizeof(obj));
-	obj[0].handle = gem_create(fd, 4096);
-	obj[1].handle = gem_create(fd, 4096);
-	obj[1].relocation_count = 1;
-
-	offset = sizeof(uint32_t);
+	unsigned int sz = ALIGN(sizeof(batch) * ARRAY_SIZE(engines), 4096);
+	struct drm_i915_gem_relocation_entry reloc = {
+		.offset = sizeof(uint32_t),
+		.read_domains = I915_GEM_DOMAIN_RENDER,
+		.write_domain = I915_GEM_DOMAIN_RENDER,
+	};
+	struct drm_i915_gem_exec_object2 obj[2] = {
+		{ .handle = gem_create(i915, sizeof(engines)) },
+		{
+			.handle = gem_create(i915, sz),
+			.relocation_count = 1,
+			.relocs_ptr = to_user_pointer(&reloc),
+		},
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(obj),
+		.buffer_count = 2,
+	};
+	const struct intel_execution_engine2 *e;
+	int reloc_sz = sizeof(uint32_t);
+	unsigned int nengine, value;
+	void *cs;
+	int i;
+
 	i = 0;
 	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
 	if (gen >= 8) {
 		batch[++i] = 0;
 		batch[++i] = 0;
+		reloc_sz = sizeof(uint64_t);
 	} else if (gen >= 4) {
 		batch[++i] = 0;
 		batch[++i] = 0;
-		offset += sizeof(uint32_t);
+		reloc.offset += sizeof(uint32_t);
 	} else {
 		batch[i]--;
 		batch[++i] = 0;
@@ -80,74 +84,43 @@ static void store_all(int fd)
 	batch[++i] = MI_BATCH_BUFFER_END;
 
 	nengine = 0;
-	intel_detect_and_clear_missed_interrupts(fd);
-	__for_each_physical_engine(fd, e) {
-		if (!gem_class_can_store_dword(fd, e->class))
+	cs = gem_mmap__device_coherent(i915, obj[1].handle, 0, sz, PROT_WRITE);
+	__for_each_physical_engine(i915, e) {
+		uint64_t addr;
+
+		igt_assert(reloc.presumed_offset != -1);
+		addr = reloc.presumed_offset + reloc.delta;
+
+		if (!gem_class_can_store_dword(i915, e->class))
 			continue;
 
-		igt_assert(2 * (nengine + 1) * sizeof(batch) <= 4096);
+		engines[nengine] = nengine;
+		batch[value] = engines[nengine];
 
-		engines[nengine] = e->flags;
+		execbuf.flags = e->flags;
 		if (gen < 6)
-			engines[nengine] |= I915_EXEC_SECURE;
-		execbuf.flags = engines[nengine];
-
-		j = 2*nengine;
-		reloc[j].target_handle = obj[0].handle;
-		reloc[j].presumed_offset = ~0;
-		reloc[j].offset = j*sizeof(batch) + offset;
-		reloc[j].delta = nengine*sizeof(uint32_t);
-		reloc[j].read_domains = I915_GEM_DOMAIN_INSTRUCTION;
-		reloc[j].write_domain = I915_GEM_DOMAIN_INSTRUCTION;
-		obj[1].relocs_ptr = (uintptr_t)&reloc[j];
-
-		batch[value] = 0xdeadbeef;
-		gem_write(fd, obj[1].handle, j*sizeof(batch),
-			  batch, sizeof(batch));
-		execbuf.batch_start_offset = j*sizeof(batch);
-		gem_execbuf(fd, &execbuf);
-
-		j = 2*nengine + 1;
-		reloc[j].target_handle = obj[0].handle;
-		reloc[j].presumed_offset = ~0;
-		reloc[j].offset = j*sizeof(batch) + offset;
-		reloc[j].delta = nengine*sizeof(uint32_t);
-		reloc[j].read_domains = I915_GEM_DOMAIN_INSTRUCTION;
-		reloc[j].write_domain = I915_GEM_DOMAIN_INSTRUCTION;
-		obj[1].relocs_ptr = (uintptr_t)&reloc[j];
-
-		batch[value] = nengine;
-		gem_write(fd, obj[1].handle, j*sizeof(batch),
-			  batch, sizeof(batch));
-		execbuf.batch_start_offset = j*sizeof(batch);
-		gem_execbuf(fd, &execbuf);
-
-		nengine++;
-	}
-	gem_sync(fd, obj[1].handle);
-
-	for (i = 0; i < nengine; i++) {
-		obj[1].relocs_ptr = (uintptr_t)&reloc[2*i];
-		execbuf.batch_start_offset = 2*i*sizeof(batch);
-		memcpy(permuted, engines, nengine*sizeof(engines[0]));
-		igt_permute_array(permuted, nengine, igt_exchange_int);
-		for (j = 0; j < nengine; j++) {
-			execbuf.flags = permuted[j];
-			gem_execbuf(fd, &execbuf);
-		}
-		obj[1].relocs_ptr = (uintptr_t)&reloc[2*i+1];
-		execbuf.batch_start_offset = (2*i+1)*sizeof(batch);
-		execbuf.flags = engines[i];
-		gem_execbuf(fd, &execbuf);
+			execbuf.flags |= I915_EXEC_SECURE;
+		execbuf.flags |= I915_EXEC_NO_RELOC | I915_EXEC_HANDLE_LUT;
+
+		memcpy(cs + execbuf.batch_start_offset, batch, sizeof(batch));
+		memcpy(cs + reloc.offset, &addr, reloc_sz);
+		gem_execbuf(i915, &execbuf);
+
+		if (++nengine == ARRAY_SIZE(engines))
+			break;
+
+		reloc.delta += sizeof(uint32_t);
+		reloc.offset += sizeof(batch);
+		execbuf.batch_start_offset += sizeof(batch);
 	}
-	gem_close(fd, obj[1].handle);
+	munmap(cs, sz);
+	gem_close(i915, obj[1].handle);
 
-	gem_read(fd, obj[0].handle, 0, engines, sizeof(engines));
-	gem_close(fd, obj[0].handle);
+	gem_read(i915, obj[0].handle, 0, engines, sizeof(engines));
+	gem_close(i915, obj[0].handle);
 
 	for (i = 0; i < nengine; i++)
 		igt_assert_eq_u32(engines[i], i);
-	igt_assert_eq(intel_detect_and_clear_missed_interrupts(fd), 0);
 }
 
 static int open_parameters(const char *module_name)
@@ -196,11 +169,8 @@ static void gem_sanitycheck(void)
 	err = 0;
 	if (ioctl(i915, DRM_IOCTL_I915_GEM_SET_CACHING, &args))
 		err = -errno;
-	if (err == -ENOENT) {
-		igt_fork_hang_detector(i915);
+	if (err == -ENOENT)
 		store_all(i915);
-		igt_stop_hang_detector();
-	}
 	errno = 0;
 
 	close(i915);
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
