Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B25A9E6AD1
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 10:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC3410F098;
	Fri,  6 Dec 2024 09:43:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="EVqwNyid";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5759D10F097
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 09:43:37 +0000 (UTC)
Received: by mail-lj1-f174.google.com with SMTP id
 38308e7fff4ca-2ffc357ea33so16941711fa.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 01:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733478215; x=1734083015; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=IK1o74pdns8MHUCAUXuevFOWZGOyLWsbPpjGiW0nUAA=;
 b=EVqwNyid0fV/hmK4ce87DXfuUm802GHydvgXUkPZfV2RJlRBwDmbSNvhK7dcxLMqVO
 KgHGqiU4Od0l/R39jrYZpcMZ7sWNpjdplFGR7HWsfV/IS/H8izApI4IpDkEpDcOpOJy+
 BSDX2ujNDJEwALDPVTuciyL9BaFKqklHI0yXXbg3gVQPh18B1UY13lRaPeEtN7Bo4N6Z
 8HfXMLmLS60QJ2yKPQSYDSzYlfhcXl0D0MaRSWripRBtJLemM+kLRJReZzlTu3aAnYPg
 ADPnYh2ohCJCnbqu/+D2rvThShcLL8rY8b/oXH0HBlgS2ZPS8m/me5IZOSDVi//ztcE6
 Ud4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733478215; x=1734083015;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IK1o74pdns8MHUCAUXuevFOWZGOyLWsbPpjGiW0nUAA=;
 b=PGP7OfZ2aI+hAd8glsmK4CKoJ79vX7bjlKud8skG+d6ADetiADEIVKLfvH/C0sFzHD
 1vatceqFFzzT2R/cSKQZ1PXhCfGGvtj0sTDGU1p6WxAgf3AKcP/wYkCeIQ0DOQeS5Xyn
 FRvhE7HUlPV3xvoo8MRWbOQKJg+GD1+csk9ptVD2C7UQZeOX1jErSsSkSCTI+W7FzonE
 pvQvUrbCEDRXD1Hj8QQGnP+tW7+uQGLj9g4l/dWgGv3URwjdEEFCIQ818UG4XfogYR3N
 8KQdJdiaPs/F7DbZPs9KDLwSvpmv65ZM4PQGUiF3iTalg2G3foWyzOXx/QtaiTBbaqCy
 aBlA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWl0cRRTNSpkb03+jeefQjRXbXglqYdnGH5CgdG5Xj9cQ4HbfPpvW98JyhhMgV/x9x4XVwW+0C3inQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxOTc/NBlxKLHohpIZ+/AhWd2e4iz0FQv4PpbdjUahXXdRuDPw4
 nTjFS7NhZ6EzoK0h78IK8ahsx/HsFpkwbqzpPkK9CQl87L1y/5WFK0WAcvcRRWY=
X-Gm-Gg: ASbGncvAJytFAuv9Y/p/JC/XFbwf5gNUH7dn7vMviPbDcLMFlaGChSvgfH4R5FhwO5K
 9hdQfhIAHaXZgicTk+bx5mstLjcnmoyhCH51dTHa0GZ34Rcn7AWoJ/Z/I+UB/81wTGELtuDBQGI
 Hu+5j4pmNTYzIl0fsZ950Ym8RVc30AovlV25wd4TcsIclwjn/zcPb0hMJYxdM2w/LGOo+blupIJ
 Ze6UuAMFf5u/SheiZOiyAzBeUWXOBG6kwx0mK73wztFEEy3o/bphp7JfQ==
X-Google-Smtp-Source: AGHT+IE1jgPInMsiwRYU6/dysOt31sV51cEwkXMndrxO+i86Jp4v1LOQAej8bchTiqXotmvpJS013A==
X-Received: by 2002:a2e:9a0e:0:b0:300:1dbd:b252 with SMTP id
 38308e7fff4ca-3002f688872mr6560751fa.7.1733478215436; 
 Fri, 06 Dec 2024 01:43:35 -0800 (PST)
Received: from umbar.lan ([192.130.178.90]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-30020db3805sm4128441fa.50.2024.12.06.01.43.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2024 01:43:34 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 06 Dec 2024 11:43:13 +0200
Subject: [PATCH v2 10/10] drm/vc4: hdmi: use eld_mutex to protect access to
 connector->eld
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-drm-connector-eld-mutex-v2-10-c9bce1ee8bea@linaro.org>
References: <20241206-drm-connector-eld-mutex-v2-0-c9bce1ee8bea@linaro.org>
In-Reply-To: <20241206-drm-connector-eld-mutex-v2-0-c9bce1ee8bea@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Xinhui Pan <Xinhui.Pan@amd.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Phong LE <ple@baylibre.com>, Inki Dae <inki.dae@samsung.com>, 
 Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
 freedreno@lists.freedesktop.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1109;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=MWBHkdOEPsNn+qx18lkyYR76WN4/LOkeB2bs8gaz3L8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnUscvPX017OK5vH3lmiCwL7kaJ0UcI+IYa3uXe
 18ffiiI2Q6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ1LHLwAKCRCLPIo+Aiko
 1TqVB/4m/VFWpZc/Kltqn587dwO8poPOaD02T82hJ5yhbMgXNJJ4xBgopTLH+t6y1qLkjWvPRa3
 +noOhRXSMbmizw9O0yVwv6gxNAM+4g7LDPk06MwmatH6VGTF1E94wSnAXNKaI8qC1bl2SrnJ/BM
 KYHiVVScK35O/os2/qE4pWE0LXnnmku3xyIW8Ls6WMe1qmZtWPFHDfeYDOFCvmSz25/s1Mwwfwd
 KFZzI9qf+sRjDaObOOZkPq6Ckv7STP7qIOBBfScm5e7oF+CtiP6mBXMg9HuQFUocZsKI9nsQmsq
 6UTE1LwnESZWvUAQ4ZC1j4eA/WqUA5QdWk1RE6h3yZLXYzYt
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
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

Reading access to connector->eld can happen at the same time the
drm_edid_to_eld() updates the data. Take the newly added eld_mutex in
order to protect connector->eld from concurrent access.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 297afd89036ba8fba571379f5b6d63227eadb66e..f98617b8bf6cf9d92a806e35584e8f8ab0ac9f96 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -2220,9 +2220,9 @@ static int vc4_hdmi_audio_get_eld(struct device *dev, void *data,
 	struct vc4_hdmi *vc4_hdmi = dev_get_drvdata(dev);
 	struct drm_connector *connector = &vc4_hdmi->connector;
 
-	mutex_lock(&vc4_hdmi->mutex);
+	mutex_lock(&connector->eld_mutex);
 	memcpy(buf, connector->eld, min(sizeof(connector->eld), len));
-	mutex_unlock(&vc4_hdmi->mutex);
+	mutex_unlock(&connector->eld_mutex);
 
 	return 0;
 }

-- 
2.39.5

