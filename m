Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B057D0F67
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 14:09:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C0C10E5B3;
	Fri, 20 Oct 2023 12:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 801E510E5B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 12:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697803776; x=1729339776;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3DccTIX6JVBSXtwBXe2wwo3v3yAKsz83ORiEV/NASb4=;
 b=H7Y6OGAj3C41Q661n5QM3PrkEl6CLLS3tA0CCUKKLZ+9NhMwjd8jypGX
 eQ0fgrpY3hu4mXnOb0Sj4/ZTfg4nC8Y3jHj/PfkxJ0QfKnaexjVceyrdW
 Hy1P5gC7mwpO63B/yH+70gTgxyzWg8iNWVGA2um6hOtHACO0MEtQJ2Fqa
 9x4ytkHqeDZxrkLJ8xVPayRH/tfPL6O47RJy9f/roDNwTFosNlZnXQpcr
 HnAd5eN6YRTsE1+3wXxVQXxRe5zyAisi9Ht0WZdZlrqcRCMEX8uXmf/z3
 4W6DAAlbl2VHvgXRXnsp7qk8oyOhMCsadTZMGgYf9+WuqGjMilIPlqizm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="383699503"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="383699503"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 05:09:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="881058673"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="881058673"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 05:09:34 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Oct 2023 14:09:10 +0200
Message-Id: <20231020120912.1888023-3-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231020120912.1888023-1-andrzej.hajda@intel.com>
References: <20231020120912.1888023-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Reserve some kernel space per
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
Cc: andi.shyti@intel.com, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reserve two pages in each vm for kernel space to use for things
such as workarounds.

v2: use real memory, do not decrease vm.total

Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 38 ++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  1 +
 2 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 84aa29715e0aca..c25e1d4cceeb17 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -5,6 +5,7 @@
 
 #include <linux/log2.h>
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 
 #include "gen8_ppgtt.h"
@@ -953,6 +954,39 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
 	return ERR_PTR(err);
 }
 
+static int gen8_init_rsvd(struct i915_address_space *vm)
+{
+	const resource_size_t size = 2 * PAGE_SIZE;
+	struct drm_i915_private *i915 = vm->i915;
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	int ret;
+
+	obj = i915_gem_object_create_lmem(i915, size,
+					  I915_BO_ALLOC_VOLATILE |
+					  I915_BO_ALLOC_GPU_ONLY);
+	if (IS_ERR(obj))
+		obj = i915_gem_object_create_internal(i915, size);
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
@@ -1034,6 +1068,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	if (intel_vgpu_active(gt->i915))
 		gen8_ppgtt_notify_vgt(ppgtt, true);
 
+	err = gen8_init_rsvd(&ppgtt->vm);
+	if (err)
+		goto err_put;
+
 	return ppgtt;
 
 err_put:
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 15c71da14d1d27..4a35ef24501b5f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -250,6 +250,7 @@ struct i915_address_space {
 	struct work_struct release_work;
 
 	struct drm_mm mm;
+	struct i915_vma *rsvd;
 	struct intel_gt *gt;
 	struct drm_i915_private *i915;
 	struct device *dma;
-- 
2.34.1

