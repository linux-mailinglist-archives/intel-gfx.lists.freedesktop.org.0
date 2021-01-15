Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DCC2F882C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 23:08:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5605D6E4A7;
	Fri, 15 Jan 2021 22:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A60F6E4A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 22:08:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23611775-1500050 
 for multiple; Fri, 15 Jan 2021 22:07:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 22:07:44 +0000
Message-Id: <20210115220744.1402642-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel] sna: Probe userptr storage on
 construction
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Not all user address ranges are valid for userptr, as we can only
utilize struct pages (and not indirect pfnmaps). Currently we use a
set-domain call after userptr to validate the range by populating the
userptr, but this has the drawback of forcing the population ever for
userptr that are never used. I915_USERPTR_PROBE introduces a method for
doing a simple vma lookup to check that the userptr is valid at the time
of construction, leaving the more costly page lookup for lazy execution.

See https://patchwork.freedesktop.org/series/33449/

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 src/sna/kgem.c | 49 ++++++++++++++++++++++++++++++++++++++++++++-----
 src/sna/kgem.h |  1 +
 2 files changed, 45 insertions(+), 5 deletions(-)

diff --git a/src/sna/kgem.c b/src/sna/kgem.c
index 7b645da8d..7b143dd34 100644
--- a/src/sna/kgem.c
+++ b/src/sna/kgem.c
@@ -170,6 +170,8 @@ struct local_i915_gem_userptr {
 	uint64_t user_size;
 	uint32_t flags;
 #define I915_USERPTR_READ_ONLY		0x1
+#define I915_USERPTR_PROBE		0x2
+#define I915_USERPTR_POPULATE		0x4
 #define I915_USERPTR_UNSYNCHRONIZED	0x80000000
 	uint32_t handle;
 };
@@ -520,16 +522,14 @@ static bool gem_set_caching(int fd, uint32_t handle, int caching)
 	return do_ioctl(fd, LOCAL_IOCTL_I915_GEM_SET_CACHING, &arg) == 0;
 }
 
-static uint32_t gem_userptr(int fd, void *ptr, size_t size, int read_only)
+static uint32_t gem_userptr(int fd, void *ptr, size_t size, unsigned int flags)
 {
 	struct local_i915_gem_userptr arg;
 
 	VG_CLEAR(arg);
 	arg.user_ptr = (uintptr_t)ptr;
 	arg.user_size = size;
-	arg.flags = I915_USERPTR_UNSYNCHRONIZED;
-	if (read_only)
-		arg.flags |= I915_USERPTR_READ_ONLY;
+	arg.flags = flags | I915_USERPTR_UNSYNCHRONIZED;
 
 	if (DBG_NO_UNSYNCHRONIZED_USERPTR ||
 	    do_ioctl(fd, LOCAL_IOCTL_I915_GEM_USERPTR, &arg)) {
@@ -1390,6 +1390,29 @@ static bool test_has_userptr(struct kgem *kgem)
 	return arg.handle != 0;
 }
 
+static bool test_has_userptr_probe(struct kgem *kgem)
+{
+	struct local_i915_gem_userptr arg;
+	void *ptr;
+
+	if (DBG_NO_USERPTR)
+		return false;
+
+	if (posix_memalign(&ptr, PAGE_SIZE, PAGE_SIZE))
+		return false;
+
+	VG_CLEAR(arg);
+	arg.user_ptr = (uintptr_t)ptr;
+	arg.user_size = PAGE_SIZE;
+	arg.flags = I915_USERPTR_PROBE;
+
+	if (do_ioctl(kgem->fd, LOCAL_IOCTL_I915_GEM_USERPTR, &arg) == 0)
+		gem_close(kgem->fd, arg.handle);
+
+	free(ptr);
+	return arg.handle != 0;
+}
+
 static bool test_has_create2(struct kgem *kgem)
 {
 #if defined(USE_CREATE2)
@@ -2034,6 +2057,12 @@ void kgem_init(struct kgem *kgem, int fd, struct pci_device *dev, unsigned gen)
 	DBG(("%s: has userptr? %d\n", __FUNCTION__,
 	     kgem->has_userptr));
 
+	kgem->has_userptr_probe = false;
+	if (kgem->has_userptr)
+		kgem->has_userptr_probe = test_has_userptr_probe(kgem);
+	DBG(("%s: has userptr probe? %d\n", __FUNCTION__,
+	     kgem->has_userptr_probe));
+
 	kgem->has_create2 = test_has_create2(kgem);
 	DBG(("%s: has create2? %d\n", __FUNCTION__,
 	     kgem->has_create2));
@@ -7038,15 +7067,25 @@ static bool probe(struct kgem *kgem, uint32_t handle)
 		.read_domains = I915_GEM_DOMAIN_CPU,
 	};
 
+	if (kgem->has_userptr_probe)
+		return true;
+
 	return do_ioctl(kgem->fd, DRM_IOCTL_I915_GEM_SET_DOMAIN, &arg) == 0;
 }
 
 static uint32_t probe_userptr(struct kgem *kgem,
 			      void *ptr, size_t size, int read_only)
 {
+	unsigned int flags;
 	uint32_t handle;
 
-	handle = gem_userptr(kgem->fd, ptr, size, read_only);
+	flags = 0;
+	if (read_only)
+		flags |= I915_USERPTR_READ_ONLY;
+	if (kgem->has_userptr_probe)
+		flags |= I915_USERPTR_PROBE;
+
+	handle = gem_userptr(kgem->fd, ptr, size, flags);
 	if (handle && !probe(kgem, handle)) {
 		gem_close(kgem->fd, handle);
 		handle = 0;
diff --git a/src/sna/kgem.h b/src/sna/kgem.h
index 6a087a574..b62f956c6 100644
--- a/src/sna/kgem.h
+++ b/src/sna/kgem.h
@@ -183,6 +183,7 @@ struct kgem {
 
 	uint32_t has_create2 :1;
 	uint32_t has_userptr :1;
+	uint32_t has_userptr_probe :1;
 	uint32_t has_blt :1;
 	uint32_t has_relaxed_fencing :1;
 	uint32_t has_relaxed_delta :1;
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
