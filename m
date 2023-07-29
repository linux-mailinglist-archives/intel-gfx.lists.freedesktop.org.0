Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1879767A15
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 02:49:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88FE110E7B8;
	Sat, 29 Jul 2023 00:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA3E10E7B7
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 00:49:19 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id
 2adb3069b0e04-4fe07f0636bso4643305e87.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 17:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1690591758; x=1691196558;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Z4eWv/RBKDrUWJz/NgxgnDtpmPraqNg6YmnPUdo6m2g=;
 b=N3mjaft3MQV1yRXyfPi2iqaPLWvhVHh4gqB42zE/W1dUgVEnfElR9yNSOnZbcLoE7Z
 3Wqv8SHYL5qqtavRCDfrJLP12G4A++nHyh2t4tidt4i/Cub5ra/SxzItim7vO+fipwL9
 VAqHEdlWQGd/rrzEj3jmyQNMJ/1UCGP+pja+sYoWicwVjaiOG9KXv1lWan8R6To0qbad
 ylVg1UlCZzLSYYzYMHYkiiGi90iOqcLgzpI2MXJmbbJUBWSp+DHxx2P/67aoVYo72dos
 wR70cBJD7SQVY6+6IHRVLM5PvYfemKGNxQjCXRqerEowaQGBpT0KLOCfMD97UwkOF4/R
 93mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690591758; x=1691196558;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Z4eWv/RBKDrUWJz/NgxgnDtpmPraqNg6YmnPUdo6m2g=;
 b=f/VBBS4ut6RBx6ylsC8mL292CvGpAX3mtUSRc7L47F1HWgYVOXfh26XNxB2JDbAKMu
 VVtrFXn8fnYbdpydIa5o4l5TYRdFmvhqqX5QX6S+S1LRLrSlbAzG892bYIcjPhqiaW1V
 VzjKIbU3y/c61FQyaj/oBvt6KsWsVh1E9L9JVy6YIkAKUevN4rJ30G8vJTZT/J4q+7zA
 +fiM37a7erwfADeFJjL7IhXJ99iFOY3WSZeJYTYVnDDuMxnWSsDgUBc+UtAtg01g+IqY
 yzKXtWyuFwxzA2X6QLn3Jut5iC4osihx/G7Yd6MS6sLyj//yf4wT0yHnhBBXiQbotq5Z
 tACA==
X-Gm-Message-State: ABy/qLZDTTgOPQiPL4cJClniyREWuBD1KYlgdOHWiOhnPTX/jg7RaWlU
 Tiyj0+PGwIpOk+1FVxfnkTFjmg==
X-Google-Smtp-Source: APBJJlH3hanHEvBgr++jOJubmsB65dIQxl3i8dLk9WO0Yl8D2xONZbjmFiJz42HIJIcei2b4Pyrowg==
X-Received: by 2002:a19:ca15:0:b0:4fe:ee7:a32a with SMTP id
 a21-20020a19ca15000000b004fe0ee7a32amr2516420lfg.16.1690591757890; 
 Fri, 28 Jul 2023 17:49:17 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
 by smtp.gmail.com with ESMTPSA id
 a24-20020a19f818000000b004fe20d1b288sm500702lff.159.2023.07.28.17.49.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Jul 2023 17:49:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Simon Ser <contact@emersion.fr>,
 Janne Grunau <j@jannau.net>
Date: Sat, 29 Jul 2023 03:49:13 +0300
Message-Id: <20230729004913.215872-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230729004913.215872-1-dmitry.baryshkov@linaro.org>
References: <20230729004913.215872-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] soc: qcom: pmic_glink: properly describe
 the DP connector
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
Cc: intel-gfx@lists.freedesktop.org, Leo Li <sunpeng.li@amd.com>,
 dri-devel@lists.freedesktop.org, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

During the discussion of the DP connectors, it was suggested that USB-C
DisplayPort connectors should have DRM_MODE_CONNECTOR_DisplayPort
connector type. This follows the example provided by other drivers
(AMDGPU, Intel). To distinguish them from native DP ports, they should
have the freshly defined USB as a subconnector type.

Suggested-by: Simon Ser <contact@emersion.fr>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/soc/qcom/pmic_glink_altmode.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/pmic_glink_altmode.c b/drivers/soc/qcom/pmic_glink_altmode.c
index 1dedacc52aea..9094944c6cc0 100644
--- a/drivers/soc/qcom/pmic_glink_altmode.c
+++ b/drivers/soc/qcom/pmic_glink_altmode.c
@@ -417,7 +417,8 @@ static int pmic_glink_altmode_probe(struct auxiliary_device *adev,
 		alt_port->bridge.funcs = &pmic_glink_altmode_bridge_funcs;
 		alt_port->bridge.of_node = to_of_node(fwnode);
 		alt_port->bridge.ops = DRM_BRIDGE_OP_HPD;
-		alt_port->bridge.type = DRM_MODE_CONNECTOR_USB;
+		alt_port->bridge.type = DRM_MODE_CONNECTOR_DisplayPort;
+		alt_port->bridge.subtype = DRM_MODE_SUBCONNECTOR_USB;
 
 		ret = devm_drm_bridge_add(dev, &alt_port->bridge);
 		if (ret)
-- 
2.39.2

