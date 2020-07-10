Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A185221B4A1
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDDDB6EC27;
	Fri, 10 Jul 2020 12:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 815E86EC27
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:02:02 +0000 (UTC)
IronPort-SDR: ngLU0DcG332Hsmm9XXGnqpP6a2hc7yiwKzg7A0nAAPLigCPyqFnrmkp42QFBKv3K8b81frDsJ/
 7+nJUndQl+ng==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="146255880"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="146255880"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:02:02 -0700
IronPort-SDR: YoESPkbbvh3x5/zPrtEUCRsrmFnL1CkK75na6PUv3c2kFIZqa6uHwLy6QPqCPJ7q2DvKgfyNxz
 sp96rUySRNig==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258689"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:59 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:57 +0100
Message-Id: <20200710115757.290984-61-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 60/60] drm/i915/lmem: allocate HWSP in lmem
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michel Thierry <michel.thierry@intel.com>

Signed-off-by: Michel Thierry <michel.thierry@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 14 ++++++++++++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 10 +++++++++-
 drivers/gpu/drm/i915/gt/intel_timeline.c  |  8 +++++++-
 3 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 7050519c87a4..bac33310594c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -251,8 +251,18 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 	struct vm_struct *area;
 	pgprot_t pgprot;
 
-	if (!i915_gem_object_has_struct_page(obj) && type != I915_MAP_WC)
-		return NULL;
+	/*
+	 * XXX: we need to check all the places that try to kmap LMEM,
+	 * and ensure that they only do so with WC(if we are certain
+	 * that such an object should reside there). After that we can
+	 * then re-add the following:
+	 *
+	 * if (!i915_gem_object_has_struct_page(obj) && type != I915_MAP_WC)
+	 *	return NULL;
+	 */
+
+	 if (!i915_gem_object_has_struct_page(obj) && type != I915_MAP_WC)
+		 type = I915_MAP_WC;
 
 	/* A single page can always be kmapped */
 	if (n_pte == 1 && type == I915_MAP_WB)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 1df94e82550f..1eb74571d142 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -25,6 +25,7 @@
 #include <drm/drm_print.h>
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
 
@@ -651,7 +652,14 @@ static int init_status_page(struct intel_engine_cs *engine)
 	 * in GFP_DMA32 for i965, and no earlier physical address users had
 	 * access to more than 4G.
 	 */
-	obj = i915_gem_object_create_internal(engine->i915, PAGE_SIZE);
+	if (HAS_LMEM(engine->i915)) {
+		obj = i915_gem_object_create_lmem(engine->i915,
+						  PAGE_SIZE,
+						  I915_BO_ALLOC_CONTIGUOUS |
+						  I915_BO_ALLOC_VOLATILE);
+	} else {
+		obj = i915_gem_object_create_internal(engine->i915, PAGE_SIZE);
+	}
 	if (IS_ERR(obj)) {
 		drm_err(&engine->i915->drm,
 			"Failed to allocate status page\n");
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 4546284fede1..45e96ecba86a 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -6,6 +6,7 @@
 
 #include "i915_drv.h"
 
+#include "gem/i915_gem_lmem.h"
 #include "i915_active.h"
 #include "i915_syncmap.h"
 #include "intel_gt.h"
@@ -32,7 +33,12 @@ static struct i915_vma *__hwsp_alloc(struct intel_gt *gt)
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 
-	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	if (HAS_LMEM(i915))
+		obj = i915_gem_object_create_lmem(i915, PAGE_SIZE,
+						  I915_BO_ALLOC_CONTIGUOUS |
+						  I915_BO_ALLOC_VOLATILE);
+	else
+		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
