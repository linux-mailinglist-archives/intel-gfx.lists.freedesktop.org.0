Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1683A05EC1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:33:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6514610E8D8;
	Wed,  8 Jan 2025 14:33:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="pK+Nq7yC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F393B10E8DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 14:33:12 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 5b1f17b1804b1-43618283d48so122124635e9.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jan 2025 06:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736346731; x=1736951531; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=+jujrpOc62dfLDuJvGTA1l4Fb+UZ4JKp3nDe8a+P2YU=;
 b=pK+Nq7yCrBIq/1z3bBvnqAYY29BqG5pW/J/7vpfc95KtwPcgL5L8+plXZYehpstDqd
 KTJPdl4xmgoNuF0IYO+gyATEQx9B1+PRe3p5mG/P27rZXmnpJb41UPYOND2cQRVkfhU5
 01yhPXD2bD+0AWcsQwZC14wYed9QQwFurQL6c2Dc6juqGHjlpI2ckjHlbA1aFafXoTwI
 q/od2qviEL1Q+61tLkcgg2CuI7wE3I1FQPSLOPHnRa6sWF5tpqnYT8eUnr74rDoZaZ+Y
 Dq1Hn1NXvdiYNQh51u6y2XZGgfaLOxSEWSz6xkBDMQG6uSlodHdGT+AQf4HVw7zmeos1
 nYmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736346731; x=1736951531;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+jujrpOc62dfLDuJvGTA1l4Fb+UZ4JKp3nDe8a+P2YU=;
 b=Wd/c03hdj4FIQYki5JjcMVDODjjxVbPVyvEzkovz53mN642QtnHnaAKD8GuFidYs4Q
 cyGwlaCjW73RXNjqHkHNUz4xfzLX8bbtvn0wei77soX4FR+g/mOZf5bIiwcKfgePqj/x
 AJPR/LuotF3jLDG8B1IMiMsbdAopU9r7F2GVDcMA6IsJW1/4vGhCXeS9btAgmCG7fSud
 AiC5ZTTiF1G1Km3Qc6gra+kPZkQg91SNVT54isA7mH00XoXhINtKA1bKzlxBXhuzyeKA
 GtRxkuwWzFItFR8u291PPtN6CTTj+071M2CjgqT2REKOBci+RDseFaSFXf1MJ4JHuhXU
 DYVA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUlbblJaB+/jRBIC6b11+6lxxSzyqCDJrcCiObYRQ2sJ4KJgo5w7dQz8kNYGxjiTV1EM4ZAZNmdBso=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx8IvAYtqYNzoxbZX7olhmK+BcvkPdtHRQcz4yASUnyJnRYRKkr
 BinUBrMUDY4GYPxooUPVr9gm9pLCrvh2bcouSsFuzOC38o3id2wP+NTPKYsymUk=
X-Gm-Gg: ASbGncu2hKyhxZU3rrd0Naj4NbfW+J7YcWsPzsla2CGY8WMGXQrEsd14/shbYRIOBWM
 6A+eW5Pkpq0PfWGhdpxSc+beRiit25GtUgFrL918HuMSfsrl9YwOHEMZy8s2w5ZlIYD08VEKOWo
 VA3u2vdI2O6zGFVo8S+B6yEyurqDem035LhT1I9kEnSU+f70v2k+VdEJCXmO5IAD3QIln6BkMvZ
 +HMw+exDf5Nl7XpeF5qVaR3iJWehxWqT3xz3qS5BfTcd7ne8cxeAwNt
X-Google-Smtp-Source: AGHT+IGaIDQlqPS504o1O/zyLX5qhdWguSocQGDnOn2wpB8opY97HAItR5eD/SovsojJHKkwgRdW4Q==
X-Received: by 2002:a05:600c:3ca2:b0:434:9499:9e87 with SMTP id
 5b1f17b1804b1-436e26e5159mr21957015e9.25.1736346731434; 
 Wed, 08 Jan 2025 06:32:11 -0800 (PST)
Received: from [127.0.1.1] ([86.121.162.10]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436e2e89e14sm22741445e9.33.2025.01.08.06.32.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2025 06:32:10 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 08 Jan 2025 16:31:46 +0200
Subject: [PATCH v4 4/4] drm/msm/dp: Add support for LTTPR handling
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-4-918949bc2e3a@linaro.org>
References: <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-0-918949bc2e3a@linaro.org>
In-Reply-To: <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-0-918949bc2e3a@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3405; i=abel.vesa@linaro.org; 
 h=from:subject:message-id;
 bh=gGD3sgWWKsWmZCbwj23CZ+mFd/H5NaRSFUP35PwpXX0=; 
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnfoxgHIDfMJj0b2BEuxIl+LhVXL3lTbbVduy2B
 j5EgHydbryJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ36MYAAKCRAbX0TJAJUV
 VpwBD/9NB5RkB8wmNALPhbXeaU3+pvYY4I3FGE8tvFKBNxVnnnGHblZOMbHU6z2WS1s6WVZ3OsI
 ngNMet1tVi0j/SZLy1Wmu1rpEt67TAHUkEQlBQLhRjbNJWsj9lbAkQPR0jlwiDjzWADUqao+wW+
 b09Hrco7d99sYgCTOEikq3DM/MpQf6AWrh/K9KflicTrEQ5b/hg5CC0CN+hwmhj+WBZJKHtt496
 kjyHDSqWmz3a2TbkknzfAV/7nklR8Fm8ip6AZ6cukHbB+CUrXyZTC5MmOH8bSLq9Mg57mdDOOyH
 +Ps2ncVdMh9svTKquhUopu+ydUxMYWrPFcS1UqAAVMpwKBz/jr0F2M+b4VvUhkVZO7enCSE0Rh3
 qfFwchwovWHOXn53ezc0zFGCBQ8419BGTSXd/hw+uFb05HRHwLIPn/Vh0T0LR93LoVFvIZQFTbf
 FsFBUiOKPrsOz0FXc1ZvJscYM3ObR5X6RwgdOYnaFIdgUWV+6OiJ+j6viy56sBIWpVW9yXGu15d
 OAekrCv4810gA0mNxtqKwZhTT4WVCW0tKEuTKXVz3PQ9Bk6Lz13xIplXyVvEhBuFGWYv0YYrtHX
 TQPdQwbtl2PUstj2MygUJkbR4xUtGpBUzLq/ySJNXub3hbCVV61ykWSakKBQC3laYYedTZFDfvb
 HkAeeBmNm2sOaDQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index 24dd37f1682bf5016bb0efbeb44489061deff060..ad09daa4c8ab5c0eb67890509b94e72820bab870 100644
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

