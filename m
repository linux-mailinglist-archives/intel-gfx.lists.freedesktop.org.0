Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0416F6179
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 00:50:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8559C10E359;
	Wed,  3 May 2023 22:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D57F10E0F5;
 Wed,  3 May 2023 22:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683154201; x=1714690201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A28PQ/Do/esxePqchAD2ImFRH3iRH5hRR/Fh4zCcNac=;
 b=FzbRv+TtaztsDb8diuUrueoLQ3nH598d2tkJV85u0YLFlinYcEse0GHg
 xfJAn+X2W0A6dm3CVvFDxihGLj1ufd8hL3VIJd3x+v1BLTaZFsYIHoWbq
 9PKPuB11hwZg/lI5WBNbIDr9AWjBPfd2Zw+KMovbHbHd0DaBrJNKYS6Uw
 QhMfbJ8Ty/pvJFVKUd6M5FXEEWeKKhGYjKGJxIZGLfJoCEXbOgUzHCL7T
 111yfMk6BgjDQEG7iWs5oEtBDvVHLoIFVF/LPZGpPZU/ZuT1yhtEfNv/A
 cu1f6sD/FAT9/bohW3xdpx2HC3T18QqtRD1K4ABA5OgH3JZkL1SBzYGuQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347604361"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347604361"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 15:50:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="871121285"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="871121285"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 15:49:59 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 May 2023 15:51:00 -0700
Message-Id: <20230503225100.2834222-4-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230503225100.2834222-1-fei.yang@intel.com>
References: <20230503225100.2834222-1-fei.yang@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/3] drm/i915: make sure correct pte encode
 is used
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fei Yang <fei.yang@intel.com>

PTE encode is platform dependent. After replacing cache_level with
pat_index, the newly introduced mtl_pte_encode is actually generic
for all gen12 platforms, thus rename it to gen12_pte_encode and
apply it to all gen12 platforms.

Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index f2334a713c4e..d1e3d3b90e95 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -55,9 +55,9 @@ static u64 gen8_pte_encode(dma_addr_t addr,
 	return pte;
 }
 
-static u64 mtl_pte_encode(dma_addr_t addr,
-			  unsigned int pat_index,
-			  u32 flags)
+static u64 gen12_pte_encode(dma_addr_t addr,
+			    unsigned int pat_index,
+			    u32 flags)
 {
 	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
 
@@ -995,8 +995,8 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	 */
 	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
-	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
-		ppgtt->vm.pte_encode = mtl_pte_encode;
+	if (GRAPHICS_VER(gt->i915) >= 12)
+		ppgtt->vm.pte_encode = gen12_pte_encode;
 	else
 		ppgtt->vm.pte_encode = gen8_pte_encode;
 
-- 
2.25.1

