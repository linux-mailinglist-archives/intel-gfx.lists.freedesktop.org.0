Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEB63DB584
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 10:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33FAD6F413;
	Fri, 30 Jul 2021 08:54:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BE56F41F;
 Fri, 30 Jul 2021 08:54:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="298644873"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="298644873"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 01:54:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="664763904"
Received: from asleatox-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.201.173])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 01:54:11 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 30 Jul 2021 09:53:47 +0100
Message-Id: <20210730085348.2326899-10-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210730085348.2326899-1-matthew.auld@intel.com>
References: <20210730085348.2326899-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 10/11] lib/i915/gem_mman: add helper
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
 lib/i915/gem_mman.c | 39 +++++++++++++++++++++++++++++++++++++++
 lib/i915/gem_mman.h | 11 +++++++++++
 2 files changed, 50 insertions(+)

diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
index c69dc6f5..0406a0b9 100644
--- a/lib/i915/gem_mman.c
+++ b/lib/i915/gem_mman.c
@@ -197,6 +197,45 @@ bool gem_mmap_offset__has_wc(int fd)
 	return has_wc > 0;
 }
 
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
+	arg.flags = I915_MMAP_OFFSET_FIXED;
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
