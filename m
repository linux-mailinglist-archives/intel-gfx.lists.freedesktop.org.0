Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8D021B490
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39A3F6EC1F;
	Fri, 10 Jul 2020 12:01:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C4E6EC1F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:01:12 +0000 (UTC)
IronPort-SDR: PcNXcjzNmrCFtitburLBwA3dvMiauy+mhGxCfwllJ308wtMcBtmgFo4IlxGpZYnDmUp3HGJzkw
 Up1o1hCHz+eQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716759"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716759"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:11 -0700
IronPort-SDR: Gu5O9Cq7PIHdpWjA2atEqsiXFasBPOzw79Z6eJ+jaBaqZAYE0iU8+Bs2SaCptL7li5lyRtLzho
 22V7WvloAFsQ==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258228"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:08 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:45 +0100
Message-Id: <20200710115757.290984-49-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 48/60] drm/i915: Fix object page offset within a
 region
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

Adjust the page offset with region start dma address.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Signed-off-by: CQ Tang <cq.tang@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 678ddec3237f..07d53c4e1a2c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1033,7 +1033,9 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 		for_each_sgt_daddr(dma, iter, vma->pages) {
 			void __iomem *s;
 
-			s = io_mapping_map_wc(&mem->iomap, dma, PAGE_SIZE);
+			s = io_mapping_map_wc(&mem->iomap,
+					      dma - mem->region.start,
+					      PAGE_SIZE);
 			ret = compress_page(compress,
 					    (void __force *)s, dst,
 					    true);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
