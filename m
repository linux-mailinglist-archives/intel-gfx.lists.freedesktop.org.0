Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F058B9AE75
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:44:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B399810E780;
	Wed, 24 Sep 2025 16:44:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iLbFQmHP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28AEC10E77F;
 Wed, 24 Sep 2025 16:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732252; x=1790268252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m0TmEn0xpgPtz8Y2mPSzz9LKGRDtVX+w2BY2wO/t1nI=;
 b=iLbFQmHP+6a7L97WB+hpxpuvxEYnhXYjq3Fr7W7/zFdyrt/Vj4s5UfLO
 fqC6IJvdzW5ak9ba9zwHC1G8625jHdhmQ5tWduIQnh98LYjjIVl76cxUS
 Zm0pEU7tTaaOENIRPiSfAdmXkWW7WUeCe/umZpnBj9QScFc8++ekEBcZu
 ry/D9m/kJ7ZblBZOFz8G07VNDrFj2sISKEoOo7X/+MxV4kiTRjsQZC7Xf
 5Kb9THkORRfuFzUHx9GDE8PMQ/blFo+TJbThyEBr0wfl2NFTmtAt0Tzkd
 PVYs4XD7vLXvOHioi+1it8O+d7Nm2x9zwGMKkiXp5XdyLAzGll3mRloee g==;
X-CSE-ConnectionGUID: NdSLECVRTFyulGRw+Q+7uA==
X-CSE-MsgGUID: 0o05wuxFRtWBZUUSKEWGPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="72137987"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="72137987"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:11 -0700
X-CSE-ConnectionGUID: zgrtFDcjR+OhFpPnrOfIMA==
X-CSE-MsgGUID: PcjHhgwTRdaDAGDjJRI1Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177515456"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 05/11] drm/i915/stolen: convert intel_stolen_node into a real
 struct of its own
Date: Wed, 24 Sep 2025 19:43:34 +0300
Message-ID: <36762f611566d81427e702369f4e8207ead5f26c.1758732183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758732183.git.jani.nikula@intel.com>
References: <cover.1758732183.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

i915_gem_stolen.h simply defines intel_stolen_node as drm_mm_node. Make
struct intel_stolen_node an actual struct of its own right, and embed
struct drm_mm_node inside. This allow better unification between i915
and xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 66 ++++++++++++++--------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h | 22 ++++----
 2 files changed, 56 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 3380151edfc1..70ee34303e36 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -36,9 +36,9 @@
  * for is a boon.
  */
 
-int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
-					 struct drm_mm_node *node, u64 size,
-					 unsigned alignment, u64 start, u64 end)
+static int __i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
+						  struct drm_mm_node *node, u64 size,
+						  unsigned int alignment, u64 start, u64 end)
 {
 	int ret;
 
@@ -58,24 +58,46 @@ int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
 	return ret;
 }
 
+int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
+					 struct intel_stolen_node *node, u64 size,
+					 unsigned int alignment, u64 start, u64 end)
+{
+	return __i915_gem_stolen_insert_node_in_range(i915, &node->node,
+						      size, alignment,
+						      start, end);
+}
+
+static int __i915_gem_stolen_insert_node(struct drm_i915_private *i915,
+					 struct drm_mm_node *node, u64 size,
+					 unsigned int alignment)
+{
+	return __i915_gem_stolen_insert_node_in_range(i915, node,
+						      size, alignment,
+						      I915_GEM_STOLEN_BIAS,
+						      U64_MAX);
+}
+
 int i915_gem_stolen_insert_node(struct drm_i915_private *i915,
-				struct drm_mm_node *node, u64 size,
-				unsigned alignment)
+				struct intel_stolen_node *node, u64 size,
+				unsigned int alignment)
 {
-	return i915_gem_stolen_insert_node_in_range(i915, node,
-						    size, alignment,
-						    I915_GEM_STOLEN_BIAS,
-						    U64_MAX);
+	return __i915_gem_stolen_insert_node(i915, &node->node, size, alignment);
 }
 
-void i915_gem_stolen_remove_node(struct drm_i915_private *i915,
-				 struct drm_mm_node *node)
+static void __i915_gem_stolen_remove_node(struct drm_i915_private *i915,
+					  struct drm_mm_node *node)
 {
 	mutex_lock(&i915->mm.stolen_lock);
 	drm_mm_remove_node(node);
 	mutex_unlock(&i915->mm.stolen_lock);
 }
 
+void i915_gem_stolen_remove_node(struct drm_i915_private *i915,
+				 struct intel_stolen_node *node)
+{
+	__i915_gem_stolen_remove_node(i915, &node->node);
+}
+
 static bool valid_stolen_size(struct drm_i915_private *i915, struct resource *dsm)
 {
 	return (dsm->start != 0 || HAS_LMEMBAR_SMEM_STOLEN(i915)) && dsm->end > dsm->start;
@@ -683,7 +705,7 @@ i915_gem_object_release_stolen(struct drm_i915_gem_object *obj)
 	struct drm_mm_node *stolen = fetch_and_zero(&obj->stolen);
 
 	GEM_BUG_ON(!stolen);
-	i915_gem_stolen_remove_node(i915, stolen);
+	__i915_gem_stolen_remove_node(i915, stolen);
 	kfree(stolen);
 
 	i915_gem_object_release_memory_region(obj);
@@ -772,8 +794,8 @@ static int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
 		ret = drm_mm_reserve_node(&i915->mm.stolen, stolen);
 		mutex_unlock(&i915->mm.stolen_lock);
 	} else {
-		ret = i915_gem_stolen_insert_node(i915, stolen, size,
-						  mem->min_page_size);
+		ret = __i915_gem_stolen_insert_node(i915, stolen, size,
+						    mem->min_page_size);
 	}
 	if (ret)
 		goto err_free;
@@ -785,7 +807,7 @@ static int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
 	return 0;
 
 err_remove:
-	i915_gem_stolen_remove_node(i915, stolen);
+	__i915_gem_stolen_remove_node(i915, stolen);
 err_free:
 	kfree(stolen);
 	return ret;
@@ -1016,22 +1038,22 @@ u64 i915_gem_stolen_area_size(const struct drm_i915_private *i915)
 }
 
 u64 i915_gem_stolen_node_address(const struct drm_i915_private *i915,
-				 const struct drm_mm_node *node)
+				 const struct intel_stolen_node *node)
 {
 	return i915->dsm.stolen.start + i915_gem_stolen_node_offset(node);
 }
 
-bool i915_gem_stolen_node_allocated(const struct drm_mm_node *node)
+bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node)
 {
-	return drm_mm_node_allocated(node);
+	return drm_mm_node_allocated(&node->node);
 }
 
-u64 i915_gem_stolen_node_offset(const struct drm_mm_node *node)
+u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node)
 {
-	return node->start;
+	return node->node.start;
 }
 
-u64 i915_gem_stolen_node_size(const struct drm_mm_node *node)
+u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node)
 {
-	return node->size;
+	return node->node.size;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index c2f9c994e0ae..9e42d5a4cf13 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -7,22 +7,24 @@
 #define __I915_GEM_STOLEN_H__
 
 #include <linux/types.h>
+#include <drm/drm_mm.h>
 
-struct drm_i915_private;
-struct drm_mm_node;
 struct drm_i915_gem_object;
+struct drm_i915_private;
 
-#define intel_stolen_node drm_mm_node
+struct intel_stolen_node {
+	struct drm_mm_node node;
+};
 
 int i915_gem_stolen_insert_node(struct drm_i915_private *i915,
-				struct drm_mm_node *node, u64 size,
+				struct intel_stolen_node *node, u64 size,
 				unsigned alignment);
 int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
-					 struct drm_mm_node *node, u64 size,
+					 struct intel_stolen_node *node, u64 size,
 					 unsigned alignment, u64 start,
 					 u64 end);
 void i915_gem_stolen_remove_node(struct drm_i915_private *i915,
-				 struct drm_mm_node *node);
+				 struct intel_stolen_node *node);
 struct intel_memory_region *
 i915_gem_stolen_smem_setup(struct drm_i915_private *i915, u16 type,
 			   u16 instance);
@@ -43,10 +45,10 @@ u64 i915_gem_stolen_area_address(const struct drm_i915_private *i915);
 u64 i915_gem_stolen_area_size(const struct drm_i915_private *i915);
 
 u64 i915_gem_stolen_node_address(const struct drm_i915_private *i915,
-				 const struct drm_mm_node *node);
+				 const struct intel_stolen_node *node);
 
-bool i915_gem_stolen_node_allocated(const struct drm_mm_node *node);
-u64 i915_gem_stolen_node_offset(const struct drm_mm_node *node);
-u64 i915_gem_stolen_node_size(const struct drm_mm_node *node);
+bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node);
+u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node);
+u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node);
 
 #endif /* __I915_GEM_STOLEN_H__ */
-- 
2.47.3

