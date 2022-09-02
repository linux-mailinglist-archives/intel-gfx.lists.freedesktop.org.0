Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A75A5AE851
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 14:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A1110E66C;
	Tue,  6 Sep 2022 12:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF8A510E7D4
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 09:31:29 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id az27so1534512wrb.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Sep 2022 02:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date;
 bh=1gh2cH8+/vu9+O44Ntzb/QjlvRTOJYihF+Y3Qm1SXrI=;
 b=EVe1TJlwgwENLq9wjko+3+iqmTNZUI3JPuYAT7OKSM+R/epnoMEDtd8xg6TmEMxWx3
 w3tho74vxXAPjBSsm4lYFUcgCWErhh5+d3jcpk70E6Cl1y+e5y1R2FlOY66Rl8+JeCwL
 W3nltWTUG/K5D5uJwaOIEe1GS28g32m2+6rHL+rUQ9SE6SLcEMA41Q+pdYi3o3e/Gse3
 vkzFGeV6Fodjv9QezhLGwOjQYvAKxf+B1t8jpSLVlaAcYGHcSmHNtUS1CA4d+v2e/F68
 XWkTUJ18yNVic8+Sr4F0TOACzpTFk8RLS58xwLJ8vLbq0MIzXXHOSVbDexp4Q4m4S3zf
 Pupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date;
 bh=1gh2cH8+/vu9+O44Ntzb/QjlvRTOJYihF+Y3Qm1SXrI=;
 b=bUjeU8wWbg0t4HaZSfz7hW2XhOJKqD7Xk8/GnXp+li/aJaai6xad8VPzJZ/zt80roj
 yMW2Wi6Th9yS1O6qCZHizRM/W9mpYSi1mY2F5ZT+A3fbEd4fuia5mGP1rbCrTpOnKNk7
 1uxRQVtHtoyUFE2r7YeYrSUuTLhFL+ioZAigA4Cc1bCTfcqDdGNYTemfrVBnQniSEa1L
 xOBvhvuf4NKLC1QKZcEbfgqX2u1DqTALJE5KUuyFwvUn3R4MKfauMzF4GFQXlB16D6Gt
 6MIcEJuOXfw/+uq3GtlBj426iu7W4odCSE3HaVrjnwJozFgSP6wzFf+rcO+9Yw5hFAhz
 qoGg==
X-Gm-Message-State: ACgBeo2q26MnD2EymjZtcw1535bfZ5csUo2oMrKYy1hR28G+1x691EbB
 5jcD1n5d0k/bRfL2hqrlh0EbJA==
X-Google-Smtp-Source: AA6agR6YtQhQs9M+XpNrEr5ZjCr4K1ke8LjplN8/PGIGXMDtTqKLhIXAP+/GSYEqOabmcCpXMoNTwQ==
X-Received: by 2002:a05:6000:184e:b0:226:e227:35e4 with SMTP id
 c14-20020a056000184e00b00226e22735e4mr10140437wri.624.1662111088131; 
 Fri, 02 Sep 2022 02:31:28 -0700 (PDT)
Received: from [192.168.86.238]
 (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
 by smtp.googlemail.com with ESMTPSA id
 d17-20020adffbd1000000b002253d865715sm1042629wrs.87.2022.09.02.02.31.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 02 Sep 2022 02:31:27 -0700 (PDT)
Message-ID: <c2cd764e-ef70-4a7a-fe7d-aade5adb8057@linaro.org>
Date: Fri, 2 Sep 2022 10:31:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>, Amol Maheshwari <amahesh@qti.qualcomm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>,
 Juergen Gross <jgross@suse.com>, Stefano Stabellini
 <sstabellini@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-12-dmitry.osipenko@collabora.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20220831153757.97381-12-dmitry.osipenko@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 06 Sep 2022 12:33:46 +0000
Subject: Re: [Intel-gfx] [PATCH v4 11/21] misc: fastrpc: Prepare to dynamic
 dma-buf locking specification
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
Cc: linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 31/08/2022 16:37, Dmitry Osipenko wrote:
> Prepare fastrpc to the common dynamic dma-buf locking convention by
> starting to use the unlocked versions of dma-buf API functions.
> 
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---

LGTM,

Incase you plan to take it via another tree.

Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


--srini
>   drivers/misc/fastrpc.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> index 93ebd174d848..6fcfb2e9f7a7 100644
> --- a/drivers/misc/fastrpc.c
> +++ b/drivers/misc/fastrpc.c
> @@ -310,8 +310,8 @@ static void fastrpc_free_map(struct kref *ref)
>   				return;
>   			}
>   		}
> -		dma_buf_unmap_attachment(map->attach, map->table,
> -					 DMA_BIDIRECTIONAL);
> +		dma_buf_unmap_attachment_unlocked(map->attach, map->table,
> +						  DMA_BIDIRECTIONAL);
>   		dma_buf_detach(map->buf, map->attach);
>   		dma_buf_put(map->buf);
>   	}
> @@ -726,7 +726,7 @@ static int fastrpc_map_create(struct fastrpc_user *fl, int fd,
>   		goto attach_err;
>   	}
>   
> -	map->table = dma_buf_map_attachment(map->attach, DMA_BIDIRECTIONAL);
> +	map->table = dma_buf_map_attachment_unlocked(map->attach, DMA_BIDIRECTIONAL);
>   	if (IS_ERR(map->table)) {
>   		err = PTR_ERR(map->table);
>   		goto map_err;
