Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AFF67ABBF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 09:30:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA14F10E757;
	Wed, 25 Jan 2023 08:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5509310E754
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 08:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674635449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kr0S8akD6qUBjK/SM2fF6lu+0ihmEwSHU9fQtaMUMNo=;
 b=Mppe5nNW1QLUDULW9Qak8LiKCeBvmtQH++BkMM5gFXY3U+gc+JJhkcFQMI/RjYNbYcW/rY
 x3PWWdmuOMUvDuoAKVErx5fFepgK6UPXRsH7O+jiYX/e39gWDBbG1HMiKkQa1h308yJGsO
 LmpMIwqVaWChTLl8DViWrAyF2pXD2EI=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-230-_RZRj0fBNyS2Y3JQu8ukOQ-1; Wed, 25 Jan 2023 03:30:45 -0500
X-MC-Unique: _RZRj0fBNyS2Y3JQu8ukOQ-1
Received: by mail-wr1-f69.google.com with SMTP id
 o15-20020a5d684f000000b002be540246e1so2450493wrw.22
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 00:30:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kr0S8akD6qUBjK/SM2fF6lu+0ihmEwSHU9fQtaMUMNo=;
 b=yc0acsTUiFLJYOzE3rS/V+5Hface5MkcHpRB++UqCBUUn1Wn568dVUBH1s+uCizfwo
 /NcT7L8f9ij86VQhZGdDYs+xWTu9+QstzXocnTndKei9cEsRj9mxwEiiBS0itXVXeqro
 UWInbh/SqBXndihBYrCcx2GekwlkkO2A/FNvJrIFlAhIrPBb6jqPFY8IGMXZl30y2Akp
 0ZWYP+8bIMueYsrxICfpgUcKw6ysHDqQTKZ9xcm4xKaMa4RB0Z+ZzTyMqon2+GLdxw5V
 j2/w8EkevhwvcU9LG/tK4wp7GhbIrvW6NbdTm/dkoslaj9RM0+r2rLnwytYMPFMcS4q9
 TOOw==
X-Gm-Message-State: AFqh2kpkaOkLxj0XyXsLdQXkt0JWO4MtyTKk21yrNqOPAjfi/S4PGLBU
 r9MOapOfMPrCwWpRRb01KlWaxuQSPszcJwHHBg7YyaHwi4fgnFYDmf399LVaBn+nBLJxh5SH3KF
 igGVw/PA9OXA9nFhd/isopybgo9lj
X-Received: by 2002:a05:6000:388:b0:2bc:7ec3:8b2 with SMTP id
 u8-20020a056000038800b002bc7ec308b2mr29736136wrf.68.1674635444701; 
 Wed, 25 Jan 2023 00:30:44 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvJXEPl3F4VP/2Wui1NMuiLkn1RDtzF7t2lLspd9Qgz+v3EiIOxwRmTCt+QhhFH4DIAkfWI6g==
X-Received: by 2002:a05:6000:388:b0:2bc:7ec3:8b2 with SMTP id
 u8-20020a056000038800b002bc7ec308b2mr29736083wrf.68.1674635444065; 
 Wed, 25 Jan 2023 00:30:44 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 n17-20020a5d67d1000000b002425be3c9e2sm3716862wrw.60.2023.01.25.00.30.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Jan 2023 00:30:43 -0800 (PST)
Message-ID: <296bcff0-9d75-3d6b-e101-dddb26edadf1@redhat.com>
Date: Wed, 25 Jan 2023 09:30:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Thomas Zimmermann <tzimmermann@suse.de>, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org
References: <20230124134010.30263-1-tzimmermann@suse.de>
 <20230124134010.30263-2-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20230124134010.30263-2-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 01/10] drm/client: Test for connectors
 before sending hotplug event
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Thomas,

On 1/24/23 14:40, Thomas Zimmermann wrote:
> Test for connectors in the client code and remove a similar test
> from the generic fbdev emulation. Do nothing if the test fails.
> Not having connectors indicates a driver bug.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

but I've a question below.

>  drivers/gpu/drm/drm_client.c        | 5 +++++
>  drivers/gpu/drm/drm_fbdev_generic.c | 5 -----
>  2 files changed, 5 insertions(+), 5 deletions(-)

[...]

> --- a/drivers/gpu/drm/drm_fbdev_generic.c
> +++ b/drivers/gpu/drm/drm_fbdev_generic.c
> @@ -389,11 +389,6 @@ static int drm_fbdev_client_hotplug(struct drm_client_dev *client)
>  	if (dev->fb_helper)
>  		return drm_fb_helper_hotplug_event(dev->fb_helper);
>  
> -	if (!dev->mode_config.num_connector) {
> -		drm_dbg_kms(dev, "No connectors found, will not create framebuffer!\n");
> -		return 0;
> -	}
> -

What about the following code snippet:

	if (!drm_drv_uses_atomic_modeset(dev))
		drm_helper_disable_unused_functions(dev);

that seems to be something that should be in the core client dev hotplug
as well, since it isn't specific to the fbdev emulation client ?

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

