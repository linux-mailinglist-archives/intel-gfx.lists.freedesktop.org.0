Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27968314CAA
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 11:15:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66B2D6EABD;
	Tue,  9 Feb 2021 10:15:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C6146EABD
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 10:15:31 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id 190so2546391wmz.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Feb 2021 02:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+t2qfqYwBPduaMFSL0mQ9g24Z3UBoLu9uILpa+jiK5I=;
 b=kONOr12btORYEC/KZvwreyl9qPMWdrBc1WgjTbx613+RXItRRH7rJe/iD6YUR6guxQ
 lxV+6p+v+MjJZZD5zMjfS8e1IJVLi8eDHlE7u7nT9UO8ns3UeklMTOBPaehrplvUXY7X
 7mAnUS0y/TKy2czupGMtN6gMxZeTnc8SzAMwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+t2qfqYwBPduaMFSL0mQ9g24Z3UBoLu9uILpa+jiK5I=;
 b=VE9J7PXnnplbxZBHfOSguKBBx6hN2wfztMsHG0cP+bIdmqg9UPVMJNfQLMjffatJqw
 Bqi9VfkrA4SZGNELNW1FFhHV609zvsDWI5Pad9/uB2EJhfMjfagGWcvDDRknpD4ub9jD
 /1UukUaStdbOQ+tnRAVlodjeUJVdM8ZejQJ/3AvW4q5wYGoVUJymM4QSYdrCPQQsnxe2
 3yOipeUPo8ODxH/GOzIW5U/gVInY0XW3SXD3YiahrrIcdSCpy9DBnCUGtq7XxZCUj8Db
 mRTkiAxb83Mjp/PFRUdMz7B1MBUVPh/W6StGnxVuIZPeQLZfdKydfZa8ADsIC4P4PXC+
 4sKg==
X-Gm-Message-State: AOAM530wyPMXDKNZFoqP/c+WpHbZLtebiKvalZznRQ37lDNplE9RA1Mr
 cheqVJEzUbNq27j247z4jgCTYw==
X-Google-Smtp-Source: ABdhPJwtXdgun71HKK/LPw0y2lZP1i4QNMgEJ/nr6c4XyYeuuSOsKuCq3K6ergANYCRsVMJuPqHq5Q==
X-Received: by 2002:a7b:c04c:: with SMTP id u12mr2746466wmc.185.1612865729738; 
 Tue, 09 Feb 2021 02:15:29 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j39sm9530484wrj.21.2021.02.09.02.15.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 02:15:29 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  9 Feb 2021 11:15:23 +0100
Message-Id: <20210209101523.2954281-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/vblank: Document drm_crtc_vblank_restore
 constraints
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

I got real badly confused when trying to review a fix from Ville for
this. Let's try to document better what's required for this, and check
the minimal settings at runtime - we can't check ofc that there's
indeed no races in the driver callback.

Also noticed that the drm_vblank_restore version is unused, so lets
unexport that while at it.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 25 ++++++++++---------------
 include/drm/drm_vblank.h     |  1 -
 2 files changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index c914b14cfb43..05f4d4c078fd 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1471,20 +1471,7 @@ void drm_crtc_vblank_on(struct drm_crtc *crtc)
 }
 EXPORT_SYMBOL(drm_crtc_vblank_on);
 
-/**
- * drm_vblank_restore - estimate missed vblanks and update vblank count.
- * @dev: DRM device
- * @pipe: CRTC index
- *
- * Power manamement features can cause frame counter resets between vblank
- * disable and enable. Drivers can use this function in their
- * &drm_crtc_funcs.enable_vblank implementation to estimate missed vblanks since
- * the last &drm_crtc_funcs.disable_vblank using timestamps and update the
- * vblank counter.
- *
- * This function is the legacy version of drm_crtc_vblank_restore().
- */
-void drm_vblank_restore(struct drm_device *dev, unsigned int pipe)
+static void drm_vblank_restore(struct drm_device *dev, unsigned int pipe)
 {
 	ktime_t t_vblank;
 	struct drm_vblank_crtc *vblank;
@@ -1520,7 +1507,6 @@ void drm_vblank_restore(struct drm_device *dev, unsigned int pipe)
 		    diff, diff_ns, framedur_ns, cur_vblank - vblank->last);
 	store_vblank(dev, pipe, diff, t_vblank, cur_vblank);
 }
-EXPORT_SYMBOL(drm_vblank_restore);
 
 /**
  * drm_crtc_vblank_restore - estimate missed vblanks and update vblank count.
@@ -1531,9 +1517,18 @@ EXPORT_SYMBOL(drm_vblank_restore);
  * &drm_crtc_funcs.enable_vblank implementation to estimate missed vblanks since
  * the last &drm_crtc_funcs.disable_vblank using timestamps and update the
  * vblank counter.
+ *
+ * Note that drivers must have race-free high-precision timestamping support,
+ * i.e.  &drm_crtc_funcs.get_vblank_timestamp must be hooked up and
+ * &drm_driver.vblank_disable_immediate must be set to indicate the
+ * time-stamping functions are race-free against vblank hardware counter
+ * increments.
  */
 void drm_crtc_vblank_restore(struct drm_crtc *crtc)
 {
+	WARN_ON_ONCE(!crtc->funcs->get_vblank_timestamp);
+	WARN_ON_ONCE(!crtc->dev->vblank_disable_immediate);
+
 	drm_vblank_restore(crtc->dev, drm_crtc_index(crtc));
 }
 EXPORT_SYMBOL(drm_crtc_vblank_restore);
diff --git a/include/drm/drm_vblank.h b/include/drm/drm_vblank.h
index dd125f8c766c..733a3e2d1d10 100644
--- a/include/drm/drm_vblank.h
+++ b/include/drm/drm_vblank.h
@@ -247,7 +247,6 @@ void drm_crtc_vblank_off(struct drm_crtc *crtc);
 void drm_crtc_vblank_reset(struct drm_crtc *crtc);
 void drm_crtc_vblank_on(struct drm_crtc *crtc);
 u64 drm_crtc_accurate_vblank_count(struct drm_crtc *crtc);
-void drm_vblank_restore(struct drm_device *dev, unsigned int pipe);
 void drm_crtc_vblank_restore(struct drm_crtc *crtc);
 
 void drm_calc_timestamping_constants(struct drm_crtc *crtc,
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
