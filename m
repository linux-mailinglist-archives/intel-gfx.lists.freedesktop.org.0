Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C4B95ADAF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 08:38:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2BC610E754;
	Thu, 22 Aug 2024 06:38:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="hkwTOUeo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4B1E10E756
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 06:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1724308699;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uVK+E7JqYfOnyi2qxxThORJHDOH0o5y8KPH+1hrP+CM=;
 b=hkwTOUeoN3ZjHuc7uiskFyniwvtkmI3jXVhuNq8CqxmMJB0uYiW1AIbwhCyZ6vXolqapyu
 aA1AIypNJqggirxNR1X4zEgfeJXt+RGLYMa6KizA9GJ+Aihq1VcaMkRsUR/cCWDzfewD91
 5rrdKHtizzWBBLrwqZjiZJAwEdKmLmM=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-654-PAF1lHNYP_qkBIehPzVItA-1; Thu, 22 Aug 2024 02:38:18 -0400
X-MC-Unique: PAF1lHNYP_qkBIehPzVItA-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-4280a434147so2934465e9.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 23:38:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724308697; x=1724913497;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=uVK+E7JqYfOnyi2qxxThORJHDOH0o5y8KPH+1hrP+CM=;
 b=lN4YPwLcZG0PsnJ0ero0FXhq67yEd2MGUhiq5OgwgTbnL0XX+i6hzDAYHCiIZ/vhQX
 I86mQEKCBacHRV4Mw/ObeLKlG8WHeHCQMoYDTsF1n6YfT++Lxy9fnKWUTrJL5dOFCsLr
 kXrODaAB+5q4aC5gknV3SN4DJ7PZEehSEGsCTkvDEDS1rgh8vAJBwkUEfdPGv3oKIgVV
 iTl6nOGHyKB0aHH2CY3dv6hbzqA9lgDGedZDj0NjMh/PlA97ihAzj4L6KVkG+uc+pdVG
 Vb9Zpy40jyuRcxbEjuR9v5HqFqqsqJnxJYpBXIgcBeWZZXx5OCqYH3KFvmQnOouTTDAX
 OFbg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW1jjoWKPAwgCmM6XaCz2ERuIDOnNgjqbuL7iwOYjpIMZ7dzPgkTupPL9ZAv79/3lex4/c1z1Y9H2g=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw3mMW0UH0vyTNRdWg5JLkJUW1thjm87bfc80iGuXEYQZIq8Dmo
 IJaoCBNIDkTvI9EYzreumXH0Mv5itq3d8zcRDmBPwsUSegOLAUv/su6K96Yz1ZHkHGyJ1HjiJAw
 zWOx3ItyZ1J1suBBwLLEOAR/SmksrP1QT/U0+0QFVlf6r9bJuS6irifNDh9DhoaP8Gw==
X-Received: by 2002:a05:600c:4fd4:b0:428:14b6:ce32 with SMTP id
 5b1f17b1804b1-42abf0501d4mr31534715e9.9.1724308697169; 
 Wed, 21 Aug 2024 23:38:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtwr4J0UTN675vbekRIcSUyus2pt7CRqEPmib2mC53f4VOYV3N82LxJmexwiSKPt5QN5iXcg==
X-Received: by 2002:a05:600c:4fd4:b0:428:14b6:ce32 with SMTP id
 5b1f17b1804b1-42abf0501d4mr31534485e9.9.1724308696580; 
 Wed, 21 Aug 2024 23:38:16 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ced3:55bd:f454:e722?
 ([2a01:e0a:c:37e0:ced3:55bd:f454:e722])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42ac51802a8sm12865735e9.40.2024.08.21.23.38.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Aug 2024 23:38:15 -0700 (PDT)
Message-ID: <43c7fcf5-d6e6-4188-bf3b-91951fac8e7a@redhat.com>
Date: Thu, 22 Aug 2024 08:38:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 51/86] drm/ast: Run DRM default client setup
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, javierm@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>
References: <20240821130348.73038-1-tzimmermann@suse.de>
 <20240821130348.73038-52-tzimmermann@suse.de>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <20240821130348.73038-52-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21/08/2024 14:59, Thomas Zimmermann wrote:
> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
> 
> The ast driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.

Thanks for this whole series.

Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>

> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Jocelyn Falempe <jfalempe@redhat.com>
> ---
>   drivers/gpu/drm/ast/ast_drv.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ast/ast_drv.c b/drivers/gpu/drm/ast/ast_drv.c
> index 225817087b4d..debdfd0e197e 100644
> --- a/drivers/gpu/drm/ast/ast_drv.c
> +++ b/drivers/gpu/drm/ast/ast_drv.c
> @@ -32,6 +32,7 @@
>   
>   #include <drm/drm_aperture.h>
>   #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_client_setup.h>
>   #include <drm/drm_drv.h>
>   #include <drm/drm_fbdev_shmem.h>
>   #include <drm/drm_gem_shmem_helper.h>
> @@ -64,7 +65,8 @@ static const struct drm_driver ast_driver = {
>   	.minor = DRIVER_MINOR,
>   	.patchlevel = DRIVER_PATCHLEVEL,
>   
> -	DRM_GEM_SHMEM_DRIVER_OPS
> +	DRM_GEM_SHMEM_DRIVER_OPS,
> +	DRM_FBDEV_SHMEM_DRIVER_OPS,
>   };
>   
>   /*
> @@ -360,7 +362,7 @@ static int ast_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	if (ret)
>   		return ret;
>   
> -	drm_fbdev_shmem_setup(drm, 32);
> +	drm_client_setup(drm, NULL);
>   
>   	return 0;
>   }

