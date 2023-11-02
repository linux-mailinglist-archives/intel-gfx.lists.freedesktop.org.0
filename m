Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F372C7DF994
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 19:09:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495EF10E0BF;
	Thu,  2 Nov 2023 18:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B67710E0BF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698948562; x=1730484562;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8uTw+Ur5y0t5j5argtjYN/a/GetkqQF+S46jim4XFDM=;
 b=oJ94WxePEHqQ+w/CbYI1x2F9ucD+xeIw9P8OHjorczCzXtYhvEFqg2cH
 A+op3SCNqoLSmjFCacHXts4bCEx0KnUXYm9lrWeXgYHjVAC1rwI63/Udy
 7Uj5ctIss57V4Z8W8bmTPz6Fx+ztK9FoL9FJyGj3G0i+UVthS31D9FKIP
 vaf8ZYrWUrCU2M0b2j7PfmRnScaUE7CP3os0gj+llisRRsZB8Y3p4Wgqw
 Us8IPNMYUDELpTJAuezWv0T0si9oam9KNtduEv0/k6/dDEui5xrsw96a5
 iW6/ScIXYSAdI7wr7+0uKHY9veZvlLnIN+Lbl4bBBbMhPPnNMqJjL61hV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="419886772"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="419886772"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 11:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="884971550"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="884971550"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 11:09:21 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 10:58:31 -0700
Message-Id: <20231102175831.872763-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU caching
 into DMA for MTL
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
Cc: saurabhg.gupta@intel.com, jonathan.cavitt@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FIXME: It is suspected that some Address Translation Service (ATS)
issue on IOMMU is causing CAT errors to occur on some MTL workloads.
Applying a write barrier to the ppgtt set entry functions appeared
to have no effect, so we must temporarily use I915_MAP_WC in the
map_pt_dma class of functions on MTL until a proper ATS solution is
found.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 4fbed27ef0ecc..21719563a602a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -95,6 +95,16 @@ int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
 	void *vaddr;
 
 	type = intel_gt_coherent_map_type(vm->gt, obj, true);
+	/*
+	 * FIXME: It is suspected that some Address Translation Service (ATS)
+	 * issue on IOMMU is causing CAT errors to occur on some MTL workloads.
+	 * Applying a write barrier to the ppgtt set entry functions appeared
+	 * to have no effect, so we must temporarily use I915_MAP_WC here on
+	 * MTL until a proper ATS solution is found.
+	 */
+	if (IS_METEORLAKE(vm->i915))
+		type = I915_MAP_WC;
+
 	vaddr = i915_gem_object_pin_map_unlocked(obj, type);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
@@ -109,6 +119,16 @@ int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object
 	void *vaddr;
 
 	type = intel_gt_coherent_map_type(vm->gt, obj, true);
+	/*
+	 * FIXME: It is suspected that some Address Translation Service (ATS)
+	 * issue on IOMMU is causing CAT errors to occur on some MTL workloads.
+	 * Applying a write barrier to the ppgtt set entry functions appeared
+	 * to have no effect, so we must temporarily use I915_MAP_WC here on
+	 * MTL until a proper ATS solution is found.
+	 */
+	if (IS_METEORLAKE(vm->i915))
+		type = I915_MAP_WC;
+
 	vaddr = i915_gem_object_pin_map(obj, type);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
-- 
2.25.1

