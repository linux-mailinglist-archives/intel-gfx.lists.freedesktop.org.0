Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E132FB65D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 14:31:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D3706E30C;
	Tue, 19 Jan 2021 13:31:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44D76E243
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 13:31:17 +0000 (UTC)
IronPort-SDR: dWrnFzYFTbKj6y5NsyRZMujMzFneYy0iZK1zYa1Wn0ARwGsUm+12uSkMU+FdXVsSGhUzVg0zpX
 ZwlQyt6uOrhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="166589688"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="166589688"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 05:31:16 -0800
IronPort-SDR: RiSiFsRLMKb+CGQHsZvEjEXCOhtQb6xkClxXLcyDp+c+nyPZqS5QMbLqWkp8jQL5mZ6HP5cJnL
 NsVZSTKL7X0w==
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="383934357"
Received: from aboji-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.18.244])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 05:31:15 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 13:31:03 +0000
Message-Id: <20210119133106.66294-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Fix the sgt.pfn sanity check
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
Cc: Kui Wen <kui.wen@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
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
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_mm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 43039dc8c607..666808cb3a32 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -62,7 +62,7 @@ static int remap_sg(pte_t *pte, unsigned long addr, void *data)
 {
 	struct remap_pfn *r = data;
 
-	if (GEM_WARN_ON(!r->sgt.pfn))
+	if (GEM_WARN_ON(!r->sgt.sgp))
 		return -EINVAL;
 
 	/* Special PTE are not associated with any struct page */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
