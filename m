Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D31C8189BB5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 13:12:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0206E8DA;
	Wed, 18 Mar 2020 12:12:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D08776E8DA
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 12:12:03 +0000 (UTC)
IronPort-SDR: Z4R8v2r62YrweLN3WBgIoLIOYOzRB2TP6BVPBv9QBxtj+CfDck9pNzf+BDWX9qk2gU0gHPhoCm
 S8mKDkI3aiDQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 05:12:03 -0700
IronPort-SDR: qd3OlfznKqn3ONudwENc3NeAOFAfIQhbHF586mhJAhU4a4RrNvwuPfIMOIYkI8K6RfzxC2B23I
 Fx3jx77ShP4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="417926226"
Received: from unknown (HELO localhost.localdomain) ([10.214.196.8])
 by orsmga005.jf.intel.com with ESMTP; 18 Mar 2020 05:12:02 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 12:11:36 +0000
Message-Id: <20200318121138.909-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/10] drm/i915: Track all user contexts per
 client
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

We soon want to start answering questions like how much GPU time is the
context belonging to a client which exited still using.

To enable this we start tracking all context belonging to a client on a
separate list.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 8 ++++++++
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 3 +++
 drivers/gpu/drm/i915/i915_drm_client.c            | 3 +++
 drivers/gpu/drm/i915/i915_drm_client.h            | 5 +++++
 4 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 912375fb8a3b..9654f0ab3f45 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -358,6 +358,10 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
 	if (client) {
 		unsigned int i;
 
+		spin_lock(&client->ctx_lock);
+		list_del_rcu(&ctx->client_link);
+		spin_unlock(&client->ctx_lock);
+
 		/* Transfer accumulated runtime to the parent drm client. */
 		BUILD_BUG_ON(ARRAY_SIZE(client->past_runtime) !=
 			     ARRAY_SIZE(ctx->past_runtime));
@@ -964,6 +968,10 @@ static int gem_context_register(struct i915_gem_context *ctx,
 
 	ctx->client = client;
 
+	spin_lock(&client->ctx_lock);
+	list_add_tail_rcu(&ctx->client_link, &client->ctx_list);
+	spin_unlock(&client->ctx_lock);
+
 	return 0;
 
 err:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index f0d7441aafc8..255fcc469d9b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -103,6 +103,9 @@ struct i915_gem_context {
 	/** client: struct i915_drm_client */
 	struct i915_drm_client *client;
 
+	/** link: &drm_client.context_list */
+	struct list_head client_link;
+
 	/**
 	 * @ref: reference count
 	 *
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 342a11554573..c88d9ff448e0 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -154,6 +154,9 @@ i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
 
 	kref_init(&client->kref);
 	mutex_init(&client->update_lock);
+	spin_lock_init(&client->ctx_lock);
+	INIT_LIST_HEAD(&client->ctx_list);
+
 	client->clients = clients;
 
 	ret = xa_alloc_cyclic(&clients->xarray, &client->id, client,
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 29b116606596..0be27aa9bbda 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -9,10 +9,12 @@
 #include <linux/device.h>
 #include <linux/kobject.h>
 #include <linux/kref.h>
+#include <linux/list.h>
 #include <linux/mutex.h>
 #include <linux/pid.h>
 #include <linux/rcupdate.h>
 #include <linux/sched.h>
+#include <linux/spinlock.h>
 #include <linux/xarray.h>
 
 #include "gt/intel_engine_types.h"
@@ -36,6 +38,9 @@ struct i915_drm_client {
 	char __rcu *name;
 	bool closed;
 
+	spinlock_t ctx_lock; /* For add/remove from ctx_list. */
+	struct list_head ctx_list; /* List of contexts belonging to client. */
+
 	struct i915_drm_clients *clients;
 
 	struct kobject *root;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
