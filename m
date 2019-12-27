Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB1812B4E2
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 14:38:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED3D6E447;
	Fri, 27 Dec 2019 13:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 822C16E447
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 13:38:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 05:38:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,363,1571727600"; d="scan'208";a="212646891"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 27 Dec 2019 05:38:27 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Fri, 27 Dec 2019 19:07:48 +0530
Message-Id: <20191227133748.4330-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5] drm/i915/lmem: debugfs for LMEM details
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>

Debugfs i915_gem_object is extended to enable the IGTs to
detect the LMEM's availability and the total size of LMEM.

v2: READ_ONCE is used [Chris]
v3: %pa is used for printing the resource [Chris]
v4: All regions' details added to debugfs [Chris]
v5: Macro for_each_mem_region added
    name is initialized at region init [Chris]

Signed-off-by: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c  | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 2 ++
 drivers/gpu/drm/i915/i915_debugfs.c        | 8 +++++++-
 drivers/gpu/drm/i915/intel_memory_region.c | 5 ++++-
 drivers/gpu/drm/i915/intel_memory_region.h | 7 +++++++
 drivers/gpu/drm/i915/intel_region_lmem.c   | 1 +
 6 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 4d69c3fc3439..76cabd5774b0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -593,6 +593,7 @@ static int init_shmem(struct intel_memory_region *mem)
 		DRM_NOTE("Unable to create a private tmpfs mount, hugepage support will be disabled(%d).\n",
 			 err);
 	}
+	strcpy(mem->name, "system");
 
 	return 0; /* Don't error, we can simply fallback to the kernel mnt */
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index afb08a1704a2..1ef973ba06d3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -645,6 +645,8 @@ i915_gem_object_create_stolen(struct drm_i915_private *i915,
 
 static int init_stolen(struct intel_memory_region *mem)
 {
+	strcpy(mem->name, "stolen");
+
 	/*
 	 * Initialise stolen early so that we may reserve preallocated
 	 * objects for the BIOS to KMS transition.
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index d28468eaed57..a2e197dce5ec 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -367,6 +367,8 @@ static void print_context_stats(struct seq_file *m,
 static int i915_gem_object_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct intel_memory_region *mr;
+	enum intel_region_id id;
 
 	seq_printf(m, "%u shrinkable [%u free] objects, %llu bytes\n",
 		   i915->mm.shrink_count,
@@ -374,7 +376,11 @@ static int i915_gem_object_info(struct seq_file *m, void *data)
 		   i915->mm.shrink_memory);
 
 	seq_putc(m, '\n');
-
+	for_each_memory_region(mr, i915, id) {
+		seq_printf(m, "%s total: %pa bytes, available %pa bytes\n",
+			   mr->name, &mr->total, &mr->avail);
+	}
+	seq_putc(m, '\n');
 	print_context_stats(m, i915);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index e24c280e5930..15e539de0a82 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -37,7 +37,7 @@ __intel_memory_region_put_pages_buddy(struct intel_memory_region *mem,
 				      struct list_head *blocks)
 {
 	mutex_lock(&mem->mm_lock);
-	intel_memory_region_free_pages(mem, blocks);
+	mem->avail += intel_memory_region_free_pages(mem, blocks);
 	mutex_unlock(&mem->mm_lock);
 }
 
@@ -106,6 +106,7 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 			break;
 	} while (1);
 
+	mem->avail -= size;
 	mutex_unlock(&mem->mm_lock);
 	return 0;
 
@@ -164,6 +165,8 @@ intel_memory_region_create(struct drm_i915_private *i915,
 	mem->io_start = io_start;
 	mem->min_page_size = min_page_size;
 	mem->ops = ops;
+	mem->total = size;
+	mem->avail = mem->total;
 
 	mutex_init(&mem->objects.lock);
 	INIT_LIST_HEAD(&mem->objects.list);
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 238722009677..db1f37c8e738 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -47,6 +47,10 @@ enum intel_region_id {
 #define I915_ALLOC_MIN_PAGE_SIZE  BIT(0)
 #define I915_ALLOC_CONTIGUOUS     BIT(1)
 
+#define for_each_memory_region(mr, i915, id) \
+	for (id = 0; id < ARRAY_SIZE((i915)->mm.regions); id++) \
+		for_each_if(mr = i915->mm.regions[id])
+
 /**
  * Memory regions encoded as type | instance
  */
@@ -82,10 +86,13 @@ struct intel_memory_region {
 
 	resource_size_t io_start;
 	resource_size_t min_page_size;
+	resource_size_t total;
+	resource_size_t avail;
 
 	unsigned int type;
 	unsigned int instance;
 	unsigned int id;
+	char name[8];
 
 	dma_addr_t remap_addr;
 
diff --git a/drivers/gpu/drm/i915/intel_region_lmem.c b/drivers/gpu/drm/i915/intel_region_lmem.c
index eddb392917aa..dddac581f698 100644
--- a/drivers/gpu/drm/i915/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/intel_region_lmem.c
@@ -89,6 +89,7 @@ region_lmem_init(struct intel_memory_region *mem)
 	ret = intel_memory_region_init_buddy(mem);
 	if (ret)
 		io_mapping_fini(&mem->iomap);
+	strcpy(mem->name, "local");
 
 	return ret;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
