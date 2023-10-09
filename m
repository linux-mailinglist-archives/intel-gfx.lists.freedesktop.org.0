Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B357BE87A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 19:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9D710E2A6;
	Mon,  9 Oct 2023 17:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD6B810E2A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 17:40:52 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id
 38308e7fff4ca-2b95d5ee18dso57648961fa.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Oct 2023 10:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1696873251; x=1697478051; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0bclGRwuWLHVjQHCsBos6jKdQfEdG5WbxRNo0rlhZFc=;
 b=pwIV9GZ1SXNzPJUWNmFEUW7DPSG3GNlY2TEHru2mOyRRksAFDB7j0tluOfoCJtGasC
 cJGgA7t+3nNBBW9sHC7GMOk5sgJ0eA8AbNLXUbBPzqcNehbvuRzTaGJOsMAGlmMmlZKf
 0yAUk+qD/g124qZh6t6ue1jRbrx5N/Thx0QB3AytqsBvPLx+cD0qtphhr1GuVfrpqkju
 7GOTTbxiYqodeL6KNof3EdhnUuy/ZS18EiGe78eX7UqgrytTDgesF/TNnrbvMEh8tCOJ
 O371XT4V2TejDTub8bOi7ASa+TKiUZ00iHFxjtCi17Jwvj2Xk2SgWw6wLAoVX8XgBO2F
 YX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696873251; x=1697478051;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0bclGRwuWLHVjQHCsBos6jKdQfEdG5WbxRNo0rlhZFc=;
 b=kZPCUuSqAiRP6u2xerJ0klQpLqyreG4rmWHEB2mdD8i6aLzGfl973ovLM0gTu3EOK4
 qEPyBo45lR+IX5YB6TNiW8ErnWIuencRdJXv7SIzMt4v8GmIMV/p7Phnn+b46PwvYsBK
 nZ8rAvdpW1An+YgL5Jg+DeBtZaMORY66DV9ods294X+gpG8Mozjdhbu07pHlgcs646gf
 sLQuq9LpyQBRY+WcuYccwm1OZRFxAfBXmLVNLsI5wm9XdvwtyoRjnWhJnIAVtv4Vm0+T
 F+h4S9ugsowjThpXbYbl2BnleZThT0WVNmruaaX+X6CRkPIeMBmnv70PXzbI0twRMg3G
 r5cQ==
X-Gm-Message-State: AOJu0YxyFASco1e9fiylYMhKXszH0ZuwougHTu+JOFE9/JrA62Gznwfy
 tJxy0Vco3pJkOguMwT5kciZicg==
X-Google-Smtp-Source: AGHT+IGY96Dx/DKFkz0wGbbKAQL8l46PHp6xMHBL/SRiJTJrxohlqg7G+rNmpZIOvsxiSXs3LsePdg==
X-Received: by 2002:a2e:3612:0:b0:2c0:293c:ad12 with SMTP id
 d18-20020a2e3612000000b002c0293cad12mr13040999lja.17.1696873251002; 
 Mon, 09 Oct 2023 10:40:51 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
 by smtp.gmail.com with ESMTPSA id
 z5-20020a2e3505000000b002bcbae4c21fsm2128988ljz.50.2023.10.09.10.40.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Oct 2023 10:40:50 -0700 (PDT)
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
Date: Mon,  9 Oct 2023 20:40:47 +0300
Message-Id: <20231009174048.2695981-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009174048.2695981-1-dmitry.baryshkov@linaro.org>
References: <20231009174048.2695981-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 2/3 RESEND] drm/bridge_connector: stop
 filtering events in drm_bridge_connector_hpd_cb()
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
 freedreno@lists.freedesktop.org, Janne Grunau <j@jannau.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In some cases the bridge drivers would like to receive hotplug events
even in the case new status is equal to the old status. In the DP case
this is used to deliver "attention" messages to the DP host. Stop
filtering the events in the drm_bridge_connector_hpd_cb() and let
drivers decide whether they would like to receive the event or not.

Reviewed-by: Janne Grunau <j@jannau.net>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/drm_bridge_connector.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_bridge_connector.c b/drivers/gpu/drm/drm_bridge_connector.c
index 31baf1f5ff81..70582491d955 100644
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

