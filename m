Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 490AC560792
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 19:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B31710ED04;
	Wed, 29 Jun 2022 17:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD92110E723
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 17:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656524654; x=1688060654;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Cy3tY8LpImOQrUEQLCDEZUiZu/48T1NFNa/dCyuAtZ8=;
 b=IGilqiqfyCPVS8B6lLdbpLajXp20mU7QRO1JfDTV8v7D3FkJqU/TOym1
 HMWcOxFOuRltw5gNpukaAy0nZLvSQckfl3lIrZJYJ/GHakaBu5RFl6cKn
 av9CwLP/2xCSb+7lwDLHSwdbxbBqiW++9LTM00/Gpd4xgLWIYg/rxwwCq
 EO/SPFkAPG7vyAhDCaNCV9Pv0XI93lIFrhRzoj/fTLBuj6i/ky+0bqObq
 bOBSM24Wa7lLNGtkaRcO8Njh5sxw6JPSE4kuAyd27vRC3jtV3q/z48C92
 whYn8cFgcsMGXCrjdqMHUO7Izm6IGMsyiw1jnPB4xZP8npm0OQwlx2622 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="279643944"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="279643944"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:14 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="595331068"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:14 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jun 2022 18:43:47 +0100
Message-Id: <20220629174350.384910-10-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629174350.384910-1-matthew.auld@intel.com>
References: <20220629174350.384910-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v4 10/13] drm/i915/selftests: ensure we reserve a
 fence slot
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

We should always be explicit and allocate a fence slot before adding a
new fence.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Kenneth Graunke <kenneth@whitecape.org>
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 388c85b0f764..da28acb78a88 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1224,8 +1224,10 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 					  expand32(POISON_INUSE), &rq);
 	i915_gem_object_unpin_pages(obj);
 	if (rq) {
-		dma_resv_add_fence(obj->base.resv, &rq->fence,
-				   DMA_RESV_USAGE_KERNEL);
+		err = dma_resv_reserve_fences(obj->base.resv, 1);
+		if (!err)
+			dma_resv_add_fence(obj->base.resv, &rq->fence,
+					   DMA_RESV_USAGE_KERNEL);
 		i915_request_put(rq);
 	}
 	i915_gem_object_unlock(obj);
-- 
2.36.1

