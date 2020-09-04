Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 714B725D919
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 15:00:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC8AD6EB9E;
	Fri,  4 Sep 2020 13:00:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7053D6EB9F
 for <Intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 12:59:59 +0000 (UTC)
IronPort-SDR: kYuIcYzPA9kQ4oYLp9fonTTKoLhSjmB+vrWaFCt61yMHEJsBjShe/myk1XDFf6TZE1Cw80CYIW
 lAK+DSOENGkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="175788972"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="175788972"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 05:59:59 -0700
IronPort-SDR: t7raYBf1oYRUqdiY+1drxgTIziV1TRUTDimZQgLxTvwFi7QoKJ+SMlDn8s/yfdyOVvfMrwcIdZ
 xWwC8b9Rj2Ag==
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="478478891"
Received: from arielsig-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.165.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 05:59:57 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  4 Sep 2020 13:59:31 +0100
Message-Id: <20200904125934.133475-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904125934.133475-1-tvrtko.ursulin@linux.intel.com>
References: <20200904125934.133475-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Track all user contexts per client
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
index dcaca4fce5fb..f9b11e4cc3ad 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -354,6 +354,10 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
 	if (client) {
 		unsigned int i;
 
+		spin_lock(&client->ctx_lock);
+		list_del_rcu(&ctx->client_link);
+		spin_unlock(&client->ctx_lock);
+
 		/* Transfer accumulated runtime to the parent drm client. */
 		BUILD_BUG_ON(ARRAY_SIZE(client->past_runtime) !=
 			     ARRAY_SIZE(ctx->past_runtime));
@@ -992,6 +996,10 @@ static int gem_context_register(struct i915_gem_context *ctx,
 
 	ctx->client = client;
 
+	spin_lock(&client->ctx_lock);
+	list_add_tail_rcu(&ctx->client_link, &client->ctx_list);
+	spin_unlock(&client->ctx_lock);
+
 	return 0;
 
 err_pid:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index e473984b52c8..d65e3bd3c8bb 100644
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
index b0048af68912..064358b14079 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -155,6 +155,9 @@ i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
 
 	kref_init(&client->kref);
 	mutex_init(&client->update_lock);
+	spin_lock_init(&client->ctx_lock);
+	INIT_LIST_HEAD(&client->ctx_list);
+
 	client->clients = clients;
 
 	ret = xa_alloc_cyclic(&clients->xarray, &client->id, client,
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 874b511c3217..8f528166e07b 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -10,10 +10,12 @@
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
@@ -37,6 +39,9 @@ struct i915_drm_client {
 	char __rcu *name;
 	bool closed;
 
+	spinlock_t ctx_lock; /* For add/remove from ctx_list. */
+	struct list_head ctx_list; /* List of contexts belonging to client. */
+
 	struct i915_drm_clients *clients;
 
 	struct kobject *root;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
