Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EF9189BB2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 13:12:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE2D6E8D9;
	Wed, 18 Mar 2020 12:12:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12DEE6E8D6
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 12:12:02 +0000 (UTC)
IronPort-SDR: y+hP5EKn1HuR+YsBFTGPTLtXaIJeXtMjUomcyZXB8bfRxBHrpRx7SGata0DmiCOBR63NUOVvvo
 seOZiSfU1KrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 05:12:01 -0700
IronPort-SDR: zSBs3C+W9Hm0JtLRU4vp+XIhDCBLaKK3nXWU1nCHRlwURbCjMV3jbuGkH1tTlnRVxJZ6h8T1WK
 qejcZynvtn0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="417926214"
Received: from unknown (HELO localhost.localdomain) ([10.214.196.8])
 by orsmga005.jf.intel.com with ESMTP; 18 Mar 2020 05:12:00 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 12:11:35 +0000
Message-Id: <20200318121138.909-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: Track runtime spent in closed
 GEM contexts
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

As GEM contexts are closed we want to have the DRM client remember how
much GPU time they used (per class) so later we can used it for smarter
purposes.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 12 +++++++++++-
 drivers/gpu/drm/i915/i915_drm_client.h      |  7 +++++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5edf79ed6247..912375fb8a3b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -355,8 +355,18 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
 
 	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
 
-	if (client)
+	if (client) {
+		unsigned int i;
+
+		/* Transfer accumulated runtime to the parent drm client. */
+		BUILD_BUG_ON(ARRAY_SIZE(client->past_runtime) !=
+			     ARRAY_SIZE(ctx->past_runtime));
+		for (i = 0; i < ARRAY_SIZE(client->past_runtime); i++)
+			atomic64_add(atomic64_read(&ctx->past_runtime[i]),
+				     &client->past_runtime[i]);
+
 		i915_drm_client_put(client);
+	}
 
 	spin_lock(&ctx->i915->gem.contexts.lock);
 	list_del(&ctx->link);
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 11b48383881d..29b116606596 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -15,6 +15,8 @@
 #include <linux/sched.h>
 #include <linux/xarray.h>
 
+#include "gt/intel_engine_types.h"
+
 struct i915_drm_clients {
 	struct xarray xarray;
 	u32 next_id;
@@ -41,6 +43,11 @@ struct i915_drm_client {
 		struct device_attribute pid;
 		struct device_attribute name;
 	} attr;
+
+	/**
+	 * @past_runtime: Accumulation of pphwsp runtimes from closed contexts.
+	 */
+	atomic64_t past_runtime[MAX_ENGINE_CLASS + 1];
 };
 
 void i915_drm_clients_init(struct i915_drm_clients *clients);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
