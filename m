Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 113847B54D0
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 16:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D92D10E18D;
	Mon,  2 Oct 2023 14:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C0C310E18D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 14:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696256305; x=1727792305;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h40FwGg2susS/JQQiiLwBCmKU5A6SLfu5DxQD8dtSzs=;
 b=gZuz+ZnrgetKMjWkhBN8yXBhycA4zHD3w5j+DyZSIK7K+eWPtpCF6HXT
 t37AwsGvoeymuQw8V5I7EnJUjSEGA0189FUS4B2sEvohBT5B6axw20FtX
 GRzG6VT13G7TMhNSYyDJ2oJJdhiLVBvICz1UsStN2NL4s3CWT2etf/Pif
 L1WCTUOTJFPeGDfJijWT8fhpFQZsMBJX6k0+XKALGjnbPC5376bMVRwQp
 g7He0neEV7Xq8NMJP8AWlXKTGftswUWd6eB8aRIo2qxBegFDmf2dF8Mpp
 vjY2o6L7EsodWbbo/6o9vJJDDsP5VUCXpZHlGZqKhYY+qeoUKJKsMGpga w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="381534535"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="381534535"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:18:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="866508811"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="866508811"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:18:24 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Oct 2023 07:07:42 -0700
Message-Id: <20231002140742.933530-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Invalidate the TLBs on each GT
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
 jonathan.cavitt@intel.com, saurabhg.gupta@intel.com, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@intel.com>

With multi-GT devices, the object may have been bound on each GT and so
we need to invalidate the TLBs across all GT before releasing the pages
back to the system.

Fixes: d6c531ab4820 ("drm/i915: Invalidate the TLBs on each GT")
Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 6b6d22c194110..0ba955611dfb5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -198,7 +198,7 @@ static void flush_tlb_invalidate(struct drm_i915_gem_object *obj)
 
 	for_each_gt(gt, i915, id) {
 		if (!obj->mm.tlb[id])
-			return;
+			continue;
 
 		intel_gt_invalidate_tlb_full(gt, obj->mm.tlb[id]);
 		obj->mm.tlb[id] = 0;
-- 
2.25.1

