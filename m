Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAEE414D68
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 17:52:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292746EC2D;
	Wed, 22 Sep 2021 15:52:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8706A6EC2C;
 Wed, 22 Sep 2021 15:52:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="210862762"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="210862762"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 08:52:05 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="704069023"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.200.151])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 08:52:03 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 David M Nieto <David.Nieto@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 22 Sep 2021 16:51:45 +0100
Message-Id: <20210922155145.93174-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210922155145.93174-1-tvrtko.ursulin@linux.intel.com>
References: <20210922155145.93174-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Expose client engine utilisation
 via fdinfo
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Similar to AMD commit
874442541133 ("drm/amdgpu: Add show_fdinfo() interface"), using the
infrastructure added in previous patches, we add basic client info
and GPU engine utilisation for i915.

Example of the output:

  pos:    0
  flags:  0100002
  mnt_id: 21
  drm-driver: i915
  drm-pdev:   0000:00:02.0
  drm-client-id:      7
  drm-engine-render:  9288864723 ns
  drm-engine-copy:    2035071108 ns
  drm-engine-video:   0 ns
  drm-engine-video-enhance:   0 ns

v2:
 * Update for removal of name and pid.

v3:
 * Use drm_driver.name.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: David M Nieto <David.Nieto@amd.com>
Cc: Christian König <christian.koenig@amd.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Acked-by: Christian König <christian.koenig@amd.com>
---
 Documentation/gpu/drm-usage-stats.rst  |  6 +++
 Documentation/gpu/i915.rst             | 27 ++++++++++
 drivers/gpu/drm/i915/i915_drm_client.c | 73 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drm_client.h |  4 ++
 drivers/gpu/drm/i915/i915_drv.c        |  3 ++
 5 files changed, 113 insertions(+)

diff --git a/Documentation/gpu/drm-usage-stats.rst b/Documentation/gpu/drm-usage-stats.rst
index c669026be244..6952f8389d07 100644
--- a/Documentation/gpu/drm-usage-stats.rst
+++ b/Documentation/gpu/drm-usage-stats.rst
@@ -95,3 +95,9 @@ object belong to this client, in the respective memory region.
 
 Default unit shall be bytes with optional unit specifiers of 'KiB' or 'MiB'
 indicating kibi- or mebi-bytes.
+
+===============================
+Driver specific implementations
+===============================
+
+:ref:`i915-usage-stats`
diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 311e10400708..36cd6f74fb1b 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -700,3 +700,30 @@ The style guide for ``i915_reg.h``.
 
 .. kernel-doc:: drivers/gpu/drm/i915/i915_reg.h
    :doc: The i915 register macro definition style guide
+
+.. _i915-usage-stats:
+
+i915 DRM client usage stats implementation
+==========================================
+
+The drm/i915 driver implements the DRM client usage stats specification as
+documented in :ref:`drm-client-usage-stats`.
+
+Example of the output showing the implemented key value pairs and entirety of
+the currenly possible format options:
+
+::
+
+      pos:    0
+      flags:  0100002
+      mnt_id: 21
+      drm-driver: i915
+      drm-pdev:   0000:00:02.0
+      drm-client-id:      7
+      drm-engine-render:  9288864723 ns
+      drm-engine-copy:    2035071108 ns
+      drm-engine-video:   0 ns
+      drm-engine-video-enhance:   0 ns
+
+Possible `drm-engine-` key names are: `render`, `copy`, `video` and
+`video-enhance`.
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 91a8559bebf7..06dbd20ce763 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -7,6 +7,11 @@
 #include <linux/slab.h>
 #include <linux/types.h>
 
+#include <uapi/drm/i915_drm.h>
+
+#include <drm/drm_print.h>
+
+#include "gem/i915_gem_context.h"
 #include "i915_drm_client.h"
 #include "i915_gem.h"
 #include "i915_utils.h"
@@ -68,3 +73,71 @@ void i915_drm_clients_fini(struct i915_drm_clients *clients)
 	GEM_BUG_ON(!xa_empty(&clients->xarray));
 	xa_destroy(&clients->xarray);
 }
+
+#ifdef CONFIG_PROC_FS
+static const char * const uabi_class_names[] = {
+	[I915_ENGINE_CLASS_RENDER] = "render",
+	[I915_ENGINE_CLASS_COPY] = "copy",
+	[I915_ENGINE_CLASS_VIDEO] = "video",
+	[I915_ENGINE_CLASS_VIDEO_ENHANCE] = "video-enhance",
+};
+
+static u64 busy_add(struct i915_gem_context *ctx, unsigned int class)
+{
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+	u64 total = 0;
+
+	for_each_gem_engine(ce, rcu_dereference(ctx->engines), it) {
+		if (ce->engine->uabi_class != class)
+			continue;
+
+		total += intel_context_get_total_runtime_ns(ce);
+	}
+
+	return total;
+}
+
+static void
+show_client_class(struct seq_file *m,
+		  struct i915_drm_client *client,
+		  unsigned int class)
+{
+	const struct list_head *list = &client->ctx_list;
+	u64 total = atomic64_read(&client->past_runtime[class]);
+	struct i915_gem_context *ctx;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(ctx, list, client_link)
+		total += busy_add(ctx, class);
+	rcu_read_unlock();
+
+	return seq_printf(m, "drm-engine-%s:\t%llu ns\n",
+			  uabi_class_names[class], total);
+}
+
+void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
+{
+	struct drm_file *file = f->private_data;
+	struct drm_i915_file_private *file_priv = file->driver_priv;
+	struct drm_i915_private *i915 = file_priv->dev_priv;
+	struct i915_drm_client *client = file_priv->client;
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	unsigned int i;
+
+	/*
+	 * ******************************************************************
+	 * For text output format description please see drm-usage-stats.rst!
+	 * ******************************************************************
+	 */
+
+	seq_printf(m, "drm-driver:\t%s\n", i915->drm.driver->name);
+	seq_printf(m, "drm-pdev:\t%04x:%02x:%02x.%d\n",
+		   pci_domain_nr(pdev->bus), pdev->bus->number,
+		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
+	seq_printf(m, "drm-client-id:\t%u\n", client->id);
+
+	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
+		show_client_class(m, client, i);
+}
+#endif
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 7416e18aa33c..d96d6a06302e 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -57,6 +57,10 @@ static inline void i915_drm_client_put(struct i915_drm_client *client)
 
 struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *clients);
 
+#ifdef CONFIG_PROC_FS
+void i915_drm_client_fdinfo(struct seq_file *m, struct file *f);
+#endif
+
 void i915_drm_clients_fini(struct i915_drm_clients *clients);
 
 #endif /* !__I915_DRM_CLIENT_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 6418f3dbdad0..8ab0d49fd98a 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1711,6 +1711,9 @@ static const struct file_operations i915_driver_fops = {
 	.read = drm_read,
 	.compat_ioctl = i915_ioc32_compat_ioctl,
 	.llseek = noop_llseek,
+#ifdef CONFIG_PROC_FS
+	.show_fdinfo = i915_drm_client_fdinfo,
+#endif
 };
 
 static int
-- 
2.30.2

