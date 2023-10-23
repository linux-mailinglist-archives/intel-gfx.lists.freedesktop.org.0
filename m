Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5777D2B8E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 09:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A3310E15D;
	Mon, 23 Oct 2023 07:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF7810E15A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 07:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698046904; x=1729582904;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=9K1BO3MwR0n3moKwe+eflhvP3YcnS5nVAVKFnu+kjf4=;
 b=boVx245Y3RBNWREEVWqeG8gxJgdrr/Y4fwd8OaC+9cnUwRxCAZaLy+JT
 aBHfFw8JHhN1UK3J3HLEhS76T3zRgUvJ7W8rcCBJZPIcJP6+QzpBw5A2m
 CkMDJBOsIzIgXqCPPoTrTtMQZ7Rt2XhCpdBRgQDyLgtgk8HnKGRBZhxhO
 Cy77JKJAWRO0iHR9lCrlu8d4A79hQQlD3y0Kn3jFEXxGJotC9jEc8qlpF
 uHShrY+WLhynMyjvzJPfg/6ajMhoHTeta/osi65oc3OTPJVnL4adgqa5J
 7+rkYlzteJAmtsqLmDaPSe6dX2oAq+8NOfQW18PCQEov0VVv9VOpwhX9O g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="473000639"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="473000639"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 00:41:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="848716410"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="848716410"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 00:41:43 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 23 Oct 2023 09:41:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-wabb-v3-2-1a4fbc632440@intel.com>
References: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
In-Reply-To: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2615;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=9K1BO3MwR0n3moKwe+eflhvP3YcnS5nVAVKFnu+kjf4=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlNiOygrKB8lFr3HI+VqJLDSSawbbI7uQPn4T534mf
 ewJDO3WJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTYjsgAKCRAjYrKT3hD914eFC/
 9o+2pZY3W7pvaegL8de/4bawJ7EpncGd0uysdFM4IFvYYLAeQCe3kkIOQ/RvuPwV5drE46AfiNuQbq
 NfY1cDKS9jL6BJN28q8sGPqx/6wZ3F42HoBWZHURE4kqvNaISGzmRnpTC5/i5b+qO7pzq/6xo9gSov
 ycwxR+bnvHaaICP1J1I66mTLcGmQbB2NfRn1ZWJ9l5FPES56+I+zsIlVhdggDITNyIutmgR9M0/ZVF
 2OJd0g3guIMjyposO6VkQTF+EmRUluewPkN1ZH46kKLQ+gNeNMh5rYDGnTK7v4J3+SYaxIF1Vyespg
 5YJ8P3znP5cS+WUasm6DDDXOUtwQlt9TbUegpDgQjCeQM0hSpN628SM3p9c1KDJRjvKgAlhN4bJJQ+
 EB/ZEYzkJxzHGMPKAqHRYeU71JzfWCKw53St8asjc8bgwwMrs6MTESSPkEYcfQIc1Q3WrHKmNQ2D8R
 SfItOaDT6MZAtd1qmd1uIWZgnlwdRpYESVKTI50NXGVDw=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915: Reserve some kernel space per
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

Reserve two pages in each vm for kernel space to use for things
such as workarounds.

v2: use real memory, do not decrease vm.total

Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 38 ++++++++++++++++++++++++++++++++++++
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

