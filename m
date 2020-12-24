Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6132C2E27E2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 16:14:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907118951B;
	Thu, 24 Dec 2020 15:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB228951B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 15:14:08 +0000 (UTC)
IronPort-SDR: 13TOGJyxOc9F47juPR3YjAEfB/G22wlWf8zqryTDKA/ZQvvNVNivT2qQt2Vxxpr5WvlPhcvw+L
 Vdn4flEmqOog==
X-IronPort-AV: E=McAfee;i="6000,8403,9845"; a="155361578"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="155361578"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2020 07:14:05 -0800
IronPort-SDR: 1TxfOTlW5N7pOUaxe8g9pHC9ipqXghXoUbqV1fFjhLCCa1tb4/iFpI5eYMG/cQ1ffPMSlW5OMC
 I9xJEfo6yocg==
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="374435789"
Received: from vmangan-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.26.220])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2020 07:14:04 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 15:13:57 +0000
Message-Id: <20201224151358.401345-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915: clear the shadow batch
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

The shadow batch is an internal object, which doesn't have any page
clearing, and since the batch_len can be smaller than the object, we
should take care to clear it.

Testcase: igt/gen9_exec_parse/shadow-peek
Fixes: 4f7af1948abc ("drm/i915: Support ro ppgtt mapped cmdparser shadow buffers")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 8d88402387bd..5db3f74c9ffc 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1139,6 +1139,7 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		       struct drm_i915_gem_object *src_obj,
 		       unsigned long offset, unsigned long length)
 {
+	unsigned long orig_length = length;
 	bool needs_clflush;
 	void *dst, *src;
 	int ret;
@@ -1199,6 +1200,9 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		}
 	}
 
+	memset32(dst + orig_length, 0,
+		 (dst_obj->base.size - orig_length) / sizeof(u32));
+
 	i915_gem_object_unpin_pages(src_obj);
 
 	/* dst_obj is returned with vmap pinned */
@@ -1393,11 +1397,6 @@ static unsigned long *alloc_whitelist(u32 batch_length)
 
 #define LENGTH_BIAS 2
 
-static bool shadow_needs_clflush(struct drm_i915_gem_object *obj)
-{
-	return !(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE);
-}
-
 /**
  * intel_engine_cmd_parser() - parse a batch buffer for privilege violations
  * @engine: the engine on which the batch is to execute
@@ -1539,16 +1538,9 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 				ret = 0; /* allow execution */
 			}
 		}
-
-		if (shadow_needs_clflush(shadow->obj))
-			drm_clflush_virt_range(batch_end, 8);
 	}
 
-	if (shadow_needs_clflush(shadow->obj)) {
-		void *ptr = page_mask_bits(shadow->obj->mm.mapping);
-
-		drm_clflush_virt_range(ptr, (void *)(cmd + 1) - ptr);
-	}
+	i915_gem_object_flush_map(shadow->obj);
 
 	if (!IS_ERR_OR_NULL(jump_whitelist))
 		kfree(jump_whitelist);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
