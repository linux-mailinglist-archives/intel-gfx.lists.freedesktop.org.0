Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BCB1303F9
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2020 20:10:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C034A89450;
	Sat,  4 Jan 2020 19:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EB5B89450
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Jan 2020 19:10:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19771053-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 04 Jan 2020 19:10:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  4 Jan 2020 19:10:42 +0000
Message-Id: <20200104191043.2207314-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915: lookup for mem_region of a mem_type
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

From: Ramalingam C <ramalingam.c@intel.com>

Lookup function to retrieve the pointer to a memory region of
a mem_type.

v2:
  for_each_memory_region is used.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com> [v1]
---
 drivers/gpu/drm/i915/intel_memory_region.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/intel_memory_region.h |  3 +++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index a6211cbec71e..d0d038b3cd79 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -16,6 +16,20 @@ const u32 intel_region_map[] = {
 	[INTEL_REGION_STOLEN] = REGION_MAP(INTEL_MEMORY_STOLEN, 0),
 };
 
+struct intel_memory_region *
+intel_memory_region_by_type(struct drm_i915_private *i915,
+			    enum intel_memory_type mem_type)
+{
+	struct intel_memory_region *mr;
+	int id;
+
+	for_each_memory_region(mr, i915, id)
+		if (mr->type == mem_type)
+			return mr;
+
+	return NULL;
+}
+
 static u64
 intel_memory_region_free_pages(struct intel_memory_region *mem,
 			       struct list_head *blocks)
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 7f4bff8f8be1..232490d89a83 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -132,6 +132,9 @@ void intel_memory_region_put(struct intel_memory_region *mem);
 
 int intel_memory_regions_hw_probe(struct drm_i915_private *i915);
 void intel_memory_regions_driver_release(struct drm_i915_private *i915);
+struct intel_memory_region *
+intel_memory_region_by_type(struct drm_i915_private *i915,
+			    enum intel_memory_type mem_type);
 
 __printf(2, 3) void
 intel_memory_region_set_name(struct intel_memory_region *mem,
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
