Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D2C33FBEB
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 00:40:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114B86E860;
	Wed, 17 Mar 2021 23:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBE66E860
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 23:40:23 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id bt4so1944338pjb.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 16:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kKwFYSP625fJtSy8c4om4p49ia/3m1IVjkiNF26dqMU=;
 b=s6LS3J+4PM2Nqf0ZJGdOjorsy+KRAMMyNmpbjqI7t830ZbKnzy6F8cp6mAJ/bnvlah
 miElU7smCp/WMi+zC3hhsJnjnPbgiHLy78tZMQsukhlR+QNoI/56k5pAEZVr3KoQ+nO3
 ptnf5IuvslTtnHL+ghJEbSPHDmIvE7sA7xx+dMTUy26BHNfv/J70t5PDXv03ZS22nSUD
 WErXGWPoJs2b9Ji8xZDAqaD48RLWomVV1iyM15fPfLwue65FQIuCfzOQP9kNxsez/Okh
 hm+W+PaUdQlBfYVFBBT0pJhcppNV+g0tELluGyAjE94+g+HNfSl3qf8I6aLT1kbZfqAy
 sM5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kKwFYSP625fJtSy8c4om4p49ia/3m1IVjkiNF26dqMU=;
 b=RPKoxPBKPUINW05XvEt4V4q/FNSYcivVeKGEEtu8dZH4ZUnECteySFTqYvfIY75s/l
 mmvRWBeuxcsaLGt3tOJcJ5IrMhMO3Fs30hivZ9j0c4+vIx3VO73wr73uD8pmNPZM/G1z
 zD+22JqYMXHMdIo/yXyoxQvcugEw702F+4nA7WuvZ2bZplavSz36iKeWeAEodQtdcdln
 Z8qorXehWGGmBkNzhKTgvLOqC1TQvu9bH9iUHssHvOWqO64KK5iad7mVuXeyMV8wSFW+
 HmXuDrL+ft/vlai0bgo9GMbdyMNO7FmBCJ1ACDHxeC5bnnPcKAmZmEyRd6AvVoNjiOFw
 xgLQ==
X-Gm-Message-State: AOAM533/NBaZJGA1NiAhJl92XHRk990ASbqlhrJhbBGDUql8hYZ5s0Om
 hShcpgMqUk57GxFeVVYivXiRNw==
X-Google-Smtp-Source: ABdhPJz+aECJVc569AhqkR/6Rt7TsVjYD+vWyvIsJAKraAuh8Hcp2tOMdwmTuBglnAv7S9dnRG6pMg==
X-Received: by 2002:a17:902:d4cd:b029:e5:dd6d:f9b3 with SMTP id
 o13-20020a170902d4cdb02900e5dd6df9b3mr6494952plg.43.1616024422891; 
 Wed, 17 Mar 2021 16:40:22 -0700 (PDT)
Received: from omlet.lan (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id p3sm148399pgi.24.2021.03.17.16.40.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 16:40:22 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 18:40:10 -0500
Message-Id: <20210317234014.2271006-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210317234014.2271006-1-jason@jlekstrand.net>
References: <20210315143428.1471489-1-jason@jlekstrand.net>
 <20210317234014.2271006-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/gem: Drop legacy execbuffer
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
