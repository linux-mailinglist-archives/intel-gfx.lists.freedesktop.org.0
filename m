Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC9C12689A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 19:00:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D1B6E3AA;
	Thu, 19 Dec 2019 18:00:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DCF86E39B
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 18:00:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 10:00:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="206283913"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by orsmga007.jf.intel.com with ESMTP; 19 Dec 2019 10:00:33 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 18:00:17 +0000
Message-Id: <20191219180019.25562-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 6/8] drm/i915: Track all user contexts per client
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
separate list, plus we make contexts take a reference on their clients
file_priv.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 23 ++++++++++++++++++-
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  6 +++++
 drivers/gpu/drm/i915/i915_drv.h               | 21 +++++++++++++++++
 drivers/gpu/drm/i915/i915_gem.c               |  6 +++--
 4 files changed, 53 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index dc3a7856ae22..6586edcf4ffb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -266,8 +266,18 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 
 static void i915_gem_context_free(struct i915_gem_context *ctx)
 {
+	struct i915_drm_client *client = ctx->client;
+
 	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
 
+	if (client) {
+		spin_lock(&client->ctx_lock);
+		list_del_rcu(&ctx->client_link);
+		spin_unlock(&client->ctx_lock);
+
+		i915_gem_client_put(client);
+	}
+
 	spin_lock(&ctx->i915->gem.contexts.lock);
 	list_del(&ctx->link);
 	spin_unlock(&ctx->i915->gem.contexts.lock);
@@ -790,6 +800,7 @@ static int gem_context_register(struct i915_gem_context *ctx,
 				struct drm_i915_file_private *fpriv,
 				u32 *id)
 {
+	struct i915_drm_client *client = &fpriv->client;
 	struct i915_address_space *vm;
 	int ret;
 
@@ -807,9 +818,19 @@ static int gem_context_register(struct i915_gem_context *ctx,
 
 	/* And finally expose ourselves to userspace via the idr */
 	ret = xa_alloc(&fpriv->context_xa, id, ctx, xa_limit_32b, GFP_KERNEL);
-	if (ret)
+	if (ret) {
 		put_pid(fetch_and_zero(&ctx->pid));
+		goto out;
+	}
+
+	ctx->client = client;
+	i915_gem_client_get(client);
 
+	spin_lock(&client->ctx_lock);
+	list_add_tail_rcu(&ctx->client_link, &client->ctx_list);
+	spin_unlock(&client->ctx_lock);
+
+out:
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 69df5459c350..090ef10fdc5d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -104,6 +104,12 @@ struct i915_gem_context {
 	struct list_head link;
 	struct llist_node free_link;
 
+	/** client: struct i915_drm_client */
+	struct i915_drm_client *client;
+
+	/** link: &fpriv.context_list */
+	struct list_head client_link;
+
 	/**
 	 * @ref: reference count
 	 *
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 514d7d630fce..8ffd638a071f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -234,6 +234,9 @@ struct drm_i915_file_private {
 		char *name;
 		bool closed;
 
+		spinlock_t ctx_lock;
+		struct list_head ctx_list;
+
 		struct kobject *root;
 		struct {
 			struct device_attribute pid;
@@ -1909,6 +1912,24 @@ void __i915_gem_unregister_client(struct i915_drm_client *client);
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 void i915_gem_release(struct drm_device *dev, struct drm_file *file);
 
+static inline void i915_gem_client_get(struct i915_drm_client *client)
+{
+	struct drm_i915_file_private *fpriv =
+		container_of(client, typeof(*fpriv), client);
+
+	kref_get(&fpriv->kref);
+}
+
+void __i915_gem_release(struct kref *kref);
+
+static inline void i915_gem_client_put(struct i915_drm_client *client)
+{
+	struct drm_i915_file_private *fpriv =
+		container_of(client, typeof(*fpriv), client);
+
+	kref_put(&fpriv->kref, __i915_gem_release);
+}
+
 int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 				    enum i915_cache_level cache_level);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index f953d4e20e33..564e21902dff 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1612,7 +1612,7 @@ void __i915_gem_unregister_client(struct i915_drm_client *client)
 	kfree(fetch_and_zero(&client->name));
 }
 
-static void gem_release(struct kref *kref)
+void __i915_gem_release(struct kref *kref)
 {
 	struct drm_i915_file_private *fpriv =
 		container_of(kref, typeof(*fpriv), kref);
@@ -1639,7 +1639,7 @@ void i915_gem_release(struct drm_device *dev, struct drm_file *file)
 
 	GEM_BUG_ON(client->closed);
 	client->closed = true;
-	kref_put(&file_priv->kref, gem_release);
+	i915_gem_client_put(client);
 }
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
@@ -1667,6 +1667,8 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
 		goto err_add;
 
 	kref_init(&file_priv->kref);
+	spin_lock_init(&client->ctx_lock);
+	INIT_LIST_HEAD(&client->ctx_list);
 
 	file->driver_priv = file_priv;
 	file_priv->i915 = i915;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
