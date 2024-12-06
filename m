Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5486A9E6AC7
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 10:43:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A342810F082;
	Fri,  6 Dec 2024 09:43:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="pfYmLmNy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2851510F082
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 09:43:32 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id
 38308e7fff4ca-2ffe4569fbeso28673391fa.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 01:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733478210; x=1734083010; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=AjfS6UDkVSnKuZTI4p5OY7qDfSEHNtP2btpHCtUSsMw=;
 b=pfYmLmNyhS5EyJTUvSYIDavEDh+DxKGLdJKouLQ4SAROuK8QALRxB/U3mQTPUQ60yI
 Nk5CKoDvGHAa42oUJzKvSU4qeM2+Xa+Op8M9PViOXO5rHnamrAvbJFnJj9Dc3Q/dQlpQ
 sbgpEb6WGNiZZpuAIelAQn1rF2fdIhuP+FZjI3Blp+J9GGqnt2saXDzrGJxSN2bfQuPZ
 YmbGM9sHtINyxR1Kr4LXTqa+favzx+LKgmQjg18UaJNO/lbbLNO0ohi25d9Zv+FP4HTz
 6j6FCrTMrH/hR5mWtfdZbaicKX0d6dTMtFecsHt2iVCANaqtfzPr+zAUr1ceaBmTNDrh
 s0TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733478210; x=1734083010;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AjfS6UDkVSnKuZTI4p5OY7qDfSEHNtP2btpHCtUSsMw=;
 b=CnInYe/R/8x1i/xEnaDTeP334359Oj+cz/ah7eg6j2qf3Zr7mteOY2+PSUKenxt2GC
 Ey6BTXPKm3+ZLdzhrEYt2uWhYWV0l1x4+kncOYqU4W63HaSvKkXoc0f9ZoRiqT2dpLT4
 O8kjuPB+zML/PFnsTW6ivWWihpQ00wLuiU0qySFdbq2CfmfO0C/eWei7lkcjMn70sBYt
 IUzsvhuDMh7Ie4+nVhcgKnA9oBuEGYvVPbfD/2XvkvpRi2/DQXUe2HqQgLUzspUfunf5
 omEg0a/2gskMZdDRsNmHyuXKX5DzGUC0ey8C+Na31qEIG0gp6yXOZ8bDfk3Y/OOl8IG0
 b70w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVYCE7O5PvfGuXn7gfRs+DmsiuOHXkgUclnE/bxE+Da6WgTot0M0uQncDQ6SSxlji1Vjad7Y1Vy6Eo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwB0mGOoZMOgUmyh6zwLZNwb2aSq/ugBrU96ewgEKk8p4v9S+7I
 AH6VPZtTMQkaLB2a5+Gac2v54u1bNt6np7FoQYTulHF7OFKovSR8NVj2l0R+Z9c=
X-Gm-Gg: ASbGncvxzK1pGeJn7yggQEWSHeSRbgjYzqUNXw1zjyVyD+2a/xoUBE9F9OYJIoBY6tW
 C6FziuRSgm+ewKYDlN0aLCL7tzq6vVRhrBoa76XSZcAmBHCp/8nF9S1nsWNGV4pVrWS2uMtZoqQ
 V8MIr38UCPUCbmZyruNlHnYpEFDfEg+6JIs+sKP4qoaHkHTZLhHHDRmC/Ek2aFWYwQQd2LvwhTr
 AEDg5NF4YEAp8Aus7Twca6ctUWiyJNPtvWrv8XY3T6pxGrqMCxxE4qvVg==
X-Google-Smtp-Source: AGHT+IGlcn6F3j2D0eEiigVRHmv//hcsZLDTDwaSW1v+B5KM/LuoTROXlD1yn9Re0AjNw0cch3o94w==
X-Received: by 2002:a2e:bc20:0:b0:300:ea4:4e24 with SMTP id
 38308e7fff4ca-3001eac5caemr19445861fa.7.1733478210244; 
 Fri, 06 Dec 2024 01:43:30 -0800 (PST)
Received: from umbar.lan ([192.130.178.90]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-30020db3805sm4128441fa.50.2024.12.06.01.43.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2024 01:43:29 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 06 Dec 2024 11:43:11 +0200
Subject: [PATCH v2 08/10] drm/radeon: use eld_mutex to protect access to
 connector->eld
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-drm-connector-eld-mutex-v2-8-c9bce1ee8bea@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1057;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=AjWhuCZJu09L0XJl9lmri3iZkU99jRBF7lQVFbOa47M=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnUscv8mrxYpdnQrN5t7MGxWbI8gUEf4HV9oqdH
 /GygnY/E/+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ1LHLwAKCRCLPIo+Aiko
 1eNuCACvtbdy2xfHWggRb/DI8ZumCyXC4iUXD9iziSzFcEDO8vqI/2fCDKjMpxlhsveDfytOBQZ
 oRdOPeOkoLL3uO62vDV5V2VYiUsdsxy4In6Ro6X3P/aCKb6E/3bVJBjfF1e+BpO4HzEDq5bshin
 Q8sislvKTDt/zFBM9TzroMIyWvYqMXzAusI5WH25he5flEL1wFwcBCMNr+2XOZ0+scdlLKi33FI
 Oi2na5oqsLdlqihifCjf1U3GXLKvDL4fvq79UN3+5aL4Wj6ChZbQ3Kt5ArimSGb7uZURbdsOMGp
 mVjDJQsRZ9XvpdnrqBt0x2sTm0oevUE5ykOyS/V7haBZ9PQf
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
 drivers/gpu/drm/radeon/radeon_audio.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/radeon/radeon_audio.c b/drivers/gpu/drm/radeon/radeon_audio.c
index 5b69cc8011b42b4686c02f97a2b451a63d6c346d..8d64ba18572ec4bb6f6985be3a5edf581c47d7a3 100644
--- a/drivers/gpu/drm/radeon/radeon_audio.c
+++ b/drivers/gpu/drm/radeon/radeon_audio.c
@@ -775,8 +775,10 @@ static int radeon_audio_component_get_eld(struct device *kdev, int port,
 		if (!dig->pin || dig->pin->id != port)
 			continue;
 		*enabled = true;
+		mutex_lock(&connector->eld_mutex);
 		ret = drm_eld_size(connector->eld);
 		memcpy(buf, connector->eld, min(max_bytes, ret));
+		mutex_unlock(&connector->eld_mutex);
 		break;
 	}
 

-- 
2.39.5

