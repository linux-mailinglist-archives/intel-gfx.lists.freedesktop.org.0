Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 169194BFA31
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 15:05:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E0F10E7EE;
	Tue, 22 Feb 2022 14:05:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B02A10E62F
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 14:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645538703; x=1677074703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0uJw0b466/lCBgu93E+ks4K1C3g43G9kaDVLzLOg6vc=;
 b=cwTIC5SLR9+7JhKADcoxKQ5Br+3V5s4kS1+F5f094l4go57k7Th/OKdY
 70wI/7SLc+8kCsh3BpO8pPzF+mjkZyq/D5lZW/pVdaK6xEnXwkWK9fgOs
 3hK1tjzrGh3hMxhYLIjFtV9M6SMfOfbkRe7zr1pBvamWMLWsbA8E+VFFQ
 pNA9jS3/oc5QoTm04vdHCFZhUlR/00lBfah7cz0bmjMW/1jATAhePOQvw
 zJKa58LeDyxpGRRIee+ZYjEHH8IdQC5DTdLobeRqM2pC1mdCDAeJcwzzm
 5VEbAPkZihf9UpgnYDh86q/WYIS4/bfp/TnF6dDWCTprndXrrylrAyTTZ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="338142740"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="338142740"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 06:04:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="532237337"
Received: from sjgillin-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.218.63])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 06:04:36 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 14:04:18 +0000
Message-Id: <20220222140422.1121163-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
References: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Track all user contexts per client
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
Cc: Rob Clark <robdclark@chromium.org>, Chris Wilson <chris@chris-wilson.co.uk>
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
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 12 ++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  3 +++
 drivers/gpu/drm/i915/i915_drm_client.c            |  2 ++
 drivers/gpu/drm/i915/i915_drm_client.h            |  5 +++++
 4 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 46bee8b694ad..bbbb3544f24b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1480,6 +1480,7 @@ static void set_closed_name(struct i915_gem_context *ctx)
 
 static void context_close(struct i915_gem_context *ctx)
 {
+	struct i915_drm_client *client;
 	struct i915_address_space *vm;
 
 	/* Flush any concurrent set_engines() */
@@ -1517,6 +1518,13 @@ static void context_close(struct i915_gem_context *ctx)
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
@@ -1702,6 +1710,10 @@ static void gem_context_register(struct i915_gem_context *ctx,
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
index cbc3161ab021..191368386ace 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -7,6 +7,8 @@
 #define __I915_DRM_CLIENT_H__
 
 #include <linux/kref.h>
+#include <linux/list.h>
+#include <linux/spinlock.h>
 #include <linux/xarray.h>
 
 #include "gt/intel_engine_types.h"
@@ -27,6 +29,9 @@ struct i915_drm_client {
 
 	unsigned int id;
 
+	spinlock_t ctx_lock; /* For add/remove from ctx_list. */
+	struct list_head ctx_list; /* List of contexts belonging to client. */
+
 	struct i915_drm_clients *clients;
 
 	/**
-- 
2.32.0

