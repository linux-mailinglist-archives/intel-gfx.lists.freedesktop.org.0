Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A46C5604EC8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 19:34:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B558E10EB4D;
	Wed, 19 Oct 2022 17:33:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729B510EB4A
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 17:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666200823; x=1697736823;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OrYOCnpePJk9ybiiJejaW8hbTOJ7aQUhUryDqIC49tk=;
 b=i0J4LWpaiKVIzZEFHS2y5ithuHig42FrqgGUSx7JE4bqbE3EZzn4K/WH
 Ow6HvUB43bImX7+yMJ7ZHq7erOkj9w28QmhvEiRwuTOe+465TdzUASR53
 SOjXXWazGAY8NvmgJtHnCceDfxWY1GG0leLNic3dCft9dAjLgBhSktXaT
 c8769vg7uelCgwu8GzKgg094qcLvzbm+hquFbFjGAyKMaZOjtrXm5g6eO
 c9kcHkmsH7NDd6it68+t4/OP+5ZuoHCUCpEWCUQjYLwt0nIWFIU6ZLRFX
 8bg69Mr+gcjP6e44D5/PD03lLRJdYStjGQHG95JcuSk+IbyjPfsctw+Qd Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286201677"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286201677"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607204773"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="607204773"
Received: from mjmcener-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:39 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 18:32:44 +0100
Message-Id: <20221019173254.3361334-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 07/17] drm/i915: i915 priority
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

Register i915 as supporting the drm cgroup controller priority management
and wire it up at execbuf time.

GEM context configured priority then works as a relative value on top of
the base level obtained from the drm cgroup controller.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 27 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_driver.c            | 10 +++++++
 drivers/gpu/drm/i915/i915_drm_client.c        | 16 +++++++++++
 drivers/gpu/drm/i915/i915_drm_client.h        |  4 +++
 4 files changed, 56 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1160723c9d2d..391c5b5c80be 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -4,8 +4,10 @@
  * Copyright © 2008,2010 Intel Corporation
  */
 
+#include <linux/cgroup_drm.h>
 #include <linux/dma-resv.h>
 #include <linux/highmem.h>
+#include <linux/minmax.h>
 #include <linux/sync_file.h>
 #include <linux/uaccess.h>
 
@@ -3015,6 +3017,29 @@ static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
 			break;
 }
 
+#ifdef CONFIG_CGROUP_DRM
+static void copy_priority(struct i915_sched_attr *attr,
+			  const struct i915_execbuffer *eb)
+{
+	const int scale = DIV_ROUND_CLOSEST(DRM_CGROUP_PRIORITY_MAX,
+					    I915_CONTEXT_MAX_USER_PRIORITY);
+	int prio;
+
+	*attr = eb->gem_context->sched;
+	prio = attr->priority * scale + eb->file->drm_cgroup_priority;
+	prio = DIV_ROUND_UP(prio, scale);
+	attr->priority = clamp(prio,
+			       I915_CONTEXT_MIN_USER_PRIORITY,
+			       I915_CONTEXT_MAX_USER_PRIORITY);
+}
+#else
+static void copy_priority(struct i915_sched_attr *attr,
+			  const struct i915_execbuffer *eb)
+{
+	*attr = eb->gem_context->sched;
+}
+#endif
+
 static int eb_request_add(struct i915_execbuffer *eb, struct i915_request *rq,
 			  int err, bool last_parallel)
 {
@@ -3031,7 +3056,7 @@ static int eb_request_add(struct i915_execbuffer *eb, struct i915_request *rq,
 
 	/* Check that the context wasn't destroyed before submission */
 	if (likely(!intel_context_is_closed(eb->context))) {
-		attr = eb->gem_context->sched;
+		copy_priority(&attr, eb);
 	} else {
 		/* Serialise with context_close via the add_to_timeline */
 		i915_request_set_error_once(rq, -ENOENT);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ffff49868dc5..7912782b87cc 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1893,6 +1893,12 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_DESTROY, i915_gem_vm_destroy_ioctl, DRM_RENDER_ALLOW),
 };
 
+#ifdef CONFIG_CGROUP_DRM
+static const struct drm_cgroup_ops i915_drm_cgroup_ops = {
+	.priority_levels = i915_drm_priority_levels,
+};
+#endif
+
 /*
  * Interface history:
  *
@@ -1921,6 +1927,10 @@ static const struct drm_driver i915_drm_driver = {
 	.lastclose = i915_driver_lastclose,
 	.postclose = i915_driver_postclose,
 
+#ifdef CONFIG_CGROUP_DRM
+	.cg_ops = &i915_drm_cgroup_ops,
+#endif
+
 	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
 	.gem_prime_import = i915_gem_prime_import,
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index b09d1d386574..61a3cdaa7b16 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -75,6 +75,22 @@ void i915_drm_clients_fini(struct i915_drm_clients *clients)
 	xa_destroy(&clients->xarray);
 }
 
+#ifdef CONFIG_CGROUP_DRM
+unsigned int i915_drm_priority_levels(struct drm_file *file)
+{
+	struct drm_i915_file_private *fpriv = file->driver_priv;
+	struct i915_drm_client *client = fpriv->client;
+	struct drm_i915_private *i915 = client->clients->i915;
+
+	if (GRAPHICS_VER(i915) < 8)
+		return 0;
+	else if (intel_uc_uses_guc_submission(&to_gt(i915)->uc))
+		return 3;
+	else
+		return 2047;
+}
+#endif
+
 #ifdef CONFIG_PROC_FS
 static const char * const uabi_class_names[] = {
 	[I915_ENGINE_CLASS_RENDER] = "render",
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 69496af996d9..bd5925241007 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -15,6 +15,8 @@
 
 #define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
 
+struct drm_file;
+
 struct drm_i915_private;
 
 struct i915_drm_clients {
@@ -65,4 +67,6 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f);
 
 void i915_drm_clients_fini(struct i915_drm_clients *clients);
 
+unsigned int i915_drm_priority_levels(struct drm_file *file);
+
 #endif /* !__I915_DRM_CLIENT_H__ */
-- 
2.34.1

