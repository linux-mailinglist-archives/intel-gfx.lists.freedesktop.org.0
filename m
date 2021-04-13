Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2341735D6E7
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 07:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC49E6E222;
	Tue, 13 Apr 2021 05:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F79D6E204
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 05:10:49 +0000 (UTC)
IronPort-SDR: Y8O+TjfVLyTI33Do9gm8cNyew6srRFwm3FxUPGh3B4S84vm670gzFNuC2HAmvUdxjyWuqjPwgk
 XvbGzow2Fv+Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="194371990"
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; d="scan'208";a="194371990"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 22:10:46 -0700
IronPort-SDR: 5NrilwaGoXQDaSjpOjkduOB/4R0FAhTpg/tzkbTBOPemAXp3Jx/6ia1QJl1MDEAzXj62HKMB91
 dV7+w0B0GzLw==
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; d="scan'208";a="460450766"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 22:10:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 22:09:59 -0700
Message-Id: <20210413051002.92589-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210413051002.92589-1-lucas.demarchi@intel.com>
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/12] drm/i915: eliminate remaining uses of
 intel_device_info->gen
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

Replace gen with the new graphics_ver value and use GRAPHICS_VER()
in those places.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 22 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.c               |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c      |  2 +-
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 5964e67c7d36..297143511f99 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -274,7 +274,7 @@ struct i915_execbuffer {
 		struct drm_mm_node node; /** temporary GTT binding */
 		unsigned long vaddr; /** Current kmap address */
 		unsigned long page; /** Currently mapped page index */
-		unsigned int gen; /** Cached value of INTEL_GEN */
+		unsigned int graphics_ver; /** Cached value of GRAPHICS_VER */
 		bool use_64bit_reloc : 1;
 		bool has_llc : 1;
 		bool has_fence : 1;
@@ -1049,10 +1049,10 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->page = -1;
 	cache->vaddr = 0;
 	/* Must be a variable in the struct to allow GCC to unroll. */
-	cache->gen = INTEL_GEN(i915);
+	cache->graphics_ver = GRAPHICS_VER(i915);
 	cache->has_llc = HAS_LLC(i915);
 	cache->use_64bit_reloc = HAS_64BIT_RELOC(i915);
-	cache->has_fence = cache->gen < 4;
+	cache->has_fence = cache->graphics_ver < 4;
 	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 	cache->node.flags = 0;
 	reloc_cache_clear(cache);
@@ -1402,7 +1402,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 
 	err = eb->engine->emit_bb_start(rq,
 					batch->node.start, PAGE_SIZE,
-					cache->gen > 5 ? 0 : I915_DISPATCH_SECURE);
+					cache->graphics_ver > 5 ? 0 : I915_DISPATCH_SECURE);
 	if (err)
 		goto skip_request;
 
@@ -1503,14 +1503,14 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			      u64 offset,
 			      u64 target_addr)
 {
-	const unsigned int gen = eb->reloc_cache.gen;
+	const unsigned int ver = eb->reloc_cache.graphics_ver;
 	unsigned int len;
 	u32 *batch;
 	u64 addr;
 
-	if (gen >= 8)
+	if (ver >= 8)
 		len = offset & 7 ? 8 : 5;
-	else if (gen >= 4)
+	else if (ver >= 4)
 		len = 4;
 	else
 		len = 3;
@@ -1522,7 +1522,7 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 		return false;
 
 	addr = gen8_canonical_addr(vma->node.start + offset);
-	if (gen >= 8) {
+	if (ver >= 8) {
 		if (offset & 7) {
 			*batch++ = MI_STORE_DWORD_IMM_GEN4;
 			*batch++ = lower_32_bits(addr);
@@ -1542,7 +1542,7 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			*batch++ = lower_32_bits(target_addr);
 			*batch++ = upper_32_bits(target_addr);
 		}
-	} else if (gen >= 6) {
+	} else if (ver >= 6) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4;
 		*batch++ = 0;
 		*batch++ = addr;
@@ -1552,12 +1552,12 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 		*batch++ = 0;
 		*batch++ = vma_phys_addr(vma, offset);
 		*batch++ = target_addr;
-	} else if (gen >= 4) {
+	} else if (ver >= 4) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 		*batch++ = 0;
 		*batch++ = addr;
 		*batch++ = target_addr;
-	} else if (gen >= 3 &&
+	} else if (ver >= 3 &&
 		   !(IS_I915G(eb->i915) || IS_I915GM(eb->i915))) {
 		*batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
 		*batch++ = addr;
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 825b45cb3543..e477d278ca73 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -794,7 +794,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return PTR_ERR(i915);
 
 	/* Disable nuclear pageflip by default on pre-ILK */
-	if (!i915->params.nuclear_pageflip && match_info->gen < 5)
+	if (!i915->params.nuclear_pageflip && match_info->graphics_ver < 5)
 		i915->drm.driver_features &= ~DRIVER_ATOMIC;
 
 	/*
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index de02207f6ec6..b58bc7bff65e 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -95,7 +95,7 @@ static const char *iommu_name(void)
 void intel_device_info_print_static(const struct intel_device_info *info,
 				    struct drm_printer *p)
 {
-	drm_printf(p, "gen: %d\n", info->gen);
+	drm_printf(p, "graphics_ver: %u\n", info->graphics_ver);
 	drm_printf(p, "gt: %d\n", info->gt);
 	drm_printf(p, "iommu: %s\n", iommu_name());
 	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
