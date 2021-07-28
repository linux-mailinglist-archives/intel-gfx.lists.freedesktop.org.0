Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 294073D8BCF
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 12:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E8B6E904;
	Wed, 28 Jul 2021 10:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D4CD6E8D2;
 Wed, 28 Jul 2021 10:32:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="212627121"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212627121"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 03:32:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="499179492"
Received: from sdrogers-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.245.248])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 03:32:04 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 28 Jul 2021 11:30:40 +0100
Message-Id: <20210728103041.1669985-10-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210728103041.1669985-1-matthew.auld@intel.com>
References: <20210728103041.1669985-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 10/11] lib/i915/gem_mman: add helper
 query for has_device_coherent
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Might be useful in some tests, where we are not explicitly testing WC
maps, but rather just require something that is "device coherent", which
should also play nice on discrete platforms.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 lib/i915/gem_mman.c | 43 +++++++++++++++++++++++++++++++++++++++++--
 lib/i915/gem_mman.h | 11 +++++++++++
 2 files changed, 52 insertions(+), 2 deletions(-)

diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
index 16168a32..27ef97cf 100644
--- a/lib/i915/gem_mman.c
+++ b/lib/i915/gem_mman.c
@@ -196,6 +196,47 @@ bool gem_mmap_offset__has_wc(int fd)
 	return has_wc > 0;
 }
 
+#define LOCAL_I915_MMAP_OFFSET_FIXED 4
+
+bool gem_mmap__has_device_coherent(int fd)
+{
+	struct drm_i915_gem_mmap_offset arg;
+	bool supported;
+
+	if (gem_mmap__has_wc(fd))
+		return true;
+
+	/* Maybe we still have GTT mmaps? */
+	memset(&arg, 0, sizeof(arg));
+	arg.handle = gem_create(fd, 4096);
+	arg.offset = 0;
+	arg.flags = I915_MMAP_OFFSET_GTT;
+	supported = igt_ioctl(fd, DRM_IOCTL_I915_GEM_MMAP_OFFSET,
+			      &arg) == 0;
+	gem_close(fd, arg.handle);
+
+	errno = 0;
+
+	if (supported)
+		return true;
+
+	/*
+	 * Maybe this is a discrete device, which only supports fixed mmaps?
+	 * Such mappings should also be considered device coherent.
+	 */
+	memset(&arg, 0, sizeof(arg));
+	arg.handle = gem_create(fd, 4096);
+	arg.offset = 0;
+	arg.flags = LOCAL_I915_MMAP_OFFSET_FIXED;
+	supported = igt_ioctl(fd, DRM_IOCTL_I915_GEM_MMAP_OFFSET,
+			      &arg) == 0;
+	gem_close(fd, arg.handle);
+
+	errno = 0;
+
+	return supported;
+}
+
 /**
  * __gem_mmap:
  * @fd: open i915 drm file descriptor
@@ -504,8 +545,6 @@ void *gem_mmap_offset__cpu(int fd, uint32_t handle, uint64_t offset,
 	return ptr;
 }
 
-#define LOCAL_I915_MMAP_OFFSET_FIXED 4
-
 void *__gem_mmap_offset__fixed(int fd, uint32_t handle, uint64_t offset,
 			       uint64_t size, unsigned prot)
 {
diff --git a/lib/i915/gem_mman.h b/lib/i915/gem_mman.h
index 290c997d..5966ddb5 100644
--- a/lib/i915/gem_mman.h
+++ b/lib/i915/gem_mman.h
@@ -41,6 +41,7 @@ void *gem_mmap_offset__fixed(int fd, uint32_t handle, uint64_t offset,
 			     uint64_t size, unsigned prot);
 void *gem_mmap__device_coherent(int fd, uint32_t handle, uint64_t offset,
 				uint64_t size, unsigned prot);
+bool gem_mmap__has_device_coherent(int fd);
 void *gem_mmap__cpu_coherent(int fd, uint32_t handle, uint64_t offset,
 			     uint64_t size, unsigned prot);
 
@@ -96,6 +97,16 @@ int gem_munmap(void *ptr, uint64_t size);
  */
 #define gem_require_mmap_offset_wc(fd) igt_require(gem_mmap_offset__has_wc(fd))
 
+/**
+ * gem_require_mmap_offset_device_coherent:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query whether direct (i.e. cpu access path, bypassing
+ * the gtt) write-combine memory mappings are available, or fixed mapping for
+ * discrete. Automatically skips through igt_require() if not.
+ */
+#define gem_require_mmap_device_coherent(fd) igt_require(gem_mmap__has_device_coherent(fd))
+
 extern const struct mmap_offset {
 	const char *name;
 	unsigned int type;
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
