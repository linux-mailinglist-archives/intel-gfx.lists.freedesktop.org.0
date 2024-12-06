Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E94079E6AC9
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 10:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A8A10F08B;
	Fri,  6 Dec 2024 09:43:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="DueF6BsW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A443410F08C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 09:43:34 +0000 (UTC)
Received: by mail-lj1-f173.google.com with SMTP id
 38308e7fff4ca-2ffa49f623cso19396141fa.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 01:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733478213; x=1734083013; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=ZkigUKob5Mc9L+QSG9Cb+AQa6odUVvq9Ya0HTSeW6cY=;
 b=DueF6BsWLBXaajoMKsbsovSa/oZd2Tbt6YG4kOLl6BKNrc+JsuCb+8AF9VQTzrReVR
 5Wlme5Tu63adJ9yCjkcYgSTagyZ5ne+SwaEaEoDzL6RStIvJU6kYHHMNCOM7/eKtGZop
 zDOQss16MU4+jWjF9vLoLoBke1kqni+wUoeh4ZgoHIrhqRssvMRR/WBVjcrwOnIL174W
 tJCgFL96Ie3P4W4BvWO598E3xJ0TD4GSd3JMFdepipnZWvEbpVpv5T4mqeJEbIxUJuW1
 a/7fYY5lae6jGa6uF/Lo9i2Gzcyqxl8oiqqyrXL1LhGfyTfQy4wO6MB6rflycnNkHndE
 3ekg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733478213; x=1734083013;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZkigUKob5Mc9L+QSG9Cb+AQa6odUVvq9Ya0HTSeW6cY=;
 b=nVGW8oPHLTQD3o87KYcRyJCvBBCA7baj0LvwShk2viqsMH/uqu9PLVHI9YfL0SeWeZ
 pM/m5iKjTuyeu1JkHk5mlmfnVX8tJ59qTU20eljQh4T2KDbJpWAz9u1DYRiDfMGOLBqv
 9g5OB37wojvT8NWLoMaUFKsXUO6bcty8hV5s74HNsV2Ac6gkAE6+DBGWFPziLXqgicsq
 Zwq+zdEAMViPYdOAR/Vmm05Yn0BSJhOtucG8qYzPO3TWc2RPpr4lwYZcSqFa+9yCFicF
 kAtOu5yvp0EU6OcaSe/vOH7ElufWUsgISP5ZYml3yUllbE/7kESojHTKNh9aewqX8AjT
 qZdQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVv9m5qlwtj7sox8ftYVxXiqjJu+Be8xRb9PjUVVbKF0ve9PJBedzhnZp9U3mxdEW+c5zIfjcK4H5Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy2GShMl8VbIcZ3YXoHLY7vV0W43XIChSens+s1pvai2T7Qcu9K
 KP/CyHz1gycIChKEvy0uTsNYBVG0Z07xkqGmEL774GMmFPzS/a/9nSiOvEOMOuo=
X-Gm-Gg: ASbGncuc4U0beUd315LItC0pe/jJSWUPXb2qdisWKYGs7mKxtV67viKFxZwDR9EtNhx
 nbwZNG6DzNg50WOR1r3eev5JyXqnH+gU7pW/Io4ItQTe4diSuxCYnQ3V7qPwXZDQsE5b2EZTUrV
 CjbPlTWu7tMydjgde2k5MQv7EOscfwvO3SrEYLtUw89tSmz7shseHc7zT2tyMoqmUxG21qgT2Bn
 FhdKXmV4aFyGClXllc7gxSKrQSyIFUFTznrMHYnvPpz4fMabIf2vxeJXw==
X-Google-Smtp-Source: AGHT+IFnWgDd0LQiOOyqxao9HQ2SRRt2EDypVuazWQgG9g3xYWmvYLAFADof0/JzzA41KcgjmV4COA==
X-Received: by 2002:a2e:bc12:0:b0:2ff:d81f:2d34 with SMTP id
 38308e7fff4ca-3002f89e73amr8312691fa.8.1733478212768; 
 Fri, 06 Dec 2024 01:43:32 -0800 (PST)
Received: from umbar.lan ([192.130.178.90]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-30020db3805sm4128441fa.50.2024.12.06.01.43.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2024 01:43:31 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 06 Dec 2024 11:43:12 +0200
Subject: [PATCH v2 09/10] drm/sti: hdmi: use eld_mutex to protect access to
 connector->eld
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-drm-connector-eld-mutex-v2-9-c9bce1ee8bea@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1066;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=T6JPeyhrynxKGaIZwOdTxaj7xNpnpZ0LTNopG/6n9Zs=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ3rQcX25kP/6099+Y3hx23Dzne8aLO9XzJFZb9z4/HOYm
 bH+tPU/OxmNWRgYuRhkxRRZfApapsZsSg77sGNqPcwgViaQKQxcnAIwkYJV7P8sEtsYGnS1fHZY
 N6v4y56cu637YlyXwKadV03zMlc4ttxq3Crwz6qYV7CtsrDo9MHlXvvuuuT7v7hov3+iOGuw84P
 eOuPsuE9iV7LLFxUsPR5gYsiefjVFO1nyt2usyI6ibhPhj7UMf39E749suNgw22P/LxFtziC+Tn
 WRtWELrrEc5tq9toNNREI5uXeBpOlzlubMi7bXX1sfPDcrdsf/x9liHJvac29p84ZL8z2dq1QgM
 7WlwLDhy4Qy7cfXWq0FX/w0s3kRpWmncvTdkXlJk4OKo1obHuSqT/3/T0mjdGMFO+vbmWI5eW1f
 jWc/nph+IGb3ku4TXWv7Lms/8ba/PcPz0OyqzlDRlRoPAQ==
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
Acked-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/sti/sti_hdmi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/sti/sti_hdmi.c b/drivers/gpu/drm/sti/sti_hdmi.c
index 847470f747c0efad61c2ebdc3fb3746a7a13a863..3c8f3532c79723e7b1a720c855c90e40584cc6ca 100644
--- a/drivers/gpu/drm/sti/sti_hdmi.c
+++ b/drivers/gpu/drm/sti/sti_hdmi.c
@@ -1225,7 +1225,9 @@ static int hdmi_audio_get_eld(struct device *dev, void *data, uint8_t *buf, size
 	struct drm_connector *connector = hdmi->drm_connector;
 
 	DRM_DEBUG_DRIVER("\n");
+	mutex_lock(&connector->eld_mutex);
 	memcpy(buf, connector->eld, min(sizeof(connector->eld), len));
+	mutex_unlock(&connector->eld_mutex);
 
 	return 0;
 }

-- 
2.39.5

