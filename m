Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A038D9E6ABE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 10:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2270A10F06F;
	Fri,  6 Dec 2024 09:43:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="epyKVEOZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80FF10F06F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 09:43:27 +0000 (UTC)
Received: by mail-lj1-f173.google.com with SMTP id
 38308e7fff4ca-3001d009633so17070501fa.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 01:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733478206; x=1734083006; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=gezQjvgIcYxaejQ8BDd64CZD9/Ck9vNVcEKNgvbZ4wE=;
 b=epyKVEOZiG9TA0frJ+ZaC406IOAZoogEPA6QaxfcLo/8nAcy3Ooc36Z06KESiSL1Dw
 +nV7CqGc8UN/sYH0atxPPNwkVJSqJ7vdbUqGvB1DFOGGkxdcFVDTY7KRQY6IjTSGnnEv
 g54CQpHJWhliBKswevP5Q22H3bx9I6WB6J2vtQPuiFsHnVVuwvOqsqA0SyEYELWrvR4R
 yIY9uWVdqWLhqpmZ0xpH1P5qgEw8Ax1Cxt5iWhCdriXqZj0PPbPov403CFozp8kU6Ulp
 15CTMGp4gfMVHV0qEkytr4oKZ57O2IyQ4V5QBvbRot3kpdoOjM8sDMlop+ak8t5cveoY
 kmaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733478206; x=1734083006;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gezQjvgIcYxaejQ8BDd64CZD9/Ck9vNVcEKNgvbZ4wE=;
 b=RlpyLp23d5TY1G36eokyrYZirWPk4n3DYNcpRhZziySq1PHRoq6qOQUt0FFVPgkJRc
 KDWDmR9zmH2iFEzpOiErtz755XENE9g+eXGmrtWBCodFyEBMvaJ3Xprugfifs3+1uNmB
 fC57DBiobisw2WwbC+S/qi6t0MFTEJvQz4iEI26ToV/YoknW82ah0o21+OkqpNaNm7M8
 sqZ3heSyv865hM9Haa8ll02ZKfcHPbXpJhxLUuu2r9iVCrPCBNIiV9+svofW/JN5BLBO
 z6v7wCm8jFJBKF2UswdjnGkSplO+RYZkwVww/FDSUUsQlncA/moJIiHW0Uhfy/oGKGJ8
 aItA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxd5HcmP2hgUfk510WwL6PVFxDyED3XGLDl7cQSBA0kgrjuSsb+IDK+9jOx62E1BtodCXkM5ka9RI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyTf6yb2h+lPdgFp4+d1kEIzuJYWN38io3mdJff8aylWS+YlYM9
 68dlUHsMV2+E7Cqig7uROqnbNP6MdWawMtmB0vVQMG9nZPZPvuCAi8V37P1SmBg=
X-Gm-Gg: ASbGncuYdYbk0Wd1TSnLKHhKQ50vrLFak3ykyZ9oV8WKIQny3/hEPg/D0pFl9hUq/R8
 PGhLz4+7fOBs+OuGL2o2IPL5HUmH5HsWRICniwGSQvIMMWgzr25d4AAVTTM4XQVvja98KbMJ0b1
 scaxM6Mi4/ES39A/Z6KMcEqXiYdKYqdxojItyWEJc+Kyg4muwFz+LKbKz0hDzlvbDm54MFSSMHy
 mXA4petc4BlXOjsPjDfC0GM2mLncJbbwO/TLxzeX7wX3rGjk2/PaCS/gQ==
X-Google-Smtp-Source: AGHT+IFIxMP3XivqZCXghDCnZTnDDHCeTBksUkUbx72OhyJC9NMw97gxwKXoTkYomD8vLYGmPlA77w==
X-Received: by 2002:a05:651c:150b:b0:2ff:c69c:db0f with SMTP id
 38308e7fff4ca-3002fd14d81mr7610671fa.34.1733478206004; 
 Fri, 06 Dec 2024 01:43:26 -0800 (PST)
Received: from umbar.lan ([192.130.178.90]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-30020db3805sm4128441fa.50.2024.12.06.01.43.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2024 01:43:24 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 06 Dec 2024 11:43:09 +0200
Subject: [PATCH v2 06/10] drm/i915/audio: use eld_mutex to protect access
 to connector->eld
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-drm-connector-eld-mutex-v2-6-c9bce1ee8bea@linaro.org>
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
 freedreno@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1533;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=tgOWbzXmlfNkUNlgKabtbqj34BDfcm3kqO9iU9YutCA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnUscuyv5W8v1YTELbuHmMKcJNbiEngJDs2MHEM
 hFooEYTmIOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ1LHLgAKCRCLPIo+Aiko
 1axkB/99cecYxR+X5C1zAyfkKFkvE75Us55r2gVNp2BPRSD08mYQThqr5+QEsx38SPihPleo366
 eaLD1hT6L2kyK6wdMq+Lkkj0kbXEPPTe9pj1Aad/UleIfoTG7Ps/uhFSFLdKRs0DnQaSZQME+VQ
 M2v8AFXHFAYJgM+8WPJgC0HTtuPSWfqBz+0JZQvtJgjoKRndMOmhlxr4vbN5xbJVZBgEPSDBujk
 kmWs3fgGh1o3Yx1/EyUv6Zz4X6sBrwrTlNvZNOSrOmgizBJLo+cBQyXqidSxYnZIp1DqJdxMFo4
 Qq7ORf/cwV/dZd0e+mmP5jB0ifPb0a3lavlzcLRDNPRaca3O
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
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 32aa9ec1a204d2ecde46cad36598aa768a3af671..3902ab8431139c3ff4dc17b841d94b6d3241dec3 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -699,10 +699,12 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
+	mutex_lock(&connector->eld_mutex);
 	if (!connector->eld[0]) {
 		drm_dbg_kms(&i915->drm,
 			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
 			    connector->base.id, connector->name);
+		mutex_unlock(&connector->eld_mutex);
 		return false;
 	}
 
@@ -710,6 +712,7 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 	memcpy(crtc_state->eld, connector->eld, sizeof(crtc_state->eld));
 
 	crtc_state->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
+	mutex_unlock(&connector->eld_mutex);
 
 	return true;
 }

-- 
2.39.5

