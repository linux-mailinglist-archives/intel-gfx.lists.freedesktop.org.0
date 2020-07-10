Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA81421B47C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 376576EBFC;
	Fri, 10 Jul 2020 12:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9B16EC06
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:18 +0000 (UTC)
IronPort-SDR: C7hl7k7f/mVCt2CGwr89kOwGrJ2aVAk2Mu1EAW7UdXP2gBSrfq+mzyVbyx1l7Gq1iV/QGmfYp7
 nA295vsAWuGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653770"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653770"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:17 -0700
IronPort-SDR: evajmxRqBOp1S/CJ9Cao6+ylm+NrhXhD02zmaKyhFN0AL0VmOJlh3yU179dIOaJ741jOs2a3GG
 c/MqDEpoVbCg==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257787"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:15 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:26 +0100
Message-Id: <20200710115757.290984-30-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 29/60] drm/i915/lmem: Limit block size to 4G
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

when allocating pages to lmem object of size 4G or greater
we allocate memory blocks from buddy system. In this scenario
buddy sytem can allocate blocks that can have size >= 4G and
these blocks require >32b to represent block size with these
blocks we run into an issue with sg list construction because
sg->length field is only 32b wide.

Hence limit the max allowed block size to less than 4G.

Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: CQ Tang <cq.tang@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 6b5e9d88646d..2943c7778d5e 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -72,6 +72,7 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 				      struct list_head *blocks)
 {
 	unsigned int min_order = 0;
+	unsigned int max_order;
 	unsigned long n_pages;
 
 	GEM_BUG_ON(!IS_ALIGNED(size, mem->mm.chunk_size));
@@ -92,13 +93,24 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 
 	n_pages = size >> ilog2(mem->mm.chunk_size);
 
+	/*
+	 * When allocating pages for an lmem object of size > 4G
+	 * the memory blocks allocated from buddy system could be
+	 * from sizes greater than 4G requiring > 32b to represent
+	 * block size. But those blocks cannot be used in sg list
+	 * construction(in caller) as sg->length is only 32b wide.
+	 * Hence limiting the block size to 4G.
+	 */
+	max_order = (ilog2(SZ_4G) - 1) - ilog2(mem->mm.chunk_size);
+
 	mutex_lock(&mem->mm_lock);
 
 	do {
 		struct i915_buddy_block *block;
 		unsigned int order;
 
-		order = fls(n_pages) - 1;
+		order = min_t(u32, (fls(n_pages) - 1), max_order);
+
 		GEM_BUG_ON(order > mem->mm.max_order);
 		GEM_BUG_ON(order < min_order);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
