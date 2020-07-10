Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8348E21B48B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4E846EC06;
	Fri, 10 Jul 2020 12:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663DE6EC06
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:58 +0000 (UTC)
IronPort-SDR: Ep0N+3qjC7wcm7tVJYZXhynDhECFvGaGi7i7zOYVfdRWiw6TiiGRcBgoLz274R+YZskSVZCJxQ
 rNWKeRAP24kA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716714"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716714"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:58 -0700
IronPort-SDR: oQum3VWOAePdispfPQxJUaLYQth4mztWIrcr2YuHwvT5gLBLYDBcF7ox37Wvk4PeAYGiT5Gv0u
 SkVm4hJb4WGw==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258075"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:54 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:41 +0100
Message-Id: <20200710115757.290984-45-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 44/60] drm/i915: allocate context from LMEM
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Based on a patch from Michel Thierry.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 31 ++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index fbcfeaed6441..c6528c8f9b2e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -133,6 +133,8 @@
  */
 #include <linux/interrupt.h>
 
+#include "gem/i915_gem_lmem.h"
+
 #include "i915_drv.h"
 #include "i915_perf.h"
 #include "i915_trace.h"
@@ -5265,6 +5267,21 @@ populate_lr_context(struct intel_context *ce,
 	return 0;
 }
 
+static int context_clear_lmem(struct drm_i915_gem_object *ctx_obj)
+{
+	void *vaddr;
+
+	vaddr = i915_gem_object_pin_map(ctx_obj, I915_MAP_WC);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
+
+	memset64(vaddr, 0, ctx_obj->base.size / sizeof(u64));
+
+	i915_gem_object_unpin_map(ctx_obj);
+
+	return 0;
+}
+
 static int __execlists_context_alloc(struct intel_context *ce,
 				     struct intel_engine_cs *engine)
 {
@@ -5285,10 +5302,22 @@ static int __execlists_context_alloc(struct intel_context *ce,
 		context_size += PAGE_SIZE;
 	}
 
-	ctx_obj = i915_gem_object_create_shmem(engine->i915, context_size);
+	if (HAS_LMEM(engine->i915)) {
+		ctx_obj = i915_gem_object_create_lmem(engine->i915,
+						      context_size,
+						      I915_BO_ALLOC_CONTIGUOUS);
+	} else {
+		ctx_obj = i915_gem_object_create_shmem(engine->i915, context_size);
+	}
 	if (IS_ERR(ctx_obj))
 		return PTR_ERR(ctx_obj);
 
+	if (HAS_LMEM(engine->i915)) {
+		ret = context_clear_lmem(ctx_obj);
+		if (ret)
+			goto error_deref_obj;
+	}
+
 	vma = i915_vma_instance(ctx_obj, &engine->gt->ggtt->vm, NULL);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
