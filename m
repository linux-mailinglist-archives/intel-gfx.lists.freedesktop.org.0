Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A39287506AD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 13:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FCC410E4FC;
	Wed, 12 Jul 2023 11:47:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2195510E4EE;
 Wed, 12 Jul 2023 11:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689162468; x=1720698468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eDOXw0tb/xqHsfV2SZXPsdGPgQMYGO3n3Mu/+yfDMf0=;
 b=YwRFG1lVrEEVpYfDi+M0LEALq8mrhXVoFagRtJhB3LOzbsxRMW08u8sN
 RflAjNsWmuacOmXRZSzbZY/tvDJitZcn1nsFI3TTsBD0R14Nl7WFG9ErU
 wg2L6t4a19SWS2wjDGr1sNfQLSj6GgZXOE8qHDVbjs75FhTD+aKCZVzWw
 reS8dM/1g3A9JLbe4evX1hVCFQSFHkhPvmS3TLX1guzv++yf9W24dDEDN
 yHTF/BMcQp1rpdHDIFSx2fYRxlMckwhwOz/pSRNyf8gre9MArRMcFqApH
 yNPitJkcRPvbuXDqcgHuazuI5KW+fQwxCiaAMJuf6XDGQRELKEahFH3+D w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="344469169"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="344469169"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 04:46:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="866094106"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="866094106"
Received: from eamonnob-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.237.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 04:46:36 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 12 Jul 2023 12:45:54 +0100
Message-Id: <20230712114605.519432-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230712114605.519432-1-tvrtko.ursulin@linux.intel.com>
References: <20230712114605.519432-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/17] drm: Update file owner during use
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
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Johannes Weiner <hannes@cmpxchg.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

With the typical model where the display server opens the file descriptor
and then hands it over to the client(*), we were showing stale data in
debugfs.

Fix it by updating the drm_file->pid on ioctl access from a different
process.

The field is also made RCU protected to allow for lockless readers. Update
side is protected with dev->filelist_mutex.

Before:

$ cat /sys/kernel/debug/dri/0/clients
             command   pid dev master a   uid      magic
                Xorg  2344   0   y    y     0          0
                Xorg  2344   0   n    y     0          2
                Xorg  2344   0   n    y     0          3
                Xorg  2344   0   n    y     0          4

After:

$ cat /sys/kernel/debug/dri/0/clients
             command  tgid dev master a   uid      magic
                Xorg   830   0   y    y     0          0
       xfce4-session   880   0   n    y     0          1
               xfwm4   943   0   n    y     0          2
           neverball  1095   0   n    y     0          3

*)
More detailed and historically accurate description of various handover
implementation kindly provided by Emil Velikov:

"""
The traditional model, the server was the orchestrator managing the
primary device node. From the fd, to the master status and
authentication. But looking at the fd alone, this has varied across
the years.

IIRC in the DRI1 days, Xorg (libdrm really) would have a list of open
fd(s) and reuse those whenever needed, DRI2 the client was responsible
for open() themselves and with DRI3 the fd was passed to the client.

Around the inception of DRI3 and systemd-logind, the latter became
another possible orchestrator. Whereby Xorg and Wayland compositors
could ask it for the fd. For various reasons (hysterical and genuine
ones) Xorg has a fallback path going the open(), whereas Wayland
compositors are moving to solely relying on logind... some never had
fallback even.

Over the past few years, more projects have emerged which provide
functionality similar (be that on API level, Dbus, or otherwise) to
systemd-logind.
"""

v2:
 * Fixed typo in commit text and added a fine historical explanation
   from Emil.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: "Christian König" <christian.koenig@amd.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Acked-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c |  6 ++--
 drivers/gpu/drm/drm_auth.c              |  3 +-
 drivers/gpu/drm/drm_debugfs.c           | 10 ++++---
 drivers/gpu/drm/drm_file.c              | 40 +++++++++++++++++++++++--
 drivers/gpu/drm/drm_ioctl.c             |  3 ++
 drivers/gpu/drm/nouveau/nouveau_drm.c   |  5 +++-
 drivers/gpu/drm/vmwgfx/vmwgfx_gem.c     |  6 ++--
 include/drm/drm_file.h                  | 13 ++++++--
 8 files changed, 71 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
index 74055cba3dc9..849097dff02b 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
@@ -963,6 +963,7 @@ static int amdgpu_debugfs_gem_info_show(struct seq_file *m, void *unused)
 	list_for_each_entry(file, &dev->filelist, lhead) {
 		struct task_struct *task;
 		struct drm_gem_object *gobj;
+		struct pid *pid;
 		int id;
 
 		/*
@@ -972,8 +973,9 @@ static int amdgpu_debugfs_gem_info_show(struct seq_file *m, void *unused)
 		 * Therefore, we need to protect this ->comm access using RCU.
 		 */
 		rcu_read_lock();
-		task = pid_task(file->pid, PIDTYPE_TGID);
-		seq_printf(m, "pid %8d command %s:\n", pid_nr(file->pid),
+		pid = rcu_dereference(file->pid);
+		task = pid_task(pid, PIDTYPE_TGID);
+		seq_printf(m, "pid %8d command %s:\n", pid_nr(pid),
 			   task ? task->comm : "<unknown>");
 		rcu_read_unlock();
 
diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
index cf92a9ae8034..2ed2585ded37 100644
--- a/drivers/gpu/drm/drm_auth.c
+++ b/drivers/gpu/drm/drm_auth.c
@@ -235,7 +235,8 @@ static int drm_new_set_master(struct drm_device *dev, struct drm_file *fpriv)
 static int
 drm_master_check_perm(struct drm_device *dev, struct drm_file *file_priv)
 {
-	if (file_priv->pid == task_pid(current) && file_priv->was_master)
+	if (file_priv->was_master &&
+	    rcu_access_pointer(file_priv->pid) == task_pid(current))
 		return 0;
 
 	if (!capable(CAP_SYS_ADMIN))
diff --git a/drivers/gpu/drm/drm_debugfs.c b/drivers/gpu/drm/drm_debugfs.c
index 4855230ba2c6..b46f5ceb24c6 100644
--- a/drivers/gpu/drm/drm_debugfs.c
+++ b/drivers/gpu/drm/drm_debugfs.c
@@ -90,15 +90,17 @@ static int drm_clients_info(struct seq_file *m, void *data)
 	 */
 	mutex_lock(&dev->filelist_mutex);
 	list_for_each_entry_reverse(priv, &dev->filelist, lhead) {
-		struct task_struct *task;
 		bool is_current_master = drm_is_current_master(priv);
+		struct task_struct *task;
+		struct pid *pid;
 
-		rcu_read_lock(); /* locks pid_task()->comm */
-		task = pid_task(priv->pid, PIDTYPE_TGID);
+		rcu_read_lock(); /* Locks priv->pid and pid_task()->comm! */
+		pid = rcu_dereference(priv->pid);
+		task = pid_task(pid, PIDTYPE_TGID);
 		uid = task ? __task_cred(task)->euid : GLOBAL_ROOT_UID;
 		seq_printf(m, "%20s %5d %3d   %c    %c %5d %10u\n",
 			   task ? task->comm : "<unknown>",
-			   pid_vnr(priv->pid),
+			   pid_vnr(pid),
 			   priv->minor->index,
 			   is_current_master ? 'y' : 'n',
 			   priv->authenticated ? 'y' : 'n',
diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
index 883d83bc0e3d..e692770ef6d3 100644
--- a/drivers/gpu/drm/drm_file.c
+++ b/drivers/gpu/drm/drm_file.c
@@ -160,7 +160,7 @@ struct drm_file *drm_file_alloc(struct drm_minor *minor)
 
 	/* Get a unique identifier for fdinfo: */
 	file->client_id = atomic64_inc_return(&ident);
-	file->pid = get_pid(task_tgid(current));
+	rcu_assign_pointer(file->pid, get_pid(task_tgid(current)));
 	file->minor = minor;
 
 	/* for compatibility root is always authenticated */
@@ -200,7 +200,7 @@ struct drm_file *drm_file_alloc(struct drm_minor *minor)
 		drm_syncobj_release(file);
 	if (drm_core_check_feature(dev, DRIVER_GEM))
 		drm_gem_release(dev, file);
-	put_pid(file->pid);
+	put_pid(rcu_access_pointer(file->pid));
 	kfree(file);
 
 	return ERR_PTR(ret);
@@ -291,7 +291,7 @@ void drm_file_free(struct drm_file *file)
 
 	WARN_ON(!list_empty(&file->event_list));
 
-	put_pid(file->pid);
+	put_pid(rcu_access_pointer(file->pid));
 	kfree(file);
 }
 
@@ -505,6 +505,40 @@ int drm_release(struct inode *inode, struct file *filp)
 }
 EXPORT_SYMBOL(drm_release);
 
+void drm_file_update_pid(struct drm_file *filp)
+{
+	struct drm_device *dev;
+	struct pid *pid, *old;
+
+	/*
+	 * Master nodes need to keep the original ownership in order for
+	 * drm_master_check_perm to keep working correctly. (See comment in
+	 * drm_auth.c.)
+	 */
+	if (filp->was_master)
+		return;
+
+	pid = task_tgid(current);
+
+	/*
+	 * Quick unlocked check since the model is a single handover followed by
+	 * exclusive repeated use.
+	 */
+	if (pid == rcu_access_pointer(filp->pid))
+		return;
+
+	dev = filp->minor->dev;
+	mutex_lock(&dev->filelist_mutex);
+	old = rcu_replace_pointer(filp->pid, pid, 1);
+	mutex_unlock(&dev->filelist_mutex);
+
+	if (pid != old) {
+		get_pid(pid);
+		synchronize_rcu();
+		put_pid(old);
+	}
+}
+
 /**
  * drm_release_noglobal - release method for DRM file
  * @inode: device inode
diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
index 8e9afe7af19c..78f9387e79fe 100644
--- a/drivers/gpu/drm/drm_ioctl.c
+++ b/drivers/gpu/drm/drm_ioctl.c
@@ -774,6 +774,9 @@ long drm_ioctl_kernel(struct file *file, drm_ioctl_t *func, void *kdata,
 	struct drm_device *dev = file_priv->minor->dev;
 	int retcode;
 
+	/* Update drm_file owner if fd was passed along. */
+	drm_file_update_pid(file_priv);
+
 	if (drm_dev_is_unplugged(dev))
 		return -ENODEV;
 
diff --git a/drivers/gpu/drm/nouveau/nouveau_drm.c b/drivers/gpu/drm/nouveau/nouveau_drm.c
index ca3bb8075357..cd15759815a8 100644
--- a/drivers/gpu/drm/nouveau/nouveau_drm.c
+++ b/drivers/gpu/drm/nouveau/nouveau_drm.c
@@ -1101,7 +1101,10 @@ nouveau_drm_open(struct drm_device *dev, struct drm_file *fpriv)
 	}
 
 	get_task_comm(tmpname, current);
-	snprintf(name, sizeof(name), "%s[%d]", tmpname, pid_nr(fpriv->pid));
+	rcu_read_lock();
+	snprintf(name, sizeof(name), "%s[%d]",
+		 tmpname, pid_nr(rcu_dereference(fpriv->pid)));
+	rcu_read_unlock();
 
 	if (!(cli = kzalloc(sizeof(*cli), GFP_KERNEL))) {
 		ret = -ENOMEM;
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c b/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c
index c0da89e16e6f..a07e5b7e2f2f 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c
@@ -232,6 +232,7 @@ static int vmw_debugfs_gem_info_show(struct seq_file *m, void *unused)
 	list_for_each_entry(file, &dev->filelist, lhead) {
 		struct task_struct *task;
 		struct drm_gem_object *gobj;
+		struct pid *pid;
 		int id;
 
 		/*
@@ -241,8 +242,9 @@ static int vmw_debugfs_gem_info_show(struct seq_file *m, void *unused)
 		 * Therefore, we need to protect this ->comm access using RCU.
 		 */
 		rcu_read_lock();
-		task = pid_task(file->pid, PIDTYPE_TGID);
-		seq_printf(m, "pid %8d command %s:\n", pid_nr(file->pid),
+		pid = rcu_dereference(file->pid);
+		task = pid_task(pid, PIDTYPE_TGID);
+		seq_printf(m, "pid %8d command %s:\n", pid_nr(pid),
 			   task ? task->comm : "<unknown>");
 		rcu_read_unlock();
 
diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
index 966912053cb0..c76249d5467e 100644
--- a/include/drm/drm_file.h
+++ b/include/drm/drm_file.h
@@ -256,8 +256,15 @@ struct drm_file {
 	/** @master_lookup_lock: Serializes @master. */
 	spinlock_t master_lookup_lock;
 
-	/** @pid: Process that opened this file. */
-	struct pid *pid;
+	/**
+	 * @pid: Process that is using this file.
+	 *
+	 * Must only be dereferenced under a rcu_read_lock or equivalent.
+	 *
+	 * Updates are guarded with dev->filelist_mutex and reference must be
+	 * dropped after a RCU grace period to accommodate lockless readers.
+	 */
+	struct pid __rcu *pid;
 
 	/** @client_id: A unique id for fdinfo */
 	u64 client_id;
@@ -420,6 +427,8 @@ static inline bool drm_is_accel_client(const struct drm_file *file_priv)
 	return file_priv->minor->type == DRM_MINOR_ACCEL;
 }
 
+void drm_file_update_pid(struct drm_file *);
+
 int drm_open(struct inode *inode, struct file *filp);
 int drm_open_helper(struct file *filp, struct drm_minor *minor);
 ssize_t drm_read(struct file *filp, char __user *buffer,
-- 
2.39.2

