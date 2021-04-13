Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA5C35DBBA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69ADF6E3D0;
	Tue, 13 Apr 2021 09:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83A1D6E3D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:49:22 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id s7so15650880wru.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 02:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PiiBhY9l8GKVCHiW/Kzeba4BFyvQWM5s+Px74+Kqx6A=;
 b=llN2ucEjXJPUe4ZoAX17ktZ1YyurbLL/c0YqE9jn4iBN3q9F5cUnSZN/7ZLgKEbxLx
 CbudF5LuDy5CwudQYKx+lPqYUzZHFvj588qMiLrZ2NcEtjqvY56L17bKbtDGvLmhG51U
 rxtaKWwicxSu5dA4ocv9q/Xkv1l2a5LV0ZcfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PiiBhY9l8GKVCHiW/Kzeba4BFyvQWM5s+Px74+Kqx6A=;
 b=K12Ea1/Fq2QwUeuteEiVtMy6xZvTXmUTQrwO6kJuBTWrJt35bQdcYSHlgd80QEIH2t
 FciqBiJR+REhiSY5pWnAoYnwOSiPA/+2Mml04uaUiv/EwF1zh9ukNtO13bRB5MBUnDnw
 e38IfAmDjoW1gxogx+kpIAvbZOdnvDtCRCJIPaXfKd4ZvGtVdkpQa2vOaEQXVwzszo3H
 qcMRS4EEDy0T9SmeO/XnsU6KTEq4+Llgc8Rpwik9Y/sb2a4yqTFwoh02GVXI4kQIRSSR
 uv6w9yH2X5K/dno5NPZn7OJdpaTDw43tv6gkxSAkWujdcJeL5gMY6HR9or03jezTEkyV
 dCbA==
X-Gm-Message-State: AOAM532Iu/frNQ9G65y/LMnQLiLXTQ1O7ZL4bzAIDDmIi0gElAW+9DpH
 OvbzicDUtk6K4oj9hMoeLHI9Nwe/KFiS6w==
X-Google-Smtp-Source: ABdhPJzcqLtvsl0DlNnPadf6TrwC7Ar9NPXpLD8Id0MOGDIYXiRA5M4nH4wcTPhyJc/28N8y85F4ig==
X-Received: by 2002:a5d:6682:: with SMTP id l2mr11515451wru.306.1618307361262; 
 Tue, 13 Apr 2021 02:49:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 64sm1956458wmz.7.2021.04.13.02.49.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:49:20 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Apr 2021 11:49:03 +0200
Message-Id: <20210413094904.3736372-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/12] drm/modifiers: Enforce consistency
 between the cap an IN_FORMATS
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
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's very confusing for userspace to have to deal with inconsistencies
here, and some drivers screwed this up a bit. Most just ommitted the
format list when they meant to say that only linear modifier is
allowed, but some also meant that only implied modifiers are
acceptable (because actually none of the planes registered supported
modifiers).

Now that this is all done consistently across all drivers, document
the rules and enforce it in the drm core.

Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_plane.c   | 16 +++++++++++++++-
 include/drm/drm_mode_config.h |  2 ++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
index 0dd43882fe7c..16a7e3e57f7f 100644
--- a/drivers/gpu/drm/drm_plane.c
+++ b/drivers/gpu/drm/drm_plane.c
@@ -128,6 +128,11 @@
  *     pairs supported by this plane. The blob is a struct
  *     drm_format_modifier_blob. Without this property the plane doesn't
  *     support buffers with modifiers. Userspace cannot change this property.
+ *
+ *     Note that userspace can check the DRM_CAP_ADDFB2_MODIFIERS driver
+ *     capability for general modifier support. If this flag is set then every
+ *     plane will have the IN_FORMATS property, even when it only supports
+ *     DRM_FORMAT_MOD_LINEAR.
  */
 
 static unsigned int drm_num_planes(struct drm_device *dev)
@@ -277,8 +282,14 @@ static int __drm_universal_plane_init(struct drm_device *dev,
 			format_modifier_count++;
 	}
 
-	if (format_modifier_count)
+	/* autoset the cap and check for consistency across all planes */
+	if (format_modifier_count) {
+		WARN_ON(!config->allow_fb_modifiers &&
+			!list_empty(&config->plane_list));
 		config->allow_fb_modifiers = true;
+	} else {
+		WARN_ON(config->allow_fb_modifiers);
+	}
 
 	plane->modifier_count = format_modifier_count;
 	plane->modifiers = kmalloc_array(format_modifier_count,
@@ -360,6 +371,9 @@ static int __drm_universal_plane_init(struct drm_device *dev,
  * drm_universal_plane_init() to let the DRM managed resource infrastructure
  * take care of cleanup and deallocation.
  *
+ * Drivers supporting modifiers must set @format_modifiers on all their planes,
+ * even those that only support DRM_FORMAT_MOD_LINEAR.
+ *
  * Returns:
  * Zero on success, error code on failure.
  */
diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
index ab424ddd7665..1ddf7783fdf7 100644
--- a/include/drm/drm_mode_config.h
+++ b/include/drm/drm_mode_config.h
@@ -909,6 +909,8 @@ struct drm_mode_config {
 	 * @allow_fb_modifiers:
 	 *
 	 * Whether the driver supports fb modifiers in the ADDFB2.1 ioctl call.
+	 * Note that drivers should not set this directly, it is automatically
+	 * set in drm_universal_plane_init().
 	 *
 	 * IMPORTANT:
 	 *
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
