Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B0E3DF764
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 00:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C4C6E933;
	Tue,  3 Aug 2021 22:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525A26E8E8;
 Tue,  3 Aug 2021 22:11:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="193393478"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="193393478"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 15:11:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="511512729"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 15:11:55 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue,  3 Aug 2021 15:29:28 -0700
Message-Id: <20210803222943.27686-32-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210803222943.27686-1-matthew.brost@intel.com>
References: <20210803222943.27686-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 31/46] drm/i915: Move secure execbuf check to
 execbuf2
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

Goal is to remove all input sanity checks from the core submission.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 35 +++++++++++--------
 1 file changed, 21 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1ed7475de454..70d352fc543f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3184,19 +3184,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.num_fences = 0;
 
 	eb.batch_flags = 0;
-	if (args->flags & I915_EXEC_SECURE) {
-		if (GRAPHICS_VER(i915) >= 11)
-			return -ENODEV;
-
-		/* Return -EPERM to trigger fallback code on old binaries. */
-		if (!HAS_SECURE_BATCHES(i915))
-			return -EPERM;
-
-		if (!drm_is_current_master(file) || !capable(CAP_SYS_ADMIN))
-			return -EPERM;
-
+	if (args->flags & I915_EXEC_SECURE)
 		eb.batch_flags |= I915_DISPATCH_SECURE;
-	}
 	if (args->flags & I915_EXEC_IS_PINNED)
 		eb.batch_flags |= I915_DISPATCH_PINNED;
 
@@ -3414,6 +3403,18 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 		return -EINVAL;
 	}
 
+	if (args->flags & I915_EXEC_SECURE) {
+		if (GRAPHICS_VER(i915) >= 11)
+			return -ENODEV;
+
+		/* Return -EPERM to trigger fallback code on old binaries. */
+		if (!HAS_SECURE_BATCHES(i915))
+			return -EPERM;
+
+		if (!drm_is_current_master(file) || !capable(CAP_SYS_ADMIN))
+			return -EPERM;
+	}
+
 	err = i915_gem_check_execbuffer(args);
 	if (err)
 		return err;
@@ -3430,8 +3431,8 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 			   u64_to_user_ptr(args->buffers_ptr),
 			   sizeof(*exec2_list) * count)) {
 		drm_dbg(&i915->drm, "copy %zd exec entries failed\n", count);
-		kvfree(exec2_list);
-		return -EFAULT;
+		err = -EFAULT;
+		goto err_copy;
 	}
 
 	err = i915_gem_do_execbuffer(dev, file, args, exec2_list);
@@ -3476,6 +3477,12 @@ end:;
 
 	args->flags &= ~__I915_EXEC_UNKNOWN_FLAGS;
 	kvfree(exec2_list);
+
+	return err;
+
+err_copy:
+	kvfree(exec2_list);
+
 	return err;
 }
 
-- 
2.28.0

