Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8876A50F8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 03:12:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 825D310E488;
	Tue, 28 Feb 2023 02:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964BE10E480;
 Tue, 28 Feb 2023 02:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677550334; x=1709086334;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u18ddDQOwan1fLFqHOnOS3Odna9gVESGyCeFrwXiY6M=;
 b=fCh6y/BObvrj6IwaI8WG5GbE9aIC5bYMybH0KbsT4p3wWuOaRVd+sUP6
 QJGRGRcRwXOUSesOGAH6tjf8PqMV4NDR4Xv3R+seXR44YBjQ2co0g5g+P
 JYBkgetoSBoVgRVxnAzMd2wO6khZ7Xak0vzBI2ADpgzzWHtL2PNUz+FJg
 z4/tt+3ozj2T27rh2KOqvH6n9R8MxlqkQ8GTfaab7fZjQOEHhY4UHEsZs
 +DmNs0ZhP9XyLlXJLIuPKriadEkQh29gkprinVCQQZejIk0jdJn5mVd5n
 CLZyvmSj+gMhwL9C8zRQucBaKpyi9nF8lFbulSa2ho2l7ddlPOubN8n5z g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="396590571"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="396590571"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 18:12:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="742804739"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="742804739"
Received: from gsavorni-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.41.82])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 18:12:09 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 stable@vger.kernel.org
Date: Tue, 28 Feb 2023 03:11:42 +0100
Message-Id: <20230228021142.1905349-3-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230228021142.1905349-1-andi.shyti@linux.intel.com>
References: <20230228021142.1905349-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/gt: Make sure that errors are
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Maciej Patelczyk <maciej.patelczyk@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently, when we perform operations such as clearing or copying
large blocks of memory, we generate multiple requests that are
executed in a chain.

However, if one of these requests fails, we may not realize it
unless it happens to be the last request in the chain. This is
because errors are not properly propagated.

For this we need to keep propagating the chain of fence
notification in order to always reach the final fence associated
to the final request.

To address this issue, we need to ensure that the chain of fence
notifications is always propagated so that we can reach the final
fence associated with the last request. By doing so, we will be
able to detect any memory operation  failures and determine
whether the memory is still invalid.

On copy and clear migration signal fences upon completion.

On copy and clear migration, signal fences upon request
completion to ensure that we have a reliable perpetuation of the
operation outcome.

Fixes: cf586021642d80 ("drm/i915/gt: Pipelined page migration")
Reported-by: Matthew Auld <matthew.auld@intel.com>
Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: stable@vger.kernel.org
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 39 ++++++++++++++++++-------
 1 file changed, 29 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 3f638f1987968..6b497640d3a0a 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -742,13 +742,19 @@ intel_context_migrate_copy(struct intel_context *ce,
 			dst_offset = 2 * CHUNK_SZ;
 	}
 
+	/*
+	 * While building the chain of requests, we need to ensure
+	 * that no one can sneak into the timeline unnoticed.
+	 */
+	mutex_lock(&ce->timeline->mutex);
+
 	do {
 		int len;
 
 		rq = i915_request_create(ce);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			goto out_ce;
+			break;
 		}
 
 		if (deps) {
@@ -878,10 +884,14 @@ intel_context_migrate_copy(struct intel_context *ce,
 
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
@@ -905,7 +915,10 @@ intel_context_migrate_copy(struct intel_context *ce,
 		cond_resched();
 	} while (1);
 
-out_ce:
+	mutex_unlock(&ce->timeline->mutex);
+
+	if (*out)
+		i915_sw_fence_complete(&(*out)->submit);
 	return err;
 }
 
@@ -1005,7 +1018,7 @@ intel_context_migrate_clear(struct intel_context *ce,
 		rq = i915_request_create(ce);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			goto out_ce;
+			break;
 		}
 
 		if (deps) {
@@ -1056,17 +1069,23 @@ intel_context_migrate_clear(struct intel_context *ce,
 
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

