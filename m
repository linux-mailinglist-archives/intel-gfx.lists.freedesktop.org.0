Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBD5268BEA
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 15:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 706966E49C;
	Mon, 14 Sep 2020 13:13:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E53A06E49B
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 13:13:15 +0000 (UTC)
IronPort-SDR: 0wIHBMCG3E3S7JXH6YO1TRL4UC6jR2vBU+Q+3UK2F/otahQN7xQNhvFDJKYmU4BjTxvKoZWntE
 9KNIYsi0/6UQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9743"; a="159113437"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="159113437"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 06:13:15 -0700
IronPort-SDR: zRr2eeMpF6HM7ql8feNtMYDHV8FHHQM4NBRBc/xBH8C9W8a+z6kyCWmTUb6NkmHzseXpBL42qu
 p4+yxVL2OQuQ==
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="507136390"
Received: from matancoh-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.198.45])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 06:13:14 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 14 Sep 2020 14:12:53 +0100
Message-Id: <20200914131256.89465-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
References: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
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

v2:
 * Keep adding to gem.contexts.list as last. (Lucas)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 8 ++++++++
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 3 +++
 drivers/gpu/drm/i915/i915_drm_client.c            | 3 +++
 drivers/gpu/drm/i915/i915_drm_client.h            | 5 +++++
 4 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a50b83659399..8a5b36418860 100644
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
@@ -988,6 +992,10 @@ static int gem_context_register(struct i915_gem_context *ctx,
 
 	ctx->client = client;
 
+	spin_lock(&client->ctx_lock);
+	list_add_tail_rcu(&ctx->client_link, &client->ctx_list);
+	spin_unlock(&client->ctx_lock);
+
 	spin_lock(&i915->gem.contexts.lock);
 	list_add_tail(&ctx->link, &i915->gem.contexts.list);
 	spin_unlock(&i915->gem.contexts.lock);
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
index 617509c2e887..d99673508f8c 100644
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
