Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F171A8276E3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 19:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C71510E2AF;
	Mon,  8 Jan 2024 18:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7702D10E2AF
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 18:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1704737081;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IAnYP1H5LzGuNWIcYJpBhogfe2D1SDeWJ9NEft7q0Oo=;
 b=cc2jYPi73KuY3enXcA8E5YW/t0aqZLYXyumUpKzh/JocP+A2NadX2PRGVC98pZso9wozEK
 CZdFt/tFxP3/RLLvTMlvUk8gp0kDCJ/geT7Jpokng+BeBkDjpjZUltu5MLTNELil8tedUb
 uptQGVNQRyrDebLH7BDjIe8sZDG3Q4Q=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-574-d9w-KlJNMAGOMPf6O1FyBQ-1; Mon, 08 Jan 2024 13:04:35 -0500
X-MC-Unique: d9w-KlJNMAGOMPf6O1FyBQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 af79cd13be357-783163c7c38so127614685a.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jan 2024 10:04:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704737074; x=1705341874;
 h=content-transfer-encoding:in-reply-to:organization:from:references
 :cc:to:content-language:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IAnYP1H5LzGuNWIcYJpBhogfe2D1SDeWJ9NEft7q0Oo=;
 b=e/UX2Q/SDQw6IcKrdI6g6PodDet5enKrQwo+Cuv4LKtGkjmjGhdw0wwM7w79mveWhr
 qqofv7oeDD3Dwv24qvRPN9kgiHBIdZU73s3dcDC+Cg7EV3nEOni7p8sVFxFR1Hjs/XmZ
 yVqozNgDYnto8jXq8o7HLv20FDx0hgv70xYoS5xykCMQJBG821m5kX8pUvadRfjEI9z/
 Z3/86xxdIplcygw1pCfaF0JsjGkCYlY6a54pKY6/E4eP7atzixt8p5tRL9iS8R8EHELS
 B1RUfpazIb/hWzPrr6D1CxW0eEsNH8g2uYUZu5pysZo2zLT0jOyjX+FSv6DsIL4AeLRA
 loqQ==
X-Gm-Message-State: AOJu0YzQhaqwEiZeJQraHO3ZHh1jx014sFi9zGmB6RdUsiCgBoN0ePov
 2Jhjjhnal1QsJkGrKbfXIWOtNbLvj1MnCyFJiMjX40geuldiPrxWiwBApR9AEQMPRS3Jub/kWBi
 N7g4oW7aKPRJ2K04eLjwYpN5K6WZMNC1w3rQt
X-Received: by 2002:a05:620a:3788:b0:781:eb20:d230 with SMTP id
 pi8-20020a05620a378800b00781eb20d230mr2596823qkn.45.1704737074742; 
 Mon, 08 Jan 2024 10:04:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHe5P5jzlUukysDtp2eDu5oCiQ76sfdGCeZVFi+NgyWwJPXZChIHHNghe8BZwRPbo3NDsflGQ==
X-Received: by 2002:a05:620a:3788:b0:781:eb20:d230 with SMTP id
 pi8-20020a05620a378800b00781eb20d230mr2596810qkn.45.1704737074488; 
 Mon, 08 Jan 2024 10:04:34 -0800 (PST)
Received: from ?IPV6:2a02:810d:4b3f:ee94:abf:b8ff:feee:998b?
 ([2a02:810d:4b3f:ee94:abf:b8ff:feee:998b])
 by smtp.gmail.com with ESMTPSA id
 a10-20020a05620a066a00b007815c55cdf9sm75313qkh.105.2024.01.08.10.04.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jan 2024 10:04:34 -0800 (PST)
Message-ID: <95f6815c-1ff5-4c89-b8c6-0445834a0083@redhat.com>
Date: Mon, 8 Jan 2024 19:04:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/nouveau: include drm/drm_edid.h only where needed
To: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20240104201632.1100753-1-jani.nikula@intel.com>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <20240104201632.1100753-1-jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
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
Cc: nouveau@lists.freedesktop.org, Karol Herbst <kherbst@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/4/24 21:16, Jani Nikula wrote:
> Including drm_edid.h from nouveau_connector.h causes the rebuild of 15
> files when drm_edid.h is modified, while there are only a few files that
> actually need to include drm_edid.h.
> 
> Cc: Karol Herbst <kherbst@redhat.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Danilo Krummrich <dakr@redhat.com>
> Cc: nouveau@lists.freedesktop.org
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Danilo Krummrich <dakr@redhat.com>

> ---
>   drivers/gpu/drm/nouveau/dispnv50/head.c     | 1 +
>   drivers/gpu/drm/nouveau/nouveau_connector.h | 2 +-
>   2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/nouveau/dispnv50/head.c b/drivers/gpu/drm/nouveau/dispnv50/head.c
> index 5f490fbf1877..83355dbc15ee 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/head.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/head.c
> @@ -32,6 +32,7 @@
>   
>   #include <drm/drm_atomic.h>
>   #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_edid.h>
>   #include <drm/drm_vblank.h>
>   #include "nouveau_connector.h"
>   
> diff --git a/drivers/gpu/drm/nouveau/nouveau_connector.h b/drivers/gpu/drm/nouveau/nouveau_connector.h
> index a2df4918340c..0608cabed058 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_connector.h
> +++ b/drivers/gpu/drm/nouveau/nouveau_connector.h
> @@ -35,7 +35,6 @@
>   
>   #include <drm/display/drm_dp_helper.h>
>   #include <drm/drm_crtc.h>
> -#include <drm/drm_edid.h>
>   #include <drm/drm_encoder.h>
>   #include <drm/drm_util.h>
>   
> @@ -44,6 +43,7 @@
>   
>   struct nvkm_i2c_port;
>   struct dcb_output;
> +struct edid;
>   
>   #ifdef CONFIG_DRM_NOUVEAU_BACKLIGHT
>   struct nouveau_backlight {

