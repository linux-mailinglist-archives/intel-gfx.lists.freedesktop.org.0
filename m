Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCB99DF3F8
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Dec 2024 00:55:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB99310E5E9;
	Sat, 30 Nov 2024 23:55:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="vm8x+5Qb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFC6C10E5ED
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 23:55:43 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id
 2adb3069b0e04-53de579f775so4240484e87.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 15:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733010942; x=1733615742; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=Xien0N58sB4iffC9+suYdwxKcgrPQSZoNIx9TfZkSKE=;
 b=vm8x+5QbE9Dq8kOduBEDcC9ARoU8SejP2a/5iJg3XzIDnZEZyfJiE+0rFCYDC/Ci1y
 o0drj3jeDppd0vOCn2Oa4sdPHNOU/0RBmN69cdtV5QwSKPeXNOwXi1VeUq+ShCNyA6Sy
 Vb9pnhb1Nho27aG2y+RpdKts1w7uKQimnbN2QpAj5wCUqsVkxMpC9kS3FzKQOTpBX2JW
 HZH9nHkOxDw2rLjt8S/1tkZheMEazLkOrLmzxRLPudPMc7h5p78JDMJg/QY8ko5toibG
 EUVdY6GXw7Px8LLF9Bs47Xib3P36w72BBrW147ap96a13pgwjDgnlJ7W/m+yhmgfUbCU
 6dqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733010942; x=1733615742;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Xien0N58sB4iffC9+suYdwxKcgrPQSZoNIx9TfZkSKE=;
 b=um7gblnrFjbnGcqi2O6EeWyLzJz8bG4jsO+cKAbQ64g1A9DbDubM1lNMJKBagyqw5q
 ftnYUEcF9Q4NlbddQMYZlH+JI3SVrOdpYMNlZ/LmtWAuFQoP5ZjOnHr0tlkrVEP2B0JF
 lQyVf0weo5e53+swTWOY4hID1vHKFaOeRvCAREgH9h8bcK+wfu+z0SecGKcvm/gmSOMH
 /9PyrXhFGy0zSx4JfJ242jPtJngtgpUv1h32qxRKnJWGiAnKmm7c/P1T+fqtyk8Hhwpt
 juoVyV7ttrOdeli9zVq09PmOgO0NtW0AZcyEG9/cU8MlagSo/UXnBY1xw3zKYhf9x1d3
 eEzw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFLy3r/PABhW0vuD2uRr/FGZ9/th+lUS4zS3A9xK16RDSElqshnPaCFQgmu0s4foizFYsKEEPPy3c=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxn0RUkOkbEjWJqUNHRs0SbvQWblpr7Nd/t6jr6LOX5az6jdeWn
 ixE0pnvhqsW5B3qRzjj+TPcAkneT0Y47D9thyedbvRpQVnvkPjecYH48iKoq3lE=
X-Gm-Gg: ASbGncvCYqzV36Ee/PwtrKxvHxDKrkGXgmUQHOTtZpD1CChHwkwUWwCaUN2VVlJQhe2
 D1ItPYFQzhXv37apb9QrsqXsBFiWEHp+uECNj/4VkOny2JyDX95UQHkCn0dpRzpZCm4Xizk3Ghh
 IXBV8UMRTNQT8L0bzD9U+iZ/5CUBiJF6M3AnJWNQ5l7FzlDtugDIcfGQ1Nt5L3uIB7QzYtKt95j
 2u9Y61kQD14kPn7OKW4gsQhrj7CgXGBObBJmcwPpddx5NjWBTOK/Y7UjQ==
X-Google-Smtp-Source: AGHT+IEoIeugoET5BqjT6NRzZzzy0ZjjP0TBRwdTQ5WPutajVCKBkgCZ3DW7I0WGOJti6hbbaxziUA==
X-Received: by 2002:a05:6512:3d86:b0:53d:a3a7:fe84 with SMTP id
 2adb3069b0e04-53df00a96e8mr14561366e87.8.1733010941990; 
 Sat, 30 Nov 2024 15:55:41 -0800 (PST)
Received: from umbar.lan ([192.130.178.90]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53df649647dsm900706e87.195.2024.11.30.15.55.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2024 15:55:40 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 01 Dec 2024 01:55:22 +0200
Subject: [PATCH 05/10] drm/exynos: hdmi: use eld_mutex to protect access to
 connector->eld
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241201-drm-connector-eld-mutex-v1-5-ba56a6545c03@linaro.org>
References: <20241201-drm-connector-eld-mutex-v1-0-ba56a6545c03@linaro.org>
In-Reply-To: <20241201-drm-connector-eld-mutex-v1-0-ba56a6545c03@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1012;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=IlBBKvhDiY+cvMucjbk73vB6IzNnRZ3+VuxCS/o7lvk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnS6XtFcmUlMe9gPJdYbealc8FI/qrUiornp5Sz
 cmdQjBUbCqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0ul7QAKCRCLPIo+Aiko
 1ZUyB/467hRM5fIPQYymRfBPSsYEC5gNFcEsRNSKClp6yBUjqbuT5K54U8veccTLagqpg6mrQHB
 sJYGNPnkUEjnK/JULDL886lHb/pd7SixyezCY9k1Mvf+/vpb3UQCr09dSOMw30NiV6NkWvyKje3
 BIlrF/FZ/tS1DHxqV582BXI4mw5v2jinlQQFFXaTrs/2hLdXOEQ4QHa+nzNK2KyOa5RBmbNeNVm
 uQ+khov3pAbgUTXsoLh/W7vnwwJOU8GBcFGjx4o9CWpP8W8q76JzryVKmf3dp+2WCcFdRfvArJ2
 8NknAwK5Hx6FXILV/EdSpHepfGGp/Zv/ytvXybjv5g6YrJ17
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/exynos/exynos_hdmi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/exynos/exynos_hdmi.c b/drivers/gpu/drm/exynos/exynos_hdmi.c
index c9d4b9146df95bb46cb6bea4849c331616c2b463..6fc537c9048f5c8e57e30f083121c9aea6b99a5f 100644
--- a/drivers/gpu/drm/exynos/exynos_hdmi.c
+++ b/drivers/gpu/drm/exynos/exynos_hdmi.c
@@ -1648,7 +1648,9 @@ static int hdmi_audio_get_eld(struct device *dev, void *data, uint8_t *buf,
 	struct hdmi_context *hdata = dev_get_drvdata(dev);
 	struct drm_connector *connector = &hdata->connector;
 
+	mutex_lock(&connector->eld_mutex);
 	memcpy(buf, connector->eld, min(sizeof(connector->eld), len));
+	mutex_unlock(&connector->eld_mutex);
 
 	return 0;
 }

-- 
2.39.5

