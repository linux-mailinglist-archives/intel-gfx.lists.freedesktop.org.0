Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9997F7A95AC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 18:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB3F10E128;
	Thu, 21 Sep 2023 16:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A71E10E128
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 16:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695312858; x=1726848858;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eh6GZdMT6vDdm08LjHufLa2RY5rYRIBn6qx/MIRsnF8=;
 b=isFVV1JbR4tCbOb3iRUH+IL2/C4+9DbOkxVgpZwSKbRgwiuMLASwJcAS
 FMBSy4hJBq6Ggh/QutvomqMEBFEKpkjWeb/Lwcgg8gq00O5Xntz0YCMdl
 ZA8clp9YzMx9tjpbdpIo2gcCyFWH1UfTL/89GmCkBGKt89pnK+AozgP5b
 wBhpHxqbs/Eu9r+hPjENi0RIP6Yizfk5D6BwD+RVIRvw+eVn1vI2RY+cA
 +tMQmoTSJiSd+If5q2hs0icdYHSOzcoWwQRa45K2cAnWTdhGfHrfBhhpI
 X3Cfh8FyUNEoiFRon0/PD0JNxYkxOzXeTa8/PnH9TU0OLf5e4TApwhRI7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="370891817"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="370891817"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 09:06:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="776501759"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="776501759"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 09:06:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 19:06:37 +0300
Message-Id: <20230921160637.3862597-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: remove inlines from
 i915_gem_execbuffer.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just let the compiler decide what's best. Turns out absolutely nothing
changes in the output with the inlines removed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

The same should really be done for most inlines in .c files. *wink wink*
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7d04ec740fd1..683fd8d3151c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -321,7 +321,7 @@ static int eb_pin_engine(struct i915_execbuffer *eb, bool throttle);
 static void eb_unpin_engine(struct i915_execbuffer *eb);
 static void eb_capture_release(struct i915_execbuffer *eb);
 
-static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
+static bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
 	return intel_engine_requires_cmd_parser(eb->context->engine) ||
 		(intel_engine_using_cmd_parser(eb->context->engine) &&
@@ -433,7 +433,7 @@ static u64 eb_pin_flags(const struct drm_i915_gem_exec_object2 *entry,
 	return pin_flags;
 }
 
-static inline int
+static int
 eb_pin_vma(struct i915_execbuffer *eb,
 	   const struct drm_i915_gem_exec_object2 *entry,
 	   struct eb_vma *ev)
@@ -486,7 +486,7 @@ eb_pin_vma(struct i915_execbuffer *eb,
 	return 0;
 }
 
-static inline void
+static void
 eb_unreserve_vma(struct eb_vma *ev)
 {
 	if (unlikely(ev->flags & __EXEC_OBJECT_HAS_FENCE))
@@ -548,7 +548,7 @@ eb_validate_vma(struct i915_execbuffer *eb,
 	return 0;
 }
 
-static inline bool
+static bool
 is_batch_buffer(struct i915_execbuffer *eb, unsigned int buffer_idx)
 {
 	return eb->args->flags & I915_EXEC_BATCH_FIRST ?
@@ -628,8 +628,8 @@ eb_add_vma(struct i915_execbuffer *eb,
 	return 0;
 }
 
-static inline int use_cpu_reloc(const struct reloc_cache *cache,
-				const struct drm_i915_gem_object *obj)
+static int use_cpu_reloc(const struct reloc_cache *cache,
+			 const struct drm_i915_gem_object *obj)
 {
 	if (!i915_gem_object_has_struct_page(obj))
 		return false;
@@ -1107,7 +1107,7 @@ static void eb_destroy(const struct i915_execbuffer *eb)
 		kfree(eb->buckets);
 }
 
-static inline u64
+static u64
 relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
 		  const struct i915_vma *target)
 {
@@ -1128,19 +1128,19 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->node.flags = 0;
 }
 
-static inline void *unmask_page(unsigned long p)
+static void *unmask_page(unsigned long p)
 {
 	return (void *)(uintptr_t)(p & PAGE_MASK);
 }
 
-static inline unsigned int unmask_flags(unsigned long p)
+static unsigned int unmask_flags(unsigned long p)
 {
 	return p & ~PAGE_MASK;
 }
 
 #define KMAP 0x4 /* after CLFLUSH_FLAGS */
 
-static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
+static struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
 {
 	struct drm_i915_private *i915 =
 		container_of(cache, struct i915_execbuffer, reloc_cache)->i915;
-- 
2.39.2

