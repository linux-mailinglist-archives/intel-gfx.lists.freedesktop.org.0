Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0973762C5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 11:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372F26EDFF;
	Fri,  7 May 2021 09:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE1CA6EDFE
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 May 2021 09:25:13 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 k4-20020a7bc4040000b02901331d89fb83so4477785wmi.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 May 2021 02:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UB93MxK7FEzFT+xysmvBFpHY3nbBK76lvWuHOuw2JuA=;
 b=LlHAqaZlaDm+ivgDtgo0jsR/ijub2FSFfifZKGM6MpziTDnBFPSr3N99mtJsyi2nwM
 tIfyayegjTIIPeGYmUGA4uyeriKalG8qTf4PvtXKuz0Wh+9ajfi/fOvAXrlhv93upIxo
 YYV34n+SGZ1uYqX4oDg6gndK6QburW6hr57Vo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UB93MxK7FEzFT+xysmvBFpHY3nbBK76lvWuHOuw2JuA=;
 b=FvhdFSZtk2i6MNhBLiXsC9brasxrXeL9bq6vP3XOIVHw4WWvCu39zZoUe5jc/TCGxW
 gkOyxMJPU8sb4dTc9IbvkFljG134ThEVUxzWy76h2+l6DM8K+aLs5wxN7f5XtG9Z4wqD
 EWdBLr0kNharriywb41y2sXy+lu6q76xjUHBKqlwbUCUA8AT8xt7tXvHafKHbcWyqs9N
 zih8Mo8jKP+/xg4pW3IsJ7zLDhQbHeUQok5R4JCfnOff1rNJeBo1XqnscFsk3VgeSNJH
 G7eAGy7pTxqZ/JqBOcR06CyZ0IftCW5QBpCihI8KNhLemFy9kvxlgO+ci38QeH0SQb1i
 HOSg==
X-Gm-Message-State: AOAM532YxdsFwn/gFK3mplgC+p+UTKJa9xXLf6K8oOfWtDvukg1VGBd+
 NqBe6E3h7oUBdzaPFO1Y3JxcKA==
X-Google-Smtp-Source: ABdhPJxlEBgEM7+An7RzoR4QOnYSyfJsEF80Mr8QAiyOtokKTGqZPLvX3vi4+hKCmFRUsoCxz27tog==
X-Received: by 2002:a7b:c119:: with SMTP id w25mr8918806wmi.87.1620379512386; 
 Fri, 07 May 2021 02:25:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m11sm7859124wri.44.2021.05.07.02.25.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 02:25:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  6 May 2021 15:23:43 +0200
Message-Id: <20210506132343.2873699-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/modifiers: Enforce consistency between the
 cap an IN_FORMATS
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
 Maxime Ripard <maxime@cerno.tech>, Thomas Zimmermann <tzimmermann@suse.de>,
 Simon Ser <contact@emersion.fr>, Pekka Paalanen <pekka.paalanen@collabora.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Emil Velikov <emil.velikov@collabora.com>
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

v2:
- Make the capability a link (Simon)
- Note that all is lost before 5.1.

v3:
- Use drm_WARN_ON (Lyude)

Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
Reviewed-by: Lyude Paul <lyude@redhat.com>
Acked-by: Maxime Ripard <maxime@cerno.tech>
Cc: Simon Ser <contact@emersion.fr>
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_plane.c   | 18 +++++++++++++++++-
 include/drm/drm_mode_config.h |  2 ++
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
index 0dd43882fe7c..b373958ecb30 100644
--- a/drivers/gpu/drm/drm_plane.c
+++ b/drivers/gpu/drm/drm_plane.c
@@ -128,6 +128,13 @@
  *     pairs supported by this plane. The blob is a struct
  *     drm_format_modifier_blob. Without this property the plane doesn't
  *     support buffers with modifiers. Userspace cannot change this property.
+ *
+ *     Note that userspace can check the &DRM_CAP_ADDFB2_MODIFIERS driver
+ *     capability for general modifier support. If this flag is set then every
+ *     plane will have the IN_FORMATS property, even when it only supports
+ *     DRM_FORMAT_MOD_LINEAR. Before linux kernel release v5.1 there have been
+ *     various bugs in this area with inconsistencies between the capability
+ *     flag and per-plane properties.
  */
 
 static unsigned int drm_num_planes(struct drm_device *dev)
@@ -277,8 +284,14 @@ static int __drm_universal_plane_init(struct drm_device *dev,
 			format_modifier_count++;
 	}
 
-	if (format_modifier_count)
+	/* autoset the cap and check for consistency across all planes */
+	if (format_modifier_count) {
+		drm_WARN_ON(dev, !config->allow_fb_modifiers &&
+			    !list_empty(&config->plane_list));
 		config->allow_fb_modifiers = true;
+	} else {
+		drm_WARN_ON(dev, config->allow_fb_modifiers);
+	}
 
 	plane->modifier_count = format_modifier_count;
 	plane->modifiers = kmalloc_array(format_modifier_count,
@@ -360,6 +373,9 @@ static int __drm_universal_plane_init(struct drm_device *dev,
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
