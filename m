Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7495F98C2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 08:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF18E10E642;
	Mon, 10 Oct 2022 06:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E9F10E658;
 Mon, 10 Oct 2022 06:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665385135; x=1696921135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=clixh1e9i8U56U6MnJkFzIG9A6nLMEiNQhmaUc20KfA=;
 b=XDfPDQKRMaOknsAtdGuHqrRaLlTNCSx41Sgg0uAg7Xk1EVo7as/EK5nG
 6csd0XR/ZBlH26SCi+Lq2wdJUZu1f8/GZ1jg3Llo7MoljPmd1PU4zV4FX
 T/FjZjcU8krAbpS4aW94IILKQcHeMBt3FEkNDrZn5LjM8onrHtgsR4i0/
 aLizwACNA7UUTv7bZARRJQ/omO2zAGlgjLqRBCRHuExEvgtDlDM87JYiH
 XyO85RoniO0KsqByvOx5zobUquKBO3z+3RLqp6GP/VhwYFDVHCFbK8GFi
 MeY2fdIf3V5quRarwHjVtnoLjSMwoPKh+5mMgi1s1MI508gwiUqhC2KJ6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="305752995"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="305752995"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2022 23:58:54 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="576947137"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="576947137"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 09 Oct 2022 23:58:53 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Sun,  9 Oct 2022 23:58:12 -0700
Message-Id: <20221010065826.32037-4-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20221010065826.32037-1-niranjana.vishwanathapura@intel.com>
References: <20221010065826.32037-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/17] drm/i915/vm_bind: Expose
 i915_gem_object_max_page_size()
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 matthew.auld@intel.com, daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Expose i915_gem_object_max_page_size() function non-static
which will be used by the vm_bind feature.

Acked-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 18 +++++++++++++-----
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  2 ++
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 33673fe7ee0a..5c6e396ab74d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -15,10 +15,18 @@
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
 
-static u32 object_max_page_size(struct intel_memory_region **placements,
-				unsigned int n_placements)
+/**
+ * i915_gem_object_max_page_size() - max of min_page_size of the regions
+ * @placements:  list of regions
+ * @n_placements: number of the placements
+ *
+ * Returns the largest of min_page_size of the @placements,
+ * or I915_GTT_PAGE_SIZE_4K if @n_placements is 0.
+ */
+u32 i915_gem_object_max_page_size(struct intel_memory_region **placements,
+				  unsigned int n_placements)
 {
-	u32 max_page_size = 0;
+	u32 max_page_size = I915_GTT_PAGE_SIZE_4K;
 	int i;
 
 	for (i = 0; i < n_placements; i++) {
@@ -28,7 +36,6 @@ static u32 object_max_page_size(struct intel_memory_region **placements,
 		max_page_size = max_t(u32, max_page_size, mr->min_page_size);
 	}
 
-	GEM_BUG_ON(!max_page_size);
 	return max_page_size;
 }
 
@@ -99,7 +106,8 @@ __i915_gem_object_create_user_ext(struct drm_i915_private *i915, u64 size,
 
 	i915_gem_flush_free_objects(i915);
 
-	size = round_up(size, object_max_page_size(placements, n_placements));
+	size = round_up(size, i915_gem_object_max_page_size(placements,
+							    n_placements));
 	if (size == 0)
 		return ERR_PTR(-EINVAL);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 6b9ecff42bb5..db3dd0e285c5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -47,6 +47,8 @@ static inline bool i915_gem_object_size_2big(u64 size)
 }
 
 void i915_gem_init__objects(struct drm_i915_private *i915);
+u32 i915_gem_object_max_page_size(struct intel_memory_region **placements,
+				  unsigned int n_placements);
 
 void i915_objects_module_exit(void);
 int i915_objects_module_init(void);
-- 
2.21.0.rc0.32.g243a4c7e27

