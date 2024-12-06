Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 436D49E6AC1
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 10:43:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0C9310F069;
	Fri,  6 Dec 2024 09:43:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="mrgD56eh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71AEB10F079
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 09:43:30 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id
 38308e7fff4ca-30037784fceso2192921fa.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 01:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733478208; x=1734083008; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=MGq6aED53P5HelbsA7MK6wW8IBVofd/BuTMfX8bnHpY=;
 b=mrgD56ehRb6CrZtJtHmOzOePsUhUkhNVsPxTe5ypKAMdcXpAd5zCyZLmHstxIQgC/i
 rmE8kpq8UORky0ezlnHvtI4vbH0id721qMCSGtkst27+HXglN70eAZMX85iByt3iwz+P
 AyPT0Q+/nnRXPvdOLddRPAlo4qnrblUe32wNVS1WLU+qwFruKwd4F6XLDIqg4aHPJBaz
 frKM143wTWZi+NTOR1xG2er1e5DxZM8xcFxhVfK5mmHDZUKYe9yijj8Ri2Bl8WpI3DaQ
 eL7wDvv4rXBier6LXnYFzbsdSltpbXsb6pWyEKfBN1mCzq7IF5vlOn5GjXdiNx05R03i
 4FEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733478208; x=1734083008;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MGq6aED53P5HelbsA7MK6wW8IBVofd/BuTMfX8bnHpY=;
 b=ByakAovprHzQ1c19Wx1PO3DUojku5HElkOdIPCxcGrtpsVQdPaiFwrdVnM1ARlpJ3y
 8FT63r091m1IgITc0OtqdHLdV4gwEHrHqpjIUUSpy3qFT9jv+sCXE0BwNUj1O0/OYyiU
 FVjcdnRBS8ttSj1i/Y3wyWx8UG89NvzClT45zrpmNQMN1raWal5stJ3OVoCftLdA5zBU
 +YM5BRD2e2IP5yhjbtJuGt630Kvs5NSC2CtMKdksTmZVokTuri1IGVH1qb/UWC3lP4YE
 O9G/dsdRqA3+gO+XxV5560bmcSi76fosbApyBzbWIGO3H/h0O6jLBa1YIMJTfPDFdRtj
 xo4A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUsgjqXzgcaasQ5abtaMv3yXjh6N6zUbn/6sWMouU1NFwpJY02vDJZtYM6TX4pClNvsYM76eXe6mhU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyfiEpsokOD69fRAtFsXwQRy9DkqhwxsmwpuzJayBlZ92ePktdL
 0UEBlS8B0nuyZaU8NtOpcjERUbUGE6Vu+3/kwi0Bp8fyLQu1vlGfdsZbiyVGzk8=
X-Gm-Gg: ASbGnct5b8niHYctgfdDAHEW7k22JNsj2lvzUcdzZ5ac+V40+YYdAWyB8JT2znGQK6R
 CxE5Rz6ssDgLFNUdkMBN8AKfTPRKyaopfNUus6tBQyw4ZgNdDlPXQdULoRB73qOD3h4JAq2g4Eq
 5qRUVnqObISDuJzdmxW69WnlaesxxsHleB2wP1Pi387VjIVpUh6uLA8ReKzJsb5M+2iXZKDvXLA
 kP6Xzv80v74QCmNQFLCwY6tVFqCLLnmrylqJFmq9/ucMSSEwI9Sva8vKA==
X-Google-Smtp-Source: AGHT+IE/NYxmjluRmONb1EoU7KbKKPH87buJ0IjBEcYtxmwcZQlKK0G0iiNZoTWvmIko49pJuOa6eQ==
X-Received: by 2002:a05:651c:b29:b0:2fb:5f9d:c284 with SMTP id
 38308e7fff4ca-3002f8e7df4mr10594341fa.16.1733478208528; 
 Fri, 06 Dec 2024 01:43:28 -0800 (PST)
Received: from umbar.lan ([192.130.178.90]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-30020db3805sm4128441fa.50.2024.12.06.01.43.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2024 01:43:27 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 06 Dec 2024 11:43:10 +0200
Subject: [PATCH v2 07/10] drm/msm/dp: use eld_mutex to protect access to
 connector->eld
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-drm-connector-eld-mutex-v2-7-c9bce1ee8bea@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1113;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=g8XDt4tMHXpR+O+C6P49zaXUZ1QAJx0+8PEn0RE7Eo4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnUscuHK4m+of5M0K58J1Ue7FnC+JgeJ7oM6NSu
 bFPedJdqXmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ1LHLgAKCRCLPIo+Aiko
 1bfrCACW5hMSxLBb5or6qGH5D5AVPGJIvY9BGjNY1WTyi2PUHO7TE/oo3Ggc7rv7l860G7eGzQ8
 uVT1bon1fazOdXW+lYbtHJWim9TYibboTYhb22pQ3YrpWEiuV1UbYdHBB8vzbzO9jXkq/bJmQ1m
 +E4FMSQ4cvduHdnEWi/8FNjp7zOIShlJYI1KIxungwjDjpEKEtea0kLBR1PRGwCG8/yZZUFfQxI
 QckeAW77aJDzAZbPOuHWb2f1rJKPg5flOLCaaqtxskOhiUml7r060zILPXNfrxMo4DMSMj+jYwz
 1HVsVa0f3CLU5a7ZBeGqVsa/7rnSuUMsfCkuJrb6r9MQM91w
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
Acked-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/dp/dp_audio.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_audio.c b/drivers/gpu/drm/msm/dp/dp_audio.c
index 74e01a5dd4195d5e0e04250663886f1116f25711..0fd5e0abaf07828157085bd680bfd3c7d32deb61 100644
--- a/drivers/gpu/drm/msm/dp/dp_audio.c
+++ b/drivers/gpu/drm/msm/dp/dp_audio.c
@@ -414,8 +414,10 @@ static int msm_dp_audio_get_eld(struct device *dev,
 		return -ENODEV;
 	}
 
+	mutex_lock(&msm_dp_display->connector->eld_mutex);
 	memcpy(buf, msm_dp_display->connector->eld,
 		min(sizeof(msm_dp_display->connector->eld), len));
+	mutex_unlock(&msm_dp_display->connector->eld_mutex);
 
 	return 0;
 }

-- 
2.39.5

