Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC0D604ED8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 19:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E76810EB48;
	Wed, 19 Oct 2022 17:34:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6063510F29C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 17:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666200840; x=1697736840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2SjnzP/RjutkVE2GWCovZkYcvG7xuDDB28V5+LUt3bM=;
 b=Y6j0PJW3Xsb8Ie5/O9tUc4zbCfqDTbJZqUbmiIuPlp6DkYb6s1ZKz7LV
 C34KZHiwzNDgefPxzTW0Q68ME5BPgWAgm4jajlEiAdBDqM21ymBUm/LN3
 Aah3U1muqKAHIgXqwoCxHFsmha1SFjwiojLqhQaAh+yaSBLgFPq4w77Ij
 bByBu6ro70AIAjIl+wjbvf6yIQF9yyLfhdgZ7UiEeIkood6k/dXGvajX+
 iQ6q6kcwlQrJKMzaUlNgAyBH+akV3SzmsDPeJdBR995TUeXtDBS+7klHb
 jcXQ14ZMOTNhIQ1ejuG53n0+0A4n7RI17MxAzkCDfTJqmeGHzdc78J/xP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286201768"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286201768"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:34:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607204833"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="607204833"
Received: from mjmcener-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:56 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 18:32:49 +0100
Message-Id: <20221019173254.3361334-13-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 12/17] cgroup/drm: Client exit hook
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

We need the ability for DRM core to inform the cgroup controller when a
client has closed a DRM file descriptor. This will allow us not needing
to keep state relating to GPU time usage by tasks sets in the cgroup
controller itself.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/drm_cgroup.c | 8 ++++++++
 include/linux/cgroup_drm.h   | 1 +
 kernel/cgroup/drm.c          | 8 ++++++++
 3 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/drm_cgroup.c b/drivers/gpu/drm/drm_cgroup.c
index e36bc4333924..ff99d1f4f1d4 100644
--- a/drivers/gpu/drm/drm_cgroup.c
+++ b/drivers/gpu/drm/drm_cgroup.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_clients.h>
+#include <linux/cgroup_drm.h>
 
 static DEFINE_XARRAY(drm_pid_clients);
 
@@ -25,6 +26,7 @@ void drm_clients_close(struct drm_file *file_priv)
 {
 	struct drm_device *dev = file_priv->minor->dev;
 	struct drm_pid_clients *clients;
+	struct task_struct *task;
 
 	lockdep_assert_held(&dev->filelist_mutex);
 
@@ -35,6 +37,12 @@ void drm_clients_close(struct drm_file *file_priv)
 	if (WARN_ON_ONCE(!clients))
 		return;
 
+	task = get_pid_task(file_priv->cpid, PIDTYPE_PID);
+	if (task) {
+		drmcgroup_client_exited(task);
+		put_task_struct(task);
+	}
+
 	__del_clients(clients, file_priv);
 
 	/*
diff --git a/include/linux/cgroup_drm.h b/include/linux/cgroup_drm.h
index 66063b4708e8..c84516d3e50a 100644
--- a/include/linux/cgroup_drm.h
+++ b/include/linux/cgroup_drm.h
@@ -13,5 +13,6 @@ struct task_struct;
 #define DRM_CGROUP_PRIORITY_MAX	(10000)
 
 int drmcgroup_lookup_effective_priority(struct task_struct *task);
+void drmcgroup_client_exited(struct task_struct *task);
 
 #endif	/* _CGROUP_DRM_H */
diff --git a/kernel/cgroup/drm.c b/kernel/cgroup/drm.c
index 4b6f88d8236e..48f1eaaa1c07 100644
--- a/kernel/cgroup/drm.c
+++ b/kernel/cgroup/drm.c
@@ -221,6 +221,14 @@ static void drmcs_attach(struct cgroup_taskset *tset)
 					css_to_drmcs(css)->effective_priority);
 }
 
+void drmcgroup_client_exited(struct task_struct *task)
+{
+	struct drm_cgroup_state *drmcs = get_task_drmcs(task);
+
+	css_put(&drmcs->css);
+}
+EXPORT_SYMBOL_GPL(drmcgroup_client_exited);
+
 static struct drm_cgroup_state root_drmcs = {
 	.priority = DRM_CGROUP_PRIORITY_DEF,
 	.effective_priority = DRM_CGROUP_PRIORITY_DEF,
-- 
2.34.1

