Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D06767A11
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 02:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134C610E7BA;
	Sat, 29 Jul 2023 00:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8406310E7B4
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 00:49:18 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id
 38308e7fff4ca-2b9b6e943ebso44679251fa.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 17:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1690591757; x=1691196557;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DeTSuwZPlptjGhIuO9GsGe/aAqJgvkK628OoK+PRdAE=;
 b=VsttY5+SOr9fF9DKFAkD1fpnsZIU2pLzIzH48JAnNTF5WLWlpLyduf34wSQbvaNWAb
 q0T98HLRjion0v+Y7GwNdbH2nO50r6azAiH0r5Frq1ZaCCH8lItorpS6m2+vQR62eH9A
 yCcuwR3l9OiBfirFtuZ7x38cXj0lPnJHQNKLKigfGi84TTJgUD4g3GhZP3EK0oE51Ey5
 dYiVwpdI8VzxFLpdaBvu+EZApctr+dAKbxBXZzNoF5/W7MeqLK177oiDz4ESd7tEX8gi
 2Otd6PUFptJhMXbFJrehHaYdH0YZ4JJ8iqOxiPYAmbgnXuoHCYlwShe9sd7G0vTI7HkK
 PLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690591757; x=1691196557;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DeTSuwZPlptjGhIuO9GsGe/aAqJgvkK628OoK+PRdAE=;
 b=MH8IKpVT4o8Gm2HcOylLnBLs9e4Af6Ee6HeGBraJTXuw6NEbWY1PcLHYZyrJETm8IB
 h1IDEQbRHdeDKtmt5I2kuw4HGytCnI0M5L1Nr5rlqAI4q2n0H9DnEz28UHugWu9loKC2
 G0MVTDAzu184lK0dtVEGeo0yk3CSMLB5JzzkIRREwoRxTw8/0BPhSu+vwdOglx5LKaeJ
 oFXG2zORxCWCM9WBBMwuaweIi7BwOL6pIm8sztnXPBe/iW1fNO/N/a1UI/2jPuiTuLhh
 5JJqNGx+6Q+c1KPD02nHAU8Qnho7NDn7GDKu0Z7eeThzxC+Ca5ZXc57wxH5y64v/rdFS
 Rd7A==
X-Gm-Message-State: ABy/qLZiX7iyH50cwszQRuY6VtRgVp13k+7pNmrIPFaix9H+hh3ldDlk
 ZRc4KYiO4wtOj36k8CAlBj9dgQ==
X-Google-Smtp-Source: APBJJlGnkBGsncWn163VGZiB6FNproqXBRlBWlgFqMTpY6qxbaEinFwvcwwZIU85m+UD+VdKOfxU6g==
X-Received: by 2002:a05:6512:2825:b0:4f8:6d9d:abe0 with SMTP id
 cf37-20020a056512282500b004f86d9dabe0mr1946529lfb.33.1690591756849; 
 Fri, 28 Jul 2023 17:49:16 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
 by smtp.gmail.com with ESMTPSA id
 a24-20020a19f818000000b004fe20d1b288sm500702lff.159.2023.07.28.17.49.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Jul 2023 17:49:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Simon Ser <contact@emersion.fr>,
 Janne Grunau <j@jannau.net>
Date: Sat, 29 Jul 2023 03:49:12 +0300
Message-Id: <20230729004913.215872-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230729004913.215872-1-dmitry.baryshkov@linaro.org>
References: <20230729004913.215872-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/uapi: document the USB subconnector type
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

To properly define the USB-C DP altmode connectors, add the USB
subconnector type.

Suggested-by: Simon Ser <contact@emersion.fr>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/drm_connector.c | 1 +
 include/uapi/drm/drm_mode.h     | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index a6066e4a5e9a..9e96b038f5d0 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1050,6 +1050,7 @@ static const struct drm_prop_enum_list drm_dp_subconnector_enum_list[] = {
 	{ DRM_MODE_SUBCONNECTOR_DisplayPort, "DP"        }, /* DP */
 	{ DRM_MODE_SUBCONNECTOR_Wireless,    "Wireless"  }, /* DP */
 	{ DRM_MODE_SUBCONNECTOR_Native,	     "Native"    }, /* DP */
+	{ DRM_MODE_SUBCONNECTOR_USB,	     "USB"       }, /* DP */
 };
 
 DRM_ENUM_NAME_FN(drm_get_dp_subconnector_name,
diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
index 92d96a2b6763..0f74918b011c 100644
--- a/include/uapi/drm/drm_mode.h
+++ b/include/uapi/drm/drm_mode.h
@@ -398,6 +398,7 @@ enum drm_mode_subconnector {
 	DRM_MODE_SUBCONNECTOR_HDMIA       = 11, /*            DP */
 	DRM_MODE_SUBCONNECTOR_Native      = 15, /*            DP */
 	DRM_MODE_SUBCONNECTOR_Wireless    = 18, /*            DP */
+	DRM_MODE_SUBCONNECTOR_USB         = 20, /*            DP */
 };
 
 #define DRM_MODE_CONNECTOR_Unknown	0
-- 
2.39.2

