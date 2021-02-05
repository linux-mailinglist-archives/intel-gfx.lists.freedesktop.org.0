Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB693108DB
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 11:20:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47CEA6F3DF;
	Fri,  5 Feb 2021 10:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFFE26F3DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 10:20:38 +0000 (UTC)
IronPort-SDR: ynb/n1itvDlgxf1OaO3Hw3eAiTG5vF55tt05YmlXbk+/7v/z81TN6aUXNr7fwUq8ew5j3r6b0/
 5zXNjrkAOAgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181478488"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="181478488"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 02:20:34 -0800
IronPort-SDR: hWCJn9TW/W/4pgCAlulZygTVfwof8XWw7Fo0QtgJ/OzdlDhUxtV+v+M+oEHSq6bSDnZVGHHPmk
 LigNPZ4mPdtw==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="373341569"
Received: from gsloan-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.14.92])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 02:20:33 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 10:20:25 +0000
Message-Id: <20210205102026.806699-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: cleanup the region
 class/instance encoding
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

Get rid of the strange REGION_MAP encoding stuff and just use an
explicit class/instance pair for each region. This better matches our
future uAPI where all queryable regions are identified with a u16 class
and u16 instance.

v2: fix whitespace

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/intel_memory_region.c | 33 ++++++++++++++--------
 drivers/gpu/drm/i915/intel_memory_region.h | 11 ++------
 2 files changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 49d306b5532f..048b6d6b5af2 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -6,14 +6,22 @@
 #include "intel_memory_region.h"
 #include "i915_drv.h"
 
-/* XXX: Hysterical raisins. BIT(inst) needs to just be (inst) at some point. */
-#define REGION_MAP(type, inst) \
-	BIT((type) + INTEL_MEMORY_TYPE_SHIFT) | BIT(inst)
-
-static const u32 intel_region_map[] = {
-	[INTEL_REGION_SMEM] = REGION_MAP(INTEL_MEMORY_SYSTEM, 0),
-	[INTEL_REGION_LMEM] = REGION_MAP(INTEL_MEMORY_LOCAL, 0),
-	[INTEL_REGION_STOLEN] = REGION_MAP(INTEL_MEMORY_STOLEN, 0),
+static const struct {
+	u16 class;
+	u16 instance;
+} intel_region_map[] = {
+	[INTEL_REGION_SMEM] = {
+		.class = INTEL_MEMORY_SYSTEM,
+		.instance = 0,
+	},
+	[INTEL_REGION_LMEM] = {
+		.class = INTEL_MEMORY_LOCAL,
+		.instance = 0,
+	},
+	[INTEL_REGION_STOLEN] = {
+		.class = INTEL_MEMORY_STOLEN,
+		.instance = 0,
+	},
 };
 
 struct intel_memory_region *
@@ -259,12 +267,13 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 
 	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
 		struct intel_memory_region *mem = ERR_PTR(-ENODEV);
-		u32 type;
+		u16 type, instance;
 
 		if (!HAS_REGION(i915, BIT(i)))
 			continue;
 
-		type = MEMORY_TYPE_FROM_REGION(intel_region_map[i]);
+		type = intel_region_map[i].class;
+		instance = intel_region_map[i].instance;
 		switch (type) {
 		case INTEL_MEMORY_SYSTEM:
 			mem = i915_gem_shmem_setup(i915);
@@ -284,9 +293,9 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 			goto out_cleanup;
 		}
 
-		mem->id = intel_region_map[i];
+		mem->id = i;
 		mem->type = type;
-		mem->instance = MEMORY_INSTANCE_FROM_REGION(intel_region_map[i]);
+		mem->instance = instance;
 
 		i915->mm.regions[i] = mem;
 	}
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index d17e4fe3123c..8baf2536d7a5 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -39,11 +39,6 @@ enum intel_region_id {
 #define REGION_LMEM     BIT(INTEL_REGION_LMEM)
 #define REGION_STOLEN   BIT(INTEL_REGION_STOLEN)
 
-#define INTEL_MEMORY_TYPE_SHIFT 16
-
-#define MEMORY_TYPE_FROM_REGION(r) (ilog2((r) >> INTEL_MEMORY_TYPE_SHIFT))
-#define MEMORY_INSTANCE_FROM_REGION(r) (ilog2((r) & 0xffff))
-
 #define I915_ALLOC_MIN_PAGE_SIZE  BIT(0)
 #define I915_ALLOC_CONTIGUOUS     BIT(1)
 
@@ -84,9 +79,9 @@ struct intel_memory_region {
 	resource_size_t total;
 	resource_size_t avail;
 
-	unsigned int type;
-	unsigned int instance;
-	unsigned int id;
+	u16 type;
+	u16 instance;
+	enum intel_region_id id;
 	char name[8];
 
 	struct list_head reserved;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
