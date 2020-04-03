Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 967F219D823
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B02B6EBA7;
	Fri,  3 Apr 2020 13:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9236EBA5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:46 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id a81so7789055wmf.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NU+qkT4qoyxNKc/z+fWhyN+/2x1vWjQ/To2ekVH9uwA=;
 b=gayNk/Zjj+jJzUDXqNVmWWWNpyNaymfazsxNR6GATIgeIisoTJxmbUf7VSe+JrDlRy
 tsbvAsTlQAiGMhDZVR9yzPs7CrM5hucuXxKhUFvZTtxYF8dhEfjNYbpHyTzHKDRfnSdX
 8HSeFrmeEXr1E0Fzv291q+m8jAi7BIgC4AEp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NU+qkT4qoyxNKc/z+fWhyN+/2x1vWjQ/To2ekVH9uwA=;
 b=DCpOLQm4kMCtehVqLOkMKwYPOifZDf0GDlPM78z16M65AfNU6TweOlEA184YU207OR
 D1zDxJvhYahsdue3udnGIG68Ba3iaJ6LpBaw1r6Ox0uHe1u/nS4R8G002thi141Rgw/p
 LPh21whh1PGz5SUwai4L2O7KzdsoPpt37lxopzRwpZYRXD8/7MQ9960X4OZVb4INcM8d
 Y9BPWBzTE1lQv69S88UmXZyT4cfxyNQ0JhFeuB3GuoX3DpyV3exBezdkH5mdeEGflEeF
 o0zmgZT5VNHU3/2PT4TZ3TOOP39rgKDL5moedhH677drrACMewuw0M1L28vqGb4T2jyo
 O3tQ==
X-Gm-Message-State: AGi0PubWbYdm1epF3ffAQW5lCCVEGFOV+odsOhRp4J6UYmPViY9lVgwO
 9MmXCjkIw+LwdOWkaPSen7aEWQ==
X-Google-Smtp-Source: APiQypIwOL/Aufv3eejx/Vu3FC9nelD+rE89fuPEey5/RWGJ7pkVJVcqih5NDS9WP5jwplOVdXRO7w==
X-Received: by 2002:a1c:b7d7:: with SMTP id h206mr8981891wmf.143.1585922324957; 
 Fri, 03 Apr 2020 06:58:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:44 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:57:52 +0200
Message-Id: <20200403135828.2542770-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/44] drm/vboxvideo: Stop using
 drm_device->dev_private
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We use the baseclass pattern here, so lets to the proper (and more
typesafe) upcasting.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/vboxvideo/vbox_drv.c  |  1 -
 drivers/gpu/drm/vboxvideo/vbox_drv.h  |  1 +
 drivers/gpu/drm/vboxvideo/vbox_irq.c  |  2 +-
 drivers/gpu/drm/vboxvideo/vbox_mode.c | 10 +++++-----
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
index be0600b22cf5..d34cddd809fd 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_drv.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_drv.c
@@ -52,7 +52,6 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return PTR_ERR(vbox);
 
 	vbox->ddev.pdev = pdev;
-	vbox->ddev.dev_private = vbox;
 	pci_set_drvdata(pdev, vbox);
 	mutex_init(&vbox->hw_mutex);
 
diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.h b/drivers/gpu/drm/vboxvideo/vbox_drv.h
index 87421903816c..ac7c2effc46f 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_drv.h
+++ b/drivers/gpu/drm/vboxvideo/vbox_drv.h
@@ -127,6 +127,7 @@ struct vbox_encoder {
 #define to_vbox_crtc(x) container_of(x, struct vbox_crtc, base)
 #define to_vbox_connector(x) container_of(x, struct vbox_connector, base)
 #define to_vbox_encoder(x) container_of(x, struct vbox_encoder, base)
+#define to_vbox_dev(x) container_of(x, struct vbox_private, ddev)
 
 bool vbox_check_supported(u16 id);
 int vbox_hw_init(struct vbox_private *vbox);
diff --git a/drivers/gpu/drm/vboxvideo/vbox_irq.c b/drivers/gpu/drm/vboxvideo/vbox_irq.c
index 16a1e29f5292..631657fa554f 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_irq.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_irq.c
@@ -34,7 +34,7 @@ void vbox_report_hotplug(struct vbox_private *vbox)
 irqreturn_t vbox_irq_handler(int irq, void *arg)
 {
 	struct drm_device *dev = (struct drm_device *)arg;
-	struct vbox_private *vbox = (struct vbox_private *)dev->dev_private;
+	struct vbox_private *vbox = to_vbox_dev(dev);
 	u32 host_flags = vbox_get_flags(vbox);
 
 	if (!(host_flags & HGSMIHOSTFLAGS_IRQ))
diff --git a/drivers/gpu/drm/vboxvideo/vbox_mode.c b/drivers/gpu/drm/vboxvideo/vbox_mode.c
index 0883a435e62b..d9a5af62af89 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_mode.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_mode.c
@@ -36,7 +36,7 @@ static void vbox_do_modeset(struct drm_crtc *crtc)
 	u16 flags;
 	s32 x_offset, y_offset;
 
-	vbox = crtc->dev->dev_private;
+	vbox = to_vbox_dev(crtc->dev);
 	width = vbox_crtc->width ? vbox_crtc->width : 640;
 	height = vbox_crtc->height ? vbox_crtc->height : 480;
 	bpp = fb ? fb->format->cpp[0] * 8 : 32;
@@ -77,7 +77,7 @@ static void vbox_do_modeset(struct drm_crtc *crtc)
 static int vbox_set_view(struct drm_crtc *crtc)
 {
 	struct vbox_crtc *vbox_crtc = to_vbox_crtc(crtc);
-	struct vbox_private *vbox = crtc->dev->dev_private;
+	struct vbox_private *vbox = to_vbox_dev(crtc->dev);
 	struct vbva_infoview *p;
 
 	/*
@@ -174,7 +174,7 @@ static void vbox_crtc_set_base_and_mode(struct drm_crtc *crtc,
 					int x, int y)
 {
 	struct drm_gem_vram_object *gbo = drm_gem_vram_of_gem(fb->obj[0]);
-	struct vbox_private *vbox = crtc->dev->dev_private;
+	struct vbox_private *vbox = to_vbox_dev(crtc->dev);
 	struct vbox_crtc *vbox_crtc = to_vbox_crtc(crtc);
 	bool needs_modeset = drm_atomic_crtc_needs_modeset(crtc->state);
 
@@ -272,7 +272,7 @@ static void vbox_primary_atomic_update(struct drm_plane *plane,
 {
 	struct drm_crtc *crtc = plane->state->crtc;
 	struct drm_framebuffer *fb = plane->state->fb;
-	struct vbox_private *vbox = fb->dev->dev_private;
+	struct vbox_private *vbox = to_vbox_dev(fb->dev);
 	struct drm_mode_rect *clips;
 	uint32_t num_clips, i;
 
@@ -704,7 +704,7 @@ static int vbox_get_modes(struct drm_connector *connector)
 	int preferred_width, preferred_height;
 
 	vbox_connector = to_vbox_connector(connector);
-	vbox = connector->dev->dev_private;
+	vbox = to_vbox_dev(connector->dev);
 
 	hgsmi_report_flags_location(vbox->guest_pool, GUEST_HEAP_OFFSET(vbox) +
 				    HOST_FLAGS_OFFSET);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
