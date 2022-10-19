Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E39604ED7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 19:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7DB10F2A3;
	Wed, 19 Oct 2022 17:34:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C669710EB4D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 17:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666200826; x=1697736826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iblWtj3oQ+Gzcpob6q0KDZMo8KPs6N0OMQ7W8Hrwr8E=;
 b=X1YVqXRLq+paW39ouNSrCf2GhLYs+8nfnjON1HU7cnHHIkUCA5qlL0AN
 wOvr1Tf4Lb+23UtX286bfLJ0N4C4ZlFhZ8pNvPpKyPorHnUl34/8D+CNP
 Lzm29s7Jo0UnoVXeubL9201FF3Li2fxEyecrxqpTLfXWRlhK+kJDXeSwr
 4Ao0kuCU1QlmFU+taU6tGjoSJYHchosCEIC7wjUC9NbrUxsQa70LvTpph
 aCeXJ4xU4pLFc51x8hFCistH7R4qwjudUP9Fg1pu8QEgKS7gDxaJEzxmc
 k9jE0Q3oKS0QM79pCZpe3TgJlkQkOF+eB43WYxe+rz5yQZef+83u+WmV5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286201697"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286201697"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607204781"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="607204781"
Received: from mjmcener-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:43 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 18:32:45 +0100
Message-Id: <20221019173254.3361334-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 08/17] drm: Allow for migration of clients
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

Add a helper which allows migrating the tracked client from one process to
another.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/drm_cgroup.c | 111 ++++++++++++++++++++++++++++++-----
 include/drm/drm_clients.h    |   7 +++
 include/drm/drm_file.h       |   1 +
 3 files changed, 103 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/drm_cgroup.c b/drivers/gpu/drm/drm_cgroup.c
index 7ed9c7150cae..59b730ed1334 100644
--- a/drivers/gpu/drm/drm_cgroup.c
+++ b/drivers/gpu/drm/drm_cgroup.c
@@ -8,9 +8,21 @@
 
 static DEFINE_XARRAY(drm_pid_clients);
 
+static void
+__del_clients(struct drm_pid_clients *clients, struct drm_file *file_priv)
+{
+	list_del_rcu(&file_priv->clink);
+	if (atomic_dec_and_test(&clients->num)) {
+		xa_erase(&drm_pid_clients, (unsigned long)file_priv->cpid);
+		kfree_rcu(clients, rcu);
+	}
+
+	put_pid(file_priv->cpid);
+	file_priv->cpid = NULL;
+}
+
 void drm_clients_close(struct drm_file *file_priv)
 {
-	unsigned long pid = (unsigned long)file_priv->pid;
 	struct drm_device *dev = file_priv->minor->dev;
 	struct drm_pid_clients *clients;
 
@@ -19,19 +31,32 @@ void drm_clients_close(struct drm_file *file_priv)
 	if (!dev->driver->cg_ops)
 		return;
 
-	clients = xa_load(&drm_pid_clients, pid);
-	list_del_rcu(&file_priv->clink);
-	if (atomic_dec_and_test(&clients->num)) {
-		xa_erase(&drm_pid_clients, pid);
-		kfree_rcu(clients, rcu);
+	clients = xa_load(&drm_pid_clients, (unsigned long)file_priv->cpid);
+	if (WARN_ON_ONCE(!clients))
+		return;
 
-		/*
-		 * FIXME: file_priv is not RCU protected so we add this hack
-		 * to avoid any races with code which walks clients->file_list
-		 * and accesses file_priv.
-		 */
-		synchronize_rcu();
+	__del_clients(clients, file_priv);
+
+	/*
+	 * FIXME: file_priv is not RCU protected so we add this hack
+	 * to avoid any races with code which walks clients->file_list
+	 * and accesses file_priv.
+	 */
+	synchronize_rcu();
+}
+
+static struct drm_pid_clients *__alloc_clients(void)
+{
+	struct drm_pid_clients *clients;
+
+	clients = kmalloc(sizeof(*clients), GFP_KERNEL);
+	if (clients) {
+		atomic_set(&clients->num, 0);
+		INIT_LIST_HEAD(&clients->file_list);
+		init_rcu_head(&clients->rcu);
 	}
+
+	return clients;
 }
 
 int drm_clients_open(struct drm_file *file_priv)
@@ -48,12 +73,9 @@ int drm_clients_open(struct drm_file *file_priv)
 
 	clients = xa_load(&drm_pid_clients, pid);
 	if (!clients) {
-		clients = kmalloc(sizeof(*clients), GFP_KERNEL);
+		clients = __alloc_clients();
 		if (!clients)
 			return -ENOMEM;
-		atomic_set(&clients->num, 0);
-		INIT_LIST_HEAD(&clients->file_list);
-		init_rcu_head(&clients->rcu);
 		new_client = true;
 	}
 	atomic_inc(&clients->num);
@@ -69,9 +91,66 @@ int drm_clients_open(struct drm_file *file_priv)
 		}
 	}
 
+	file_priv->cpid = get_pid(file_priv->pid);
+
 	return 0;
 }
 
+void drm_clients_migrate(struct drm_file *file_priv)
+{
+	struct drm_device *dev = file_priv->minor->dev;
+	struct drm_pid_clients *existing_clients;
+	struct drm_pid_clients *clients, *spare;
+	struct pid *pid = task_pid(current);
+
+	if (!dev->driver->cg_ops)
+		return;
+
+	// TODO: only do this if drmcs level property allows it?
+
+	spare = __alloc_clients();
+	if (WARN_ON(!spare))
+		return;
+
+	mutex_lock(&dev->filelist_mutex);
+	rcu_read_lock();
+
+	existing_clients = xa_load(&drm_pid_clients, (unsigned long)pid);
+	clients = xa_load(&drm_pid_clients, (unsigned long)file_priv->cpid);
+
+	if (WARN_ON_ONCE(!clients))
+		goto out_unlock;
+	else if (clients == existing_clients)
+		goto out_unlock;
+
+	__del_clients(clients, file_priv);
+	smp_mb(); /* hmmm? del_rcu followed by add_rcu? */
+
+	if (!existing_clients) {
+		void *xret;
+
+		xret = xa_store(&drm_pid_clients, (unsigned long)pid, spare,
+				GFP_KERNEL);
+		if (WARN_ON(xa_err(xret)))
+			goto out_unlock;
+		clients = spare;
+		spare = NULL;
+	} else {
+		clients = existing_clients;
+	}
+
+	atomic_inc(&clients->num);
+	list_add_tail_rcu(&file_priv->clink, &clients->file_list);
+	file_priv->cpid = get_pid(pid);
+
+out_unlock:
+	rcu_read_unlock();
+	mutex_unlock(&dev->filelist_mutex);
+
+	kfree(spare);
+}
+EXPORT_SYMBOL_GPL(drm_clients_migrate);
+
 unsigned int drm_pid_priority_levels(struct pid *pid, bool *non_uniform)
 {
 	unsigned int min_levels = UINT_MAX;
diff --git a/include/drm/drm_clients.h b/include/drm/drm_clients.h
index 10d21138f7af..3a0b1cdb338f 100644
--- a/include/drm/drm_clients.h
+++ b/include/drm/drm_clients.h
@@ -17,6 +17,8 @@ struct drm_pid_clients {
 #if IS_ENABLED(CONFIG_CGROUP_DRM)
 void drm_clients_close(struct drm_file *file_priv);
 int drm_clients_open(struct drm_file *file_priv);
+
+void drm_clients_migrate(struct drm_file *file_priv);
 #else
 static inline void drm_clients_close(struct drm_file *file_priv)
 {
@@ -26,6 +28,11 @@ static inline int drm_clients_open(struct drm_file *file_priv)
 {
 	return 0;
 }
+
+static inline void drm_clients_migrate(struct drm_file *file_priv)
+{
+
+}
 #endif
 
 unsigned int drm_pid_priority_levels(struct pid *pid, bool *non_uniform);
diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
index a4360e28e2db..2c1e356d3b73 100644
--- a/include/drm/drm_file.h
+++ b/include/drm/drm_file.h
@@ -280,6 +280,7 @@ struct drm_file {
 
 #if IS_ENABLED(CONFIG_CGROUP_DRM)
 	struct list_head clink;
+	struct pid *cpid;
 #endif
 
 	/**
-- 
2.34.1

