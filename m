Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD9571A0B8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 16:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1759310E566;
	Thu,  1 Jun 2023 14:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FD6910E566
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 14:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685630708; x=1717166708;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jhEkL8iQZk2PtljdnCdrJ1bdUoZ2qzVb1J10hp8JlfQ=;
 b=IMA32zZY8oUvXI1YT6xg3KR06yHsb16qLEIAtdX1Qr1Lp5BLpGAEIdRz
 jkLO6ryET+li1QhldxNYHlKY+PReAuOugKZfA/6tKXhLU21cQC1lWC9+d
 EBF/qksOML/5/D5vULDVxBq++/wmeECYaXYRPTfkJHCc7yMdGhsnhZjA+
 AYnpwzT0TrIR2ZKNz/OKrBbKpVdioV2D1pc/2Qke4VA+/NpT+DKRNXgPS
 dM7jHQZ5uvm1p9+6VM/+Z4QCpTZiOb1MCVPDS7NuYG+7xqTgNVnzcNxDi
 a7N/fmTNFb2Ym5BJxGAeDxczGk3keRKYo3FRbCxJpmC8HXEM8uYsA4mK1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="441937647"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="441937647"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 07:45:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="684869593"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="684869593"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 07:45:05 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Thu,  1 Jun 2023 16:44:50 +0200
Message-Id: <20230601144450.792228-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: limit lmem allocation size to
 succeed on SmallBars
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case system is short on mappable memory (256MB on SmallBar) allocation
of two 1GB buffers will fail.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8300
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_tlb.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
index 4493c8518e91b2..3bd6b540257b46 100644
--- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
+++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
@@ -190,11 +190,18 @@ pte_tlbinv(struct intel_context *ce,
 
 static struct drm_i915_gem_object *create_lmem(struct intel_gt *gt)
 {
+	struct intel_memory_region *mr = gt->i915->mm.regions[INTEL_REGION_LMEM_0];
+	resource_size_t size = SZ_1G;
+
 	/*
 	 * Allocation of largest possible page size allows to test all types
-	 * of pages.
+	 * of pages. To succeed with both allocations, especially in case of Small
+	 * BAR, try to allocate no more than quarter of mappable memory.
 	 */
-	return i915_gem_object_create_lmem(gt->i915, SZ_1G, I915_BO_ALLOC_CONTIGUOUS);
+	if (mr && size > mr->io_size / 4)
+		size = mr->io_size / 4;
+
+	return i915_gem_object_create_lmem(gt->i915, size, I915_BO_ALLOC_CONTIGUOUS);
 }
 
 static struct drm_i915_gem_object *create_smem(struct intel_gt *gt)
-- 
2.34.1

