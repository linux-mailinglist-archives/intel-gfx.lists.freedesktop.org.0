Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B82789920DA
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Oct 2024 21:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B61910E21D;
	Sun,  6 Oct 2024 19:47:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="vqCqfg6h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4964B10E15A
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Oct 2024 19:46:59 +0000 (UTC)
Received: by mail-lj1-f174.google.com with SMTP id
 38308e7fff4ca-2fac9eaeafcso38354641fa.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 06 Oct 2024 12:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1728244017; x=1728848817; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Nudt6VvmPjF0HbFLFck+5c0LXbisuTPtkHJzkxMI8Xk=;
 b=vqCqfg6hcIcK2PClcx420ZGNJxBKzCPLx6+dNxYZWsTOR1ww5kXWxbFDl/WXiIAsIr
 RsUP5lL1uAAc2OEXFYDbMWCorT+jsOhoyd2FxDUD2QKKTWmSMXdc1YBucnkfGl8kFse2
 7FGXPWnBIfsClTcXuz0mY9FNBAaJpA9BHzyX1tqg211ffvbkenCOhTJ5YvvNA3gG8CVM
 0yE3t0O14JuL8GQTZ31ud4cvKhfUhcF52hcMxTrq7cVLNHQIQEt8uJzX1ZomBxQnbKmP
 2nmXgmqxTD3MLPtRI3HhbEPMSu4wUMe5XbUg2Si4H14Qq9KV9fORv+tYnHUCBWzVpGjZ
 fm6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728244017; x=1728848817;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Nudt6VvmPjF0HbFLFck+5c0LXbisuTPtkHJzkxMI8Xk=;
 b=CLO6wGhWBnvmv2mXJrpoKCBU2+gBym0+2qlBqmnzTlOpmUI8ztBi9sLdQWiLgL67L0
 vcmylJASr2GqPhU/jCxzUgCkW3GfIWgZVyIXDuywVAxibcrgR349WGulKRK3f6qpQPqL
 95FMQa6fftzwq3VeWCjF+Ylk7sUty3dD5UiGs+ojAaRMcTLbX75n8hroQ13kbo7ads8C
 znOzo9GZAT2QkWyS51ym3k6CEkmkF1OAHbllfQPrYlrqx9QYlxJNPsp538dIDSrcYhVs
 YvJ2paBP0+3ZGb2dtS59CeUc06EdvsjN2gZ9ZD+4Y0+5cWJ6QnkrBy/u6rSrMgRc2Zk8
 S+MQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXPcKq1A9MWC4XQhITGpBQ2TY19bCtTmkFGUz322lbk1YN21a9Wtn/EoLJVRAQ/wNjrcKttlG4xU/o=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxED33oKcSQJeRSHfRwyiTztLklk1jqOSlNskR+oV/0Njxd07BF
 nTdsZMBQJNGWnWSa+xFnel4kmoxyRuOonz3WqEbwIjQTj6JebZLnuzk6on59pZU=
X-Google-Smtp-Source: AGHT+IHQ40ic093FZX3v4B1HtEnY+cFajGIuhrqmUeVmOK/1zrCrTPpZ72nuQMgcgqEOYhJIrHyv5A==
X-Received: by 2002:a2e:f1a:0:b0:2fa:d84a:bda1 with SMTP id
 38308e7fff4ca-2faf3c1439dmr35177721fa.10.1728244016963; 
 Sun, 06 Oct 2024 12:46:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-539aff23e0bsm610963e87.243.2024.10.06.12.46.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2024 12:46:55 -0700 (PDT)
Date: Sun, 6 Oct 2024 22:46:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, 
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 deborah.brouwer@collabora.com, 
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/3] drm/ci: add sm8350-hdk
Message-ID: <eoumkcfeiw5v5apczgthateomnhjs3ihdyjwcjppg4gwgdseo5@vh3loy4jlma7>
References: <20241004133126.2436930-1-vignesh.raman@collabora.com>
 <20241004133126.2436930-4-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241004133126.2436930-4-vignesh.raman@collabora.com>
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

On Fri, Oct 04, 2024 at 07:01:20PM GMT, Vignesh Raman wrote:
> Add job that executes the IGT test suite for sm8350-hdk.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
>  drivers/gpu/drm/ci/arm64.config               |   7 +-
>  drivers/gpu/drm/ci/build.sh                   |   1 +
>  drivers/gpu/drm/ci/test.yml                   |  16 ++
>  .../drm/ci/xfails/msm-sm8350-hdk-fails.txt    |  15 ++
>  .../drm/ci/xfails/msm-sm8350-hdk-flakes.txt   |   6 +
>  .../drm/ci/xfails/msm-sm8350-hdk-skips.txt    | 211 ++++++++++++++++++
>  6 files changed, 255 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-fails.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-skips.txt
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
