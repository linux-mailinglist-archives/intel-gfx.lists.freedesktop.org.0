Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D83EA8C9BD2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 13:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CCD510E583;
	Mon, 20 May 2024 11:03:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Xg7wUkGB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6325F10E583
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 11:03:13 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id
 2adb3069b0e04-52388d9ca98so5176654e87.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 04:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1716202991; x=1716807791; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=gDt5zL9HqHL0LNTVxzu6RK9k/3ub+zUe1M1krBVr+UI=;
 b=Xg7wUkGBq588D19d2r5XBF6hCUvfW1eIB7wdE9fEaE6rGm+fkOlM7SeXe2eJYdV8XB
 1AaG89P/4PqB1xMawTa4TeI6Og44lpgqIhvISnC0YiHW/7XJFJuwRzFVsBZHJF5cYumi
 2CHoiFZztIE/BbuZ8UqdO0vrrsmn6n0+GX+Y0K2BLrofS4dmvkGb4Twy6jxQCwUnT4z8
 wOj4Bh/ArDotJBv8vEoeMnwrHdzESugEIBUjyRyZn41C8xRs9mPDOjz05xN7pgKS0uet
 oSNLd4hWR575ZaOiYs0l5QSrns/BeKnf3HX2YLKCdbhDLSkYTArhlvt+ruJW5I6wRc14
 STXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716202991; x=1716807791;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gDt5zL9HqHL0LNTVxzu6RK9k/3ub+zUe1M1krBVr+UI=;
 b=Uc+1fCBWi9+JASQEJJvwINKEQ3QBIiuYmuX9IwWfKHsYZFsL/9VMCcrYyy7A5Mm5Ce
 jqxxWCB8PYJC7oeg+8Qop0xqe+rOrgSypCpEXW4HMmpngH89az/NgHIyjQJjLjQYacUh
 EZ88HCFgoQJpWZo8XxjYQIeLRjSwPfDgb0lyY32Tnywj99hER4sAfq/bmBEQ/otIkQ5F
 WeH4tU9Rj5TQXPPbgV1V0Qh79Q3gP6MbToLsYwZ+MIqA2sUBEOE8sCE1v+rpQF85hfit
 TKCfhqNXhetrl+7OwApxZfsfM4+DmVTfNuOhq+0k7y0OS59DTvTgaftInD2shV9+HJ9S
 FFQg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWF9xpYNwDOlIhoaPwOXvdAxT5gPjslko2AuxHcJAcDl97BQWUEsGck/xcmBcK9BYfpiuwG+aLQSlNe7DoXmrLIIrZt8apkdxiDTHsvsuVj
X-Gm-Message-State: AOJu0Yzc2b+104HAOjhnnbxjq72HkxBDa70Gz63scAfZ3VdcQrZeh/eY
 xnaRJUgtYjKhTOFM8ihyWlvQc+rZIXcxFUONpKXuGIM+PNNXWioQAwbfwPRGxtM=
X-Google-Smtp-Source: AGHT+IEACx6wIZ/owZMa9fgLdIORVLGiIVgPJ5CApXgwF8B9qZycal7wPuLLAhEdV381KLhAEa79fg==
X-Received: by 2002:a05:6512:33cf:b0:51d:9291:6945 with SMTP id
 2adb3069b0e04-522102785abmr29386158e87.44.1716202991332; 
 Mon, 20 May 2024 04:03:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5225132505csm3241339e87.116.2024.05.20.04.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 May 2024 04:03:10 -0700 (PDT)
Date: Mon, 20 May 2024 14:03:09 +0300
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
Subject: Re: [PATCH v2 4/6] drm/ci: uprev IGT
Message-ID: <4hnd6bznqsp3ve7dh6uhz3ygs7yyapqcrainnqlhfejomcdbvo@htlnfpqb3jg3>
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-5-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240517092502.647420-5-vignesh.raman@collabora.com>
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

On Fri, May 17, 2024 at 02:55:00PM +0530, Vignesh Raman wrote:
> test-list.txt and test-list-full.txt are not generated for
> cross-builds and they are required by drm-ci for testing
> arm32 targets.
> 
> This is fixed in igt-gpu-tools. So uprev IGT to include the
> commit which fixes this issue. Disable building xe driver
> tests for non-intel platforms.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v2:
>   - Split IGT uprev to seperate patch.
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry
