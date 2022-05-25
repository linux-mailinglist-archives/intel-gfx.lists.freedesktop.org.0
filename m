Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA4253434A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 20:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E6110ED17;
	Wed, 25 May 2022 18:44:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C16710ED83;
 Wed, 25 May 2022 18:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653504252; x=1685040252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iQLawsZY1qwQE0fTocZ8vjx/v+ZEz6b/Qp/oxOxhdvM=;
 b=l/nhzi9O0NOsin6jhAgq/GMV3LtiVrA/BuzDN7xjuWjAkh8FOpNFjTxS
 boATrDh0YaDWis2vvxsftNxSZEbgeh5PAzTrogXRIc6Qsk/qYoMLKwr9g
 Of7WDMiZxYfGqt85mRAP3Z/hhy1rDc8gOGNVhbmMsZo65TpJeyYMuOBm4
 hzOWz+Yx5/4VWgwVC58fG+yw9fQSt6DYzYRLL+kU4IbyTlyTnt1vACHE7
 rz9TbdDjm+uXLL8FdQIV8KuGGo5KGtne7sGfJzYe9OqPn5FcoiiIoq6Au
 oVFaF2Nyiik3TycUpsMbsp24GcOxZVkPd8n/48ZyQjWe6i8fvB6K3wV8k g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="274013478"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="274013478"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:44:12 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="578465280"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.5.16])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:44:09 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 May 2022 19:43:34 +0100
Message-Id: <20220525184337.491763-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220525184337.491763-1-matthew.auld@intel.com>
References: <20220525184337.491763-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/10] drm/i915/error: skip non-mappable pages
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Kenneth Graunke <kenneth@whitecape.org>, dri-devel@lists.freedesktop.org
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
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 0512c66fa4f3..77df899123c2 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1116,11 +1116,15 @@ i915_vma_coredump_create(const struct intel_gt *gt,
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
2.34.3

