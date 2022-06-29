Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2511E560790
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 19:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C0110EA30;
	Wed, 29 Jun 2022 17:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4766910E723
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 17:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656524652; x=1688060652;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8M/GCM2oZV4Oe2DyKYgO29WSWTMMuSWAnkd+4qkZb2s=;
 b=c6D5CA4S1OTDOuYaO1obNGki61mIFvOr7a3kjrC46hr1cXLIjgUFAdCr
 PgM+qU71CrVNEG057i+TWT7TEmZnzBHlGYJsQj1ayEEfA5VAbSgXkeG22
 XqvDttZVhEtSXH4C9z7u6afA5aZB9z45P6z3T652CNlP35wE2rYMU/gRY
 0UMpcd0L+coAOW8A+k9swIMu7u+06PJrnahHWaAkfEqtQ2j4kVPzLRPYi
 O2Svn1EAdU0jo65mnK4TVkvf1ks+y1FCehZkM2gfgqJkDz3ma4TXhhzqZ
 +nWg70JAiBk29jbTRO+SQwh7tmYM8bDKDpwv9sC4hTG3d5RDy0ZySzIgR g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="279643936"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="279643936"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:12 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="595331060"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:11 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jun 2022 18:43:44 +0100
Message-Id: <20220629174350.384910-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629174350.384910-1-matthew.auld@intel.com>
References: <20220629174350.384910-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v4 07/13] drm/i915/error: skip non-mappable pages
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

Skip capturing any lmem pages that can't be copied using the CPU. This
in now only best effort on platforms that have small BAR.

Testcase: igt@gem-exec-capture@capture-invisible
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Kenneth Graunke <kenneth@whitecape.org>
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index f9b1969ed7ed..52ea13fee015 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1129,11 +1129,15 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 		dma_addr_t dma;
 
 		for_each_sgt_daddr(dma, iter, vma_res->bi.pages) {
+			dma_addr_t offset = dma - mem->region.start;
 			void __iomem *s;
 
-			s = io_mapping_map_wc(&mem->iomap,
-					      dma - mem->region.start,
-					      PAGE_SIZE);
+			if (offset + PAGE_SIZE > mem->io_size) {
+				ret = -EINVAL;
+				break;
+			}
+
+			s = io_mapping_map_wc(&mem->iomap, offset, PAGE_SIZE);
 			ret = compress_page(compress,
 					    (void __force *)s, dst,
 					    true);
-- 
2.36.1

