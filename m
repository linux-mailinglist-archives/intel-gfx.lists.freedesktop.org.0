Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E886E4DC9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 17:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E99910E377;
	Mon, 17 Apr 2023 15:56:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2344810E1B1;
 Mon, 17 Apr 2023 15:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681746999; x=1713282999;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZZ5sdfxvwan0NtZOVxjrO+xnxP2dQu3WGW/RRDuIchE=;
 b=ClrCDA+XUz8/0+QCswLkJ5apEEe5vwTEXtS1RElRZW10EGwW2lavdAOb
 B1wrF4jrRz4mFrTBtaVcpLeHByOOaxt7hogN9TYpIWa37SZxfZHzmWV+A
 RlMfB3bHCGEy9k9bwaHsJPzvacFl6+EQ4RI4srxwgN65Rvh28HdkNqL9t
 OR6wDC97XUL8A+6U+dy6LJW6DoPJQHfUqYpxj02Y11jUD65CWdoWmE0Qd
 5im/K/GlWHBpP079m/KnAXW5OXvU6qcerpoGh1IRJDQFToG9+p4ciKrwl
 TxOtosG7JQEKSpSUDUGu7lWdHRTmi1IJZrTdlhVX1VuPfXQnftgry7q7y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="372804626"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="372804626"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 08:56:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="690718275"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="690718275"
Received: from gtohallo-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.232.210])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 08:56:27 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 17 Apr 2023 16:56:09 +0100
Message-Id: <20230417155613.4143258-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230417155613.4143258-1-tvrtko.ursulin@linux.intel.com>
References: <20230417155613.4143258-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/6] drm/i915: Use the fdinfo helper
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Alex Deucher <alexdeucher@gmail.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Use the common fdinfo helper for printing the basics. Remove now unused
client id allocation code.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/i915/i915_driver.c     |  6 +--
 drivers/gpu/drm/i915/i915_drm_client.c | 65 ++++----------------------
 drivers/gpu/drm/i915/i915_drm_client.h | 22 ++-------
 drivers/gpu/drm/i915/i915_drv.h        |  2 -
 drivers/gpu/drm/i915/i915_gem.c        |  6 +--
 5 files changed, 18 insertions(+), 83 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a52db8a80900..6493548c69bf 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -244,8 +244,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	if (ret < 0)
 		goto err_rootgt;
 
-	i915_drm_clients_init(&dev_priv->clients, dev_priv);
-
 	i915_gem_init_early(dev_priv);
 
 	/* This must be called before any calls to HAS_PCH_* */
@@ -279,7 +277,6 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	intel_power_domains_cleanup(dev_priv);
 	i915_gem_cleanup_early(dev_priv);
 	intel_gt_driver_late_release_all(dev_priv);
-	i915_drm_clients_fini(&dev_priv->clients);
 	intel_region_ttm_device_fini(dev_priv);
 	vlv_suspend_cleanup(dev_priv);
 	i915_workqueues_cleanup(dev_priv);
@@ -1700,7 +1697,7 @@ static const struct file_operations i915_driver_fops = {
 	.compat_ioctl = i915_ioc32_compat_ioctl,
 	.llseek = noop_llseek,
 #ifdef CONFIG_PROC_FS
-	.show_fdinfo = i915_drm_client_fdinfo,
+	.show_fdinfo = drm_show_fdinfo,
 #endif
 };
 
@@ -1800,6 +1797,7 @@ static const struct drm_driver i915_drm_driver = {
 	.open = i915_driver_open,
 	.lastclose = i915_driver_lastclose,
 	.postclose = i915_driver_postclose,
+	.show_fdinfo = i915_drm_client_fdinfo,
 
 	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index e8fa172ebe5e..c654984189f7 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -17,64 +17,29 @@
 #include "i915_gem.h"
 #include "i915_utils.h"
 
-void i915_drm_clients_init(struct i915_drm_clients *clients,
-			   struct drm_i915_private *i915)
-{
-	clients->i915 = i915;
-	clients->next_id = 0;
-
-	xa_init_flags(&clients->xarray, XA_FLAGS_ALLOC | XA_FLAGS_LOCK_IRQ);
-}
-
-struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *clients)
+struct i915_drm_client *i915_drm_client_alloc(void)
 {
 	struct i915_drm_client *client;
-	struct xarray *xa = &clients->xarray;
-	int ret;
 
 	client = kzalloc(sizeof(*client), GFP_KERNEL);
 	if (!client)
-		return ERR_PTR(-ENOMEM);
-
-	xa_lock_irq(xa);
-	ret = __xa_alloc_cyclic(xa, &client->id, client, xa_limit_32b,
-				&clients->next_id, GFP_KERNEL);
-	xa_unlock_irq(xa);
-	if (ret < 0)
-		goto err;
+		return NULL;
 
 	kref_init(&client->kref);
 	spin_lock_init(&client->ctx_lock);
 	INIT_LIST_HEAD(&client->ctx_list);
-	client->clients = clients;
 
 	return client;
-
-err:
-	kfree(client);
-
-	return ERR_PTR(ret);
 }
 
 void __i915_drm_client_free(struct kref *kref)
 {
 	struct i915_drm_client *client =
 		container_of(kref, typeof(*client), kref);
-	struct xarray *xa = &client->clients->xarray;
-	unsigned long flags;
 
-	xa_lock_irqsave(xa, flags);
-	__xa_erase(xa, client->id);
-	xa_unlock_irqrestore(xa, flags);
 	kfree(client);
 }
 
-void i915_drm_clients_fini(struct i915_drm_clients *clients)
-{
-	GEM_BUG_ON(!xa_empty(&clients->xarray));
-	xa_destroy(&clients->xarray);
-}
-
 #ifdef CONFIG_PROC_FS
 static const char * const uabi_class_names[] = {
 	[I915_ENGINE_CLASS_RENDER] = "render",
@@ -101,38 +66,34 @@ static u64 busy_add(struct i915_gem_context *ctx, unsigned int class)
 }
 
 static void
-show_client_class(struct seq_file *m,
+show_client_class(struct drm_printer *p,
+		  struct drm_i915_private *i915,
 		  struct i915_drm_client *client,
 		  unsigned int class)
 {
-	const struct list_head *list = &client->ctx_list;
+	const unsigned int capacity = i915->engine_uabi_class_count[class];
 	u64 total = atomic64_read(&client->past_runtime[class]);
-	const unsigned int capacity =
-		client->clients->i915->engine_uabi_class_count[class];
 	struct i915_gem_context *ctx;
 
 	rcu_read_lock();
-	list_for_each_entry_rcu(ctx, list, client_link)
+	list_for_each_entry_rcu(ctx, &client->ctx_list, client_link)
 		total += busy_add(ctx, class);
 	rcu_read_unlock();
 
 	if (capacity)
-		seq_printf(m, "drm-engine-%s:\t%llu ns\n",
+		drm_printf(p, "drm-engine-%s:\t%llu ns\n",
 			   uabi_class_names[class], total);
 
 	if (capacity > 1)
-		seq_printf(m, "drm-engine-capacity-%s:\t%u\n",
+		drm_printf(p, "drm-engine-capacity-%s:\t%u\n",
 			   uabi_class_names[class],
 			   capacity);
 }
 
-void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
+void i915_drm_client_fdinfo(struct drm_printer *p, struct drm_file *file)
 {
-	struct drm_file *file = f->private_data;
 	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct drm_i915_private *i915 = file_priv->i915;
-	struct i915_drm_client *client = file_priv->client;
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	unsigned int i;
 
 	/*
@@ -141,12 +102,6 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
 	 * ******************************************************************
 	 */
 
-	seq_printf(m, "drm-driver:\t%s\n", i915->drm.driver->name);
-	seq_printf(m, "drm-pdev:\t%04x:%02x:%02x.%d\n",
-		   pci_domain_nr(pdev->bus), pdev->bus->number,
-		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
-	seq_printf(m, "drm-client-id:\t%u\n", client->id);
-
 	/*
 	 * Temporarily skip showing client engine information with GuC submission till
 	 * fetching engine busyness is implemented in the GuC submission backend
@@ -155,6 +110,6 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
 		return;
 
 	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
-		show_client_class(m, client, i);
+		show_client_class(p, i915, file_priv->client, i);
 }
 #endif
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 69496af996d9..4c18b99e10a4 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -9,20 +9,13 @@
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/spinlock.h>
-#include <linux/xarray.h>
 
 #include <uapi/drm/i915_drm.h>
 
 #define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
 
-struct drm_i915_private;
-
-struct i915_drm_clients {
-	struct drm_i915_private *i915;
-
-	struct xarray xarray;
-	u32 next_id;
-};
+struct drm_file;
+struct drm_printer;
 
 struct i915_drm_client {
 	struct kref kref;
@@ -32,17 +25,12 @@ struct i915_drm_client {
 	spinlock_t ctx_lock; /* For add/remove from ctx_list. */
 	struct list_head ctx_list; /* List of contexts belonging to client. */
 
-	struct i915_drm_clients *clients;
-
 	/**
 	 * @past_runtime: Accumulation of pphwsp runtimes from closed contexts.
 	 */
 	atomic64_t past_runtime[I915_LAST_UABI_ENGINE_CLASS + 1];
 };
 
-void i915_drm_clients_init(struct i915_drm_clients *clients,
-			   struct drm_i915_private *i915);
-
 static inline struct i915_drm_client *
 i915_drm_client_get(struct i915_drm_client *client)
 {
@@ -57,12 +45,10 @@ static inline void i915_drm_client_put(struct i915_drm_client *client)
 	kref_put(&client->kref, __i915_drm_client_free);
 }
 
-struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *clients);
+struct i915_drm_client *i915_drm_client_alloc(void);
 
 #ifdef CONFIG_PROC_FS
-void i915_drm_client_fdinfo(struct seq_file *m, struct file *f);
+void i915_drm_client_fdinfo(struct drm_printer *p, struct drm_file *file);
 #endif
 
-void i915_drm_clients_fini(struct i915_drm_clients *clients);
-
 #endif /* !__I915_DRM_CLIENT_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fe7eeafe9cff..eb739fb9cdbb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -347,8 +347,6 @@ struct drm_i915_private {
 
 	struct i915_pmu pmu;
 
-	struct i915_drm_clients clients;
-
 	/* The TTM device structure. */
 	struct ttm_device bdev;
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 0a78bdbd36b1..db4c4af5f4b7 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1306,11 +1306,9 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
 	if (!file_priv)
 		goto err_alloc;
 
-	client = i915_drm_client_add(&i915->clients);
-	if (IS_ERR(client)) {
-		ret = PTR_ERR(client);
+	client = i915_drm_client_alloc();
+	if (!client)
 		goto err_client;
-	}
 
 	file->driver_priv = file_priv;
 	file_priv->i915 = i915;
-- 
2.37.2

