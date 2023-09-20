Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4D87A8E50
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 23:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 284CC10E55F;
	Wed, 20 Sep 2023 21:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FE210E55E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 21:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695244836; x=1726780836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rq5qxPJVDguxjNM7ViQHpRnfnCuVKdogo7G1p+gfB6Y=;
 b=AwzeHimL9BwNretuRE2aT1ENzM6jk/o4xev9+UGQeQfebVx1ShjDoFky
 DfFPgGsp0Gn8CO1Brt6BZNLUxlRwbFQ1yjd0/3kYQMnVEZoruFGSPB0bB
 EPemexTIhBMDrfeFVjkryRQw5V2RcAIZryOESjBGgSEV73Dz7E6UutJSq
 2pOVx4sdZWx6b5otWp8FJzGTb8shc3YjrVB8MERIBHDJDerY8RJdLhm7/
 qD7LfmPBYm+men9bMLsQLim9CH5iX0xNO0va54E6C3QEcvYawkfDJHjMy
 PMwKbP2NK45UVhkIZY+v/ywhBgr6SEffFT6IE6SACkGRN5l5tm2Cf8U0Q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359726907"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="359726907"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 14:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="812320024"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="812320024"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 14:17:48 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Sep 2023 14:07:02 -0700
Message-Id: <20230920210704.3624771-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230920210704.3624771-1-jonathan.cavitt@intel.com>
References: <20230920210704.3624771-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 2/4] drm/i915: Reserve some kernel space per
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 tomasz.mistat@intel.com, jonathan.cavitt@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reserve two pages in each vm for kernel space to use for things
such as workarounds.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 7 +++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h  | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 84aa29715e0ac..6344d733fb2c4 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -230,6 +230,7 @@ static void gen8_ppgtt_cleanup(struct i915_address_space *vm)
 				     gen8_pd_top_count(vm), vm->top);
 
 	free_scratch(vm);
+	drm_mm_remove_node(&vm->rsvd);
 }
 
 static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
@@ -1014,6 +1015,12 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	ppgtt->vm.foreach = gen8_ppgtt_foreach;
 	ppgtt->vm.cleanup = gen8_ppgtt_cleanup;
 
+	ppgtt->vm.rsvd.start = ppgtt->vm.total - (SZ_4K * 2);
+	ppgtt->vm.rsvd.size = (SZ_4K * 2);
+	ppgtt->vm.rsvd.color = I915_COLOR_UNEVICTABLE;
+	GEM_BUG_ON(drm_mm_reserve_node(&ppgtt->vm.mm, &ppgtt->vm.rsvd));
+	ppgtt->vm.total -= (SZ_4K * 2);
+
 	err = gen8_init_scratch(&ppgtt->vm);
 	if (err)
 		goto err_put;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 153ddfca0ae18..680ce27dda40c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -247,6 +247,7 @@ struct i915_address_space {
 	struct work_struct release_work;
 
 	struct drm_mm mm;
+	struct drm_mm_node rsvd;
 	struct intel_gt *gt;
 	struct drm_i915_private *i915;
 	struct device *dma;
-- 
2.25.1

