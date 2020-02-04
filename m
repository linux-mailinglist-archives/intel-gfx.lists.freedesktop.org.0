Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3359A151CD8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 16:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21BAC6F389;
	Tue,  4 Feb 2020 15:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198206E84A
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 15:01:54 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id a5so3680105wmb.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Feb 2020 07:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AnvVhyRRmoo/xlkf99eP9Y/JmLE54NitcFMa1DSVDVE=;
 b=guLxpq9YWNK4td29iHkHWjNcPqxNgrWrKsC61f/RJ0jXDBVJb9ZICSLM6LiFqmzHC9
 K0v6sEFo4xuh/qSyn5jaEOnQuTEFU6MLJBVgDT8S4FcKRJG9N2WFQTrC7nlugay4u2ma
 rIweAaqH/SmJzN7gHKp7ViZ1GGUeDp+zc/FEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AnvVhyRRmoo/xlkf99eP9Y/JmLE54NitcFMa1DSVDVE=;
 b=As6BehdUMt1rwW/bMTIY7TZH1FY3h4jtQUAWXuPELYC2oQTiN81NMfZnZUV84C9OaI
 y6lYUNqAy86NfD5e14vCj6WbUJ53PrnNN769Wbgn+DwqnuhwhPPCoVtQLSPmsslZa9t2
 2eaSGGZJ7rKl24B24aGaQoVhwUI7KFpgbMOHMag2ovcBTYFfY4EsvSYVeFD4ee+2hm7M
 M9vqzETZeSfRw9/Qmu7tnf6Vn8SML3gnt+guW9OeJ0miJqSTdXC/Z16yWHozhoJNuQA2
 LiLowg53tCOfa0N3U/auIGPJ6gelExmsFZhKDSc5H8oNIu8Vrs6dKfjQuUEn9i0eCcik
 Xq9A==
X-Gm-Message-State: APjAAAUF1marsb1Ow8kxq8N5kYW2lPTYp5qGWFxmxlki0PDZzKH+4liH
 MFzWbSIXCEbOCSNuzfAUsClK4eTFYDCQAw==
X-Google-Smtp-Source: APXvYqwjlUsg/69IQMSeVm7161HHo9ZICfP0uy0rGBxzVn9uB86IfeoEQco9TR0LutKu7FDhurLtXg==
X-Received: by 2002:a05:600c:1007:: with SMTP id
 c7mr6152892wmc.158.1580828512801; 
 Tue, 04 Feb 2020 07:01:52 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d9sm14428921wrx.94.2020.02.04.07.01.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 07:01:51 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  4 Feb 2020 16:01:42 +0100
Message-Id: <20200204150146.2006481-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
References: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
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
