Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 580CB85C5FD
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 21:40:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD4610E559;
	Tue, 20 Feb 2024 20:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="GzISOHCH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com
 [209.85.219.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35DEE10E559
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 20:40:46 +0000 (UTC)
Received: by mail-yb1-f182.google.com with SMTP id
 3f1490d57ef6-dcbd1d4904dso6524557276.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 12:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1708461645; x=1709066445; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ERjxTaztc8+qMLOOT/4NvQ4ZOQbk2ui26rupVTyGkI0=;
 b=GzISOHCHFhDen0CIkNNp518FWru0rK6SvpXn+Gw+rsnkQayXmPe33uniuyzJKKJd8U
 uSWPw2xosF+4WHhKUeDHyu0ZXVxn9jI3qq9P+/7/a34dQLvYUK8lbVDjFRHC+qGXTAYE
 W/GVNh+sj+eur125mGRckIjEPbqAyL0f1Y6AKWJPTn9FErvb0713Wx1pszhoE3q2bK1Z
 XEBJpNzqObYtb7VeWpXdLesut4p5EVSSMaDAzz04NcoIFwlG+WTqU7t3vCDWT7zwwCJS
 aw5aawMDafCGIdSH/hd46WPQgFYY45vGvUUVM+SUTOXy1hCqQFiOck0BV13xvpcD3SsP
 dj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708461645; x=1709066445;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ERjxTaztc8+qMLOOT/4NvQ4ZOQbk2ui26rupVTyGkI0=;
 b=Pul8r4AitUVF7uXfUICU6RxXAAxWjHpyYYKCvS/Tkl22V1R2HZjTncRQsPBf5jdEOI
 nMGgQ7USTxxNPSN30+E9uuJDTvGDP+NFi4tFjPVt4ClM2jyrINxQxjhKaNtcyc2Fhq3y
 J7mrtuab+WS2Q+5zsXJXaK8zxC6HewK7+gtTJL7gHOO6bqUtIVN6AdGYXZRHQji8A0yg
 Y6qBHIuCHSdBMrzhzE5EOKfUQDBVIJdOrEXGCWT/AhsApBTeA13TExgqedijrz1ikbDS
 WUmagj/MpdvsTYCQqJySgCRmRTKk/UA7xDD1PKwjliOBFzB8Aqp/Jm5XVm9rVK11coSp
 0hcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVJ3wRagbuh7GXL8RCW9ByU3JLI86DWDqg1u9oaYl3osTgnbVIL48XP6lUdy4l3NrEsY5+1SeanjGyPTcrQAmKzB/YswzVkW6MhsqGWGb3h
X-Gm-Message-State: AOJu0YycZDbXU4IxnbEvhPPzkSxu1s/rt7+H9QOl05ydBV+xz5F5t5XK
 8R4VYkFVe+E+YU3t3zh6zRCDuy22C/U6DSII80l7R6/dAkF1TvLykM6BMiAVFPgikp3u6/CmX46
 I7bT8wZaZDaFruQwmTIKOwJdZHrT56jjVD+vLqw==
X-Google-Smtp-Source: AGHT+IETjPhkjxz2MThECRusOlTB+9xatw+N7NRhVCuCJgBvswJsF8s8Ii9I89OOkXNE59trLPn3GZNF74HOEleBXVU=
X-Received: by 2002:a81:494b:0:b0:608:6e94:9855 with SMTP id
 w72-20020a81494b000000b006086e949855mr2008876ywa.26.1708461644963; Tue, 20
 Feb 2024 12:40:44 -0800 (PST)
MIME-Version: 1.0
References: <20240220195348.1270854-1-quic_abhinavk@quicinc.com>
 <20240220195348.1270854-2-quic_abhinavk@quicinc.com>
In-Reply-To: <20240220195348.1270854-2-quic_abhinavk@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 22:40:33 +0200
Message-ID: <CAA8EJppP6Axd3amPpDrd1Y9dwNYOuSnLiSwwMDv1xm7i+2y9HQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/dp: drop the size parameter from
 drm_dp_vsc_sdp_pack()
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: dri-devel@lists.freedesktop.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, robdclark@gmail.com, 
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com, quic_jesszhan@quicinc.com, 
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

On Tue, 20 Feb 2024 at 21:54, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
> Currently the size parameter of drm_dp_vsc_sdp_pack() is always
> the size of struct dp_sdp. Hence lets drop this parameter and
> use sizeof() directly.
>
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 8 ++------
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
>  include/drm/display/drm_dp_helper.h     | 3 +--
>  3 files changed, 4 insertions(+), 10 deletions(-)

Thank you!

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



-- 
With best wishes
Dmitry
