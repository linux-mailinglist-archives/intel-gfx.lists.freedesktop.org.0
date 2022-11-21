Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A98C5632A1C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 17:55:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786DD10E306;
	Mon, 21 Nov 2022 16:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD6E410E303
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 16:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669049706; x=1700585706;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r3RAvbLrM7siUBiFcJ6fXoUZ1IgPStz9lpBUpvcL7Lg=;
 b=k2kq8bq+fdINzcplJwSkNy58GC/rINCeu1fmxPIkvOKNyt694NFICwhV
 rBqtBIUjk+dhKfhquSbAl3z4yfC1WTD0/paF3Td2YIMbgbIFIolIKq7xT
 66H14wFXbIun4wz95C8FMWcKLN+Xwl995OvNI9C5WRGGQR288Zoue8DbE
 06UjHVV8Jzuf59GLIh9iRI9Zg8GlJiE6NXpvldxULAzfO8+BqXwM6HTZy
 Z4pg69gmjQGXreYgrIyfUf6e7Ox2v/Za+8N7igUHAVIYSy8fj3/pg+w3E
 9kZRnZYxKxT2+FqPbDb0dJMpIvBy2uzFb8nqU9FTq+ifQiPXzQv9iUkEO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="399894402"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="399894402"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 08:55:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="709877228"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="709877228"
Received: from ddacost1-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.20])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 08:55:03 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 16:54:48 +0000
Message-Id: <20221121165449.56761-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/migrate: Account for the
 reserved_space
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
Cc: stable@vger.kernel.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@intel.com>

If the ring is nearly full when calling into emit_pte(), we might
incorrectly trample the reserved_space when constructing the packet to
emit the PTEs. This then triggers the GEM_BUG_ON(rq->reserved_space >
ring->space) when later submitting the request, since the request itself
doesn't have enough space left in the ring to emit things like
workarounds, breadcrumbs etc.

Testcase: igt@i915_selftests@live_emit_pte_full_ring
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7535
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6889
Fixes: cf586021642d ("drm/i915/gt: Pipelined page migration")
Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: <stable@vger.kernel.org> # v5.15+
Tested-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index b405a04135ca..48c3b5168558 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -342,6 +342,16 @@ static int emit_no_arbitration(struct i915_request *rq)
 	return 0;
 }
 
+static int max_pte_pkt_size(struct i915_request *rq, int pkt)
+{
+       struct intel_ring *ring = rq->ring;
+
+       pkt = min_t(int, pkt, (ring->space - rq->reserved_space) / sizeof(u32) + 5);
+       pkt = min_t(int, pkt, (ring->size - ring->emit) / sizeof(u32) + 5);
+
+       return pkt;
+}
+
 static int emit_pte(struct i915_request *rq,
 		    struct sgt_dma *it,
 		    enum i915_cache_level cache_level,
@@ -388,8 +398,7 @@ static int emit_pte(struct i915_request *rq,
 		return PTR_ERR(cs);
 
 	/* Pack as many PTE updates as possible into a single MI command */
-	pkt = min_t(int, dword_length, ring->space / sizeof(u32) + 5);
-	pkt = min_t(int, pkt, (ring->size - ring->emit) / sizeof(u32) + 5);
+	pkt = max_pte_pkt_size(rq, dword_length);
 
 	hdr = cs;
 	*cs++ = MI_STORE_DATA_IMM | REG_BIT(21); /* as qword elements */
@@ -422,8 +431,7 @@ static int emit_pte(struct i915_request *rq,
 				}
 			}
 
-			pkt = min_t(int, dword_rem, ring->space / sizeof(u32) + 5);
-			pkt = min_t(int, pkt, (ring->size - ring->emit) / sizeof(u32) + 5);
+			pkt = max_pte_pkt_size(rq, dword_rem);
 
 			hdr = cs;
 			*cs++ = MI_STORE_DATA_IMM | REG_BIT(21);
-- 
2.38.1

