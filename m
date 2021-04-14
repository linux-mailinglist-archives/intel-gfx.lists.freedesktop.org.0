Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD6C35F2D0
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045006E92C;
	Wed, 14 Apr 2021 11:51:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96CCF6E925
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:51:02 +0000 (UTC)
IronPort-SDR: DTuGkQoBv6xIfIhsIqUItFWa8P3ij2d2P2M2+FE0vujB/On+eiCylldFxmFg7W7XZQiPHH1anJ
 lhPlxETZD7qw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174119556"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="174119556"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:02 -0700
IronPort-SDR: F4rHaBK6Qx1BWCHTZc/r9EwdELTj64dKUWgS5io7ytBY+s2F3zp46sCIPxOkKbI+VmsOvdZhcx
 vzitjAxNk/GQ==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965252"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:01 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:20 +0100
Message-Id: <20210414115028.168504-21-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 20/28] drm/i915: Use IS_GEN in execbuffer
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Stop caching the gen and use the macros to enable compile time
optimisation.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_gem_execbuffer.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/i915_gem_execbuffer.c
index 22b8ba9c94a2..090b43be3153 100644
--- a/drivers/gpu/drm/i915/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/i915_gem_execbuffer.c
@@ -221,7 +221,6 @@ struct i915_execbuffer {
 		struct drm_mm_node node; /** temporary GTT binding */
 		unsigned long vaddr; /** Current kmap address */
 		unsigned long page; /** Currently mapped page index */
-		unsigned int gen; /** Cached value of INTEL_GEN */
 		bool use_64bit_reloc : 1;
 		bool has_llc : 1;
 		bool has_fence : 1;
@@ -848,10 +847,9 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->page = -1;
 	cache->vaddr = 0;
 	/* Must be a variable in the struct to allow GCC to unroll. */
-	cache->gen = INTEL_GEN(i915);
 	cache->has_llc = HAS_LLC(i915);
 	cache->use_64bit_reloc = HAS_64BIT_RELOC(i915);
-	cache->has_fence = cache->gen < 4;
+	cache->has_fence = IS_GEN(i915, GEN_FOREVER, 3);
 	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 	cache->node.allocated = false;
 	cache->rq = NULL;
@@ -1113,7 +1111,8 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 
 	err = eb->engine->emit_bb_start(rq,
 					batch->node.start, PAGE_SIZE,
-					cache->gen > 5 ? 0 : I915_DISPATCH_SECURE);
+					IS_GEN(eb->i915, 6, GEN_FOREVER) ?
+					0 : I915_DISPATCH_SECURE);
 	if (err)
 		goto err_request;
 
@@ -1192,14 +1191,13 @@ relocate_entry(struct i915_vma *vma,
 	if (!eb->reloc_cache.vaddr &&
 	    (DBG_FORCE_RELOC == FORCE_GPU_RELOC ||
 	     !reservation_object_test_signaled_rcu(vma->resv, true))) {
-		const unsigned int gen = eb->reloc_cache.gen;
 		unsigned int len;
 		u32 *batch;
 		u64 addr;
 
 		if (wide)
 			len = offset & 7 ? 8 : 5;
-		else if (gen >= 4)
+		else if (IS_GEN(eb->i915, 4, GEN_FOREVER))
 			len = 4;
 		else
 			len = 3;
@@ -1229,12 +1227,12 @@ relocate_entry(struct i915_vma *vma,
 				*batch++ = lower_32_bits(target_offset);
 				*batch++ = upper_32_bits(target_offset);
 			}
-		} else if (gen >= 6) {
+		} else if (IS_GEN(eb->i915, 6, GEN_FOREVER)) {
 			*batch++ = MI_STORE_DWORD_IMM_GEN4;
 			*batch++ = 0;
 			*batch++ = addr;
 			*batch++ = target_offset;
-		} else if (gen >= 4) {
+		} else if (IS_GEN(eb->i915, 4, GEN_FOREVER)) {
 			*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 			*batch++ = 0;
 			*batch++ = addr;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
