Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 164043DB57A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 10:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B0F16F405;
	Fri, 30 Jul 2021 08:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30D2E6F405;
 Fri, 30 Jul 2021 08:53:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="298644832"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="298644832"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 01:53:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="664763791"
Received: from asleatox-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.201.173])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 01:53:54 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 30 Jul 2021 09:53:38 +0100
Message-Id: <20210730085348.2326899-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 01/11] lib/i915/gem_mman: add FIXED
 mmap mode
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

We need this for discrete.

v2(Ashutosh):
 - use the new i915_drm_local.h infrastructure, and drop the LOCAL prefix

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 lib/i915/gem_mman.c       | 36 ++++++++++++++++++++++++++++++++++++
 lib/i915/gem_mman.h       |  4 ++++
 lib/i915/i915_drm_local.h |  2 ++
 3 files changed, 42 insertions(+)

diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
index 4b4f2114..11df0d76 100644
--- a/lib/i915/gem_mman.c
+++ b/lib/i915/gem_mman.c
@@ -27,6 +27,7 @@
 #include <errno.h>
 
 #include "igt_core.h"
+#include "igt_gt.h"
 #include "igt_device.h"
 #include "ioctl_wrappers.h"
 #include "intel_chipset.h"
@@ -497,6 +498,41 @@ void *gem_mmap_offset__cpu(int fd, uint32_t handle, uint64_t offset,
 	return ptr;
 }
 
+void *__gem_mmap_offset__fixed(int fd, uint32_t handle, uint64_t offset,
+			       uint64_t size, unsigned prot)
+{
+	return __gem_mmap_offset(fd, handle, offset, size, prot,
+				 I915_MMAP_OFFSET_FIXED);
+}
+
+/**
+ * gem_mmap_offset__fixed: Used to mmap objects on discrete platforms
+ * @fd: open i915 drm file descriptor
+ * @handle: gem buffer object handle
+ * @offset: offset in the gem buffer of the mmap arena
+ * @size: size of the mmap arena
+ * @prot: memory protection bits as used by mmap()
+ *
+ * Like __gem_mmap_offset__fixed() except we assert on failure.
+ *
+ * For discrete the caching attributes for the pages are fixed at allocation
+ * time, and can't be changed. The FIXED mode will simply use the same caching *
+ * mode of the allocated pages. This mode will always be coherent with GPU
+ * access.
+ *
+ * On non-discrete platforms this mode is not supported.
+ *
+ * Returns: A pointer to the created memory mapping
+ */
+void *gem_mmap_offset__fixed(int fd, uint32_t handle, uint64_t offset,
+			   uint64_t size, unsigned prot)
+{
+	void *ptr = __gem_mmap_offset__fixed(fd, handle, offset, size, prot);
+
+	igt_assert(ptr);
+	return ptr;
+}
+
 /**
  * __gem_mmap__cpu_coherent:
  * @fd: open i915 drm file descriptor
diff --git a/lib/i915/gem_mman.h b/lib/i915/gem_mman.h
index 5695d2ad..290c997d 100644
--- a/lib/i915/gem_mman.h
+++ b/lib/i915/gem_mman.h
@@ -37,6 +37,8 @@ bool gem_mmap_offset__has_wc(int fd);
 void *gem_mmap__wc(int fd, uint32_t handle, uint64_t offset, uint64_t size, unsigned prot);
 void *gem_mmap_offset__wc(int fd, uint32_t handle, uint64_t offset,
 			  uint64_t size, unsigned prot);
+void *gem_mmap_offset__fixed(int fd, uint32_t handle, uint64_t offset,
+			     uint64_t size, unsigned prot);
 void *gem_mmap__device_coherent(int fd, uint32_t handle, uint64_t offset,
 				uint64_t size, unsigned prot);
 void *gem_mmap__cpu_coherent(int fd, uint32_t handle, uint64_t offset,
@@ -54,6 +56,8 @@ void *__gem_mmap_offset__cpu(int fd, uint32_t handle, uint64_t offset,
 void *__gem_mmap__wc(int fd, uint32_t handle, uint64_t offset, uint64_t size, unsigned prot);
 void *__gem_mmap_offset__wc(int fd, uint32_t handle, uint64_t offset,
 			    uint64_t size, unsigned prot);
+void *__gem_mmap_offset__fixed(int fd, uint32_t handle, uint64_t offset,
+			       uint64_t size, unsigned prot);
 void *__gem_mmap__device_coherent(int fd, uint32_t handle, uint64_t offset,
 				  uint64_t size, unsigned prot);
 void *__gem_mmap_offset(int fd, uint32_t handle, uint64_t offset, uint64_t size,
diff --git a/lib/i915/i915_drm_local.h b/lib/i915/i915_drm_local.h
index dd646aed..0e3cef81 100644
--- a/lib/i915/i915_drm_local.h
+++ b/lib/i915/i915_drm_local.h
@@ -20,6 +20,8 @@ extern "C" {
  * clean these up when kernel uapi headers are sync'd.
  */
 
+#define I915_MMAP_OFFSET_FIXED 4
+
 #if defined(__cplusplus)
 }
 #endif
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
