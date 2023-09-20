Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 101ED7A8E51
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 23:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D1E10E562;
	Wed, 20 Sep 2023 21:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFCF10E55E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 21:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695244835; x=1726780835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZXiyxi6b9RDHkxkNYTcrVGGKIcEU6ojgswDc/qKa968=;
 b=J4r4AS0kQngo0Vb9ZJNCFw2YenL1yG94GTsSIbpmG336jubHv1pSc91S
 x3SDqaHYXNtQolBuBSIh/Hy4t9fM0Nsgo8UYoXkU+T3yUM3HngFeAA8WH
 JFveQqXCh9NlbeBP/X9UqWfIfsoLERt/0VdYdWLOJzkfmBHU2UfcejtJe
 09N9HBrNvDU5acC9s7YvgnC5UPzorMSLlnZQRuDr8xLGyL3L9FFtCjE7u
 wUOU6LNv5J60gNork6FWjeCDfKF9XZovWu3PEE0BEm0RBZhZ2tWHbZi+r
 HUsuAkkAOGt0uy5MLPDGLNF/JmC+sk8W3wezLHRBeLWb8nf/pg8o84Bd3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359726904"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="359726904"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 14:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="812320021"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="812320021"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 14:17:47 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Sep 2023 14:07:01 -0700
Message-Id: <20230920210704.3624771-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230920210704.3624771-1-jonathan.cavitt@intel.com>
References: <20230920210704.3624771-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 1/4] drm/i915: Enable NULL PTE support for
 vm scratch
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 tomasz.mistat@intel.com, jonathan.cavitt@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable NULL PTE support for vm scratch pages.

The use of NULL PTEs in teh vm scratch pages requires us to change how
the i915 gem_contexts live selftest perform vm_isolation: instead of
checking the scratch pages are isolated and don't affect each other, we
check that all changes to the scratch pages are voided.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 6 ++++++
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c                  | 3 +++
 drivers/gpu/drm/i915/gt/intel_gtt.h                   | 1 +
 drivers/gpu/drm/i915/i915_drv.h                       | 2 ++
 drivers/gpu/drm/i915/i915_pci.c                       | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h              | 1 +
 6 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 7021b6e9b219e..48fc5990343bc 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1751,6 +1751,12 @@ static int check_scratch_page(struct i915_gem_context *ctx, u32 *out)
 	if (!vm)
 		return -ENODEV;
 
+	if (HAS_NULL_PAGE(vm->i915)) {
+		if (out)
+			*out = 0;
+		return 0;
+	}
+
 	if (!vm->scratch[0]) {
 		pr_err("No scratch page!\n");
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 9895e18df0435..84aa29715e0ac 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -855,6 +855,9 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 						      I915_CACHE_NONE),
 			       pte_flags);
 
+	if (HAS_NULL_PAGE(vm->i915))
+		vm->scratch[0]->encode |= PTE_NULL_PAGE;
+
 	for (i = 1; i <= vm->top; i++) {
 		struct drm_i915_gem_object *obj;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 346ec8ec2edda..153ddfca0ae18 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -151,6 +151,7 @@ typedef u64 gen8_pte_t;
 
 #define GEN8_PAGE_PRESENT		BIT_ULL(0)
 #define GEN8_PAGE_RW			BIT_ULL(1)
+#define PTE_NULL_PAGE			BIT_ULL(9)
 
 #define GEN8_PDE_IPS_64K BIT(11)
 #define GEN8_PDE_PS_2M   BIT(7)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 87ffc477c3b1a..687a8fcdc3d54 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -782,6 +782,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define HAS_FLAT_CCS(i915)   (INTEL_INFO(i915)->has_flat_ccs)
 
+#define HAS_NULL_PAGE(dev_priv) (INTEL_INFO(dev_priv)->has_null_page)
+
 #define HAS_GT_UC(i915)	(INTEL_INFO(i915)->has_gt_uc)
 
 #define HAS_POOLED_EU(i915)	(RUNTIME_INFO(i915)->has_pooled_eu)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index df7c261410f79..80a65ea192107 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -642,6 +642,7 @@ static const struct intel_device_info jsl_info = {
 	GEN(12), \
 	TGL_CACHELEVEL, \
 	.has_global_mocs = 1, \
+	.has_null_page = 1, \
 	.has_pxp = 1, \
 	.max_pat_index = 3
 
@@ -721,6 +722,7 @@ static const struct intel_device_info adl_p_info = {
 	.has_mslice_steering = 1, \
 	.has_oa_bpc_reporting = 1, \
 	.has_oa_slice_contrib_limits = 1, \
+	.has_null_page = 1, \
 	.has_oam = 1, \
 	.has_rc6 = 1, \
 	.has_reset_engine = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 39817490b13fd..252f8dc0fe790 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -162,6 +162,7 @@ enum intel_ppgtt_type {
 	func(has_mslice_steering); \
 	func(has_oa_bpc_reporting); \
 	func(has_oa_slice_contrib_limits); \
+	func(has_null_page); \
 	func(has_oam); \
 	func(has_one_eu_per_fuse_bit); \
 	func(has_pxp); \
-- 
2.25.1

