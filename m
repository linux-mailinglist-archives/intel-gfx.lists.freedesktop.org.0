Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4B5787C31
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 01:56:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B93CA10E5F2;
	Thu, 24 Aug 2023 23:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1BE310E5B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 23:56:40 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id
 2adb3069b0e04-5008d16cc36so508312e87.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 16:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1692921399; x=1693526199;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LTYtN9ceXzi2tGhWn5q5e7ybJcm3lf5yDMeSzJkSqgc=;
 b=m7m5bNqRLv2ildg7ypzCSl7pzD6YQ2ACEiyr/aKLXnvX3zq0mVdsOmy1hyaXDPTLzr
 zOWOCUphWttuB6FiZXKEhy87cyNgL2D1hV6fTPfHItg17mDtCwf98piLHMJMyUgngLUp
 dgl/1kiB3BWEnz3tz1DEQozj7XEpxfJicBRXlzxlODaHVg3R7gu454pBuSToDWNJCOB7
 0+3/7VVaIH2R5TD0GzjfXnJPohKpfKbnQxmevWCZauIJDji+Hp00214wfkZhRZNb8o+P
 RFflNDxkDvkg1U9NFB2E9dOMyOWu7Uwd9cKnHxMwYJbcMXPRD7Tv60s7TxgLFmQwxzqz
 VJpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692921399; x=1693526199;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LTYtN9ceXzi2tGhWn5q5e7ybJcm3lf5yDMeSzJkSqgc=;
 b=c/idZIwGj+5ZH2ByN2MPRz3eWKrzc8fefeXWIZ9D7U8PUfqmLqR9R1kBOLdwHPio+L
 qSPzWX40ZQDCVf+lZAtdEkdxwHaQ40JBfuLcKXQdXU/DiYRHGuypBEGFevFPPO3XvJoD
 phRr9FlG2EMVUWT4JsYKymJYTrQ8NgFWqGEAYRjW840xlEfiV8BjSTnQf1EU+wCPclKT
 LkGizc3qbr+/uQuJLKHmG91g+z9uAuIwsNVjlUE0TsjUnoaH0KHlKmSRKfAJtKUAaODI
 qqaei0vY0WPt0xeZUSV/f8TJxJ5aTxr/hUvQvyO9KabSCzlmtgvJd8C7eTUNql4s42Xn
 TG5A==
X-Gm-Message-State: AOJu0YwJSX0zAaAyZLo6FyVF3sQq6aOLRrpYi7Shp0jZ15lWdvIVZv6w
 OY2vox0FHfnmg2ua/cR2BS1Uow==
X-Google-Smtp-Source: AGHT+IFizGXMYtPScMpdaqAAyY6sRQci93Si1x89ooTa46j60daVoKvz7MNehQcrSUwt2XRoMucG8A==
X-Received: by 2002:a05:6512:31c8:b0:4fb:9772:6639 with SMTP id
 j8-20020a05651231c800b004fb97726639mr13796882lfe.6.1692921399056; 
 Thu, 24 Aug 2023 16:56:39 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
 by smtp.gmail.com with ESMTPSA id
 j15-20020ac2454f000000b004fe5688b5dcsm57900lfm.150.2023.08.24.16.56.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Aug 2023 16:56:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Fri, 25 Aug 2023 02:56:35 +0300
Message-Id: <20230824235636.1436665-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824235636.1436665-1-dmitry.baryshkov@linaro.org>
References: <20230824235636.1436665-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 2/3] drm/bridge_connector: stop filtering
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
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Simon Ser <contact@emersion.fr>,
 intel-gfx@lists.freedesktop.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, linux-arm-msm@vger.kernel.org,
 Janne Grunau <j@jannau.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In some cases the bridge drivers would like to receive hotplug events
even in the case new status is equal to the old status. In the DP case
this is used to deliver "attention" messages to the DP host. Stop
filtering the events in the drm_bridge_connector_hpd_cb() and let
drivers decide whether they would like to receive the event or not.

Reviewed-By: Janne Grunau <j@jannau.net>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/drm_bridge_connector.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_bridge_connector.c b/drivers/gpu/drm/drm_bridge_connector.c
index 1da93d5a1f61..10b52224db37 100644
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
 
 	drm_kms_helper_connector_hotplug_event(connector);
-- 
2.39.2

