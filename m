Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6AE523770
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 17:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4EC10FB8D;
	Wed, 11 May 2022 15:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D0D10FB8D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 15:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652283474; x=1683819474;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nN31u7MLm4SFa27Gd7CL9aP5/4RqVawITPrlE9QDtN0=;
 b=An96B3sS88qOz8jpGGikFmY3Pc0EZhn5AJS+25LQW9gJ/3dYvK0EPiFm
 pX4wU2AXzN4t3+m1n9Q9+kbBX2k/2YUswXKPPJnyIIaIbYR6t5Ar2nS9a
 XLRUrZvdUeWLOF33T5i+AyHxvIzBeCml8wF0+4unE39XIk9VkDnY+pea2
 LUP+esOMuNq60K3gAASU+QaMktJFjqIEPvbyZ2l8gwYzIyuvJYEyWPU/P
 W1Ort8dAHxHXDN8ZeCzUgHJpiOPgO9Zo2aIO/bIw5ACjffBSBycd3NsXZ
 QrSiH8l+BHqjiGH4myAkZ6hspCu3QZ2bUQW0gC8RNBGTMrl+XjbmUdhmr w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="257277561"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="257277561"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:37:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="566231912"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:37:51 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 17:37:44 +0200
Message-Id: <20220511153746.14142-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: return -EIO on lmem setup failure
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Caller of setup_lmem() ignores -ENODEV but failing
to setup lmem on dGPU isn't ignorable error.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index f5111c0a0060..5a7c403d718a 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -108,7 +108,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
 
 		if (GEM_WARN_ON(lmem_size < flat_ccs_base))
-			return ERR_PTR(-ENODEV);
+			return ERR_PTR(-EIO);
 
 		tile_stolen = lmem_size - flat_ccs_base;
 
@@ -131,7 +131,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	io_start = pci_resource_start(pdev, 2);
 	io_size = min(pci_resource_len(pdev, 2), lmem_size);
 	if (!io_size)
-		return ERR_PTR(-ENODEV);
+		return ERR_PTR(-EIO);
 
 	min_page_size = HAS_64K_PAGES(i915) ? I915_GTT_PAGE_SIZE_64K :
 						I915_GTT_PAGE_SIZE_4K;
-- 
2.35.1

