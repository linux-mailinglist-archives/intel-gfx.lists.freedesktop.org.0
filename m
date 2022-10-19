Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6168C604EBF
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 19:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 123DF10EB50;
	Wed, 19 Oct 2022 17:33:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9167E10EB44
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 17:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666200806; x=1697736806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=34jcEyaboM7Cpl5hmtqGUgBiY4OSzKr0bOyVxNTPRuA=;
 b=SxQl+4FRxYkORNOe0E29yxbuq18rp/vkb10ImMboVEMmhd5MSqrwwD5s
 pjefJ4UB4COb2dMzKcAwHXB55DqqpjDKwjCrvGaH6wXldzVng4z/4CGGT
 ZvZYTYbPskHJhLakqLVJsZeqhP5bHNqikUfnr9kHr096R2hDMih5CGQYP
 NA6eOPh8Xo4JlLDgy7rjqaVisHisBnnlkqg747G7nWK0ujN2xMJ3t2XEM
 LmuSdb2ubbUC84Stmt5F84WEdJdeBdE870AH6gy10ksRb32HqJZHsSmi3
 NVbd8eb/U4VhsnC+Un2XLGRShFwcwrfY1reyokCg6YLz2BBAjjNgTRFbu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286201587"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286201587"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607204700"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="607204700"
Received: from mjmcener-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:22 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 18:32:39 +0100
Message-Id: <20221019173254.3361334-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 02/17] drm: Track clients per owning process
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

To enable propagation of settings from the cgroup drm controller to drm we
need to start tracking which processes own which drm clients.

Implement that by tracking the struct pid pointer of the owning process in
a new XArray, pointing to a structure containing a list of associated
struct drm_file pointers.

Clients are added and removed under the filelist mutex and RCU list
operations are used below it to allow for lockless lookup.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/Makefile     |  1 +
 drivers/gpu/drm/drm_cgroup.c | 60 ++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/drm_file.c   | 18 ++++++++---
 include/drm/drm_clients.h    | 31 +++++++++++++++++++
 include/drm/drm_file.h       |  4 +++
 5 files changed, 110 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_cgroup.c
 create mode 100644 include/drm/drm_clients.h

diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 6e55c47288e4..0719970d17ee 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -59,6 +59,7 @@ drm-$(CONFIG_DRM_LEGACY) += \
 	drm_scatter.o \
 	drm_vm.o
 drm-$(CONFIG_DRM_LIB_RANDOM) += lib/drm_random.o
+drm-$(CONFIG_CGROUP_DRM) += drm_cgroup.o
 drm-$(CONFIG_COMPAT) += drm_ioc32.o
 drm-$(CONFIG_DRM_PANEL) += drm_panel.o
 drm-$(CONFIG_OF) += drm_of.o
diff --git a/drivers/gpu/drm/drm_cgroup.c b/drivers/gpu/drm/drm_cgroup.c
new file mode 100644
index 000000000000..a31ff1d593ab
--- /dev/null
+++ b/drivers/gpu/drm/drm_cgroup.c
@@ -0,0 +1,60 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include <drm/drm_drv.h>
+#include <drm/drm_clients.h>
+
+static DEFINE_XARRAY(drm_pid_clients);
+
+void drm_clients_close(struct drm_file *file_priv)
+{
+	unsigned long pid = (unsigned long)file_priv->pid;
+	struct drm_device *dev = file_priv->minor->dev;
+	struct drm_pid_clients *clients;
+
+	lockdep_assert_held(&dev->filelist_mutex);
+
+	clients = xa_load(&drm_pid_clients, pid);
+	list_del_rcu(&file_priv->clink);
+	if (atomic_dec_and_test(&clients->num)) {
+		xa_erase(&drm_pid_clients, pid);
+		kfree_rcu(clients, rcu);
+	}
+}
+
+int drm_clients_open(struct drm_file *file_priv)
+{
+	unsigned long pid = (unsigned long)file_priv->pid;
+	struct drm_device *dev = file_priv->minor->dev;
+	struct drm_pid_clients *clients;
+	bool new_client = false;
+
+	lockdep_assert_held(&dev->filelist_mutex);
+
+	clients = xa_load(&drm_pid_clients, pid);
+	if (!clients) {
+		clients = kmalloc(sizeof(*clients), GFP_KERNEL);
+		if (!clients)
+			return -ENOMEM;
+		atomic_set(&clients->num, 0);
+		INIT_LIST_HEAD(&clients->file_list);
+		init_rcu_head(&clients->rcu);
+		new_client = true;
+	}
+	atomic_inc(&clients->num);
+	list_add_tail_rcu(&file_priv->clink, &clients->file_list);
+	if (new_client) {
+		void *xret;
+
+		xret = xa_store(&drm_pid_clients, pid, clients, GFP_KERNEL);
+		if (xa_err(xret)) {
+			list_del_init(&file_priv->clink);
+			kfree(clients);
+			return PTR_ERR(clients);
+		}
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
index a8b4d918e9a3..ce58d5c513db 100644
--- a/drivers/gpu/drm/drm_file.c
+++ b/drivers/gpu/drm/drm_file.c
@@ -40,6 +40,7 @@
 #include <linux/slab.h>
 
 #include <drm/drm_client.h>
+#include <drm/drm_clients.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
 #include <drm/drm_print.h>
@@ -298,6 +299,7 @@ static void drm_close_helper(struct file *filp)
 
 	mutex_lock(&dev->filelist_mutex);
 	list_del(&file_priv->lhead);
+	drm_clients_close(file_priv);
 	mutex_unlock(&dev->filelist_mutex);
 
 	drm_file_free(file_priv);
@@ -349,10 +351,8 @@ static int drm_open_helper(struct file *filp, struct drm_minor *minor)
 
 	if (drm_is_primary_client(priv)) {
 		ret = drm_master_open(priv);
-		if (ret) {
-			drm_file_free(priv);
-			return ret;
-		}
+		if (ret)
+			goto err_free;
 	}
 
 	filp->private_data = priv;
@@ -360,6 +360,9 @@ static int drm_open_helper(struct file *filp, struct drm_minor *minor)
 	priv->filp = filp;
 
 	mutex_lock(&dev->filelist_mutex);
+	ret = drm_clients_open(priv);
+	if (ret)
+		goto err_unlock;
 	list_add(&priv->lhead, &dev->filelist);
 	mutex_unlock(&dev->filelist_mutex);
 
@@ -387,6 +390,13 @@ static int drm_open_helper(struct file *filp, struct drm_minor *minor)
 #endif
 
 	return 0;
+
+err_unlock:
+	mutex_unlock(&dev->filelist_mutex);
+err_free:
+	drm_file_free(priv);
+
+	return ret;
 }
 
 /**
diff --git a/include/drm/drm_clients.h b/include/drm/drm_clients.h
new file mode 100644
index 000000000000..4ae553a03d1e
--- /dev/null
+++ b/include/drm/drm_clients.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef _DRM_CLIENTS_H_
+#define _DRM_CLIENTS_H_
+
+#include <drm/drm_file.h>
+
+struct drm_pid_clients {
+	atomic_t num;
+	struct list_head file_list;
+	struct rcu_head rcu;
+};
+
+#if IS_ENABLED(CONFIG_CGROUP_DRM)
+void drm_clients_close(struct drm_file *file_priv);
+int drm_clients_open(struct drm_file *file_priv);
+#else
+static inline void drm_clients_close(struct drm_file *file_priv)
+{
+}
+
+static inline int drm_clients_open(struct drm_file *file_priv)
+{
+	return 0;
+}
+#endif
+
+#endif
diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
index d780fd151789..0965eb111f24 100644
--- a/include/drm/drm_file.h
+++ b/include/drm/drm_file.h
@@ -268,6 +268,10 @@ struct drm_file {
 	/** @minor: &struct drm_minor for this file. */
 	struct drm_minor *minor;
 
+#if IS_ENABLED(CONFIG_CGROUP_DRM)
+	struct list_head clink;
+#endif
+
 	/**
 	 * @object_idr:
 	 *
-- 
2.34.1

