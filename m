Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6E57D6E81
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 16:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6BA810E66C;
	Wed, 25 Oct 2023 14:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83BEE10E5A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 14:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698243235; x=1729779235;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=lDV6MmYUQn+iFYqJKktjVgr+6KFHTYhmu1bI+lcfc+A=;
 b=CkBFxpLkfoyANbED3FYgVyzzsz5RkaLFAZ6CdoQXZcHNV4/ojzGAq87m
 cIXr5eCavkO6vM7MGyLhZmkgww8Pz0QhWlpuXhc7yIUembUycomIvPwj5
 Brmu2JPGjOHW3NEX7XfNJ4qm4V/iQaRgMB9btaPTwTYY4jSZPnXFUdO3c
 HmMxrcAMyYn0huP5NZulznhcNyxkPI2fWFcM6tcltjHvSWRC3ZpiiGFYZ
 7+qtRrx5rAK4QG5Wne5nDaAOHRDT2sIf9KXSVrpIN6ToqEE8FfgeBpKUE
 CYb9GI7NH4FXNbxqknEOjI5+ANcXDHvc+OfeKt+7t1W05BcqiI0u7nBjN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="372367121"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="372367121"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 07:13:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="882458722"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882458722"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 07:13:53 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Wed, 25 Oct 2023 16:13:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-wabb-v5-1-398e42309e9d@intel.com>
References: <20231025-wabb-v5-0-398e42309e9d@intel.com>
In-Reply-To: <20231025-wabb-v5-0-398e42309e9d@intel.com>
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3201;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=lDV6MmYUQn+iFYqJKktjVgr+6KFHTYhmu1bI+lcfc+A=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlOSKdz+wzvN+FR6zMc6HUjx7Tf6dIbD0zXVmlozTM
 QGSAqBGJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTkinQAKCRAjYrKT3hD91x7+C/
 9C4+slMRxdOaV+DvBoEtaNLrdqNAIWfChsXo7fv2BLr8BdqlAu3JbCVMxshPkebxesoRzNisLq4/9s
 2N3ANSFPfBE2UsnNKCVT+oXoPKisKau9sH7iUrA68qYFnWZfYzEHxmNL5+/tMZX/yh2Gp7OTl5qS2E
 tL26zuA6xHm8ELumQsQmOT4emdpmX4R1ZZNC+jVfqJ93Ie80Xkdez38xEAggwvcB5//BP1ViqLq0/8
 CbZvAO0VGg1nH9QmtYXmj2LCHWAitn7KEXEHdtsswCo4iF7XyQvZf7mbNiolm1TqnB2CokuGkUM2H8
 p6PN60ecKuN5JDkaZ1pnpdxmAuJ9yJp8jJzipFZLZMm6qUpeP7qp5Mcl4dlbVUgaZommTRqA8MwB5C
 uk7k5O3cUQN8h89vPKrpryN6GUq8cV/PGNddlqFDsuDnpzjpBUhVPWhkWLyOFjoKc7MEbiTvBgnVrM
 Tc4I8eovbcgTe6KLCxs1mqofFC7mY8kjORP0ynC/nPTDY=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v5 1/4] drm/i915: Reserve some kernel space per
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
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reserve one page in each vm for kernel space to use for things
such as workarounds.

v2: use real memory, do not decrease vm.total
v4: reserve only one page and explain flag
v5: remove allocated object on ppgtt cleanup

Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 42 ++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 ++++
 2 files changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 9895e18df0435a..90adb4751c4d8a 100644
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
 
@@ -950,6 +954,40 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
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
+	return 0;
+unref:
+	i915_gem_object_put(obj);
+	return ret;
+}
+
 /*
  * GEN8 legacy ppgtt programming is accomplished through a max 4 PDP registers
  * with a net effect resembling a 2-level page table in normal x86 terms. Each
@@ -1031,6 +1069,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
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

