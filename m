Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3C72C650E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:12:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDAF66EC8A;
	Fri, 27 Nov 2020 12:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D61486ECBB;
 Fri, 27 Nov 2020 12:10:21 +0000 (UTC)
IronPort-SDR: 543d4Ym2s3Zmg2t5BImoHBN9v5lqrHKCB59N0C7YMLvtYKdPPqakpMHQ4k8Qx8Icb11rqVm4WL
 kbSHN9YUHMuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="257092760"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="257092760"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:10:21 -0800
IronPort-SDR: P49x3xdgWF3ZTwq0W6hXMrgjJmKZXqq4REzZgya41n0Wp0pS857osy5bA/iE7nke+kmkcn9ibJ
 2ko1erQ+4C0w==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548029331"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:10:20 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:06:10 +0000
Message-Id: <20201127120718.454037-95-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 094/162] drm/i915/dg1: Do not check
 r->sgt.pfn for NULL
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
Cc: Kui Wen <kui.wen@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Kui Wen <kui.wen@intel.com>

When user space does mmap, kernel would map the physical page of local memory
to virtual memory address. The r->sgt.pfn is page address allocated from
local memory and the local memory region is from 0 to LMEM size. Hence the
r->sgt.pfn is possible to be 0, but this's normal case.

Signed-off-by: Kui Wen <kui.wen@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 43039dc8c607..dcf6b3e5bfdf 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -62,7 +62,7 @@ static int remap_sg(pte_t *pte, unsigned long addr, void *data)
 {
 	struct remap_pfn *r = data;
 
-	if (GEM_WARN_ON(!r->sgt.pfn))
+	if (GEM_WARN_ON(!use_dma(r->iobase) && !r->sgt.pfn))
 		return -EINVAL;
 
 	/* Special PTE are not associated with any struct page */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
