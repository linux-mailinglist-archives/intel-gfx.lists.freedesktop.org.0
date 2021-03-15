Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABB633BC24
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Mar 2021 15:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF9DD891D2;
	Mon, 15 Mar 2021 14:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 233FB891D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 14:34:38 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id b23so6694938pfo.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 07:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kKwFYSP625fJtSy8c4om4p49ia/3m1IVjkiNF26dqMU=;
 b=F7ehvBBf13vlr39y3J/GzDma0qSu8NlCwnIm3URizAodUlvfbUZjA0yNjNQCQ76Ybh
 vxjr8ve1B9kvARwztDADRn5VwMGr2IrX1hPwf6wTQ2zjahEpvdZp4Y1NqK8Y3OjnkykP
 5qNcNgEfYaSl53jkt8XCTgxeazutBLXkRO+W5Rz4wuxfbyH2dkiiXArHiZnBqj45gVwu
 lbeeOUfxNXYYm3j4IqL6fuChGCyLvEpF2kO62ok+1uDVqaEPp1XthMj7JI+N+jDzsRy1
 SCR4ydGnrs9bze/gMmovc3Bwjlba0ljJJNSnIkkN6HZvV8Arj8npZQAWo9oj4Mg1e59j
 lDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kKwFYSP625fJtSy8c4om4p49ia/3m1IVjkiNF26dqMU=;
 b=ieRMV0IQ62RYymqUVvMdKD6K+A1B700+yAWW3gdWzOnlpgID7vZvvG8x6mxzfo5a4w
 pYr7RvJNqcvUK5h1PSNbTvEj3yA0bb9kKbm115V+awGqmRFY1pl9rgi0eHqwa2XXiCME
 R3VYo0+5YlbS69Q20G0VU2e24Aj0wOilYgXtPC/XmA6ZQ25XhEGRmZiwhEPStkj1PXeR
 4PN43SAFWn0wYJJz6qVc89jsMh7yKQPm5dPzci4cwX5DSK4fGzlJm4wl3pPiVmgnUNHz
 EaKValNootVq3Hrzv8itxfHVFAfTS26zjtiJcilwIn1pWps8TyhuuG3jh48KYFEzxI0e
 +fIA==
X-Gm-Message-State: AOAM531/AEcd+ng8Fiwm9oURPqUXwiunlOXBTOh83inWCj4q5xIusjXy
 NF4yaniN4xipUCb9GyMRp/WEOg==
X-Google-Smtp-Source: ABdhPJwB4gpQmw3G7Hm3Y0y2K/RSZAalg9wrtRwjFKJml8rWLkHPz6V9bBU/uUwYVabYcHo6OSHVeg==
X-Received: by 2002:a05:6a00:22c6:b029:201:1166:fdad with SMTP id
 f6-20020a056a0022c6b02902011166fdadmr10671135pfj.58.1615818877594; 
 Mon, 15 Mar 2021 07:34:37 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id x190sm13520383pfx.166.2021.03.15.07.34.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 07:34:37 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 15 Mar 2021 09:34:26 -0500
Message-Id: <20210315143428.1471489-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210315143428.1471489-1-jason@jlekstrand.net>
References: <20210315143428.1471489-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Drop legacy execbuffer
 support (v2)
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
Cc: Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

libdrm has supported the newer execbuffer2 ioctl and using it by default
when it exists since libdrm commit b50964027bef which landed Mar 2, 2010.
The i915 and i965 drivers in Mesa at the time both used libdrm and so
did the Intel X11 back-end.  The SNA back-end for X11 has always used
execbuffer2.

v2 (Jason Ekstrand):
 - Add a comment saying what Linux version it's being removed in.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Acked-by: Keith Packard <keithp@keithp.com>
Acked-by: Dave Airlie <airlied@redhat.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 100 ------------------
 drivers/gpu/drm/i915/gem/i915_gem_ioctls.h    |   2 -
 drivers/gpu/drm/i915/i915_drv.c               |   2 +-
 include/uapi/drm/i915_drm.h                   |   1 +
 4 files changed, 2 insertions(+), 103 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index fe170186dd428..99772f37bff60 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3394,106 +3394,6 @@ static bool check_buffer_count(size_t count)
 	return !(count < 1 || count > INT_MAX || count > SIZE_MAX / sz - 1);
 }
 
-/*
- * Legacy execbuffer just creates an exec2 list from the original exec object
- * list array and passes it to the real function.
- */
-int
-i915_gem_execbuffer_ioctl(struct drm_device *dev, void *data,
-			  struct drm_file *file)
-{
-	struct drm_i915_private *i915 = to_i915(dev);
-	struct drm_i915_gem_execbuffer *args = data;
-	struct drm_i915_gem_execbuffer2 exec2;
-	struct drm_i915_gem_exec_object *exec_list = NULL;
-	struct drm_i915_gem_exec_object2 *exec2_list = NULL;
-	const size_t count = args->buffer_count;
-	unsigned int i;
-	int err;
-
-	if (!check_buffer_count(count)) {
-		drm_dbg(&i915->drm, "execbuf2 with %zd buffers\n", count);
-		return -EINVAL;
-	}
-
-	exec2.buffers_ptr = args->buffers_ptr;
-	exec2.buffer_count = args->buffer_count;
-	exec2.batch_start_offset = args->batch_start_offset;
-	exec2.batch_len = args->batch_len;
-	exec2.DR1 = args->DR1;
-	exec2.DR4 = args->DR4;
-	exec2.num_cliprects = args->num_cliprects;
-	exec2.cliprects_ptr = args->cliprects_ptr;
-	exec2.flags = I915_EXEC_RENDER;
-	i915_execbuffer2_set_context_id(exec2, 0);
-
-	err = i915_gem_check_execbuffer(&exec2);
-	if (err)
-		return err;
-
-	/* Copy in the exec list from userland */
-	exec_list = kvmalloc_array(count, sizeof(*exec_list),
-				   __GFP_NOWARN | GFP_KERNEL);
-
-	/* Allocate extra slots for use by the command parser */
-	exec2_list = kvmalloc_array(count + 2, eb_element_size(),
-				    __GFP_NOWARN | GFP_KERNEL);
-	if (exec_list == NULL || exec2_list == NULL) {
-		drm_dbg(&i915->drm,
-			"Failed to allocate exec list for %d buffers\n",
-			args->buffer_count);
-		kvfree(exec_list);
-		kvfree(exec2_list);
-		return -ENOMEM;
-	}
-	err = copy_from_user(exec_list,
-			     u64_to_user_ptr(args->buffers_ptr),
-			     sizeof(*exec_list) * count);
-	if (err) {
-		drm_dbg(&i915->drm, "copy %d exec entries failed %d\n",
-			args->buffer_count, err);
-		kvfree(exec_list);
-		kvfree(exec2_list);
-		return -EFAULT;
-	}
-
-	for (i = 0; i < args->buffer_count; i++) {
-		exec2_list[i].handle = exec_list[i].handle;
-		exec2_list[i].relocation_count = exec_list[i].relocation_count;
-		exec2_list[i].relocs_ptr = exec_list[i].relocs_ptr;
-		exec2_list[i].alignment = exec_list[i].alignment;
-		exec2_list[i].offset = exec_list[i].offset;
-		if (INTEL_GEN(to_i915(dev)) < 4)
-			exec2_list[i].flags = EXEC_OBJECT_NEEDS_FENCE;
-		else
-			exec2_list[i].flags = 0;
-	}
-
-	err = i915_gem_do_execbuffer(dev, file, &exec2, exec2_list);
-	if (exec2.flags & __EXEC_HAS_RELOC) {
-		struct drm_i915_gem_exec_object __user *user_exec_list =
-			u64_to_user_ptr(args->buffers_ptr);
-
-		/* Copy the new buffer offsets back to the user's exec list. */
-		for (i = 0; i < args->buffer_count; i++) {
-			if (!(exec2_list[i].offset & UPDATE))
-				continue;
-
-			exec2_list[i].offset =
-				gen8_canonical_addr(exec2_list[i].offset & PIN_OFFSET_MASK);
-			exec2_list[i].offset &= PIN_OFFSET_MASK;
-			if (__copy_to_user(&user_exec_list[i].offset,
-					   &exec2_list[i].offset,
-					   sizeof(user_exec_list[i].offset)))
-				break;
-		}
-	}
-
-	kvfree(exec_list);
-	kvfree(exec2_list);
-	return err;
-}
-
 int
 i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 			   struct drm_file *file)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ioctls.h b/drivers/gpu/drm/i915/gem/i915_gem_ioctls.h
index 87d8b27f426de..7fd22f3efbef0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ioctls.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ioctls.h
@@ -14,8 +14,6 @@ int i915_gem_busy_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file);
 int i915_gem_create_ioctl(struct drm_device *dev, void *data,
 			  struct drm_file *file);
-int i915_gem_execbuffer_ioctl(struct drm_device *dev, void *data,
-			      struct drm_file *file);
 int i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 			       struct drm_file *file);
 int i915_gem_get_aperture_ioctl(struct drm_device *dev, void *data,
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 3edd5e47ad682..64edcab59fe12 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1701,7 +1701,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_VBLANK_SWAP, drm_noop, DRM_AUTH),
 	DRM_IOCTL_DEF_DRV(I915_HWS_ADDR, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	DRM_IOCTL_DEF_DRV(I915_GEM_INIT, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF_DRV(I915_GEM_EXECBUFFER, i915_gem_execbuffer_ioctl, DRM_AUTH),
+	DRM_IOCTL_DEF_DRV(I915_GEM_EXECBUFFER, drm_invalid_op, DRM_AUTH),
 	DRM_IOCTL_DEF_DRV(I915_GEM_EXECBUFFER2_WR, i915_gem_execbuffer2_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_PIN, i915_gem_reject_pin_ioctl, DRM_AUTH|DRM_ROOT_ONLY),
 	DRM_IOCTL_DEF_DRV(I915_GEM_UNPIN, i915_gem_reject_pin_ioctl, DRM_AUTH|DRM_ROOT_ONLY),
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 1987e2ea79a3b..ddc47bbf48b6d 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -943,6 +943,7 @@ struct drm_i915_gem_exec_object {
 	__u64 offset;
 };
 
+/* DRM_IOCTL_I915_GEM_EXECBUFFER was removed in Linux 5.13 */
 struct drm_i915_gem_execbuffer {
 	/**
 	 * List of buffers to be validated with their relocations to be
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
