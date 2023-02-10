Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDF369207B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 15:06:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66B3110E14D;
	Fri, 10 Feb 2023 14:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 145F810E14D;
 Fri, 10 Feb 2023 14:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676037999; x=1707573999;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OVozveDUHgfynAT+si9XRh9yxwW8TU+NAQ5WLXmDOMQ=;
 b=lsJjFEVx3L8ZTrJIMcjagpKJOASUkCsOPl4tzIY6f54+FmbM2mnnJCAQ
 94B3NcNfLE+KgkRFCTUcy6fpJyr7F7lkpGYDYVD2daDPijyHsaqoGUB57
 vz1s/9T/S/ESrEIoklrnYlPhqU8FHlLzdZ6cZGkb98gTogLwz/drj39Pl
 Lg1Ioi86lRh+ttNVJbRnYjuOV/fs6b2y+0fP1gca4q8mluEEaOvM+Myn+
 Dh8PfxgX1v18j3Q4IP53snThpwUsyA8cb4KWRnxwJDrMMIbWSwQBkZoOX
 SKDU1ENH9MozMPlM3Hi9J8AT51bFIlSuOOXeLj+Q//dBv12eMdsC8q1fW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="314072018"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="314072018"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 06:06:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="913539357"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="913539357"
Received: from mleshin-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.48.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 06:06:35 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 10 Feb 2023 15:06:09 +0100
Message-Id: <20230210140609.988022-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Make sure that errors are
 propagated through request chains
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently, for operations like memory clear or copy for big
chunks of memory, we generate multiple requests executed in a
chain.

But if one of the requests generated fails we would not know it
to unless it happens to the last request, because errors are not
properly propagated.

For this we need to keep propagating the chain of fence
notification in order to always reach the final fence associated
to the final request.

This way we would know that the memory operation has failed and
whether the memory is still invalid.

On copy and clear migration signal fences upon completion.

Fixes: cf586021642d80 ("drm/i915/gt: Pipelined page migration")
Reported-by: Matthew Auld <matthew.auld@intel.com>
Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: stable@vger.kernel.org
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 31 +++++++++++++++++--------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 3f638f1987968..8a293045a7b96 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -748,7 +748,7 @@ intel_context_migrate_copy(struct intel_context *ce,
 		rq = i915_request_create(ce);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			goto out_ce;
+			break;
 		}
 
 		if (deps) {
@@ -878,10 +878,14 @@ intel_context_migrate_copy(struct intel_context *ce,
 
 		/* Arbitration is re-enabled between requests. */
 out_rq:
-		if (*out)
-			i915_request_put(*out);
-		*out = i915_request_get(rq);
+		i915_sw_fence_await(&rq->submit);
+		i915_request_get(rq);
 		i915_request_add(rq);
+		if (*out) {
+			i915_sw_fence_complete(&(*out)->submit);
+			i915_request_put(*out);
+		}
+		*out = rq;
 
 		if (err)
 			break;
@@ -905,7 +909,8 @@ intel_context_migrate_copy(struct intel_context *ce,
 		cond_resched();
 	} while (1);
 
-out_ce:
+	if (*out)
+		i915_sw_fence_complete(&(*out)->submit);
 	return err;
 }
 
@@ -1005,7 +1010,7 @@ intel_context_migrate_clear(struct intel_context *ce,
 		rq = i915_request_create(ce);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			goto out_ce;
+			break;
 		}
 
 		if (deps) {
@@ -1056,17 +1061,23 @@ intel_context_migrate_clear(struct intel_context *ce,
 
 		/* Arbitration is re-enabled between requests. */
 out_rq:
-		if (*out)
-			i915_request_put(*out);
-		*out = i915_request_get(rq);
+		i915_sw_fence_await(&rq->submit);
+		i915_request_get(rq);
 		i915_request_add(rq);
+		if (*out) {
+			i915_sw_fence_complete(&(*out)->submit);
+			i915_request_put(*out);
+		}
+		*out = rq;
+
 		if (err || !it.sg || !sg_dma_len(it.sg))
 			break;
 
 		cond_resched();
 	} while (1);
 
-out_ce:
+	if (*out)
+		i915_sw_fence_complete(&(*out)->submit);
 	return err;
 }
 
-- 
2.39.1

