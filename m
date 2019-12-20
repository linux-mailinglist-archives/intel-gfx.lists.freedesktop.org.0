Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9863A127B53
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 13:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDCE26EC22;
	Fri, 20 Dec 2019 12:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 329276EC22
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 12:52:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 04:52:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,335,1571727600"; d="scan'208";a="248680556"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 20 Dec 2019 04:52:21 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Fri, 20 Dec 2019 18:21:16 +0530
Message-Id: <20191220125116.15181-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/lmem: debugfs for LMEM details
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

Signed-off-by: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_debugfs.c        | 6 +++++-
 drivers/gpu/drm/i915/intel_memory_region.c | 5 ++++-
 drivers/gpu/drm/i915/intel_memory_region.h | 3 +++
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index d28468eaed57..856ded8cd332 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -373,7 +373,11 @@ static int i915_gem_object_info(struct seq_file *m, void *data)
 		   atomic_read(&i915->mm.free_count),
 		   i915->mm.shrink_memory);
 
-	seq_putc(m, '\n');
+	if (HAS_LMEM(i915)) {
+		seq_printf(m, "LMEM total: %llu bytes, available %llu bytes\n",
+			   (u64)i915->mm.regions[INTEL_REGION_LMEM]->total,
+			   (u64)i915->mm.regions[INTEL_REGION_LMEM]->avail);
+	}
 
 	print_context_stats(m, i915);
 
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
index 238722009677..da56d8ff1b01 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -94,6 +94,9 @@ struct intel_memory_region {
 		struct list_head list;
 		struct list_head purgeable;
 	} objects;
+
+	resource_size_t total;
+	resource_size_t avail;
 };
 
 int intel_memory_region_init_buddy(struct intel_memory_region *mem);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
