Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E21574C829
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Jul 2023 22:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B9210E139;
	Sun,  9 Jul 2023 20:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1025C10E130
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 Jul 2023 20:25:16 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id
 2adb3069b0e04-4fb94b1423eso5435986e87.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 09 Jul 2023 13:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1688934314; x=1691526314;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TJYjNiYNzWjxH+XhoyNFMKctuYtv2+kbNIyIzjM3yLU=;
 b=dNbFYDDOpfu3/30IkacmEnAuX8CK9yjZLUV6BzUnhf+Xu3xuyi4MyekvEQTGbKHNN7
 0Bang2RpWbwtVKEvWZLIju6Tbs4cCFXquItHCpo9RYYeO4qGP/DxylkufphyMdzJ+rT2
 8RbiGPng+THaC8+Z/pFbQMZPd6V2A2xzq5WINmMpDqvgYzsUtLmNlmARWoGWIyHzPiHn
 qMg23FI/nIAvgxv+75Hus3tG7p9KUMM1VJd7apsQPsWrVnhvi7AgqFKawLrG4QA9PW5G
 CjjgpQ8nWqoFdpPrpMr162eHezlo92Df3TqsvIrB27b3wJN/ljJi5+qnyGgU9QxPeWni
 0OTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688934314; x=1691526314;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TJYjNiYNzWjxH+XhoyNFMKctuYtv2+kbNIyIzjM3yLU=;
 b=lMPHF0FjpKeFUzqmPxsav02oJlgullm1u6iszoWEwMahqjeDPGsi88BWAPriaFmjEa
 daTanr02u1u52eUNbZukVr3H+VgIq4uCmgYUTVl+zvurLcGixDAHobwHBFYA2ABnbY1j
 LBYTZ0rqZ3ZW/1mM/OofulHn0YXkpiNm6eFSKSWYkEDidMyVVNvnTO7MRB5QDF8dLAM/
 WEKslbh7kuY1lddQE4LtT3UXcuurkCfc+rLkqddPhG0otQS8aQosPNjHx5vNXxebtxLF
 TcQr3xkQwI0cqW7vw4wOs1NnPhLmalXK94kdvnFsQFkrq7D2HsebJhhrBqv32MslCI3o
 ct3Q==
X-Gm-Message-State: ABy/qLbTg2vahnZtxadUlXpTremlLVdJA2UjEkjDjJ4DBhEnjy5tFKk7
 h2GIASzkvTCEIeOeUtRrFXUa8g==
X-Google-Smtp-Source: APBJJlEmPdDgTcOcgJy1Svh3J1rW749yo7h2edRtD81ukwCUxhzygq9W5ZfYJtHiWlfYaIFc8OBLdg==
X-Received: by 2002:a19:6601:0:b0:4fb:7592:7e03 with SMTP id
 a1-20020a196601000000b004fb75927e03mr8096173lfc.20.1688934314774; 
 Sun, 09 Jul 2023 13:25:14 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi.
 [2001:14ba:a0db:1f00::ab2]) by smtp.gmail.com with ESMTPSA id
 8-20020ac24828000000b004fb771a5b2dsm1428774lft.1.2023.07.09.13.25.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Jul 2023 13:25:14 -0700 (PDT)
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
Date: Sun,  9 Jul 2023 23:25:10 +0300
Message-Id: <20230709202511.287794-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230709202511.287794-1-dmitry.baryshkov@linaro.org>
References: <20230709202511.287794-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 2/3] drm/bridge_connector: stop filtering
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

