Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7B68C9BF3
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 13:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7A310E62C;
	Mon, 20 May 2024 11:05:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="vj2UBb4M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D8D10E62A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 11:05:50 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id
 2adb3069b0e04-5238b7d0494so3426244e87.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 04:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1716203149; x=1716807949; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=nsnKmHuBmN6J2mWJ2RFHNEE84aeXrDEHjd3h7k4ZwUU=;
 b=vj2UBb4MAbzKU3KPttxwyylPv5xiv3hFEcCmADWTWJBbDJpp7yErrX/cglQo4JFHrw
 UOMgbqHwxtsmBYYyAw70r0d2/AT+u2iNyp8uKHb9SLNMkcyi3MYzRIXsXdmjESMeVn/S
 TF+vr03AfrfWHBCE/svFRHRotDE3bkWkhekTDn1bbyCERjwG6gUldhhSbA7qRkgh2xup
 /egsk5nH3u4wyA3FsnywffN7zoeAVO2+4SeYY5X11BDv7yX+BoLnJnDsiAOdRU8AD8cw
 sd+iZFWx4EvaI5bebQnC9wUG2rimlCTi+7WF21CH8MYa5nHMya5i2ntkviGI6W/y0uLj
 +m1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716203149; x=1716807949;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nsnKmHuBmN6J2mWJ2RFHNEE84aeXrDEHjd3h7k4ZwUU=;
 b=O10/d31jys9wD3A0wDR7J5zy29vilQO1/x7BlY36dHXViXRgXd8B5zjLMlhsGNANUR
 dYNd42LLtKkRKWHvXu4EwYgFQ3jxjimaicp5tU+c5He6Ne8tVu4O/o6APWN+kJM2q3PO
 6nHzQSQfbkNn8mjdZW5884UAlpfb6xaeUp7mGD1gMLAxivQ6BJ7t2mnE97Y1SKt5S7o/
 PfJ4TaTNcu8Wa4FshOoC4drYnik2wBmCZJqIBPVsPWjpvLnIcoFy4ZSyLPO1SSinvgZZ
 fWA6U/DEKJIwRLRiPGOerQLoA5R5Z2QMlD6IScqu1gIuGfEoQ2LhV/6deEvtu8vaHWD9
 jpAA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXsyEzNOYT6ilN79Tbs0Be89BC7733xqPNJlyccM0Rqk/eZQzcCJHt9qnBNIpeGSB1jbxB1nXv9j6u2AqtMfNAE5idJTk2fr/6HMhRcJFAP
X-Gm-Message-State: AOJu0YyZ3cbQEPzvwYWzru7tFeD68CtAla62OBoRwUt8NCK7rfQbdQ1O
 cKBuRuFja3Cdca7p+Ke4g15sU2uTwH3VFg2PEpZH2XWAnUoP+fweHuS9misVr/o=
X-Google-Smtp-Source: AGHT+IECc0/QGytciTsg1Ow4YOo2yweKq3yn/cTZEcTK3KUAdVVZMShgvpI1frMYPXAmC2Lq22cwUA==
X-Received: by 2002:a19:2d09:0:b0:523:919d:302e with SMTP id
 2adb3069b0e04-523919d325dmr15436572e87.7.1716203149103; 
 Mon, 20 May 2024 04:05:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-521f35ba912sm4180788e87.75.2024.05.20.04.05.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 May 2024 04:05:48 -0700 (PDT)
Date: Mon, 20 May 2024 14:05:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, 
 david.heidelberg@collabora.com, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, 
 mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, 
 virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/6] drm/ci: update xfails for the new testlist
Message-ID: <fbfo4juetokyhe6xsvxbfr3fakdushntnhlrpgbfttc22kvrc3@p3qr6qh4w3rc>
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-7-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240517092502.647420-7-vignesh.raman@collabora.com>
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

On Fri, May 17, 2024 at 02:55:02PM +0530, Vignesh Raman wrote:
> Now the testlist is used from IGT build, so update
> xfails with the new testlist.
> 
> Set the timeout of all i915 jobs to 1h30m since some jobs
> takes more than 1 hour to complete.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v2:
>   - Set the timeout of all i915 jobs to 1h30m and updated expectations file.
> 
> ---
>  drivers/gpu/drm/ci/test.yml                   |   6 +-
>  .../gpu/drm/ci/xfails/amdgpu-stoney-fails.txt |  41 ++--
>  .../drm/ci/xfails/amdgpu-stoney-flakes.txt    |   6 +
>  .../gpu/drm/ci/xfails/amdgpu-stoney-skips.txt |  18 ++
>  drivers/gpu/drm/ci/xfails/i915-amly-fails.txt |  31 ++++
>  .../gpu/drm/ci/xfails/i915-amly-flakes.txt    |   8 +
>  drivers/gpu/drm/ci/xfails/i915-amly-skips.txt |  11 ++
>  drivers/gpu/drm/ci/xfails/i915-apl-fails.txt  |  46 +++--
>  drivers/gpu/drm/ci/xfails/i915-apl-flakes.txt |   5 +
>  drivers/gpu/drm/ci/xfails/i915-apl-skips.txt  |  15 ++
>  drivers/gpu/drm/ci/xfails/i915-cml-fails.txt  |  38 ++++
>  drivers/gpu/drm/ci/xfails/i915-cml-flakes.txt |   5 +
>  drivers/gpu/drm/ci/xfails/i915-cml-skips.txt  |  14 ++
>  drivers/gpu/drm/ci/xfails/i915-glk-fails.txt  |  41 +++-
>  drivers/gpu/drm/ci/xfails/i915-glk-flakes.txt |   6 +
>  drivers/gpu/drm/ci/xfails/i915-glk-skips.txt  |  15 ++
>  drivers/gpu/drm/ci/xfails/i915-kbl-fails.txt  |  42 ++---
>  drivers/gpu/drm/ci/xfails/i915-kbl-flakes.txt |   6 +-
>  drivers/gpu/drm/ci/xfails/i915-kbl-skips.txt  |  25 +++
>  drivers/gpu/drm/ci/xfails/i915-tgl-fails.txt  |  77 ++++----
>  drivers/gpu/drm/ci/xfails/i915-tgl-skips.txt  |  16 ++
>  drivers/gpu/drm/ci/xfails/i915-whl-fails.txt  |  63 ++++---
>  drivers/gpu/drm/ci/xfails/i915-whl-flakes.txt |   5 +
>  drivers/gpu/drm/ci/xfails/i915-whl-skips.txt  |  11 ++
>  .../drm/ci/xfails/mediatek-mt8173-fails.txt   |  30 ++-
>  .../drm/ci/xfails/mediatek-mt8173-flakes.txt  |  10 +
>  .../drm/ci/xfails/mediatek-mt8173-skips.txt   |   4 +
>  .../drm/ci/xfails/mediatek-mt8183-fails.txt   |  21 +--
>  .../drm/ci/xfails/mediatek-mt8183-skips.txt   |   4 +
>  .../gpu/drm/ci/xfails/meson-g12b-fails.txt    |  24 +--
>  .../gpu/drm/ci/xfails/meson-g12b-skips.txt    |   4 +
>  .../gpu/drm/ci/xfails/msm-apq8016-fails.txt   |  12 +-
>  .../gpu/drm/ci/xfails/msm-apq8016-skips.txt   |   4 +
>  .../gpu/drm/ci/xfails/msm-apq8096-fails.txt   |   7 +
>  .../gpu/drm/ci/xfails/msm-apq8096-flakes.txt  |   5 +
>  .../gpu/drm/ci/xfails/msm-apq8096-skips.txt   |  12 ++
>  .../msm-sc7180-trogdor-kingoftown-fails.txt   | 175 +++++++++++++++++-
>  .../msm-sc7180-trogdor-kingoftown-flakes.txt  |   7 +
>  .../msm-sc7180-trogdor-kingoftown-skips.txt   |   7 +
>  ...sm-sc7180-trogdor-lazor-limozeen-fails.txt | 175 +++++++++++++++++-
>  ...m-sc7180-trogdor-lazor-limozeen-flakes.txt |   5 +
>  ...sm-sc7180-trogdor-lazor-limozeen-skips.txt |   4 +
>  .../gpu/drm/ci/xfails/msm-sdm845-fails.txt    |  38 +---
>  .../gpu/drm/ci/xfails/msm-sdm845-flakes.txt   |  26 ++-
>  .../gpu/drm/ci/xfails/msm-sdm845-skips.txt    |   7 +

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # msm testlists

We'd need to triage why the tests are failing, but at least it looks
logical from my POV, no more full-test skips, etc.

>  .../drm/ci/xfails/rockchip-rk3288-fails.txt   |  62 +------
>  .../drm/ci/xfails/rockchip-rk3288-skips.txt   |   4 +
>  .../drm/ci/xfails/rockchip-rk3399-fails.txt   |  83 +--------
>  .../drm/ci/xfails/rockchip-rk3399-flakes.txt  |  12 +-
>  .../drm/ci/xfails/rockchip-rk3399-skips.txt   |   4 +
>  drivers/gpu/drm/ci/xfails/update-xfails.py    |   4 +-
>  .../drm/ci/xfails/virtio_gpu-none-fails.txt   |  94 +++++++---
>  .../drm/ci/xfails/virtio_gpu-none-skips.txt   |   4 +
>  53 files changed, 1010 insertions(+), 389 deletions(-)
>  create mode 100644 drivers/gpu/drm/ci/xfails/i915-amly-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/i915-apl-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/i915-cml-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/i915-glk-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/i915-whl-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/mediatek-mt8173-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-apq8096-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-flakes.txt

-- 
With best wishes
Dmitry
