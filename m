Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C7276372A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 15:09:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9548F10E47C;
	Wed, 26 Jul 2023 13:08:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by gabe.freedesktop.org (Postfix) with SMTP id C8CBE10E409;
 Wed, 26 Jul 2023 01:21:58 +0000 (UTC)
Received: from [172.30.11.106] (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPSA id 9DA4E6025FB42; 
 Wed, 26 Jul 2023 09:21:51 +0800 (CST)
Message-ID: <630b9f2e-00e8-5b54-ad1c-3e4d404454a1@nfschina.com>
Date: Wed, 26 Jul 2023 09:21:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
In-Reply-To: <5d096bcf-c394-4dad-b307-3d7e33ab6e6f@kadam.mountain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 26 Jul 2023 13:08:50 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tv: avoid possible division by
 zero
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
Cc: mripard@kernel.org, kernel-janitors@vger.kernel.org, llvm@lists.linux.dev,
 daniel@ffwll.ch, trix@redhat.com, intel-gfx@lists.freedesktop.org,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, nathan@kernel.org,
 andrzej.hajda@intel.com, dri-devel@lists.freedesktop.org,
 rodrigo.vivi@intel.com, airlied@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023/7/25 13:51, Dan Carpenter wrote:
> The reason why the first five attempts had bugs is because we are
> trying to write it in the most complicated way possible, shifting by
> logical not what?
Wonderful! Should I add your name as signed-of-by?
I will send a v3 patch later.
Really thanks for your help!

Su Hui

> regards,
> dan carpenter
>
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index 36b479b46b60..6997b6cb1df2 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -988,7 +988,13 @@ intel_tv_mode_to_mode(struct drm_display_mode *mode,
>   		      const struct tv_mode *tv_mode,
>   		      int clock)
>   {
> -	mode->clock = clock / (tv_mode->oversample >> !tv_mode->progressive);
> +	int div = tv_mode->oversample;
> +
> +	if (!tv_mode->progressive)
> +		div >>= 1;
> +	if (div == 0)
> +		div = 1;
> +	mode->clock = clock / div;
>   
>   	/*
>   	 * tv_mode horizontal timings:
> @@ -1135,6 +1141,8 @@ intel_tv_get_config(struct intel_encoder *encoder,
>   		break;
>   	default:
>   		tv_mode.oversample = 1;
> +		WARN_ON_ONCE(!tv_mode.progressive);
> +		tv_mode.progressive = true;
>   		break;
>   	}
>   
>
