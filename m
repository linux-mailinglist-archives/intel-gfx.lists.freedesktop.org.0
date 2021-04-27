Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 126AC36C19F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 11:20:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823876E93A;
	Tue, 27 Apr 2021 09:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E87D56E934
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 09:20:31 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id d11so852577wrw.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 02:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cqP0gjc1UtzViswayeYBkOIxC7p7CX3JMgXUxI4EqHg=;
 b=XlkIchkuAqzR02//z/8rHKE0NKhNuLJTVZER4lpBdGGOLCqjnyyu7ruxnlyWcM3mfM
 3H1UVfG8giq2OJxoqtHBKxnXQu6aT7cvF8xAEiVE0HX+NtZYedtm4QRboi2pJ8w0ahgF
 C1xOq7ubv1pPeLMx66CLx+UrrAhGZ+S7v6iug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cqP0gjc1UtzViswayeYBkOIxC7p7CX3JMgXUxI4EqHg=;
 b=Xfvr4GLPIEm0z5csIXsx1yE2E5pjRlxvLyYPwqQiOJnBm2ZAipJwO/mutVQfUEgh98
 tG2xMf2K8S+HMis7qZvtuMfA5m058rPpMraMpDb2QArSADkRsdECbwOvutO1zlxX5HOm
 v/3yXzacoA2Kl0fYuNyynV8BQ8RHZ1pkXZwz0rfCSjVIGQiD2m3T63Ecbgk9vB2JNSc4
 kKErBunpDFMcpwSa0+zxQPRJylY1BAPfFlbrTEGApOOG5Bgu0aOyn/eP0qN2p+T/tqhM
 WObgvgN+BkQwbMlFwyXIk37B1ube2uRRmn927uTII+yXShtw5r1bjm4s+7N/wGF/TTUS
 2nAA==
X-Gm-Message-State: AOAM530NcgAetukYt7E2tKI1gP+QFyQ1Xu2J0c7oydXHl+hlwRtKSjjN
 z5RixLglNP13JM5xNc9cZt7sUA==
X-Google-Smtp-Source: ABdhPJzFTPu8PR2Hkya76z2tUgTkdBNHRW1jhO6CUU2wi4dYHPpDs0xPUpM0knu4xaa5W+ugt8qT3g==
X-Received: by 2002:adf:ee0b:: with SMTP id y11mr28031670wrn.75.1619515230687; 
 Tue, 27 Apr 2021 02:20:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r24sm1939816wmh.8.2021.04.27.02.20.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 02:20:30 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 27 Apr 2021 11:20:18 +0200
Message-Id: <20210427092018.832258-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
References: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] drm/modifiers: Enforce consistency between
 the cap an IN_FORMATS
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
 Maxime Ripard <mripard@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 Thomas Zimmermann <tzimmermann@suse.de>, Simon Ser <contact@emersion.fr>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
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
index 0dd43882fe7c..20c7a1665414 100644
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
+		WARN_ON(!config->allow_fb_modifiers &&
+			!list_empty(&config->plane_list));
 		config->allow_fb_modifiers = true;
+	} else {
+		WARN_ON(config->allow_fb_modifiers);
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
