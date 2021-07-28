Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B80303D8BC5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 12:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180A36E4DE;
	Wed, 28 Jul 2021 10:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85FC56E088;
 Wed, 28 Jul 2021 10:31:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="212627049"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212627049"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 03:31:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="499179356"
Received: from sdrogers-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.245.248])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 03:31:38 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 28 Jul 2021 11:30:31 +0100
Message-Id: <20210728103041.1669985-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 01/11] lib/i915/gem_mman: add FIXED
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

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 lib/i915/gem_mman.c | 37 +++++++++++++++++++++++++++++++++++++
 lib/i915/gem_mman.h |  4 ++++
 2 files changed, 41 insertions(+)

diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
index 4b4f2114..e2514f0c 100644
--- a/lib/i915/gem_mman.c
+++ b/lib/i915/gem_mman.c
@@ -497,6 +497,43 @@ void *gem_mmap_offset__cpu(int fd, uint32_t handle, uint64_t offset,
 	return ptr;
 }
 
+#define LOCAL_I915_MMAP_OFFSET_FIXED 4
+
+void *__gem_mmap_offset__fixed(int fd, uint32_t handle, uint64_t offset,
+			       uint64_t size, unsigned prot)
+{
+	return __gem_mmap_offset(fd, handle, offset, size, prot,
+				 LOCAL_I915_MMAP_OFFSET_FIXED);
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
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
