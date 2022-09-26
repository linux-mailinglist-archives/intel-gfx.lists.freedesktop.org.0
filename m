Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7880A5EAB9F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 17:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4316D10E6FA;
	Mon, 26 Sep 2022 15:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88D2F10E6FA
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 15:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664207429; x=1695743429;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+TSHSVnORK5VmoUBE4C55guVhQBCvDwvWx7Wf07iK/w=;
 b=mxpEQHDMtzEMWgl2V+V6nDUBuWBHVQB0wRC0TGSW1eauvtJ5vBesyieE
 8LUr1Fvgz0adBl1GTtAT8UE/n2PtLd0CpwC4CZY56+gg/sJnJcKPsf2VC
 WsQ5yapQIMkPkxdCIL3Oqj+h2A8xuPR/tminBFJ83kjL0g2LCj6ESldwa
 0XMeH0u0GYoZozHWymSp0L+g7yiiFc49C6EFMQENdTqEcUicM28ibwTfB
 i/VLbe0ccXF/kA2KHAhdaCpRZqOERIunskmRgzvf7E6eKRXkbCMaZfLP6
 Ew+L9ZpKjmTpyzSrz2WaKFdxv9C3FuxKl2zPTAzCCC0H32yjSC22b46cE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="281438108"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="281438108"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 08:50:28 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="621103476"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="621103476"
Received: from vnyaykal-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.4.169])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 08:50:27 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 16:50:18 +0100
Message-Id: <20220926155018.109678-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Move scratch page into system
 memory on all platforms
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@intel.com>

The scratch page should never be accessed, and is only assigned as a
filler page to redirection invalid userspace access. It is not of a
performance concern and so we prefer to have a single consistent
configuration across all platforms, reducing the pressure on device
memory and avoiding the direct device access that would be required to
initialise the scratch page.

Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 43 ++++++++++++++--------------
 1 file changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index c7bd5d71b03e..9604edf7d7c2 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -922,29 +922,30 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	 */
 	ppgtt->vm.has_read_only = !IS_GRAPHICS_VER(gt->i915, 11, 12);
 
-	if (HAS_LMEM(gt->i915)) {
+	if (HAS_LMEM(gt->i915))
 		ppgtt->vm.alloc_pt_dma = alloc_pt_lmem;
-
-		/*
-		 * On some platforms the hw has dropped support for 4K GTT pages
-		 * when dealing with LMEM, and due to the design of 64K GTT
-		 * pages in the hw, we can only mark the *entire* page-table as
-		 * operating in 64K GTT mode, since the enable bit is still on
-		 * the pde, and not the pte. And since we still need to allow
-		 * 4K GTT pages for SMEM objects, we can't have a "normal" 4K
-		 * page-table with scratch pointing to LMEM, since that's
-		 * undefined from the hw pov. The simplest solution is to just
-		 * move the 64K scratch page to SMEM on such platforms and call
-		 * it a day, since that should work for all configurations.
-		 */
-		if (HAS_64K_PAGES(gt->i915))
-			ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
-		else
-			ppgtt->vm.alloc_scratch_dma = alloc_pt_lmem;
-	} else {
+	else
 		ppgtt->vm.alloc_pt_dma = alloc_pt_dma;
-		ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
-	}
+
+	/*
+	 * On some platforms the hw has dropped support for 4K GTT pages
+	 * when dealing with LMEM, and due to the design of 64K GTT
+	 * pages in the hw, we can only mark the *entire* page-table as
+	 * operating in 64K GTT mode, since the enable bit is still on
+	 * the pde, and not the pte. And since we still need to allow
+	 * 4K GTT pages for SMEM objects, we can't have a "normal" 4K
+	 * page-table with scratch pointing to LMEM, since that's
+	 * undefined from the hw pov. The simplest solution is to just
+	 * move the 64K scratch page to SMEM on all platforms and call
+	 * it a day, since that should work for all configurations.
+	 *
+	 * Using SMEM instead of LMEM has the additional advantage of
+	 * not reserving high performance memory for a "never" used
+	 * filler page. It also removes the device access that would
+	 * be required to initialise the scratch page, reducing pressure
+	 * on an even scarcer resource.
+	 */
+	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
 	err = gen8_init_scratch(&ppgtt->vm);
 	if (err)
-- 
2.37.3

