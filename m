Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3897A436BEF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 22:21:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3D96E499;
	Thu, 21 Oct 2021 20:20:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 454BE6E499
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 20:20:56 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id r7so1303442wrc.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 13:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H3OxDgQ3SPNSwUlXawNQL491W4uV6Gbe6RUFFqLVjig=;
 b=N5/tObVR+UcKVWN7oM/qe2jWj1ugHaWtc+KVJMsldu3wA4NU5MHe2BxhpFMg0uvkk5
 AAx6Cfy/FieJzdP0b18zsWpWM5Utt39SnIEUgQ2WHlUk3t7cMSpkstZ8z6onfxtVsiGc
 kzUQ9CrnxlFGUy7fAQS1fJSDKqWF75SCK7Ey8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H3OxDgQ3SPNSwUlXawNQL491W4uV6Gbe6RUFFqLVjig=;
 b=RZ+nGSJ6ArPPuh+0MBBLdgdHYlfmRil4+A0wpThp8aWvOEkEyimUB2Eb2kcBJRIYA4
 lxJX/fESl5TIj3w4cl2KtdB9xVsPON+aHGmlz2XTpDaRUGDKlnSNK2z7JtINYEdZfjJL
 C/vDB3YBPVgAiJE8mKIS85E70vLDDTbIdUw4a2wItj+KgepHBui1TR+adivggoFwiVkT
 p+cqSTNIq8N5W24jUimA7N3VfPTYzDuMKVg5+pjXz73CCyJSupVuPnceNKlmDPaaJGRJ
 7icH3+XRuGjleYhzkkKk/ishOoVygSCZgz4sAjqh3f9TN+ZrIqzuWWSusFZlWl6/R9+w
 WKxw==
X-Gm-Message-State: AOAM533C7Ickje9MB0tq8IpueIYc8VWR5iyoZ1k+lJ3xyvertznGGhvU
 jVtye+kA3Bdc1JTCZxDbqEJrPw==
X-Google-Smtp-Source: ABdhPJy66pBg4zAKr8KklTKoymNvpPPDgMecGVBcjV4LBgwaI3Y14JK79xMJHgKuHmH4Vo1XbbabpQ==
X-Received: by 2002:adf:9b8a:: with SMTP id d10mr9598012wrc.151.1634847654587; 
 Thu, 21 Oct 2021 13:20:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d24sm5648764wmb.35.2021.10.21.13.20.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 13:20:53 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Date: Thu, 21 Oct 2021 22:20:48 +0200
Message-Id: <20211021202048.2638668-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Properly reset mock object
 propers for each test
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

I forgot to do this properly in

commit 6f11f37459d8f9f74ff1c299c0bedd50b458057a
Author: Daniel Vetter <daniel.vetter@ffwll.ch>
Date:   Fri Jul 23 10:34:55 2021 +0200

    drm/plane: remove drm_helper_get_plane_damage_clips

intel-gfx CI didn't spot this because we run each selftest in each own
invocations, which means reloading i915.ko. But if you just run all
the selftests in one go at boot-up, then it falls apart and eventually
we cross over the hardcoded limited of how many properties can be
attached to a single object.

Fix this by resetting the property count. Nothing else to clean up
since it's all static storage anyway.

Reported-and-tested-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Fixes: 6f11f37459d8 ("drm/plane: remove drm_helper_get_plane_damage_clips")
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/selftests/test-drm_damage_helper.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/selftests/test-drm_damage_helper.c b/drivers/gpu/drm/selftests/test-drm_damage_helper.c
index 1c19a5d3eefb..8d8d8e214c28 100644
--- a/drivers/gpu/drm/selftests/test-drm_damage_helper.c
+++ b/drivers/gpu/drm/selftests/test-drm_damage_helper.c
@@ -30,6 +30,7 @@ static void mock_setup(struct drm_plane_state *state)
 	mock_device.driver = &mock_driver;
 	mock_device.mode_config.prop_fb_damage_clips = &mock_prop;
 	mock_plane.dev = &mock_device;
+	mock_obj_props.count = 0;
 	mock_plane.base.properties = &mock_obj_props;
 	mock_prop.base.id = 1; /* 0 is an invalid id */
 	mock_prop.dev = &mock_device;
-- 
2.33.0

