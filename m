Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE727B4C07
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 09:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C069810E16B;
	Mon,  2 Oct 2023 07:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F9210E258
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 07:00:22 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-405505b07dfso15226045e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Oct 2023 00:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1696230020; x=1696834820; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :references:cc:to:content-language:subject:reply-to:from:user-agent
 :mime-version:date:message-id:from:to:cc:subject:date:message-id
 :reply-to; bh=65UjR/BYH4sgNp7jAQsrOIIv1FTbyb0+YEnzQHZ9wXU=;
 b=u2Xun9AXPJ/HOaWdLMWAoIzqzTg+Y8J4+ZvBBziRkX7PZZGNgIOl8a4uVI3K2EirDZ
 DWlNgS/db9bU2yCjJiDRfFUGOy7gFNo4mo5dNaYb/NH1hMVJmTYXycRtxFqZFwpdpff3
 D3VTvtZ0WM2qiFpeETMN/z7ETofsJG2EqX64H0svg/2BPytnlQv5AuPgSoAm0U8pKIFz
 Zh9iNFUy/Bixg43ipg56WBNsuEbF7KgaOMdpSJso28PLlCaEJh6PR9ZKsH1p3b14DT3e
 TgHZus3qDq2y+FuOguZH2wQjevzG0IfcGI2O75IFqhjJ+x4NyfR4EwCc29eRrpyr/nL4
 tNGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696230020; x=1696834820;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :references:cc:to:content-language:subject:reply-to:from:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=65UjR/BYH4sgNp7jAQsrOIIv1FTbyb0+YEnzQHZ9wXU=;
 b=wlDiYKE381Fm4VL54vPu0GkMoj5imTwx+/C8Zw82a+54lSrL00FbtW7Sl+OFBnaGP0
 GwOrcizEFN2qE6CZCFDfFZa3h+47r8lMGFtOIRf23mh3RQSqYzQ7WPUOUW0i1cibeH27
 PV6HqDk+9nEu8/DalJ/savsHHqpb36tnIeQbSHaPuVRtI8Ve3PLRM68XbPElKNksDrvE
 7Vldbq3bAAGo+BsH3JyUDyK9SoX2/F2iEOWGcgPKMvJDk+UGrQVfFixeMrnzLRXNU1ES
 aGBC0LNQOYYzJolFdg6QSV89afv47dkI1CqmlNqb0FLSiH8HdjF3oHOxq32f0cqHJrZl
 dhLQ==
X-Gm-Message-State: AOJu0Yx2R0w5Qvdoet3BRwZ/fxM/50PEdVUt0LG0ygFR8QnctAQC80g8
 t60b2EnaWNYNVrWG+R6ofJuKww==
X-Google-Smtp-Source: AGHT+IE2F7pfcHOX2OqOjdf/8yC0R+rXJgV623odj8DkbTqz9V9NQ2wG4qE6yedpKCypg3IborH+mQ==
X-Received: by 2002:a05:6000:114b:b0:30e:56b3:60fe with SMTP id
 d11-20020a056000114b00b0030e56b360femr8811358wrx.4.1696230020459; 
 Mon, 02 Oct 2023 00:00:20 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b653:7e47:ffdd:9340?
 ([2a01:e0a:982:cbb0:b653:7e47:ffdd:9340])
 by smtp.gmail.com with ESMTPSA id
 d11-20020adff84b000000b0031980783d78sm12200252wrq.54.2023.10.02.00.00.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Oct 2023 00:00:19 -0700 (PDT)
Message-ID: <7d157f25-a25d-41c2-9ff5-624721efcb92@linaro.org>
Date: Mon, 2 Oct 2023 09:00:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Content-Language: en-US, fr
To: Helen Koike <helen.koike@collabora.com>, dri-devel@lists.freedesktop.org
References: <20230919182249.153499-1-helen.koike@collabora.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20230919182249.153499-1-helen.koike@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] MAINTAINERS: drm/ci: add entries for xfail
 files
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
Cc: mripard@kernel.org, daniel@ffwll.ch, heiko@sntech.de,
 michel.daenzer@mailbox.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 p.zabel@pengutronix.de, airlied@redhat.com, alexander.deucher@amd.com,
 linux-amlogic@lists.infradead.org, daniel@fooishbar.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 19/09/2023 20:22, Helen Koike wrote:
> DRM CI keeps track of which tests are failing, flaking or being skipped
> by the ci in the expectations files. Add entries for those files to the
> corresponding driver maintainer, so they can be notified when they
> change.
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> For reference: https://www.mail-archive.com/dri-devel@lists.freedesktop.org/msg463165.html
> 
>   MAINTAINERS | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 90f13281d297..740a2ce2689c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6614,6 +6614,7 @@ S:	Maintained
>   B:	https://gitlab.freedesktop.org/drm/msm/-/issues
>   T:	git https://gitlab.freedesktop.org/drm/msm.git
>   F:	Documentation/devicetree/bindings/display/msm/
> +F:	drivers/gpu/drm/ci/xfails/msm*
>   F:	drivers/gpu/drm/msm/
>   F:	include/uapi/drm/msm_drm.h
>   
> @@ -6886,6 +6887,7 @@ T:	git git://anongit.freedesktop.org/drm/drm-misc
>   F:	Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>   F:	Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
>   F:	Documentation/gpu/meson.rst
> +F:	drivers/gpu/drm/ci/xfails/meson*
>   F:	drivers/gpu/drm/meson/
>   
>   DRM DRIVERS FOR ATMEL HLCDC
> @@ -6994,6 +6996,7 @@ L:	dri-devel@lists.freedesktop.org
>   L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
>   S:	Supported
>   F:	Documentation/devicetree/bindings/display/mediatek/
> +F:	drivers/gpu/drm/ci/xfails/mediatek*
>   F:	drivers/gpu/drm/mediatek/
>   F:	drivers/phy/mediatek/phy-mtk-dp.c
>   F:	drivers/phy/mediatek/phy-mtk-hdmi*
> @@ -7034,6 +7037,7 @@ L:	dri-devel@lists.freedesktop.org
>   S:	Maintained
>   T:	git git://anongit.freedesktop.org/drm/drm-misc
>   F:	Documentation/devicetree/bindings/display/rockchip/
> +F:	drivers/gpu/drm/ci/xfails/rockchip*
>   F:	drivers/gpu/drm/rockchip/
>   
>   DRM DRIVERS FOR STI
> @@ -10476,6 +10480,7 @@ C:	irc://irc.oftc.net/intel-gfx
>   T:	git git://anongit.freedesktop.org/drm-intel
>   F:	Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>   F:	Documentation/gpu/i915.rst
> +F:	drivers/gpu/drm/ci/xfails/i915*
>   F:	drivers/gpu/drm/i915/
>   F:	include/drm/i915*
>   F:	include/uapi/drm/i915_drm.h
> @@ -17862,6 +17867,7 @@ C:	irc://irc.oftc.net/radeon
>   T:	git https://gitlab.freedesktop.org/agd5f/linux.git
>   F:	Documentation/gpu/amdgpu/
>   F:	drivers/gpu/drm/amd/
> +F:	drivers/gpu/drm/ci/xfails/amd*
>   F:	drivers/gpu/drm/radeon/
>   F:	include/uapi/drm/amdgpu_drm.h
>   F:	include/uapi/drm/radeon_drm.h
> @@ -22846,6 +22852,7 @@ L:	dri-devel@lists.freedesktop.org
>   L:	virtualization@lists.linux-foundation.org
>   S:	Maintained
>   T:	git git://anongit.freedesktop.org/drm/drm-misc
> +F:	drivers/gpu/drm/ci/xfails/virtio*
>   F:	drivers/gpu/drm/virtio/
>   F:	include/uapi/linux/virtio_gpu.h
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
