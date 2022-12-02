Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 544A86403FA
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5F310E6B6;
	Fri,  2 Dec 2022 10:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1F9A10E6B6
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 10:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669975393; x=1701511393;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VeGMyYTTMhuWLDGwGgpvKEsDAECcBQ0fUZpyt0ZS84s=;
 b=W2fI41oAJfLgLNTijtkWGHBX9qrTXlQZybGdU5xEojsnjzOr+OtfLXST
 wkKgtxsCWtMnFaxNfJY1Ba4bRofmRZf1Qhp+2Dmc8ViEE1WqwcWKnmnoD
 EQtCy/C50O8QxddRq2QCXIISd1zHKkUuyb24UmhYkwKLdeetqymo0IHBv
 NlrHwn32lJovDhFVI+BheyHGs3rj32xRJ7MQaYy4O+miXF5Y+VqvZvKwX
 Zkcrn9ibeoxFBPbmYFAMQXYC9ymPQmhTuqSUGGoxdHs5PP7OZJMxMhOr1
 QHR9EPmwerm4MkzKpn9p593zCgkadKaACbXZEx3N8aOMwNjKOEKL8/855 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="299290463"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="299290463"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:03:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="677553164"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="677553164"
Received: from ctfarrel-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.18.53])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:03:11 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 10:02:44 +0000
Message-Id: <20221202100246.406758-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/3] drm/i915/migrate: Account for the
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
Cc: stable@vger.kernel.org, Nirmoy Das <nirmoy.das@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
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
Cc: Andi Shyti <andi.shyti@linux.intel.com>
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

