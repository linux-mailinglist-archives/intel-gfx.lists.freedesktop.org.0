Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A7C7D40D2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 22:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1304A10E249;
	Mon, 23 Oct 2023 20:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6369E10E242
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 20:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698092520; x=1729628520;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=RlmScj/GGStR3E43FR7UK+fm/NeWZn4Gkb0Knkn1A/Y=;
 b=IuEDgmNQ6AcCRtmOctUnpvPCpTmegP8cEcPJnHwebSdL5kSKK97T3PdO
 fPnjiOw/sdiWGE+NZVzO66ZjgmzP2GXabvMibUQ3Bj5bzGB+ZLJcXlNfE
 Cfmlu/xo007/rWQ1JHGYeqa12xkwF4UN3Njcxvs71+rm8v10olgiJlhtL
 nZHndik6kLoToGw0ECkzAiROHzOoAkpOC3jxjPrV4/0Hf/dSa7/zAkb4T
 RlrCsXwm986JQelSdhDv5jn6mIlegXOoT1rPxYiwvC+nV+ix30OtzMnQu
 luuwiS07Nv61vdI6alGEDqyIW+ESZ+VGfny7Nt+v8c8JrEobzDRDPbfEn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="371989464"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="371989464"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 13:22:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="734796470"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="734796470"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 13:21:58 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 23 Oct 2023 22:21:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-wabb-v4-1-f75dec962b7d@intel.com>
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
In-Reply-To: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2667;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=RlmScj/GGStR3E43FR7UK+fm/NeWZn4Gkb0Knkn1A/Y=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlNtXiKhho7b+ndBwTVtaH5y6ZwMulUTK/P7T6izGk
 CBCmJU+JAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTbV4gAKCRAjYrKT3hD919xMC/
 kBPNHDptNFdVX0Yv5ekCNF2SU0KpAB4Ebbk1dOA8NafJzJoh5Sy4pnvK9DSvykLvbSBgFvWpHslas5
 FWRY9Hvy98TIHmmAJKfRdOlbKjvHIbQybA7FqJ7L5eqhGuOSh5mJT8Rm433AVrPzHIduEfLDieiaY9
 Zz93fegYuAllyAk8bop/b6gGCa0YDCspXcWBHho0bi+gdrgVi/NOFT2NcdS4VemyvkTc79fGSGb2JB
 GPWA+rFw1Ht6VlnWhb9f+ADXyPH3gwGqinsv/E9mHsLkHRCNoUQxi+NXo6i+d5Bv4LbUqWyP44lTLa
 /pOKzPD9uKDQyZO+DV5wkGzXPwmhaE9elyihZsqmJ8IzqxGxVSGX2I0Ebhx9rG3JyVTuaJrK9n0u7N
 dIW0RocWHqmayYjdmonwlMBn8snnwZ4WHLWUmOaEZI4/EQDc2HfFYcwss8Ty1QRGcvoYUV9+bMoMPt
 Tc8tEqL9Qp4Q8I4USyaM5Avzau/nFZdYWRL9DKSBkDgLA=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v4 1/4] drm/i915: Reserve some kernel space per
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
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reserve one page in each vm for kernel space to use for things
such as workarounds.

v2: use real memory, do not decrease vm.total
v4: reserve only one page and explain flag

Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 38 ++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  1 +
 2 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 9895e18df0435a..1ac619a02a8567 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -5,6 +5,7 @@
 
 #include <linux/log2.h>
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 
 #include "gen8_ppgtt.h"
@@ -950,6 +951,39 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
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
+	vm->rsvd = i915_vma_make_unshrinkable(vma);
+
+unref:
+	i915_gem_object_put(obj);
+	return ret;
+}
+
 /*
  * GEN8 legacy ppgtt programming is accomplished through a max 4 PDP registers
  * with a net effect resembling a 2-level page table in normal x86 terms. Each
@@ -1031,6 +1065,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	if (intel_vgpu_active(gt->i915))
 		gen8_ppgtt_notify_vgt(ppgtt, true);
 
+	err = gen8_init_rsvd(&ppgtt->vm);
+	if (err)
+		goto err_put;
+
 	return ppgtt;
 
 err_put:
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index b471edac269920..5ac079e5f12f67 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -249,6 +249,7 @@ struct i915_address_space {
 	struct work_struct release_work;
 
 	struct drm_mm mm;
+	struct i915_vma *rsvd;
 	struct intel_gt *gt;
 	struct drm_i915_private *i915;
 	struct device *dma;

-- 
2.34.1

