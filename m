Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A921A9A22
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 12:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC616E94C;
	Wed, 15 Apr 2020 10:11:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3653D6E94C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 10:11:56 +0000 (UTC)
IronPort-SDR: Jwm0rKz+9odgD68dzDYA8AJRGEDS47adVjWWrCRSWbvSq+B1QKrTmmacoA4gt+B6+Z8/1gwHKB
 Z0F75yPa5qzQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 03:11:56 -0700
IronPort-SDR: JX3TtJUwE48OGeEld7RLZMbJXxaLTyOokdpe6Nz2fzxzx2WIH1Y5PXwRYVUPHHIj4z1QysPOGa
 ktSxzTL5i+CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="427385507"
Received: from idodadon-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.240.154])
 by orsmga005.jf.intel.com with ESMTP; 15 Apr 2020 03:11:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 11:11:34 +0100
Message-Id: <20200415101138.26126-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
References: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Track runtime spent in closed GEM
 contexts
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
index d4229155853b..4f623eee4f70 100644
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
