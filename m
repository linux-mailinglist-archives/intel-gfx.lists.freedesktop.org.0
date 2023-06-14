Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F04072F416
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 07:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A3B210E217;
	Wed, 14 Jun 2023 05:18:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B169E10E0D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jun 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686719896; x=1718255896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gug5OIutkJOIp5+cC+K2oHABPugMpIU2xqIFt/u0FkI=;
 b=Oa0lz3bE5tX6I4jH782OAG7QxnoKVsRRtazani+tGbky6iTIMgDwSTSk
 hPkj6ulntcLIkfl/+2XOfsp//4FnUCgwWF43z/+Eu/E9qv4YWlLMCyH8k
 p6K5MgP1Y6VrB+d6o9WbpixnIJCQ3wqJbVX1YesljLxLehsHQzYXTxfIv
 18MexyaMFdHsKKVesWr2U8UHq1R73m5+dQfh+XxCYaIsGAbj8hwF0jwiK
 pVtHoyjyyojXXk+wuiaCgkXPxf74CbD3KVplaHnTtdPp+UHs1H5eUFGBt
 9TZqfZuu8KT/W57SXkUtTq5ArDmcdBvr97B73q12IFHvEo+iUS0PhiXo4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="348184425"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="348184425"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 22:18:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="715059448"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="715059448"
Received: from lcoutoda-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 22:18:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Jun 2023 08:17:29 +0300
Message-Id: <20230614051731.745821-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230614051731.745821-1-jouni.hogander@intel.com>
References: <20230614051731.745821-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: Move stolen memory handling
 into i915_gem_stolen
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

We are preparing for Xe. Xe stolen memory handling differs from i915 so we
want to move stolen memory handling details into i915_gem_stolen.

Also add a common type for fbc compressed fb and use it from fbc code
instead of underlying type directly. This way we can have common type
i915_stolen_fb for both i915 and Xe.

v2: Fix couple of checkpatch warnings

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c   | 46 +++++++++++-----------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 36 +++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h | 13 ++++++
 3 files changed, 73 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 7f8b2d7713c7..a18e84efe911 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -94,8 +94,7 @@ struct intel_fbc {
 	struct mutex lock;
 	unsigned int busy_bits;
 
-	struct drm_mm_node compressed_fb;
-	struct drm_mm_node compressed_llb;
+	struct i915_stolen_fb compressed_fb, compressed_llb;
 
 	enum intel_fbc_id id;
 
@@ -332,15 +331,16 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
 
-	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.stolen.start,
-					 fbc->compressed_fb.start, U32_MAX));
-	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.stolen.start,
-					 fbc->compressed_llb.start, U32_MAX));
-
+	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
+					 i915_gem_stolen_node_offset(&fbc->compressed_fb),
+					 U32_MAX));
+	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
+					 i915_gem_stolen_node_offset(&fbc->compressed_llb),
+					 U32_MAX));
 	intel_de_write(i915, FBC_CFB_BASE,
-		       i915->dsm.stolen.start + fbc->compressed_fb.start);
+		       i915_gem_stolen_node_address(i915, &fbc->compressed_fb));
 	intel_de_write(i915, FBC_LL_BASE,
-		       i915->dsm.stolen.start + fbc->compressed_llb.start);
+		       i915_gem_stolen_node_address(i915, &fbc->compressed_llb));
 }
 
 static const struct intel_fbc_funcs i8xx_fbc_funcs = {
@@ -447,7 +447,8 @@ static void g4x_fbc_program_cfb(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
 
-	intel_de_write(i915, DPFC_CB_BASE, fbc->compressed_fb.start);
+	intel_de_write(i915, DPFC_CB_BASE,
+		       i915_gem_stolen_node_offset(&fbc->compressed_fb));
 }
 
 static const struct intel_fbc_funcs g4x_fbc_funcs = {
@@ -498,7 +499,8 @@ static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
 
-	intel_de_write(i915, ILK_DPFC_CB_BASE(fbc->id), fbc->compressed_fb.start);
+	intel_de_write(i915, ILK_DPFC_CB_BASE(fbc->id),
+		       i915_gem_stolen_node_offset(&fbc->compressed_fb));
 }
 
 static const struct intel_fbc_funcs ilk_fbc_funcs = {
@@ -713,7 +715,7 @@ static u64 intel_fbc_stolen_end(struct drm_i915_private *i915)
 	 * underruns, even if that range is not reserved by the BIOS. */
 	if (IS_BROADWELL(i915) ||
 	    (DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915)))
-		end = resource_size(&i915->dsm.stolen) - 8 * 1024 * 1024;
+		end = i915_gem_stolen_area_size(i915) - 8 * 1024 * 1024;
 	else
 		end = U64_MAX;
 
@@ -770,9 +772,9 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 	int ret;
 
 	drm_WARN_ON(&i915->drm,
-		    drm_mm_node_allocated(&fbc->compressed_fb));
+		    i915_gem_stolen_node_allocated(&fbc->compressed_fb));
 	drm_WARN_ON(&i915->drm,
-		    drm_mm_node_allocated(&fbc->compressed_llb));
+		    i915_gem_stolen_node_allocated(&fbc->compressed_llb));
 
 	if (DISPLAY_VER(i915) < 5 && !IS_G4X(i915)) {
 		ret = i915_gem_stolen_insert_node(i915, &fbc->compressed_llb,
@@ -792,15 +794,14 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 
 	drm_dbg_kms(&i915->drm,
 		    "reserved %llu bytes of contiguous stolen space for FBC, limit: %d\n",
-		    fbc->compressed_fb.size, fbc->limit);
-
+		    i915_gem_stolen_node_size(&fbc->compressed_fb), fbc->limit);
 	return 0;
 
 err_llb:
-	if (drm_mm_node_allocated(&fbc->compressed_llb))
+	if (i915_gem_stolen_node_allocated(&fbc->compressed_llb))
 		i915_gem_stolen_remove_node(i915, &fbc->compressed_llb);
 err:
-	if (drm_mm_initialized(&i915->mm.stolen))
+	if (i915_gem_stolen_initialized(i915))
 		drm_info_once(&i915->drm, "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
 	return -ENOSPC;
 }
@@ -825,9 +826,9 @@ static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
 		return;
 
-	if (drm_mm_node_allocated(&fbc->compressed_llb))
+	if (i915_gem_stolen_node_allocated(&fbc->compressed_llb))
 		i915_gem_stolen_remove_node(i915, &fbc->compressed_llb);
-	if (drm_mm_node_allocated(&fbc->compressed_fb))
+	if (i915_gem_stolen_node_allocated(&fbc->compressed_fb))
 		i915_gem_stolen_remove_node(i915, &fbc->compressed_fb);
 }
 
@@ -1030,7 +1031,8 @@ static bool intel_fbc_is_cfb_ok(const struct intel_plane_state *plane_state)
 	struct intel_fbc *fbc = plane->fbc;
 
 	return intel_fbc_min_limit(plane_state) <= fbc->limit &&
-		intel_fbc_cfb_size(plane_state) <= fbc->compressed_fb.size * fbc->limit;
+		intel_fbc_cfb_size(plane_state) <= fbc->limit *
+			i915_gem_stolen_node_size(&fbc->compressed_fb);
 }
 
 static bool intel_fbc_is_ok(const struct intel_plane_state *plane_state)
@@ -1707,7 +1709,7 @@ void intel_fbc_init(struct drm_i915_private *i915)
 {
 	enum intel_fbc_id fbc_id;
 
-	if (!drm_mm_initialized(&i915->mm.stolen))
+	if (!i915_gem_stolen_initialized(i915))
 		DISPLAY_RUNTIME_INFO(i915)->fbc_mask = 0;
 
 	if (need_fbc_vtd_wa(i915))
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 3b094d36a0b0..78bac1e611dd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -974,3 +974,39 @@ bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj)
 {
 	return obj->ops == &i915_gem_object_stolen_ops;
 }
+
+bool i915_gem_stolen_initialized(const struct drm_i915_private *i915)
+{
+	return drm_mm_initialized(&i915->mm.stolen);
+}
+
+u64 i915_gem_stolen_area_address(const struct drm_i915_private *i915)
+{
+	return i915->dsm.stolen.start;
+}
+
+u64 i915_gem_stolen_area_size(const struct drm_i915_private *i915)
+{
+	return resource_size(&i915->dsm.stolen);
+}
+
+u64 i915_gem_stolen_node_address(const struct drm_i915_private *i915,
+				 const struct drm_mm_node *node)
+{
+	return i915->dsm.stolen.start + i915_gem_stolen_node_offset(node);
+}
+
+bool i915_gem_stolen_node_allocated(const struct drm_mm_node *node)
+{
+	return drm_mm_node_allocated(node);
+}
+
+u64 i915_gem_stolen_node_offset(const struct drm_mm_node *node)
+{
+	return node->start;
+}
+
+u64 i915_gem_stolen_node_size(const struct drm_mm_node *node)
+{
+	return node->size;
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index d5005a39d130..258381d1c054 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -12,6 +12,8 @@ struct drm_i915_private;
 struct drm_mm_node;
 struct drm_i915_gem_object;
 
+#define i915_stolen_fb drm_mm_node
+
 int i915_gem_stolen_insert_node(struct drm_i915_private *dev_priv,
 				struct drm_mm_node *node, u64 size,
 				unsigned alignment);
@@ -36,4 +38,15 @@ bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj);
 
 #define I915_GEM_STOLEN_BIAS SZ_128K
 
+bool i915_gem_stolen_initialized(const struct drm_i915_private *i915);
+u64 i915_gem_stolen_area_address(const struct drm_i915_private *i915);
+u64 i915_gem_stolen_area_size(const struct drm_i915_private *i915);
+
+u64 i915_gem_stolen_node_address(const struct drm_i915_private *i915,
+				 const struct drm_mm_node *node);
+
+bool i915_gem_stolen_node_allocated(const struct drm_mm_node *node);
+u64 i915_gem_stolen_node_offset(const struct drm_mm_node *node);
+u64 i915_gem_stolen_node_size(const struct drm_mm_node *node);
+
 #endif /* __I915_GEM_STOLEN_H__ */
-- 
2.34.1

