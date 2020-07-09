Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3411B21A020
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 14:34:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 746D26EA61;
	Thu,  9 Jul 2020 12:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A2906EA5E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 12:33:53 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a6so6182924wmm.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 05:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3e+2hfQAEno550QSTUaHwqumwSkwkBzuWx2HdwXt2vk=;
 b=dcBagqjPL5oaA17pl8tDkIKyeu12QXbFJrtQGGLySAvLDY4xiergC2IYR6E1fpmf4p
 1WACZV3CMOEQku9V/ZRJ4sZLASuV3NVXphsb30Q+GUjzDBa8TFvBnMO71pd02lVOROXU
 YPnb5OTAQoA0wAe6EW+/BDiI3Gr7pzCuT6Vuk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3e+2hfQAEno550QSTUaHwqumwSkwkBzuWx2HdwXt2vk=;
 b=XZwhZdhZjNt5Jq0i1DOEigzorOwNvAjSZ7u/gS6DhTpjwZfBbAqWr3cux0lqca6n3r
 GiM7jHjcTlwxXEt2gL7EayKHKLa9j7EdawkYabE54mtDZjtIUdxvJlHtSY466eyn1Uep
 duuY2E89E9r7ZFHchmg/xExs/gVgSSSFToD51QWqucY2XuY3Lx5WCPcQeDg8LN4IkCZn
 6qnPe7FDj+lFdmPgTLKhXCjdqVWUfHT0o3hW1Cb3BQJX/jEeDMKtGn4GekLVkf5ZreTy
 PyzfMDcbUyCoXK2gdpwzrNtmyPB0CfCyg0KepoB2lZQ8vLIkn38gHhQ8L9yULvKkXfxK
 cJPw==
X-Gm-Message-State: AOAM530NhrQK8U7xd4OEjTv9v3fsPnjbjKJYPpzuUCqVvFHyaA15xaQr
 xfwxheYMLs3hgGcwE7ScKOiJ7Q==
X-Google-Smtp-Source: ABdhPJz0m548k8vvU6TSo8mQCX1rasisxK2aa1KJaJsuIt1AObEfDAw51itB4tLFY3QZ8k7xMQcj5w==
X-Received: by 2002:a7b:cb98:: with SMTP id m24mr13930700wmi.98.1594298032057; 
 Thu, 09 Jul 2020 05:33:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o205sm4925347wme.24.2020.07.09.05.33.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jul 2020 05:33:51 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  9 Jul 2020 14:33:39 +0200
Message-Id: <20200709123339.547390-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200709123339.547390-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/virtio: Remove open-coded commit-tail
 function
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, David Airlie <airlied@linux.ie>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Exactly matches the one in the helpers.

This avoids me having to roll out dma-fence critical section
annotations to this copy.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: virtualization@lists.linux-foundation.org
---
 drivers/gpu/drm/virtio/virtgpu_display.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_display.c b/drivers/gpu/drm/virtio/virtgpu_display.c
index f3ce49c5a34c..af55b334be2f 100644
--- a/drivers/gpu/drm/virtio/virtgpu_display.c
+++ b/drivers/gpu/drm/virtio/virtgpu_display.c
@@ -314,25 +314,6 @@ virtio_gpu_user_framebuffer_create(struct drm_device *dev,
 	return &virtio_gpu_fb->base;
 }
 
-static void vgdev_atomic_commit_tail(struct drm_atomic_state *state)
-{
-	struct drm_device *dev = state->dev;
-
-	drm_atomic_helper_commit_modeset_disables(dev, state);
-	drm_atomic_helper_commit_modeset_enables(dev, state);
-	drm_atomic_helper_commit_planes(dev, state, 0);
-
-	drm_atomic_helper_fake_vblank(state);
-	drm_atomic_helper_commit_hw_done(state);
-
-	drm_atomic_helper_wait_for_vblanks(dev, state);
-	drm_atomic_helper_cleanup_planes(dev, state);
-}
-
-static const struct drm_mode_config_helper_funcs virtio_mode_config_helpers = {
-	.atomic_commit_tail = vgdev_atomic_commit_tail,
-};
-
 static const struct drm_mode_config_funcs virtio_gpu_mode_funcs = {
 	.fb_create = virtio_gpu_user_framebuffer_create,
 	.atomic_check = drm_atomic_helper_check,
@@ -346,7 +327,6 @@ void virtio_gpu_modeset_init(struct virtio_gpu_device *vgdev)
 	drm_mode_config_init(vgdev->ddev);
 	vgdev->ddev->mode_config.quirk_addfb_prefer_host_byte_order = true;
 	vgdev->ddev->mode_config.funcs = &virtio_gpu_mode_funcs;
-	vgdev->ddev->mode_config.helper_private = &virtio_mode_config_helpers;
 
 	/* modes will be validated against the framebuffer size */
 	vgdev->ddev->mode_config.min_width = XRES_MIN;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
