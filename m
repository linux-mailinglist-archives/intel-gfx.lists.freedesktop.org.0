Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDBbINGrHmq3IwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A9A62C312
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8EB810EE54;
	Tue,  2 Jun 2026 10:09:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lF8KIMSC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A240610EE50;
 Tue,  2 Jun 2026 10:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780394958; x=1811930958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rBdv6oOrUdr8+FwIHtdvxb2TSNt8IebR9afB2HXDBXE=;
 b=lF8KIMSClHziRhBFINpQmrqgrLwB3cFDdGrx7YsXdfaW+hIwMvCUvV7v
 Y49Jjqf7nFbFVeWzUx3lLBT2phH94nNKRxp6e/HkjQ1pcYX95dtZm5DdX
 J3zobAG/MKh4ixbfQaEAro0UD0FVFMjDpbf6slWF62xkbvBmnr+pGkZZH
 Ao/xmPI+X+Hwv5SYaULqd/wrh7naEUcH3GORmpjmps0lFy+Tn7CTvF97b
 YCAu1IyF+oiaJ+vhD5hV3xolHMcOj//gtkDmRB1B89Ed9XvroJ7Bz/LZM
 gyAV7YduNP6tp4ZodSGeVEzb+zQt3MsHxGmsAW7HrgrwZOVS2cpFQp26x Q==;
X-CSE-ConnectionGUID: A6jGcjudSf26LSfUx63Mmg==
X-CSE-MsgGUID: 6jpuxl4cR1G7YqW85k1I1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="103836862"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="103836862"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:18 -0700
X-CSE-ConnectionGUID: QisK9MyfTcq+7Q1NV9f/Gg==
X-CSE-MsgGUID: riB4jqemS7+MzUY2ZJUvDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="248149123"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Jocelyn Falempe <jfalempe@redhat.com>
Subject: [PATCH 1/6] drm/i915/panic: split out i915_gem_panic.[ch]
Date: Tue,  2 Jun 2026 13:09:04 +0300
Message-ID: <f2093946e723aa27e856987d13692eb0308a4d85.1780394867.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780394867.git.jani.nikula@intel.com>
References: <cover.1780394867.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 16A9A62C312
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

The panic handling is a bit special and isolated part of
i915_gem_pages.c. Split it out to i915_gem_panic.[ch].

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile              |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h |   7 --
 drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 128 -------------------
 drivers/gpu/drm/i915/gem/i915_gem_panic.c  | 135 +++++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_panic.h  |  18 +++
 drivers/gpu/drm/i915/i915_panic.c          |   2 +-
 6 files changed, 155 insertions(+), 136 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_panic.c
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_panic.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 07802a7f4ce5..091b6647c383 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -167,6 +167,7 @@ gem-y += \
 	gem/i915_gem_object.o \
 	gem/i915_gem_object_frontbuffer.o \
 	gem/i915_gem_pages.o \
+	gem/i915_gem_panic.o \
 	gem/i915_gem_phys.o \
 	gem/i915_gem_pm.o \
 	gem/i915_gem_region.o \
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 8878539c10ed..2c5d20e4dbaf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -17,8 +17,6 @@
 #include "i915_vma_types.h"
 
 enum intel_region_id;
-struct drm_scanout_buffer;
-struct intel_panic;
 
 #define obj_to_i915(obj__) to_i915((obj__)->base.dev)
 
@@ -693,11 +691,6 @@ i915_gem_object_unpin_pages(struct drm_i915_gem_object *obj)
 int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
 int i915_gem_object_truncate(struct drm_i915_gem_object *obj);
 
-struct intel_panic *i915_gem_object_alloc_panic(void);
-int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
-				struct drm_gem_object *_obj, bool panic_tiling);
-void i915_gem_object_panic_finish(struct intel_panic *panic);
-
 /**
  * i915_gem_object_pin_map - return a contiguous mapping of the entire object
  * @obj: the object to map into kernel address space
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index df35bdb755e4..59e3d4de7d3c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -6,11 +6,8 @@
 #include <linux/vmalloc.h>
 
 #include <drm/drm_cache.h>
-#include <drm/drm_panic.h>
 #include <drm/drm_print.h>
 
-#include "display/intel_fb.h"
-#include "display/intel_display_types.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_tlb.h"
 
@@ -359,131 +356,6 @@ static void *i915_gem_object_map_pfn(struct drm_i915_gem_object *obj,
 	return vaddr ?: ERR_PTR(-ENOMEM);
 }
 
-struct intel_panic {
-	struct page **pages;
-	int page;
-	void *vaddr;
-};
-
-static void i915_panic_kunmap(struct intel_panic *panic)
-{
-	if (panic->vaddr) {
-		drm_clflush_virt_range(panic->vaddr, PAGE_SIZE);
-		kunmap_local(panic->vaddr);
-		panic->vaddr = NULL;
-	}
-}
-
-static struct page **i915_gem_object_panic_pages(struct drm_i915_gem_object *obj)
-{
-	unsigned long n_pages = obj->base.size >> PAGE_SHIFT, i;
-	struct page *page;
-	struct page **pages;
-	struct sgt_iter iter;
-
-	/* For a 3840x2160 32 bits Framebuffer, this should require ~64K */
-	pages = kmalloc_objs(*pages, n_pages, GFP_ATOMIC);
-	if (!pages)
-		return NULL;
-
-	i = 0;
-	for_each_sgt_page(page, iter, obj->mm.pages)
-		pages[i++] = page;
-	return pages;
-}
-
-static void i915_gem_object_panic_map_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
-						unsigned int y, u32 color)
-{
-	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	unsigned int offset = fb->panic_tiling(sb->width, x, y);
-
-	iosys_map_wr(&sb->map[0], offset, u32, color);
-}
-
-/*
- * The scanout buffer pages are not mapped, so for each pixel,
- * use kmap_local_page_try_from_panic() to map the page, and write the pixel.
- * Try to keep the map from the previous pixel, to avoid too much map/unmap.
- */
-static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
-						 unsigned int y, u32 color)
-{
-	unsigned int new_page;
-	unsigned int offset;
-	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct intel_panic *panic = fb->panic;
-
-	if (fb->panic_tiling)
-		offset = fb->panic_tiling(sb->width, x, y);
-	else
-		offset = y * sb->pitch[0] + x * sb->format->cpp[0];
-
-	new_page = offset >> PAGE_SHIFT;
-	offset = offset % PAGE_SIZE;
-	if (new_page != panic->page) {
-		i915_panic_kunmap(panic);
-		panic->page = new_page;
-		panic->vaddr =
-			kmap_local_page_try_from_panic(panic->pages[panic->page]);
-	}
-	if (panic->vaddr) {
-		u32 *pix = panic->vaddr + offset;
-		*pix = color;
-	}
-}
-
-struct intel_panic *i915_gem_object_alloc_panic(void)
-{
-	struct intel_panic *panic;
-
-	panic = kzalloc_obj(*panic);
-
-	return panic;
-}
-
-/*
- * Setup the gem framebuffer for drm_panic access.
- * Use current vaddr if it exists, or setup a list of pages.
- * pfn is not supported yet.
- */
-int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
-				struct drm_gem_object *_obj, bool panic_tiling)
-{
-	enum i915_map_type has_type;
-	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
-	void *ptr;
-
-	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
-	if (ptr) {
-		if (i915_gem_object_has_iomem(obj))
-			iosys_map_set_vaddr_iomem(&sb->map[0], (void __iomem *)ptr);
-		else
-			iosys_map_set_vaddr(&sb->map[0], ptr);
-
-		if (panic_tiling)
-			sb->set_pixel = i915_gem_object_panic_map_set_pixel;
-		return 0;
-	}
-	if (i915_gem_object_has_struct_page(obj)) {
-		panic->pages = i915_gem_object_panic_pages(obj);
-		if (!panic->pages)
-			return -ENOMEM;
-		panic->page = -1;
-		sb->set_pixel = i915_gem_object_panic_page_set_pixel;
-		return 0;
-	}
-	return -EOPNOTSUPP;
-}
-
-void i915_gem_object_panic_finish(struct intel_panic *panic)
-{
-	i915_panic_kunmap(panic);
-	panic->page = -1;
-	kfree(panic->pages);
-	panic->pages = NULL;
-}
-
 /* get, pin, and map the pages of the object into kernel space */
 void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 			      enum i915_map_type type)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
new file mode 100644
index 000000000000..7407c5668c71
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
@@ -0,0 +1,135 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2026 Intel Corporation */
+
+#include <drm/drm_cache.h>
+#include <drm/drm_panic.h>
+
+#include "display/intel_fb.h"
+#include "display/intel_display_types.h"
+#include "i915_gem_object.h"
+#include "i915_gem_panic.h"
+
+struct intel_panic {
+	struct page **pages;
+	int page;
+	void *vaddr;
+};
+
+static void i915_panic_kunmap(struct intel_panic *panic)
+{
+	if (panic->vaddr) {
+		drm_clflush_virt_range(panic->vaddr, PAGE_SIZE);
+		kunmap_local(panic->vaddr);
+		panic->vaddr = NULL;
+	}
+}
+
+static struct page **i915_gem_object_panic_pages(struct drm_i915_gem_object *obj)
+{
+	unsigned long n_pages = obj->base.size >> PAGE_SHIFT, i;
+	struct page *page;
+	struct page **pages;
+	struct sgt_iter iter;
+
+	/* For a 3840x2160 32 bits Framebuffer, this should require ~64K */
+	pages = kmalloc_objs(*pages, n_pages, GFP_ATOMIC);
+	if (!pages)
+		return NULL;
+
+	i = 0;
+	for_each_sgt_page(page, iter, obj->mm.pages)
+		pages[i++] = page;
+	return pages;
+}
+
+static void i915_gem_object_panic_map_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
+						unsigned int y, u32 color)
+{
+	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
+	unsigned int offset = fb->panic_tiling(sb->width, x, y);
+
+	iosys_map_wr(&sb->map[0], offset, u32, color);
+}
+
+/*
+ * The scanout buffer pages are not mapped, so for each pixel,
+ * use kmap_local_page_try_from_panic() to map the page, and write the pixel.
+ * Try to keep the map from the previous pixel, to avoid too much map/unmap.
+ */
+static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
+						 unsigned int y, u32 color)
+{
+	unsigned int new_page;
+	unsigned int offset;
+	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
+	struct intel_panic *panic = fb->panic;
+
+	if (fb->panic_tiling)
+		offset = fb->panic_tiling(sb->width, x, y);
+	else
+		offset = y * sb->pitch[0] + x * sb->format->cpp[0];
+
+	new_page = offset >> PAGE_SHIFT;
+	offset = offset % PAGE_SIZE;
+	if (new_page != panic->page) {
+		i915_panic_kunmap(panic);
+		panic->page = new_page;
+		panic->vaddr =
+			kmap_local_page_try_from_panic(panic->pages[panic->page]);
+	}
+	if (panic->vaddr) {
+		u32 *pix = panic->vaddr + offset;
+		*pix = color;
+	}
+}
+
+struct intel_panic *i915_gem_object_alloc_panic(void)
+{
+	struct intel_panic *panic;
+
+	panic = kzalloc_obj(*panic);
+
+	return panic;
+}
+
+/*
+ * Setup the gem framebuffer for drm_panic access.
+ * Use current vaddr if it exists, or setup a list of pages.
+ * pfn is not supported yet.
+ */
+int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
+				struct drm_gem_object *_obj, bool panic_tiling)
+{
+	enum i915_map_type has_type;
+	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
+	void *ptr;
+
+	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
+	if (ptr) {
+		if (i915_gem_object_has_iomem(obj))
+			iosys_map_set_vaddr_iomem(&sb->map[0], (void __iomem *)ptr);
+		else
+			iosys_map_set_vaddr(&sb->map[0], ptr);
+
+		if (panic_tiling)
+			sb->set_pixel = i915_gem_object_panic_map_set_pixel;
+		return 0;
+	}
+	if (i915_gem_object_has_struct_page(obj)) {
+		panic->pages = i915_gem_object_panic_pages(obj);
+		if (!panic->pages)
+			return -ENOMEM;
+		panic->page = -1;
+		sb->set_pixel = i915_gem_object_panic_page_set_pixel;
+		return 0;
+	}
+	return -EOPNOTSUPP;
+}
+
+void i915_gem_object_panic_finish(struct intel_panic *panic)
+{
+	i915_panic_kunmap(panic);
+	panic->page = -1;
+	kfree(panic->pages);
+	panic->pages = NULL;
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.h b/drivers/gpu/drm/i915/gem/i915_gem_panic.h
new file mode 100644
index 000000000000..91ab6722d37c
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef __I915_GEM_PANIC_H__
+#define __I915_GEM_PANIC_H__
+
+#include <linux/types.h>
+
+struct drm_gem_object;
+struct drm_scanout_buffer;
+struct intel_panic;
+
+struct intel_panic *i915_gem_object_alloc_panic(void);
+int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
+				struct drm_gem_object *_obj, bool panic_tiling);
+void i915_gem_object_panic_finish(struct intel_panic *panic);
+
+#endif /* __I915_GEM_PANIC_H__ */
diff --git a/drivers/gpu/drm/i915/i915_panic.c b/drivers/gpu/drm/i915/i915_panic.c
index 728be077e8e8..412db72797d8 100644
--- a/drivers/gpu/drm/i915/i915_panic.c
+++ b/drivers/gpu/drm/i915/i915_panic.c
@@ -6,7 +6,7 @@
 
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
-#include "gem/i915_gem_object.h"
+#include "gem/i915_gem_panic.h"
 
 #include "i915_panic.h"
 
-- 
2.47.3

