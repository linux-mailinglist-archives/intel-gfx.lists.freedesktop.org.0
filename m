Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 208D260C474
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 08:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B2C110E18B;
	Tue, 25 Oct 2022 06:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40BE10E069;
 Tue, 25 Oct 2022 06:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666681151; x=1698217151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2wRy8M6IR49u3b/Q322bVaD0wFxFsFiPobbKt9sA9Lk=;
 b=IsfeKdAk1td8od9+L9Mt8HorQay5BMR4zyMOJghZtFYSdKpFozYp9Owg
 RDuhF919YRlIYs97VWMZrXOwoD5dsyvGU/QDJ8/pyVtpaoX3VTbysL2aw
 A8R6SEjXM9ucren79A9wWJMVf9qwKsoNJ+1y9SzWADfwN/5SOClKL+Os8
 /+fsXCQ2qlMDNYMNFVFEf23JPn4vORAlkawDKAN1iuJrzwd4UnL/1hxCw
 pXaHiEieDuesor3oPNqkbbx5EFF9piwoBD/9tlA/dWrhEUxN8Oq3TJWcf
 mZ/1PmkRQjG4tAtHOBwfq3KQ3eQK+EtpK4gNUem8X56qcjn3VLFSELuVn A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="334198163"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="334198163"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 23:59:11 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="806564390"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="806564390"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 23:59:11 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 24 Oct 2022 23:58:49 -0700
Message-Id: <20221025065905.13325-4-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
References: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 03/19] drm/i915/vm_bind: Expose
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

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
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

