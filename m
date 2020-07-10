Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C183321B47F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 913206EC08;
	Fri, 10 Jul 2020 12:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C6B76EC00
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:26 +0000 (UTC)
IronPort-SDR: 1vPXFPOdp0/Xd/XKsysISmB7JMDzN00WgB1In6u8rap9TUY23gDkFulAUT4SPKJcWwIX4FoI6x
 F6CDeCCeBMxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653779"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653779"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:20 -0700
IronPort-SDR: rM/phtSTUPqJRYhCS75NILnJ96//XEJEcXkMhMd8CEx6MUkD+oQtpPPPMDFO5XHWIeeZlj/m6l
 Avk1olG15OpA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257808"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:18 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:27 +0100
Message-Id: <20200710115757.290984-31-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 30/60] drm/i915/lmem: Do not check r->sgt.pfn for
 NULL
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
Cc: "Wen, Kui" <kui.wen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Wen, Kui" <kui.wen@intel.com>

When user space does mmap, kernel would map the physical page of local memory
to virtual memory address. The r->sgt.pfn is page address allocated from
local memory and the local memory region is from 0 to LMEM size. Hence the
r->sgt.pfn is possible to be 0, but this is normal case.

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
