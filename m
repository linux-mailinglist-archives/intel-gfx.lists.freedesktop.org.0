Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAB831394D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 17:25:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEEDE6E944;
	Mon,  8 Feb 2021 16:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E57D6E943
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 16:25:16 +0000 (UTC)
IronPort-SDR: I1iPehBZuHmaW5X1tObM2+8d5pMsJnXhN2TvXHe3kfKV55/bjt0qMPatn4Uc4Zqww7sjiirAUt
 kJrFEIsONaAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="266571488"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="266571488"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 08:25:16 -0800
IronPort-SDR: OD2eCXnBF4f8LgvBCCr1OPvPShsf6sX8BCvDdmuIRlYoqLqABbWCJX0nD7J4Q71lo308bhe0om
 6K+RFdJfsduQ==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="395544495"
Received: from jjcunnix-mobl2.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.0.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 08:25:14 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 16:24:49 +0000
Message-Id: <20210208162450.108067-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210208162450.108067-1-matthew.auld@intel.com>
References: <20210208162450.108067-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/stolen: enforce the min_page_size
 contract
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

From: CQ Tang <cq.tang@intel.com>

Since stolen can now be device local-memory underneath, we should try to
enforce any min_page_size restrictions when allocating pages.

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index dfc3076abd0c..0722b909cd09 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -32,6 +32,7 @@ int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
 					 struct drm_mm_node *node, u64 size,
 					 unsigned alignment, u64 start, u64 end)
 {
+	struct intel_memory_region *mem = i915_stolen_region(i915);
 	int ret;
 
 	if (!drm_mm_initialized(&i915->mm.stolen))
@@ -41,6 +42,10 @@ int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
 	if (INTEL_GEN(i915) >= 8 && start < 4096)
 		start = 4096;
 
+	if (GEM_WARN_ON(!IS_ALIGNED(size, mem->min_page_size)) ||
+	    GEM_WARN_ON(!IS_ALIGNED(alignment, mem->min_page_size)))
+		return -EINVAL;
+
 	mutex_lock(&i915->mm.stolen_lock);
 	ret = drm_mm_insert_node_in_range(&i915->mm.stolen, node,
 					  size, alignment, 0,
@@ -674,7 +679,8 @@ static int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
 	if (!stolen)
 		return -ENOMEM;
 
-	ret = i915_gem_stolen_insert_node(i915, stolen, size, 4096);
+	ret = i915_gem_stolen_insert_node(i915, stolen, size,
+					  mem->min_page_size);
 	if (ret)
 		goto err_free;
 
@@ -814,8 +820,8 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 
 	/* KISS and expect everything to be page-aligned */
 	if (GEM_WARN_ON(size == 0) ||
-	    GEM_WARN_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE)) ||
-	    GEM_WARN_ON(!IS_ALIGNED(stolen_offset, I915_GTT_MIN_ALIGNMENT)))
+	    GEM_WARN_ON(!IS_ALIGNED(size, mem->min_page_size)) ||
+	    GEM_WARN_ON(!IS_ALIGNED(stolen_offset, mem->min_page_size)))
 		return ERR_PTR(-EINVAL);
 
 	stolen = kzalloc(sizeof(*stolen), GFP_KERNEL);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
