Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14232566991
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C3C6112222;
	Tue,  5 Jul 2022 11:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15DC110E021
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 10:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657018662; x=1688554662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AD8zp/y/hDnsGxO0za+xZ/k9vt2OWI4EhU4E5B13MgY=;
 b=PD8o9Oo1QYFWdKAepQTxcAe4KRxKnO/v0GPOmfOb5FfPUl1uo9Qy8bZm
 NZSTlZKPdF9bhOWB8xHEEK7ITGZKVKPfWV7HRhHgv3eFg50AThLTkYzfR
 ySKws/scnNJJ2dgkGKbzovwoMILskUvqWyMH4wiuziCqbdAarGoWErTKo
 qpDEIHofCtex3Fi3ZmvQBT9WM/dVGICcEj+F/9XAYNaTnT8pz+/diRM3/
 Of/1bSt3FoAzPmhbLtNPX3OKMxwSSRlNado/cjt3JGapno+K8fhodkMTH
 uNamJPrWn386ypHgfgpbhllJjILlSubZ2ixaCWhfXMMCvD0a1cQhx5dI6 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="308861282"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="308861282"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:57:41 -0700
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="650076309"
Received: from mtyszka-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.16.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:57:40 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jul 2022 12:57:19 +0200
Message-Id: <b4cd3044700a9f904870942b1aa8b29f11b84d5e.1656911806.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1656911806.git.karolina.drobnik@intel.com>
References: <cover.1656911806.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Only kick the signal worker if
 there's been an update
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

