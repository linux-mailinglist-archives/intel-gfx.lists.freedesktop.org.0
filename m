Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC1EA04335
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:52:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD94510EADE;
	Tue,  7 Jan 2025 14:52:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="oSOoh18y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3E0B10E8B5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 12:59:56 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-436202dd7f6so138535465e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jan 2025 04:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1735909135; x=1736513935; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=VITqw/dBrN6Eh2YzRoSLvwchdbQ5DNjyYt5nkHrQ30o=;
 b=oSOoh18yRH74IId4Ncybik6aKH53vHhFRdSPIFgkcyEpwtJ8crtKLCG4U/KMLVSieg
 MH/2CYcsYw+V3ovF6rCNi+E6mvdoOz4x/FL3TiC92gthe++bezPOXA4qNL/FqK/wK1y8
 /gQzjG5v0uGthT00ZT4viE7mbpAZGJPYVzgzeD7lFlVBpqzGbWzSsPBDwM9FzQtcw8UB
 e4e+g0xP0sG5gJDTQSmFmx5KcvJeX39dxI8VKRZetC0Gw2VXCcJmG8WjlcJSsPr5zd49
 b7UpzRqpxs/yb4FZAESC0S1dW0yN7OZ0dpKtHZJ0H1t4cfcS02UUZLLtlj2ksZ08n24n
 79aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735909135; x=1736513935;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VITqw/dBrN6Eh2YzRoSLvwchdbQ5DNjyYt5nkHrQ30o=;
 b=niu43aGnjDhFzCLPxD3YZX7Oq/wHBSEVNrPOhCR0j3bcIHPDDtwdNuddymurcgUold
 OcayT4ErpKtpCU6Sylkmq7eYlf8Knhu8z7E/u/90ZbzDfdF0i0pKtmAjLeawlyy4lLV/
 y4Cvn+7rHcghtvAuCSheU0eQMx+sHSLCTRZacHChm4LuDMv3wohwKO6h5Pgioh30J4dW
 sd4F+4j8cI8tOt5VOO+pppzmij8Pm8npCqjlI9lQdLOk5JruJ700qtfn9IOvPo7+n926
 wxRO2sGIClVcJ9Ovnt4t4WL+TFHEmtmlZpxUu7cPtxD/dQr3oLOoOsHK7YfdgG9GtDVR
 gvcA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVXCvGOyemj7NBr/LVhzUHbsu8qQ5hXHP4oiscJKrYYT5Vd1498hUNK0zNqUtAeoH2STviONgwmzeI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx/d/FK88/krFHLfUWE2S4tb2SdHmIThqwaaz53u6YLJ1/k4+oe
 TNMqRWq0hGIDrQBr1afGDS1rqv3jx0uNAS0Lu+zhkzN1qrTMuYLNR4Ma7f7g4Ig=
X-Gm-Gg: ASbGnctajnHiBYUAnqQBjoWnzbFbdVlYX0Y6IUSdIoyDUIddM1TJa01nzuCd9CN/QZ2
 RTo53wxvPdtGf8lbahdlLp1WLqD9zEzttLwjlLFcvDTrUtUsl3qrPhQIpd9VYUFhtBpcdcb+yI1
 RkWtrpCl/30OkuVlczikj7o3ZgHYHF4vV8WyCZyB8E8JZ0Rk3yrce1QxghmObASRBvTk8akKNrz
 KZ37FQtvzencfdcV54LPJtmMMzQWyyepOME+FGnUkV/Yu3t3q0gUseO
X-Google-Smtp-Source: AGHT+IGUnpXjnchYmTBFtUQ71LNCqNAU5Q0SOmAgi8sEQyivFL6wDbTXzLedPgyb7rzrtBvhgs98IA==
X-Received: by 2002:a05:600c:468a:b0:436:1b96:7072 with SMTP id
 5b1f17b1804b1-4366854c062mr416478835e9.5.1735909135449; 
 Fri, 03 Jan 2025 04:58:55 -0800 (PST)
Received: from [127.0.1.1] ([86.121.162.10]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38a1c8acadcsm40225591f8f.105.2025.01.03.04.58.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2025 04:58:55 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 03 Jan 2025 14:58:18 +0200
Subject: [PATCH v3 4/4] drm/msm/dp: Add support for LTTPR handling
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-4-5c367f4b0763@linaro.org>
References: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-0-5c367f4b0763@linaro.org>
In-Reply-To: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-0-5c367f4b0763@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan@kernel.org>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
 freedreno@lists.freedesktop.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3291; i=abel.vesa@linaro.org; 
 h=from:subject:message-id;
 bh=zhRY8lT1G9JeELkZ54ealjEatpcKTP9np6vn+j2kA9w=; 
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnd98D5vjbEpomMQ8dXV6RVZNIUGfQhGggxggBR
 Qdgu7UHk5eJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ3ffAwAKCRAbX0TJAJUV
 Voh8D/9SfWx0sZ/dkeV5jYSYWRDoRArPfvo/DRVwDxLshqbRTU8todXxZViuaYxdh0+wz1yC/Tl
 QEgnwoaexcdVCEAq25zErdxGc4DeAW9RvqP/VVsiJug9NL1tl3wpnml4UY6A5JfU7ZB3/JOy9/F
 /ONMwxpcEqk7hKvuddzOaCg1m/haAPzk+i1foSK1pMOcFttgGGASktqORFxgTLVEfYY8cHB4yxM
 dvBYkfyMHeH4AHeDxpk08PfpDC7+kdjNESFHUjBbTQXdkT5tEu/AGxWOoyPQ/T84KwG/0izcapT
 mM2YxbX25qmTlAbYB7G6xo0nZs9IPz1lhpDnv49OF6A0Cji+YOfhvDdQizk4uDXrcS1rwEqNJja
 O82hu9RoIPEiXDGv3rYeLjA/4mkctvac/eWZv3CKxxxadOQfbX46cqUP5ax+8tvgzsY4GDpQ97M
 o0ZNmdt1dc09tsGlamOHx4vapCTX3qSXt9Oj8w0HWezaWJW0MHuDfoH+tZpHYbYZ5+J4i2DExJK
 6igXX5ziVN/sJVwhFYPYRdVp0T3ZkUkCpBTJRBAG/+6uS4hffPzIh+wWpkfNmHMhAatBd10ifQo
 SovAsasDDp0M8XgZ6QSM4qpqr2Z6a0qO6NY0DuXvyC5loIDA2uFCsYWFvBQe8y3+YQAOqdaq5ma
 Xl+1+4xOfJyy7zw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Mailman-Approved-At: Tue, 07 Jan 2025 14:52:08 +0000
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

Link Training Tunable PHY Repeaters (LTTPRs) are defined in DisplayPort
1.4a specification. As the name suggests, these PHY repeaters are
capable of adjusting their output for link training purposes.

According to the DisplayPort standard, LTTPRs have two operating
modes:
 - non-transparent - it replies to DPCD LTTPR field specific AUX
   requests, while passes through all other AUX requests
 - transparent - it passes through all AUX requests.

Switching between this two modes is done by the DPTX by issuing
an AUX write to the DPCD PHY_REPEATER_MODE register.

The msm DP driver is currently lacking any handling of LTTPRs.
This means that if at least one LTTPR is found between DPTX and DPRX,
the link training would fail if that LTTPR was not already configured
in transparent mode.

The section 3.6.6.1 from the DisplayPort v2.0 specification mandates
that before link training with the LTTPR is started, the DPTX may place
the LTTPR in non-transparent mode by first switching to transparent mode
and then to non-transparent mode. This operation seems to be needed only
on first link training and doesn't need to be done again until device is
unplugged.

It has been observed on a few X Elite-based platforms which have
such LTTPRs in their board design that the DPTX needs to follow the
procedure described above in order for the link training to be successful.

So add support for reading the LTTPR DPCD caps to figure out the number
of such LTTPRs first. Then, for platforms (or Type-C dongles) that have
at least one such an LTTPR, set its operation mode to transparent mode
first and then to non-transparent, just like the mentioned section of
the specification mandates.

Tested-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index aff51bb973ebe0835c96420d16547ebae0c6c0f2..6ea8245284ab5b6068bfba64f01a960838f577b2 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -107,6 +107,8 @@ struct msm_dp_display_private {
 	struct msm_dp_event event_list[DP_EVENT_Q_MAX];
 	spinlock_t event_lock;
 
+	u8 lttpr_caps[DP_LTTPR_COMMON_CAP_SIZE];
+
 	bool wide_bus_supported;
 
 	struct msm_dp_audio *audio;
@@ -367,12 +369,27 @@ static int msm_dp_display_send_hpd_notification(struct msm_dp_display_private *d
 	return 0;
 }
 
+static void msm_dp_display_lttpr_init(struct msm_dp_display_private *dp)
+{
+	int rc;
+
+	if (drm_dp_read_lttpr_common_caps(dp->aux, dp->panel->dpcd,
+					  dp->lttpr_caps))
+		return;
+
+	rc = drm_dp_lttpr_init(dp->aux, drm_dp_lttpr_count(dp->lttpr_caps));
+	if (rc)
+		DRM_ERROR("failed to set LTTPRs transparency mode, rc=%d\n", rc);
+}
+
 static int msm_dp_display_process_hpd_high(struct msm_dp_display_private *dp)
 {
 	struct drm_connector *connector = dp->msm_dp_display.connector;
 	const struct drm_display_info *info = &connector->display_info;
 	int rc = 0;
 
+	msm_dp_display_lttpr_init(dp);
+
 	rc = msm_dp_panel_read_sink_caps(dp->panel, connector);
 	if (rc)
 		goto end;

-- 
2.34.1

