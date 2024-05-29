Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1D48D31A3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 10:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4893010F0FA;
	Wed, 29 May 2024 08:38:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="AAQ0X0Jz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC13A10F4A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 08:38:26 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id
 2adb3069b0e04-52ae14e78e5so429564e87.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 01:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1716971905; x=1717576705; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IqrQnHagTsqc8XSpxu+I+AI5vFFrCWmKxdpq/9RvgHQ=;
 b=AAQ0X0JzpkTJPr8jEb7cCPXU0GIXsVaIzvtnh7UaO1CwBvFwNTXIE4yBTTAOP8J9gQ
 4Pu69fEq/eXCuzCW6GEfGQmpZGRIe6dmlFcDseRs+wS8N+EF8BFCHC6xJIScGRnCiq66
 4CI7WmIqUzLW8elxBQ2rBqJ4cB/Vs4edINqY2ijZxIxOA1V2PM0y9Zwzm7cqqGQWDrIo
 0sj5DzV3nn95t6U2NNhGwqZ1gAfDnfYFJqXjUN6RTIRUE/A6ctDxsjB5Hdk2Uut0GpgC
 FF7+o7LSeUiu5oiXtoZM2uDE2x7g1ijdi4NhPjSgjlw4PowFBSQSkLgosyjRai+zhnyi
 I/eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716971905; x=1717576705;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IqrQnHagTsqc8XSpxu+I+AI5vFFrCWmKxdpq/9RvgHQ=;
 b=XyeRdn5xnO4SRijmOE8g9/F1LXKMg0/nxeh4kbpRcPkreKYQSLIXN7/SDVPmj6yYej
 xBL3iC7ahAWTQ6ovm+fwjFT64e7jg5aYVj/yCJTRtqgCIRck+hOFB4UFyDuW9/FQ44uJ
 UNNed4uJOj6jGqEwjOSktT21gU6aLoGEM752A0n2LTZx3RBWjdLm1ChvUGfzeR+O1JQ0
 drbeiWp1+puSBlaq01k1r3wLDd1qzMf0Bai5pxUb+KsT+SnKTX5zaaW3RwdPV4zwvynq
 3GIs34jUaA5vQhMdvD2RM+qB+DVuiKFVWE/7XoALOczpbZZlDD3T5+RjqkNvcd4yJG9e
 g+Mw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUAz681PfTd6Oi4V97w9TT28/c67QdFAyeb3LzIDUDcdGFycc+9/qyIY6gsRQTiBQ2UUq95oLQzVGCewacetx5+MdbcsU9/6wUmgs+jQ86l
X-Gm-Message-State: AOJu0Yw3wR/sYNbph1lv3oYOHFzbfEQFEVGXeij79XWymvc3AJdg2KaT
 RA9Fe0JvXyHNnPOK9YHPmUBbBKaEB6FBqISsHCdwb4asyJhuk6UN/uxiyagScIw=
X-Google-Smtp-Source: AGHT+IFxNS9ivx6ftoot6k7b4A5XcOe5Biw65h+SXYi89WIc3qRRrD3Vy3EqpcmprR3+hTvfeKjCOg==
X-Received: by 2002:a19:f613:0:b0:523:ef21:8e2c with SMTP id
 2adb3069b0e04-529664dac67mr7731487e87.51.1716971904911; 
 Wed, 29 May 2024 01:38:24 -0700 (PDT)
Received: from eriador.lan (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00::227]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-52b3d918a5csm59684e87.257.2024.05.29.01.38.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 May 2024 01:38:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Caleb Connolly <caleb.connolly@linaro.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Vinod Koul <vkoul@kernel.org>, Caleb Connolly <caleb@connolly.tech>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 kernel test robot <lkp@intel.com>
Subject: Re: (subset) [PATCH v4 0/3] drm/panel: two fixes for lg-sw43408
Date: Wed, 29 May 2024 11:38:22 +0300
Message-ID: <171697189027.975427.12036219693814257280.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240528-panel-sw43408-fix-v4-0-330b42445bcc@linaro.org>
References: <20240528-panel-sw43408-fix-v4-0-330b42445bcc@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
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

On Tue, 28 May 2024 22:39:17 +0300, Dmitry Baryshkov wrote:
> Fix two issues with the panel-lg-sw43408 driver reported by the kernel
> test robot.
> 
> 

Applied to drm-misc-fixes, thanks!

[1/3] drm/panel/lg-sw43408: select CONFIG_DRM_DISPLAY_DP_HELPER
      commit: 33defcacd207196a6b35857087e6335590adad62
[2/3] drm/panel/lg-sw43408: mark sw43408_backlight_ops as static
      commit: 8c318cb70c88aa02068db7518e852b909c9b400f

Best regards,
-- 
With best wishes
Dmitry

