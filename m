Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB17E5183E4
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 14:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D172510F8A7;
	Tue,  3 May 2022 12:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFACB10F0C4
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 16:51:32 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id l203so15813249oif.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 May 2022 09:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JqXm5mzS8kpBJUgP9sXYQo0gKUg4rwrNT1MkEiMwhzo=;
 b=lpW8N5V4XnUE73nDbYRQGdRm84nw4f38tWrteoB+Jo5jt6mSYmIEMPtazkjTdkKOh4
 JK3ITJ6d4skY4rt1f89ucOlLrxurvr3KYqmzeoH28FyS9VxP4XVwqz6YUBAFx1DwnVN9
 3TzV6pgQkrzLD4GqQ7G3qEH+mSYC6a2JkHNJq4J/82rwoNNtyWwl3ao2IggjKBXn70Kx
 QxqeZa05dRB5KrH1Ox6abxI78yaC3yyXIl6rOkaKCy51t4JSEz2b7DU3NSYESNPjvy+m
 OHQ8xEoLGTthxG1QZ0A6Ag9qF5GdN8hB+LRLyQpohxy8Mm2+sVTktcd0Ml2BgS8WliMe
 Pc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JqXm5mzS8kpBJUgP9sXYQo0gKUg4rwrNT1MkEiMwhzo=;
 b=RUO2n3TUPhqbtxJXVGX3WnGORHtGTss25tuBKFQG0bvH+Y7msiw5fTPvXYu/Yj5m6S
 L2b2rxQrSzJbo6a0Lj4ydHMYVUvJkMygbrMtVNvDJLkfVBtbWr5Vev5LcAtryEHAYvkf
 53qxBu2gTdoOlKmqqfXQgBeQGjQ4U6huwZQFs6A6boi3MEF+DtCmrbT6glajtWqLmnSr
 PjyeyY57r9yLbuR49gLHdr68BHkO3aUb29lZrkP5v1Xl/bYsAKGED0BKMzejnFfFD9Jn
 jm5mf7siL8qv85eQL1T+B1sbbZ5bVSmwZAdAEt3SrVR4K5u6W8CvBUcM1AjTSPnrKjuh
 2yfg==
X-Gm-Message-State: AOAM533dJlZ7KQXthrzagKmhV0cdj8tmRr5cJAkQ/Ncs+I9iQeCXqrER
 dNTA9PI8b0TkeIsxl9lbEWA1RQ==
X-Google-Smtp-Source: ABdhPJyPEJV83XhQIM3m+EnnISwGK0X+EtqC8xYaJoRK12XrkaKDo9qmfW3qOlfv8+YsIKYkTfE4kg==
X-Received: by 2002:a05:6808:1b06:b0:325:ebc4:f391 with SMTP id
 bx6-20020a0568081b0600b00325ebc4f391mr26286oib.288.1651510292134; 
 Mon, 02 May 2022 09:51:32 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186]) by smtp.gmail.com with ESMTPSA id
 h11-20020a4add8b000000b0035eb4e5a6ccsm4029422oov.34.2022.05.02.09.51.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 09:51:31 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>
Date: Mon,  2 May 2022 09:53:12 -0700
Message-Id: <20220502165316.4167199-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220502165316.4167199-1-bjorn.andersson@linaro.org>
References: <20220502165316.4167199-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 03 May 2022 12:03:05 +0000
Subject: [Intel-gfx] [PATCH v4 1/5] drm/bridge_connector: stop filtering
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Stephen Boyd <swboyd@chromium.org>,
 freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

In some cases the bridge drivers would like to receive hotplug events
even in the case new status is equal to the old status. In the DP case
this is used to deliver "attention" messages to the DP host. Stop
filtering the events in the drm_bridge_connector_hpd_cb() and let
drivers decide whether they would like to receive the event or not.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v3:
- New patch, needed due to the move to drm_bridge_connector

 drivers/gpu/drm/drm_bridge_connector.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_bridge_connector.c b/drivers/gpu/drm/drm_bridge_connector.c
index 6b3dad03d77d..0f6f3f653f65 100644
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
2.35.1

