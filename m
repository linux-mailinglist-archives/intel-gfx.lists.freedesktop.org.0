Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC45467A98
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 16:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE32973945;
	Fri,  3 Dec 2021 15:50:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E9A73123;
 Fri,  3 Dec 2021 15:50:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="261004634"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="261004634"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 07:50:05 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="501232361"
Received: from barrettd-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.208.70])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 07:50:04 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  3 Dec 2021 15:49:44 +0000
Message-Id: <20211203154947.3953995-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211203154947.3953995-1-tvrtko.ursulin@linux.intel.com>
References: <20211203154947.3953995-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Track all user contexts per client
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

We soon want to start answering questions like how much GPU time is the
context belonging to a client which exited still using.

To enable this we start tracking all context belonging to a client on a
separate list.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 12 ++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  3 +++
 drivers/gpu/drm/i915/i915_drm_client.c            |  2 ++
 drivers/gpu/drm/i915/i915_drm_client.h            |  5 +++++
 4 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index ae9de81b0e6b..b37b0b45ea68 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1461,6 +1461,7 @@ static void set_closed_name(struct i915_gem_context *ctx)
 
 static void context_close(struct i915_gem_context *ctx)
 {
+	struct i915_drm_client *client;
 	struct i915_address_space *vm;
 
 	/* Flush any concurrent set_engines() */
@@ -1498,6 +1499,13 @@ static void context_close(struct i915_gem_context *ctx)
 	list_del(&ctx->link);
 	spin_unlock(&ctx->i915->gem.contexts.lock);
 
+	client = ctx->client;
+	if (client) {
+		spin_lock(&client->ctx_lock);
+		list_del_rcu(&ctx->client_link);
+		spin_unlock(&client->ctx_lock);
+	}
+
 	mutex_unlock(&ctx->mutex);
 
 	/*
@@ -1683,6 +1691,10 @@ static void gem_context_register(struct i915_gem_context *ctx,
 	old = xa_store(&fpriv->context_xa, id, ctx, GFP_KERNEL);
 	WARN_ON(old);
 
+	spin_lock(&ctx->client->ctx_lock);
+	list_add_tail_rcu(&ctx->client_link, &ctx->client->ctx_list);
+	spin_unlock(&ctx->client->ctx_lock);
+
 	spin_lock(&i915->gem.contexts.lock);
 	list_add_tail(&ctx->link, &i915->gem.contexts.list);
 	spin_unlock(&i915->gem.contexts.lock);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 93d24f189ba9..5946dcb11cf5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -296,6 +296,9 @@ struct i915_gem_context {
 	/** @client: struct i915_drm_client */
 	struct i915_drm_client *client;
 
+	/** link: &drm_client.context_list */
+	struct list_head client_link;
+
 	/**
 	 * @ref: reference count
 	 *
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index e61e9ba15256..91a8559bebf7 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -38,6 +38,8 @@ struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *clients)
 		goto err;
 
 	kref_init(&client->kref);
+	spin_lock_init(&client->ctx_lock);
+	INIT_LIST_HEAD(&client->ctx_list);
 	client->clients = clients;
 
 	return client;
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 9d80d9f715ee..7416e18aa33c 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -7,6 +7,8 @@
 #define __I915_DRM_CLIENT_H__
 
 #include <linux/kref.h>
+#include <linux/list.h>
+#include <linux/spinlock.h>
 #include <linux/xarray.h>
 
 #include "gt/intel_engine_types.h"
@@ -25,6 +27,9 @@ struct i915_drm_client {
 
 	unsigned int id;
 
+	spinlock_t ctx_lock; /* For add/remove from ctx_list. */
+	struct list_head ctx_list; /* List of contexts belonging to client. */
+
 	struct i915_drm_clients *clients;
 
 	/**
-- 
2.32.0

