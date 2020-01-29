Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3C114C75F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 09:24:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093176F48B;
	Wed, 29 Jan 2020 08:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5940B6E27C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 08:24:18 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id c9so19085949wrw.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 00:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AnvVhyRRmoo/xlkf99eP9Y/JmLE54NitcFMa1DSVDVE=;
 b=E5cyQp0rjuHu5tUyA8ZQ0acrUmQVjj2klXe6IHLgEoEfVgIU2Ui/BsJhDWMRieidAn
 OtjpuptoipI1m8FqdN7DyPT0uskJFPek6DTQo6GJMFckBOmACYVrjyM6dG9wbY50K940
 D/HEjgQlLl8+Ufh5EEfMsT+ItQRfUNAeQ7cRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AnvVhyRRmoo/xlkf99eP9Y/JmLE54NitcFMa1DSVDVE=;
 b=XbVn29sLsF1Rk0UKTFXOf/2wxHCA1XO3txstbWIx2ye1uITUhgbU3HLoXwqg9EHfyN
 xU/zpTyweOI34WVIeh2tU6WIjh3V8RojFMU+ZbUi81daS9sv8epNEv/VzXF4qqkZqyt3
 vl+Y9jRkW+FGs2ZnFImxcgMMk5f08mc/6wsAY4ZBIBY1PV8Rieodq4CcT0qUnrE47ahH
 Njy3/1i/ISXY6d293MOAh7o92SvnzUw71F5s27gYU8Irhln2jCICsFkC38y/2I7VqlJz
 30dT+eGkN4RHhwANR/2n7mqQBtbt1XQkyjb6MebyxPRZYZ8l6QCaMWghbS3W/hBpbE0H
 x4uA==
X-Gm-Message-State: APjAAAVTerooljPwskxGBIx5oBDYkU/aewc6f5JE8SWuAvye5JTtRGlI
 hhogPKXynaGmt6O8xTlxII3P1g==
X-Google-Smtp-Source: APXvYqynuOkbfAC0AhKxa/6O406C88xYMYBgSclcHi+aRhHzpp8zNprB077N+wPTHSrYD5VnfUJ2+w==
X-Received: by 2002:adf:ebc3:: with SMTP id v3mr34841384wrn.280.1580286256970; 
 Wed, 29 Jan 2020 00:24:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n14sm1351931wmi.26.2020.01.29.00.24.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 00:24:16 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 29 Jan 2020 09:24:06 +0100
Message-Id: <20200129082410.1691996-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200129082410.1691996-1-daniel.vetter@ffwll.ch>
References: <20200129082410.1691996-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm: Complain if drivers still use the
 ->load callback
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
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Harry Wentland <harry.wentland@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Kinda time to get this sorted. The locking around this really is not
nice.

Thomas mentioned in his review that the only drivers left unconverted
are radeon and amdgpu.

Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Alex Deucher <alexander.deucher@amd.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c | 6 ++++++
 include/drm/drm_drv.h     | 3 +++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 7c18a980cd4b..8deff75b484c 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -948,6 +948,12 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
 
 	mutex_lock(&drm_global_mutex);
 
+	if (dev->driver->load) {
+		if (!drm_core_check_feature(dev, DRIVER_LEGACY))
+			DRM_INFO("drm driver %s is using deprecated ->load callback\n",
+				 dev->driver->name);
+	}
+
 	ret = drm_minor_register(dev, DRM_MINOR_RENDER);
 	if (ret)
 		goto err_minors;
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index 77685ed7aa65..77bc63de0a91 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -173,6 +173,9 @@ struct drm_driver {
 	 *
 	 * This is deprecated, do not use!
 	 *
+	 * FIXME: A few non-DRIVER_LEGACY drivers still use this, and should be
+	 * converted.
+	 *
 	 * Returns:
 	 *
 	 * Zero on success, non-zero value on failure.
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
