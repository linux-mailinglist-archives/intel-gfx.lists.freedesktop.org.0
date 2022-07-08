Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 045E256BB96
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:20:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4166510E5FE;
	Fri,  8 Jul 2022 14:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E217D10E5DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 14:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657290032; x=1688826032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AD8zp/y/hDnsGxO0za+xZ/k9vt2OWI4EhU4E5B13MgY=;
 b=j09U26WFKG+HiLw+OERKZpPLCozffkxivoG9hzgaXyHZNFzxHuyFMldT
 JSQ4ClkALkxvPzD1a1ZcA02MXnM8pU+qwp04qoNhOKgGQc5uxfgGfAlr1
 MqJNthbo7UiljKPlT2e1SN6mCEynqDlfiKO4TCOkmi93EgFfawHgbBrYo
 GFDuYBi1HjtmzD3Ka7rVx2gFSJP1JDQaylRccwmMJLqYGp9n7F/5tlkk7
 Sj+70XqYPSncMlZdpcJKRxItD3t0/00oPvIs4Ey5ISrBuy8+ow5HQ1zlN
 oTkZta/3ER/o3J47JwW+luXuUTv+jHedD6xTueaRQRPxOmSbRnz2QFSz0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="267321236"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="267321236"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:20:32 -0700
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="621232178"
Received: from dgrynia-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.5.81])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:20:30 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jul 2022 16:20:13 +0200
Message-Id: <d7b953c7a4ba747c8196a164e2f8c5aef468d048.1657289332.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1657289332.git.karolina.drobnik@intel.com>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/gt: Only kick the signal worker
 if there's been an update
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

One impact of commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove
dma_resv workaround") is that it stores many, many more fences. Whereas
adding an exclusive fence used to remove the shared fence list, that
list is now preserved and the write fences included into the list. Not
just a single write fence, but now a write/read fence per context. That
causes us to have to track more fences than before (albeit half of those
are redundant), and we trigger more interrupts for multi-engine
workloads.

As part of reducing the impact from handling more signaling, we observe
we only need to kick the signal worker after adding a fence iff we have
good cause to believe that there is work to be done in processing the
fence i.e. we either need to enable the interrupt or the request is
already complete but we don't know if we saw the interrupt and so need
to check signaling.

References: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 9dc9dccf7b09..ecc990ec1b95 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -399,7 +399,8 @@ static void insert_breadcrumb(struct i915_request *rq)
 	 * the request as it may have completed and raised the interrupt as
 	 * we were attaching it into the lists.
 	 */
-	irq_work_queue(&b->irq_work);
+	if (!b->irq_armed || __i915_request_is_complete(rq))
+		irq_work_queue(&b->irq_work);
 }
 
 bool i915_request_enable_breadcrumb(struct i915_request *rq)
-- 
2.25.1

