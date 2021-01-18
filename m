Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0852FA2AF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 15:17:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18ED46E28B;
	Mon, 18 Jan 2021 14:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DA06E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 14:17:50 +0000 (UTC)
IronPort-SDR: inyAdwp7D3aIOiUDunXuP6Qrywn7c25dWmD0vE05nYEGDAeAI2fq1Rqm1/n+B1y89J8gJ98r0m
 gGg+CzWWd0Fw==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="197504694"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="197504694"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 06:17:46 -0800
IronPort-SDR: hNlPTqYRjnpsV3iuzrQB1Y5AGKzS1gICZoncm7M+xqcFjLb40v3wb4ipuxagcDuaI7WzOgksJx
 ilrl5EG7wrLA==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="466380930"
Received: from juimonen-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.9.5])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 06:17:45 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 14:17:30 +0000
Message-Id: <20210118141732.90173-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Fix the sgt.pfn sanity check
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
Cc: Kui Wen <kui.wen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Kui Wen <kui.wen@intel.com>

For the device local-memory case, sgt.pfn will always be equal to zero,
since we instead use sgt.dma. Also, for device local-memory it is
perfectly valid for it to start from zero anyway, so no need to add a
new check for that either.

Signed-off-by: Kui Wen <kui.wen@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
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
