Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D50811E27
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 20:08:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58F710E811;
	Wed, 13 Dec 2023 19:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67F4D10E811
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 19:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702494484; x=1734030484;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fNbextI/5laNWwM5mzs7WeBCSnlhEssYffVy3A8qXI4=;
 b=niWV/usrpZGCF7hA5kdSZpcTORB3RqwjmO7vvOmEasgBSNguEe8TJC5z
 mARpbKwIzohvvg4iJm8DROBuqXn9iN40GWpsDzhuBUDz3Lds+ah7vJ3jy
 5+s94YiOuGg6Yj92mvXUBrJUcMs4gEaYox4GCd5I6GDcV5AteHa7Gsn3g
 NsbZtPU9olQX8QgRshzl5s+6+rIR7xuOXXjlQrOPYk5Y4Zia6zaE44SjY
 7lRhHyQiJcJVoxUtkxwiIMlWDmwSG+SzjbeiXmWFFCmYBY5nZFsfdy9V4
 haMPwpzL37pTh//0GbisUZxom46QI3w7yRpXmO6pcigk37Yxp4MOk95YJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="374519446"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="374519446"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 11:08:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="767321839"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="767321839"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 11:08:03 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] Revert "drm/i915/gt: Temporarily disable CPU caching into DMA
 for MTL"
Date: Wed, 13 Dec 2023 10:57:16 -0800
Message-Id: <20231213185716.1596496-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: saurabhg.gupta@intel.com, jonathan.cavitt@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 34df0a031d8f3488fe72627b041a1f82437fa6ec.

It appears that the temporary workaround to prevent CAT errors is
no longer required, as even with it reverted the CAT errors didn't
occur when tested manually.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 86f73fe558ca6..3bef6d0769c66 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -101,16 +101,6 @@ int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
 	void *vaddr;
 
 	type = intel_gt_coherent_map_type(vm->gt, obj, true);
-	/*
-	 * FIXME: It is suspected that some Address Translation Service (ATS)
-	 * issue on IOMMU is causing CAT errors to occur on some MTL workloads.
-	 * Applying a write barrier to the ppgtt set entry functions appeared
-	 * to have no effect, so we must temporarily use I915_MAP_WC here on
-	 * MTL until a proper ATS solution is found.
-	 */
-	if (IS_METEORLAKE(vm->i915))
-		type = I915_MAP_WC;
-
 	vaddr = i915_gem_object_pin_map_unlocked(obj, type);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
@@ -125,16 +115,6 @@ int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object
 	void *vaddr;
 
 	type = intel_gt_coherent_map_type(vm->gt, obj, true);
-	/*
-	 * FIXME: It is suspected that some Address Translation Service (ATS)
-	 * issue on IOMMU is causing CAT errors to occur on some MTL workloads.
-	 * Applying a write barrier to the ppgtt set entry functions appeared
-	 * to have no effect, so we must temporarily use I915_MAP_WC here on
-	 * MTL until a proper ATS solution is found.
-	 */
-	if (IS_METEORLAKE(vm->i915))
-		type = I915_MAP_WC;
-
 	vaddr = i915_gem_object_pin_map(obj, type);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
-- 
2.25.1

