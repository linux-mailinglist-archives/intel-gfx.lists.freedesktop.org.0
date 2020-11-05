Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA232A8298
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 16:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7279B89468;
	Thu,  5 Nov 2020 15:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47918882DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 15:49:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22904496-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Nov 2020 15:49:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Nov 2020 15:49:33 +0000
Message-Id: <20201105154934.16022-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gem: Allow backends to override pread
 implementation
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

From: Matthew Auld <matthew.auld@intel.com>

As there are more and more complicated interactions between the different
backing stores and userspace, push the control into the backends rather
than accumulate them all inside the ioctl handlers.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 2 ++
 drivers/gpu/drm/i915/i915_gem.c                  | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index fedfebf13344..e2d9b7e1e152 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -56,6 +56,8 @@ struct drm_i915_gem_object_ops {
 	void (*truncate)(struct drm_i915_gem_object *obj);
 	void (*writeback)(struct drm_i915_gem_object *obj);
 
+	int (*pread)(struct drm_i915_gem_object *obj,
+		     const struct drm_i915_gem_pread *arg);
 	int (*pwrite)(struct drm_i915_gem_object *obj,
 		      const struct drm_i915_gem_pwrite *arg);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index bb0c12975f38..d58fe1ddc3e1 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -527,6 +527,12 @@ i915_gem_pread_ioctl(struct drm_device *dev, void *data,
 
 	trace_i915_gem_object_pread(obj, args->offset, args->size);
 
+	ret = -ENODEV;
+	if (obj->ops->pread)
+		ret = obj->ops->pread(obj, args);
+	if (ret != -ENODEV)
+		goto out;
+
 	ret = i915_gem_object_wait(obj,
 				   I915_WAIT_INTERRUPTIBLE,
 				   MAX_SCHEDULE_TIMEOUT);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
