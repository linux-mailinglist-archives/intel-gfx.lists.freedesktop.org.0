Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB3798A47A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 15:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57ED910E45F;
	Mon, 30 Sep 2024 13:16:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Ty+e3lrn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 246B710E45F
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 13:16:16 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-42cb9a0c300so33782795e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 06:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727702174; x=1728306974; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:references:cc:to:subject:reply-to:from:user-agent
 :mime-version:date:message-id:from:to:cc:subject:date:message-id
 :reply-to; bh=sVfSIT/8ooOprlYR8cHno/DAiWe/2kUoTL6uKWKkjmo=;
 b=Ty+e3lrnYFAiq+Q//BiILYIRb6BCnFzfJO2jzG3CraawgcUup9p4osOv6R15LkHI1v
 tX/91nZU+A6lZn7g9mz8g24pXRz5xH+RikGtc3v6ubKCLLS5JcTf7YrmLf4U/b8yk1QA
 ICNYZpan9ZQp+aBK8gpI4X7NP//mKmH/6ZtKiHqkKRYh1TkqMxo1Ui83ynnJ9WXhHDEH
 d7qJIkyxmU41q8qHQvwyusOm4tkZlsc1DNT7vidZEj0rutMIfLcCtZ4oSbNyFOcHddkR
 m7N7nQDrehJJz42UrMtWywURZpyefBxePLDQ9deyJy+y2oSjXgEXdABZTVSRoAkQQk0/
 brzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727702174; x=1728306974;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:references:cc:to:subject:reply-to:from:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=sVfSIT/8ooOprlYR8cHno/DAiWe/2kUoTL6uKWKkjmo=;
 b=e6EO3xCtwZqm2uqlHkJfV679FwzlL68mU4Q4a24o195khg4phweqsLHg33ebcs6ppl
 wR0NSCXvhJx/6RsDwSdy0Che2u0MTX24uaSv8vwC0Iawm+vCVi7zSgcTxsaNeM5n61g6
 genfFnUuijkJ3jKqOiWMPqfhdC4B0zS6/uACashIMs7Mp0b+er4c14PQbMHXc5oUdr4t
 mt8oBltVLf85v8rfycqVN8maBzaeHZjkQyNIN9FqLls/ky5hJSDL3LKt6EoyW/+KMYRp
 tuWCLoIc3NvPwkLJJnjqsVpPBLV2uG/wx4WDlbEczioWq5B/UZjZ0OabGYCQRR7eZwp5
 2HSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWuAfRR636VSEGfy4jluKzBbWZPJHXJMSCFYHUwIvCg7DzVOj++UhaXeXCLiZ9UnKERCATVAwoiocw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxuxd+9gpvZc4jp0HZfXfXBAh/5dj2uA223IqpDNOgC0AlVcFa0
 c5JMGOu9ffbb/AbGcFG6FDThErUP2iyjS6seuiNoVuf2ca9Gw3cVueyhulg0Xinet4ochBT0Lir
 4
X-Google-Smtp-Source: AGHT+IGtgFljgj+ltfg7mE2WvtjLgVEvxrW1v1W4eYUy6IftVa1GnIweAH9gAQaQ0Iwbky7w+/KOPA==
X-Received: by 2002:a05:600c:1d20:b0:42c:bfd6:9d4d with SMTP id
 5b1f17b1804b1-42f58409e43mr89140055e9.2.1727702174506; 
 Mon, 30 Sep 2024 06:16:14 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:bdc6:abc9:5047:7828?
 ([2a01:e0a:982:cbb0:bdc6:abc9:5047:7828])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42f57e30621sm104429375e9.47.2024.09.30.06.16.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2024 06:16:14 -0700 (PDT)
Message-ID: <277ab2af-aac0-4e3a-9df4-ba554494c122@linaro.org>
Date: Mon, 30 Sep 2024 15:16:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 09/28] drm/meson: Use video aperture helpers
To: Thomas Zimmermann <tzimmermann@suse.de>, javierm@redhat.com,
 airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20240930130921.689876-1-tzimmermann@suse.de>
 <20240930130921.689876-10-tzimmermann@suse.de>
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
In-Reply-To: <20240930130921.689876-10-tzimmermann@suse.de>
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

On 30/09/2024 15:03, Thomas Zimmermann wrote:
> DRM's aperture functions have long been implemented as helpers
> under drivers/video/ for use with fbdev. Avoid the DRM wrappers by
> calling the video functions directly.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>   drivers/gpu/drm/meson/meson_drv.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
> index 2f76f48da38d..bbb662d2f184 100644
> --- a/drivers/gpu/drm/meson/meson_drv.c
> +++ b/drivers/gpu/drm/meson/meson_drv.c
> @@ -8,6 +8,7 @@
>    *     Jasper St. Pierre <jstpierre@mecheye.net>
>    */
>   
> +#include <linux/aperture.h>
>   #include <linux/component.h>
>   #include <linux/module.h>
>   #include <linux/of_graph.h>
> @@ -15,7 +16,6 @@
>   #include <linux/platform_device.h>
>   #include <linux/soc/amlogic/meson-canvas.h>
>   
> -#include <drm/drm_aperture.h>
>   #include <drm/drm_atomic_helper.h>
>   #include <drm/drm_client_setup.h>
>   #include <drm/drm_drv.h>
> @@ -279,7 +279,7 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
>   	 * Remove early framebuffers (ie. simplefb). The framebuffer can be
>   	 * located anywhere in RAM
>   	 */
> -	ret = drm_aperture_remove_framebuffers(&meson_driver);
> +	ret = aperture_remove_all_conflicting_devices(meson_driver.name);
>   	if (ret)
>   		goto free_canvas_vd1_2;
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
