Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE5A28602A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 15:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 234AC6E8E7;
	Wed,  7 Oct 2020 13:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE296E12D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 13:30:43 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id z1so2175628wrt.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Oct 2020 06:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GJlIfxKpLNZqZHdxokGLJqMnaEqHp9/LzxV1Yh6KCW0=;
 b=IjsUW/Xl9Qo8GL1q2uw4aeZSY/sA1WsCritibF5rkLGXsG4NfIupNM9pnI1irS3W1E
 NbWQ0KDsojRA/K+CGkIoBTrVOT/Y/9D2HIu8ZgRiBIGp8PnhOlHyhvCe/JaaohNASOXu
 Yx9htbjdnYi1MsBZmBhIFfzxhebiJlTgVekfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GJlIfxKpLNZqZHdxokGLJqMnaEqHp9/LzxV1Yh6KCW0=;
 b=PTSiM+Md8QH0W7HrGp1iLjoklXXAZ/QPPMPAACMBHnDCdk2QZ2o69y3A1nQiZul9XQ
 Q2Z4BiU6uxv82p7I3ul8/Io+qZUdoUgLARXzoluKvmV31XEa6YF6j+qu8YiKY6XYiexS
 F1ZzdbS9Oz+eSnqin4tFB5TFr9rlnKboX3qLec68bsGEpqGN6Xke0wq4L0b1K+VUf3R2
 vlCCarO8S0mIQ8TXZxfuSR1bajzyr/B2d//WmN8eZumpxadOQ7qSbT32a02xpedD6BwP
 +5PwUFn6uX0ZEjBFZ2WNHIv57+QtEIQNX/g5m8XHWbvG4+05KP/v5Mw1fVYNLbKZ5w0/
 1Bbw==
X-Gm-Message-State: AOAM531fL1zLhLqVE2JpAElNZcIZzy/pYyixde1trTaXeG9V4r6/kUZB
 uynthrAk6Cg2YII4jaSeGVEg0A==
X-Google-Smtp-Source: ABdhPJy7en8xKm70WxhZutmO9bjDeXCAJR+AcDfL4Tw/ThwOIxOvoSo+aOwUK9bgUGWNTJoq4AsL0Q==
X-Received: by 2002:adf:94e6:: with SMTP id 93mr3452672wrr.190.1602077441970; 
 Wed, 07 Oct 2020 06:30:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x6sm2827011wmb.17.2020.10.07.06.30.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Oct 2020 06:30:41 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed,  7 Oct 2020 15:30:35 +0200
Message-Id: <20201007133036.1541639-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/fb-helper: Add locking to sysrq handling
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We didn't take the kernel_fb_helper_lock mutex, which protects that
code. While at it, simplify the code
- inline the function (originally shared with kgdb I think)
- drop the error tracking and all the complications
- drop the pointless early out, it served nothing

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_fb_helper.c | 26 +++++---------------------
 1 file changed, 5 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index 8697554ccd41..c2f72bb6afb1 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -281,18 +281,12 @@ int drm_fb_helper_restore_fbdev_mode_unlocked(struct drm_fb_helper *fb_helper)
 EXPORT_SYMBOL(drm_fb_helper_restore_fbdev_mode_unlocked);
 
 #ifdef CONFIG_MAGIC_SYSRQ
-/*
- * restore fbcon display for all kms driver's using this helper, used for sysrq
- * and panic handling.
- */
-static bool drm_fb_helper_force_kernel_mode(void)
+/* emergency restore, don't bother with error reporting */
+static void drm_fb_helper_restore_work_fn(struct work_struct *ignored)
 {
-	bool ret, error = false;
 	struct drm_fb_helper *helper;
 
-	if (list_empty(&kernel_fb_helper_list))
-		return false;
-
+	mutex_lock(&kernel_fb_helper_lock);
 	list_for_each_entry(helper, &kernel_fb_helper_list, kernel_fb_list) {
 		struct drm_device *dev = helper->dev;
 
@@ -300,22 +294,12 @@ static bool drm_fb_helper_force_kernel_mode(void)
 			continue;
 
 		mutex_lock(&helper->lock);
-		ret = drm_client_modeset_commit_locked(&helper->client);
-		if (ret)
-			error = true;
+		drm_client_modeset_commit_locked(&helper->client);
 		mutex_unlock(&helper->lock);
 	}
-	return error;
+	mutex_unlock(&kernel_fb_helper_lock);
 }
 
-static void drm_fb_helper_restore_work_fn(struct work_struct *ignored)
-{
-	bool ret;
-
-	ret = drm_fb_helper_force_kernel_mode();
-	if (ret == true)
-		DRM_ERROR("Failed to restore crtc configuration\n");
-}
 static DECLARE_WORK(drm_fb_helper_restore_work, drm_fb_helper_restore_work_fn);
 
 static void drm_fb_helper_sysrq(int dummy1)
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
