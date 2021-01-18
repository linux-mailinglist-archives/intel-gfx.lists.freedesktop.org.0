Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6352FA6CD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 17:56:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE356E44C;
	Mon, 18 Jan 2021 16:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8EE6E3F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 16:56:34 +0000 (UTC)
IronPort-SDR: H1p5C6aW8DT0RuuKb/W1QXL71TXOfsSE9XSwollbv1m36tkmz59WMrUu/BqPdQK1yXIMdk9x88
 JPOD212czIEQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="166492729"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="166492729"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 08:56:30 -0800
IronPort-SDR: C6FMDhFcDAKh4jZ9r7vBdpQTbgaLjmd61NiZtoFi+VE+EMYRuKkSDT2argPX0lXYxgdKAr3YyO
 1ynMRCVoanVQ==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="355250021"
Received: from juimonen-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.9.5])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 08:56:29 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 16:55:52 +0000
Message-Id: <20210118165553.118901-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210118165553.118901-1-matthew.auld@intel.com>
References: <20210118165553.118901-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/error: Fix object page offset
 within a region
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

io_mapping_map_wc() expects the offset to be relative to the iomapping
base address. Currently we just pass in the physical address for the
page which only works if the region.start starts at zero.

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 8b163ee1b86d..f962693404b7 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1051,7 +1051,9 @@ i915_vma_coredump_create(const struct intel_gt *gt,
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
