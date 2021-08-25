Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA353F6DAC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 05:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F78A6E104;
	Wed, 25 Aug 2021 03:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67766E104
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 03:22:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204574021"
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="204574021"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 20:22:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="643392517"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga005.jf.intel.com with ESMTP; 24 Aug 2021 20:22:41 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>, Huang Derek <derek.huang@intel.com>
Date: Wed, 25 Aug 2021 11:25:09 +0800
Message-Id: <20210825032509.12230-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/gt: do_idle_maps on gen8 and later
 platform.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are seeing "DMAR faults [reason 7, next page table ptr is invalid]"
on TGL while running suspend stress test. Refer to 'commit 84361529ee85
("drm/i915: Sleep around performing iommu unmaps on Tigerlake")'.
Driver check needs_idle_maps() in i915_gmch_probe() but it applicable
for gen5 and earlier generations. Add needs_idle_maps() in gen8_gmch_probe()
then it will benifit gen8 and later platform.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: Huang Derek <derek.huang@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index de3ac58fceec..9510da0ae6b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -911,6 +911,12 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 
 	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
 
+	if (needs_idle_maps(i915)) {
+		drm_notice(&i915->drm,
+			   "Flushing DMA requests before IOMMU unmaps; performance may be degraded\n");
+		ggtt->do_idle_maps = true;
+	}
+
 	ggtt->vm.total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
 	ggtt->vm.cleanup = gen6_gmch_remove;
 	ggtt->vm.insert_page = gen8_ggtt_insert_page;
-- 
2.17.1

