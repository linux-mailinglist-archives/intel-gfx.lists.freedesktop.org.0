Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4CD1AAB3C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 17:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 145DF6EA00;
	Wed, 15 Apr 2020 15:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0596E9FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 15:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586963041;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JOi3vU3sVtkE3EcVTcnTWRDlW8umAt6ip2UXRKgd2vY=;
 b=QI2sZ5yCoo3LFXHJXIdSvZh4yn3J6MRKr8eEjPJfxwb2TpWinAC5x0qT8b0QZ2paVmUWs2
 ArGjMXBWVAZKHmSYRe0PWl4hzYlGUb567zhZhvzI+utZw8hE4oT+3favXdIODhzwQSv1tY
 1pL+XP/MJHQ/Y+FzjXwc/mpmZV4fI7w=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-pB9D2P38NomxYTYBa-nQ8w-1; Wed, 15 Apr 2020 11:03:59 -0400
X-MC-Unique: pB9D2P38NomxYTYBa-nQ8w-1
Received: by mail-wr1-f72.google.com with SMTP id e5so27406wrs.23
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 08:03:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JOi3vU3sVtkE3EcVTcnTWRDlW8umAt6ip2UXRKgd2vY=;
 b=C0osxdapmE7pUvdzfe+22QAY3zZLCHOx2XhMrwncuoakdv1rXCNLwxD/j3ZWSKuJoD
 0yBsDEHPB56i61nAVUaeVVda0rbn9oI+PXU7dKoaehrBb0dzGm/+CBYW8I7Xv/PZlFeo
 MXc0EchFklH/2sRbcdP35ES2JteEd6LDA57z57JH58sa2SXHgwlKG7qUnWiyC3AQu5Mc
 pNIzOudj6Hk8ej10FCkn/FLNWC05RpW1aL7yjhdloddZ0r+PUJr/NJp0k1LdcOqIgJlB
 kAcVbJ54aPhOQsMANN8iwOHGKwRj4pE8OWcIg81kOQ2HO7aFCjdXZNMT5Cku4UB/wksF
 37oA==
X-Gm-Message-State: AGi0PuYqDeYHsxG/7d0PzBTus6BJj0BSBqnRh34n1GEEQ/Mk+Ulqg8YH
 +83NkBwxH9Ir4KvMN6SNfaF72FNoRUtpiwvdVTMJpG4UkpVXx7fhZ8VVQBWTXD5SLZP1POfn3mw
 ZVZ87MQRtYYCZC/5iippF1lvI5Ybv
X-Received: by 2002:a5d:6841:: with SMTP id o1mr29431071wrw.412.1586963038431; 
 Wed, 15 Apr 2020 08:03:58 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ4rHhuCHWSf2IGbhoBUmD/7YFjX+fy6lr8FZtFeQ9akCO+ToARqkkyjAadq6cjmKbOWa4Rbw==
X-Received: by 2002:a5d:6841:: with SMTP id o1mr29431042wrw.412.1586963038202; 
 Wed, 15 Apr 2020 08:03:58 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id p3sm5737478wrx.82.2020.04.15.08.03.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 08:03:57 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-6-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <75d2db08-a47f-a331-84bc-b61072da94e8@redhat.com>
Date: Wed, 15 Apr 2020 17:03:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200415074034.175360-6-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 05/59] drm/vboxvidoe: use managed pci
 functions
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 4/15/20 9:39 AM, Daniel Vetter wrote:
> Allows us to drop the cleanup code on the floor.
> 
> Sam noticed in his review:
>> With this change we avoid calling pci_disable_device()
>> twise in case vbox_mm_init() fails.
>> Once in vbox_hw_fini() and once in the error path.
> 
> v2: Include Sam's review remarks
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Hans de Goede <hdegoede@redhat.com>
> ---
>   drivers/gpu/drm/vboxvideo/vbox_drv.c  | 6 ++----
>   drivers/gpu/drm/vboxvideo/vbox_main.c | 7 +------
>   2 files changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
> index cfa4639c5142..cf2e3e6a2388 100644
> --- a/drivers/gpu/drm/vboxvideo/vbox_drv.c
> +++ b/drivers/gpu/drm/vboxvideo/vbox_drv.c
> @@ -55,13 +55,13 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	pci_set_drvdata(pdev, vbox);
>   	mutex_init(&vbox->hw_mutex);
>   
> -	ret = pci_enable_device(pdev);
> +	ret = pcim_enable_device(pdev);
>   	if (ret)
>   		return ret;
>   
>   	ret = vbox_hw_init(vbox);
>   	if (ret)
> -		goto err_pci_disable;
> +		return ret;
>   
>   	ret = vbox_mm_init(vbox);
>   	if (ret)
> @@ -91,8 +91,6 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	vbox_mm_fini(vbox);
>   err_hw_fini:
>   	vbox_hw_fini(vbox);
> -err_pci_disable:
> -	pci_disable_device(pdev);
>   	return ret;
>   }
>   
> diff --git a/drivers/gpu/drm/vboxvideo/vbox_main.c b/drivers/gpu/drm/vboxvideo/vbox_main.c
> index 9dcab115a261..1336ab9795fc 100644
> --- a/drivers/gpu/drm/vboxvideo/vbox_main.c
> +++ b/drivers/gpu/drm/vboxvideo/vbox_main.c
> @@ -71,8 +71,6 @@ static void vbox_accel_fini(struct vbox_private *vbox)
>   
>   	for (i = 0; i < vbox->num_crtcs; ++i)
>   		vbva_disable(&vbox->vbva_info[i], vbox->guest_pool, i);
> -
> -	pci_iounmap(vbox->ddev.pdev, vbox->vbva_buffers);
>   }
>   
>   /* Do we support the 4.3 plus mode hint reporting interface? */

This seems to be missing the conversion of the iomap_range call to
the devm equivalent ?   :

drivers/gpu/drm/vboxvideo/vbox_main.c
44:     vbox->vbva_buffers = pci_iomap_range(vbox->ddev.pdev, 0, ...

Regards,

Hans





> @@ -125,7 +123,7 @@ int vbox_hw_init(struct vbox_private *vbox)
>   	/* Create guest-heap mem-pool use 2^4 = 16 byte chunks */
>   	vbox->guest_pool = gen_pool_create(4, -1);
>   	if (!vbox->guest_pool)
> -		goto err_unmap_guest_heap;
> +		return -ENOMEM;
>   
>   	ret = gen_pool_add_virt(vbox->guest_pool,
>   				(unsigned long)vbox->guest_heap,
> @@ -168,8 +166,6 @@ int vbox_hw_init(struct vbox_private *vbox)
>   
>   err_destroy_guest_pool:
>   	gen_pool_destroy(vbox->guest_pool);
> -err_unmap_guest_heap:
> -	pci_iounmap(vbox->ddev.pdev, vbox->guest_heap);
>   	return ret;
>   }
>   
> @@ -177,5 +173,4 @@ void vbox_hw_fini(struct vbox_private *vbox)
>   {
>   	vbox_accel_fini(vbox);
>   	gen_pool_destroy(vbox->guest_pool);
> -	pci_iounmap(vbox->ddev.pdev, vbox->guest_heap);
>   }
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
