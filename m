Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FA628BB13
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1648C6E4CD;
	Mon, 12 Oct 2020 14:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A3DF6E4B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:11 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:15 +0200
Message-Id: <20201012144706.555345-11-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/61] drm/i915: Disable userptr pread/pwrite
 support.
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

Userptr should not need the kernel for a userspace memcpy, userspace
needs to call memcpy directly.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   | 20 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_gem.c               |  5 +++++
 3 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index dcdff134ccc2..e84b279bfee6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -57,6 +57,8 @@ struct drm_i915_gem_object_ops {
 
 	int (*pwrite)(struct drm_i915_gem_object *obj,
 		      const struct drm_i915_gem_pwrite *arg);
+	int (*pread)(struct drm_i915_gem_object *obj,
+		     const struct drm_i915_gem_pread *arg);
 
 	int (*dmabuf_export)(struct drm_i915_gem_object *obj);
 	void (*release)(struct drm_i915_gem_object *obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 22008948be58..136a589e5d94 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -700,6 +700,24 @@ i915_gem_userptr_dmabuf_export(struct drm_i915_gem_object *obj)
 	return i915_gem_userptr_init__mmu_notifier(obj, 0);
 }
 
+static int
+i915_gem_userptr_pwrite(struct drm_i915_gem_object *obj,
+			const struct drm_i915_gem_pwrite *args)
+{
+	drm_dbg(obj->base.dev, "pwrite to userptr no longer allowed\n");
+
+	return -EINVAL;
+}
+
+static int
+i915_gem_userptr_pread(struct drm_i915_gem_object *obj,
+		       const struct drm_i915_gem_pread *args)
+{
+	drm_dbg(obj->base.dev, "pread from userptr no longer allowed\n");
+
+	return -EINVAL;
+}
+
 static const struct drm_i915_gem_object_ops i915_gem_userptr_ops = {
 	.name = "i915_gem_object_userptr",
 	.flags = I915_GEM_OBJECT_IS_SHRINKABLE |
@@ -708,6 +726,8 @@ static const struct drm_i915_gem_object_ops i915_gem_userptr_ops = {
 	.get_pages = i915_gem_userptr_get_pages,
 	.put_pages = i915_gem_userptr_put_pages,
 	.dmabuf_export = i915_gem_userptr_dmabuf_export,
+	.pwrite = i915_gem_userptr_pwrite,
+	.pread = i915_gem_userptr_pread,
 	.release = i915_gem_userptr_release,
 };
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 30af7e4b71ab..d349c0b796ec 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -526,6 +526,11 @@ i915_gem_pread_ioctl(struct drm_device *dev, void *data,
 	}
 
 	trace_i915_gem_object_pread(obj, args->offset, args->size);
+	ret = -ENODEV;
+	if (obj->ops->pread)
+		ret = obj->ops->pread(obj, args);
+	if (ret != -ENODEV)
+		goto out;
 
 	ret = i915_gem_object_wait(obj,
 				   I915_WAIT_INTERRUPTIBLE,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
