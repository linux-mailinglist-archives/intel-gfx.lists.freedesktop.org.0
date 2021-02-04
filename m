Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A8430F30B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 13:21:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB956ECA7;
	Thu,  4 Feb 2021 12:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7CF86ECA7
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 12:21:41 +0000 (UTC)
IronPort-SDR: albqO2lBaNpGWQo3pY9kq6vApWfD0vUJecJbdmnNb5t418yJ+uIhUJKtMF6c87bcfEruY/bxab
 JrN1bOHz+3hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="178664972"
X-IronPort-AV: E=Sophos;i="5.79,400,1602572400"; d="scan'208";a="178664972"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 04:21:41 -0800
IronPort-SDR: Y/nm+eFQqDntfI/Q3J6vOMinWTuFobD7e07nsSxG1gfU14b9y09N+ij9zED2UVAvoWtQCIHoXO
 Jx6CQc/xRk+w==
X-IronPort-AV: E=Sophos;i="5.79,400,1602572400"; d="scan'208";a="393139794"
Received: from obell-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.22.80])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 04:21:40 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 12:21:25 +0000
Message-Id: <20210204122126.647201-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: cleanup the region class/instance
 encoding
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

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c | 33 ++++++++++++++--------
 drivers/gpu/drm/i915/intel_memory_region.h | 11 ++------
 2 files changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 49d306b5532f..287a647aaaa3 100644
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
+       [INTEL_REGION_SMEM] = {
+               .class = INTEL_MEMORY_SYSTEM,
+               .instance = 0,
+       },
+       [INTEL_REGION_LMEM] = {
+               .class = INTEL_MEMORY_LOCAL,
+               .instance = 0,
+       },
+       [INTEL_REGION_STOLEN] = {
+               .class = INTEL_MEMORY_STOLEN,
+               .instance = 0,
+       },
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
