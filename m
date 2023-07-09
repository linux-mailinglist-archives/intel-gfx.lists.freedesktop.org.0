Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDD574C0AC
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Jul 2023 05:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9DB10E11D;
	Sun,  9 Jul 2023 03:42:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3822A10E128
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 Jul 2023 03:42:17 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id
 38308e7fff4ca-2b701e41cd3so53124811fa.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 08 Jul 2023 20:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1688874134; x=1691466134;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TJYjNiYNzWjxH+XhoyNFMKctuYtv2+kbNIyIzjM3yLU=;
 b=j98con11pP7sdzRlNNWpVvpwOmK6q98t4lmleVYXmYLIcnuYXj36vwUVH6gRPSuNXH
 hvk6McZqYZMu+O7/bKYauksX3s2YRPgvw779Ae3M2ukE1zcR5uXK1WG6/N1s1tg5d8kI
 B3G0eZE0zrMbI3PWnb+xgmSJCvdRRkKbIIoYpm+GHSQmFCtXZL7JCJpNL8FUdq5vvgPV
 C0KctOtqx/fKRwI3Ysr7fsjNJoJPitmf2IAmtS+Hj/XF7k3lawv0jASnUQNGMfUwtzYx
 /TfZRMyH1hSyuwi/UAjvp+NfWNVzjn7BHwE6iOqHjYJdTbG+IsNd8JInQQnt78XqDGmH
 cHzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688874134; x=1691466134;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TJYjNiYNzWjxH+XhoyNFMKctuYtv2+kbNIyIzjM3yLU=;
 b=SqZ0mHNoh6juaHllZee92k5HGwUEoaI59sRUr7Ql5koGaXssxnKjPwH9zVEzfOCyDc
 2D961HxfJZi2+g1TyUg+Xfu4HN2ZodfUpyqCbSg6hPVjax7MRn1ZJ9fHS9zo3/DVrx39
 X4OJY/npYxnfAo1b7zYvFDSUO3mzUUpyw8pWXGoOxTjlY66QLB5jW/LRJ4HombwPV8ch
 SI3Iv2GqTeowYylcVXsnAhVhrHmLCmQRPKK8Tv5PqODJ6ZgWnyty9B+6RM7lUe2b720B
 kGNzkfyUoXclzRDqcUk7Lpj9Yv+Z574VUI+4gcgXqlg4/Dkkp5QFYLH0aYXfzDgbVS4E
 pr0g==
X-Gm-Message-State: ABy/qLbeaVDrhqihaWbwc34R0JeLF53acwRDWKaTjzP8uScONHXZtTyd
 mcRrMtKw0A06WlubBYcXlVS9ug==
X-Google-Smtp-Source: APBJJlEFwjopZbeqkrh82suxe7jo8qJQ0dOe7Qudk5a/sj1MHOxSDaQ5FPYIa7FHlbwt+yhdoHwlpQ==
X-Received: by 2002:a2e:9902:0:b0:2b6:cfec:69f7 with SMTP id
 v2-20020a2e9902000000b002b6cfec69f7mr6739101lji.1.1688874134116; 
 Sat, 08 Jul 2023 20:42:14 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi.
 [2001:14ba:a0db:1f00::ab2]) by smtp.gmail.com with ESMTPSA id
 y13-20020a2e9d4d000000b002b6d7682050sm1390289ljj.89.2023.07.08.20.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Jul 2023 20:42:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Sun,  9 Jul 2023 06:42:10 +0300
Message-Id: <20230709034211.4045004-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230709034211.4045004-1-dmitry.baryshkov@linaro.org>
References: <20230709034211.4045004-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/3] drm/bridge_connector: stop filtering
 events in drm_bridge_connector_hpd_cb()
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
Cc: freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <andersson@kernel.org>, linux-usb@vger.kernel.org,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In some cases the bridge drivers would like to receive hotplug events
even in the case new status is equal to the old status. In the DP case
this is used to deliver "attention" messages to the DP host. Stop
filtering the events in the drm_bridge_connector_hpd_cb() and let
drivers decide whether they would like to receive the event or not.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/drm_bridge_connector.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_bridge_connector.c b/drivers/gpu/drm/drm_bridge_connector.c
index 19ae4a177ac3..84d8d310ef04 100644
--- a/drivers/gpu/drm/drm_bridge_connector.c
+++ b/drivers/gpu/drm/drm_bridge_connector.c
@@ -113,16 +113,11 @@ static void drm_bridge_connector_hpd_cb(void *cb_data,
 	struct drm_bridge_connector *drm_bridge_connector = cb_data;
 	struct drm_connector *connector = &drm_bridge_connector->base;
 	struct drm_device *dev = connector->dev;
-	enum drm_connector_status old_status;
 
 	mutex_lock(&dev->mode_config.mutex);
-	old_status = connector->status;
 	connector->status = status;
 	mutex_unlock(&dev->mode_config.mutex);
 
-	if (old_status == status)
-		return;
-
 	drm_bridge_connector_hpd_notify(connector, status);
 
 	drm_kms_helper_hotplug_event(dev);
-- 
2.39.2

