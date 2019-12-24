Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0DE129F48
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 09:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0FA6E2ED;
	Tue, 24 Dec 2019 08:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E6B86E2ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 08:43:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 00:43:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,350,1571727600"; d="scan'208";a="207526246"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga007.jf.intel.com with ESMTP; 24 Dec 2019 00:43:41 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue, 24 Dec 2019 14:13:00 +0530
Message-Id: <20191224084300.5435-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915/lmem: debugfs for LMEM details
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

Signed-off-by: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c        | 12 +++++++++++-
 drivers/gpu/drm/i915/intel_memory_region.c | 19 ++++++++++++++++++-
 drivers/gpu/drm/i915/intel_memory_region.h |  4 ++++
 3 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index d28468eaed57..35f8db7690a5 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -367,13 +367,23 @@ static void print_context_stats(struct seq_file *m,
 static int i915_gem_object_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct intel_memory_region *mem;
+	enum intel_region_id id;
 
 	seq_printf(m, "%u shrinkable [%u free] objects, %llu bytes\n",
 		   i915->mm.shrink_count,
 		   atomic_read(&i915->mm.free_count),
 		   i915->mm.shrink_memory);
 
-	seq_putc(m, '\n');
+	for (id = INTEL_REGION_SMEM; id < INTEL_REGION_UNKNOWN; id++) {
+		mem = i915->mm.regions[id];
+		if (!mem)
+			continue;
+
+		seq_printf(m, "%s total: %pa bytes, available %pa bytes\n",
+			   intel_get_mem_region_name(mem), &mem->total,
+			   &mem->avail);
+	}
 
 	print_context_stats(m, i915);
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index e24c280e5930..824aa13e993d 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -10,6 +10,20 @@
 #define REGION_MAP(type, inst) \
 	BIT((type) + INTEL_MEMORY_TYPE_SHIFT) | BIT(inst)
 
+char *intel_get_mem_region_name(struct intel_memory_region *mem)
+{
+	switch (MEMORY_TYPE_FROM_REGION(mem->id)) {
+	case INTEL_REGION_SMEM:
+		return "SYSTEM MEM";
+	case INTEL_REGION_LMEM:
+		return "LOCAL MEM";
+	case INTEL_REGION_STOLEN:
+		return "STOLEN MEM";
+	default:
+		return NULL;
+	}
+}
+
 const u32 intel_region_map[] = {
 	[INTEL_REGION_SMEM] = REGION_MAP(INTEL_MEMORY_SYSTEM, 0),
 	[INTEL_REGION_LMEM] = REGION_MAP(INTEL_MEMORY_LOCAL, 0),
@@ -37,7 +51,7 @@ __intel_memory_region_put_pages_buddy(struct intel_memory_region *mem,
 				      struct list_head *blocks)
 {
 	mutex_lock(&mem->mm_lock);
-	intel_memory_region_free_pages(mem, blocks);
+	mem->avail += intel_memory_region_free_pages(mem, blocks);
 	mutex_unlock(&mem->mm_lock);
 }
 
@@ -106,6 +120,7 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 			break;
 	} while (1);
 
+	mem->avail -= size;
 	mutex_unlock(&mem->mm_lock);
 	return 0;
 
@@ -164,6 +179,8 @@ intel_memory_region_create(struct drm_i915_private *i915,
 	mem->io_start = io_start;
 	mem->min_page_size = min_page_size;
 	mem->ops = ops;
+	mem->total = size;
+	mem->avail = mem->total;
 
 	mutex_init(&mem->objects.lock);
 	INIT_LIST_HEAD(&mem->objects.list);
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 238722009677..c312f93fc94d 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -82,6 +82,8 @@ struct intel_memory_region {
 
 	resource_size_t io_start;
 	resource_size_t min_page_size;
+	resource_size_t total;
+	resource_size_t avail;
 
 	unsigned int type;
 	unsigned int instance;
@@ -96,6 +98,8 @@ struct intel_memory_region {
 	} objects;
 };
 
+char *intel_get_mem_region_name(struct intel_memory_region *mem);
+
 int intel_memory_region_init_buddy(struct intel_memory_region *mem);
 void intel_memory_region_release_buddy(struct intel_memory_region *mem);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
