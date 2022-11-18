Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB5762F54C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 13:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 989AB10E735;
	Fri, 18 Nov 2022 12:48:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D3910E734
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 12:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668775708; x=1700311708;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Mkj4TgvRycwlvMe5TQW0lIuT4Fg+StCZNFTIHSyS/zE=;
 b=JQxzQHnqbwHTavZvRVnCUgmk33bOXwgtc+YzrRoLbulJI8TLXfQhFmpD
 kSYHGwIhRCDIWrQ4EPTOznMw6YUm5hAx9HCFsBgmaE203+z3IZL4qrsDb
 1J2O2ryUprcnYM02iUMFytsYO7a3c6o63Z49z1+GWYwLddcXMqr6PBcPQ
 5UgJCmLHuLa2OeHlcguvzmhrENM88QRhUypGc+FYw13nptYHiIvhnE2fo
 x2lF8dzthZpmVBQHP1imaiUdDiBLkljvD1rZc4On2wpb+uzSKlzGbdO+g
 2Q+/SdVAvmtoPEomftp2m0wYDBP5v5pTtt8lbBof/H69mCfUZYaI4Fdqb w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="314946340"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="314946340"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 04:48:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="671306955"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="671306955"
Received: from bbaker-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.1.50])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 04:48:25 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:48:15 +0000
Message-Id: <20221118124816.545034-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/migrate: Account for the
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

