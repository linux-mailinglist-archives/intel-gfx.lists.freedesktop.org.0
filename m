Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F27CB956EE5
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 17:37:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E25B10E2D1;
	Mon, 19 Aug 2024 15:37:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="OCj15QTQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E6610E2D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2024 15:37:16 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id
 ffacd0b85a97d-371b098e699so1678584f8f.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2024 08:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1724081835; x=1724686635; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:references:cc:to:subject:reply-to:from:user-agent
 :mime-version:date:message-id:from:to:cc:subject:date:message-id
 :reply-to; bh=b30MdRVEaw12tsyuhHxLUYLfGBRNhcbJ7BTAaBjC8Xo=;
 b=OCj15QTQ/GtB82EL02NOFayHRqRTcThCdSUfP5Fu5XfxFhI9/LbJ3CQQUwkgjvwAgs
 2SXVF17SCY80RL3nuf6aEQMnPM3oq0rrU9S24OWDsws7wlH2Vx9fkUEZt9dsaXWyxQdr
 BOm6Ylndak2x9C+F3ODEaCM8+9GYk4tP/PArWq3OMLfBwnN4QOragTeQLqTFQKC9Zmon
 wdlprBbsl+gBfUQ8y1xK8+duh5iPVh+y8XDby556gf2uMQTOPgd/lokX7YXIYMZTpUhN
 BCneGM+GbZ5dr7qPexozqL66gCrwcCWdB94QacbjPnXVfeabLEqXLaaHIAa7uQRAbKox
 J8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724081835; x=1724686635;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:references:cc:to:subject:reply-to:from:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=b30MdRVEaw12tsyuhHxLUYLfGBRNhcbJ7BTAaBjC8Xo=;
 b=JAfBL4YdHNGL3XpgqyV2bwccTNg9os1Fk+a9YvVLbIvwiCuy6cLdk6b2cGnLV/OG3J
 E3SrGr7X9uwms/4K71LvC2rRNlcOF5n9GpxxSal4YyEt4OQf335kTUiGiXPlLFBj6/vh
 h+WJIZvDp31Udgt/n/36Nj+QbvAI3ci0N2veasGKiVAzGo3Gwwh7TJjNOWjCUuPsKNxu
 78tyca17mFhxsgaB3wGjOdi9xyRHJsO+lDsn5WQCyXfytibra/mYQVhcxCKiMvpcIAnQ
 ZAuzqr1P6qgHBRTmNIdGVug9zp09HkwBjV41tXVK6TaXEYBktUUimP6sB3g4XEsOoADn
 UcJg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVpZcx2MdiRUOWxv8jFKIWjPNE+83YI5I6mOamc2wKT5X9MTtV0XEdzYQ96CZeKYtUFeGv/Wk5aQB0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxr9VvaF6nV9HnNQ6dhqfLCptyLm7N5JgHykf2H1c74uL2jLU6K
 oMcQKjv5fpHRWB+11B4LRIvvMD6y53JHUbclp+VaMfnvnIdLIq/3fBPHSyDkjIQ=
X-Google-Smtp-Source: AGHT+IF69rK/3jdaw7z0kd4Mqoqqvh+NOWXAhtijyf1xhjT3EA/aJrmAhYfTjxDnOuKIDWCNtgPbqQ==
X-Received: by 2002:adf:ab17:0:b0:371:8685:84e with SMTP id
 ffacd0b85a97d-3719445257dmr9515594f8f.22.1724081834369; 
 Mon, 19 Aug 2024 08:37:14 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:f54e:4b0a:5175:5727?
 ([2a01:e0a:982:cbb0:f54e:4b0a:5175:5727])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-371898ac074sm10781621f8f.106.2024.08.19.08.37.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 19 Aug 2024 08:37:13 -0700 (PDT)
Message-ID: <deac2821-9709-42bd-8749-02232384fe59@linaro.org>
Date: Mon, 19 Aug 2024 17:37:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 31/86] drm/panel/ili9341: Run DRM default client setup
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com, javierm@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Jessica Zhang <quic_jesszhan@quicinc.com>
References: <20240816125408.310253-1-tzimmermann@suse.de>
 <20240816125408.310253-32-tzimmermann@suse.de>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20240816125408.310253-32-tzimmermann@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Reply-To: neil.armstrong@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 16/08/2024 14:22, Thomas Zimmermann wrote:
> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
> ---
>   drivers/gpu/drm/panel/panel-ilitek-ili9341.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9341.c b/drivers/gpu/drm/panel/panel-ilitek-ili9341.c
> index 775d5d5e828c..0ef9f7b59ccb 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9341.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9341.c
> @@ -31,6 +31,7 @@
>   #include <video/mipi_display.h>
>   
>   #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_client_setup.h>
>   #include <drm/drm_drv.h>
>   #include <drm/drm_fbdev_dma.h>
>   #include <drm/drm_gem_atomic_helper.h>
> @@ -591,6 +592,7 @@ static struct drm_driver ili9341_dbi_driver = {
>   	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>   	.fops			= &ili9341_dbi_fops,
>   	DRM_GEM_DMA_DRIVER_OPS_VMAP,
> +	DRM_FBDEV_DMA_DRIVER_OPS,
>   	.debugfs_init		= mipi_dbi_debugfs_init,
>   	.name			= "ili9341",
>   	.desc			= "Ilitek ILI9341",
> @@ -651,7 +653,7 @@ static int ili9341_dbi_probe(struct spi_device *spi, struct gpio_desc *dc,
>   
>   	spi_set_drvdata(spi, drm);
>   
> -	drm_fbdev_dma_setup(drm, 0);
> +	drm_client_setup(drm, NULL);
>   
>   	return 0;
>   }

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
