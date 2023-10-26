Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D42767D886D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 20:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C0FF10E85C;
	Thu, 26 Oct 2023 18:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E9110E85C
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 18:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698345401; x=1729881401;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=AjPc+GKHiOJFfCanvoppvXlqwfxfw95D27ahg/URuyk=;
 b=hVhw3hbW3uzebCjxilgLgn6z4DRh2Q18nLI8L5UtJ4BNBeh+4OLpfX0X
 FIE6BmxOFmUkd5GNTcZu9P7R/Th4369GIDhe1Cb7buP2751ZlxdgxUN6d
 JmL/Mtnbd/5J4YsClvBifkRigtDyxlXqWiKMRe63tfKe3iJagYUo3J3kM
 4z6hVbxUrdSI2t1/6NsUyqQxlxVOz6kbY74LTxWwHCrrhGJBHmfBP6VRr
 BG4G8sl5bfZ3Tp8DPsfNn9mfsRQaGZ5311s/ns+NJOQaM27xCRxHAvbss
 KSAkhI/XfnRm8cpeKwmRQt+6zQsEPZKSZrsp4v/ST0Lkspk5QI/ft1XZL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="391497773"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="391497773"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:36:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="762941888"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="762941888"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:36:39 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Thu, 26 Oct 2023 20:36:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231026-wabb-v6-1-4aa7d55d0a8a@intel.com>
References: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
In-Reply-To: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3277;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=AjPc+GKHiOJFfCanvoppvXlqwfxfw95D27ahg/URuyk=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlOrGzfWX/HQsWhlmgQN5Prc3cu3kja/1o+6zt7FFL
 aMB+HsCJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTqxswAKCRAjYrKT3hD914ssC/
 48xuHGZuu6kNzv3UFq35zSQZ8QDUKso1PTxjqp+EC08ZVr1r09xP9qooldf9ANMw/DTZtm1QbcpRuX
 TwT6T7ZYbooE6Ldm6wvtcNIneTikclBpYBv8zqpfX6oglBbqawjXzoOvqja32RzVN7qoSOrDWYjDVF
 S/qrKjD49b62UGuFuWYyCnLv5HthqFgtaEU3C1ISRtRiMZfVoVMqqVq9RaoWKvv/TVrHSV32P5Gf9O
 /K7YpzE65G9s5QL/vRd9PayIit0kSnwiDWow+cDqRkEAyXFAYwA3G6JobP6W7p8vNK1ugi9h1VXu2o
 6f+g0qlP5fuURFngpbj32KGmNNUuw2n8XFDgXEHtjoku6ZA2nGd+OyeJvUzqgSuMmCzmUtS6ePldMx
 d4vwoCTHn+R6pSFwhmOkxCmK26FqEANam9VLgkLHGPacScA9Gz1L6JmVJ7qZAX/ys5iChr5fjGPZR+
 yLOHmqHa1y8CClgMEtwO9bQ6sNV+jYfCultHTWMeCaIzY=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v6 1/4] drm/i915: Reserve some kernel space per
 vm
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 20231026-gtt_size_fix-v1-2-882d0e0022ec@intel.com,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reserve one page in each vm for kernel space to use for things
such as workarounds.

v2: use real memory, do not decrease vm.total
v4: reserve only one page and explain flag
v5: remove allocated object on ppgtt cleanup
v6: decrease vm->total by reservation size

Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 43 ++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 ++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 9895e18df0435a..fa46d2308b0ed3 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -5,6 +5,7 @@
 
 #include <linux/log2.h>
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 
 #include "gen8_ppgtt.h"
@@ -222,6 +223,9 @@ static void gen8_ppgtt_cleanup(struct i915_address_space *vm)
 {
 	struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
 
+	if (vm->rsvd.obj)
+		i915_gem_object_put(vm->rsvd.obj);
+
 	if (intel_vgpu_active(vm->i915))
 		gen8_ppgtt_notify_vgt(ppgtt, false);
 
@@ -950,6 +954,41 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
 	return ERR_PTR(err);
 }
 
+static int gen8_init_rsvd(struct i915_address_space *vm)
+{
+	struct drm_i915_private *i915 = vm->i915;
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	int ret;
+
+	/* The memory will be used only by GPU. */
+	obj = i915_gem_object_create_lmem(i915, PAGE_SIZE,
+					  I915_BO_ALLOC_VOLATILE |
+					  I915_BO_ALLOC_GPU_ONLY);
+	if (IS_ERR(obj))
+		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	vma = i915_vma_instance(obj, vm, NULL);
+	if (IS_ERR(vma)) {
+		ret = PTR_ERR(vma);
+		goto unref;
+	}
+
+	ret = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
+	if (ret)
+		goto unref;
+
+	vm->rsvd.vma = i915_vma_make_unshrinkable(vma);
+	vm->rsvd.obj = obj;
+	vm->total -= vma->node.size;
+	return 0;
+unref:
+	i915_gem_object_put(obj);
+	return ret;
+}
+
 /*
  * GEN8 legacy ppgtt programming is accomplished through a max 4 PDP registers
  * with a net effect resembling a 2-level page table in normal x86 terms. Each
@@ -1031,6 +1070,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	if (intel_vgpu_active(gt->i915))
 		gen8_ppgtt_notify_vgt(ppgtt, true);
 
+	err = gen8_init_rsvd(&ppgtt->vm);
+	if (err)
+		goto err_put;
+
 	return ppgtt;
 
 err_put:
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index b471edac269920..028a5a988eea02 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -249,6 +249,10 @@ struct i915_address_space {
 	struct work_struct release_work;
 
 	struct drm_mm mm;
+	struct {
+		struct drm_i915_gem_object *obj;
+		struct i915_vma *vma;
+	} rsvd;
 	struct intel_gt *gt;
 	struct drm_i915_private *i915;
 	struct device *dma;

-- 
2.34.1

