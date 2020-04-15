Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 969351AAB31
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 17:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5658A6E9E8;
	Wed, 15 Apr 2020 15:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 459A86E9FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 15:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586962926;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hXjJfqb1U96vvZrVwAODGvJGqbQrS92nxYoPc5fUlcs=;
 b=G2l43xHHmsxyiGR6bsZcSeB+5fnNdcwkyi3dlCu5Cbuw4otFn4d8BXjVsSUhc5g9OpfcTx
 m3N5xX0kQxXsJe++b/yLZ8FWSadCv4SRu3o0JZONOfM3lym5pjVEfbrnW+tQ2U2GV1joVK
 vICTW+JY0fZDX9HiLVF/jKrYG5aa4LQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-O1Pc0-wRMG-t28lCzltETw-1; Wed, 15 Apr 2020 11:02:02 -0400
X-MC-Unique: O1Pc0-wRMG-t28lCzltETw-1
Received: by mail-wr1-f70.google.com with SMTP id j12so33249wrr.18
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 08:02:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hXjJfqb1U96vvZrVwAODGvJGqbQrS92nxYoPc5fUlcs=;
 b=BbhvLiFT8IU5b32HQC0LAXKZTZDmwyVVdHb14Xp0bnwfVCWmzc8HykuXoyHzgee1A5
 SiUbDz9HJKH/v9wh1+wzYgkGkgGpliE4NPjgr1alcJ2vzf4wBm40z0hJQ5uCF9tsH8ke
 TDYNQFRhYkBi0K2XTdvwkXH9m4/nbPnjoX82MpmcyK4X7qq7CGG81Y951aiAF+K/ojHv
 dD2fOxTz8bdpUj8OXXmMX16eeQKGe4AkPZJDG2CQ8z4ceLroFNGYRzeGlqYBjIoc0T9W
 iAWvryl6n2+w6dXhzubUzJmNuRBvcJ/szn4wwoDpkOynuC7HWmSUa8svR8a+5wKUhpug
 dO0g==
X-Gm-Message-State: AGi0PuYu4QEGoOIXIFTkvXRIc49UC8hWzWDlUup0IFX1a92KHMoI1uYC
 UzzHEpLv4ZWJdjRr0DWxopb0lFy1qGERz/gV1gF83p5DO6JrB8Zq1EHpeImcUHEHZusbEa4Qlzu
 F9CtPMoO02WZPLeoIx97BQlO1q/8J
X-Received: by 2002:adf:f844:: with SMTP id d4mr10753601wrq.362.1586962921111; 
 Wed, 15 Apr 2020 08:02:01 -0700 (PDT)
X-Google-Smtp-Source: APiQypKja/NIudjlcVfSN4PEsoSFqaDVxDRDm4uqTUCeX4kV20hM54w6Ij4HPsdqnDq+GsoHhFBbIA==
X-Received: by 2002:adf:f844:: with SMTP id d4mr10753537wrq.362.1586962920520; 
 Wed, 15 Apr 2020 08:02:00 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id d13sm14440192wmb.39.2020.04.15.08.01.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 08:01:59 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-3-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <8cf4f357-1e30-cc23-f743-e33449820862@redhat.com>
Date: Wed, 15 Apr 2020 17:01:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200415074034.175360-3-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 02/59] drm/vboxvideo: drop DRM_MTRR_WC
 #define
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
> Doesn't apply to upstream kernels since a rather long time.
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Hans de Goede <hdegoede@redhat.com>

LGTM:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>   drivers/gpu/drm/vboxvideo/vbox_ttm.c | 12 ------------
>   1 file changed, 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vboxvideo/vbox_ttm.c b/drivers/gpu/drm/vboxvideo/vbox_ttm.c
> index 976423d0c3cc..f5a06675da43 100644
> --- a/drivers/gpu/drm/vboxvideo/vbox_ttm.c
> +++ b/drivers/gpu/drm/vboxvideo/vbox_ttm.c
> @@ -24,25 +24,13 @@ int vbox_mm_init(struct vbox_private *vbox)
>   		return ret;
>   	}
>   
> -#ifdef DRM_MTRR_WC
> -	vbox->fb_mtrr = drm_mtrr_add(pci_resource_start(dev->pdev, 0),
> -				     pci_resource_len(dev->pdev, 0),
> -				     DRM_MTRR_WC);
> -#else
>   	vbox->fb_mtrr = arch_phys_wc_add(pci_resource_start(dev->pdev, 0),
>   					 pci_resource_len(dev->pdev, 0));
> -#endif
>   	return 0;
>   }
>   
>   void vbox_mm_fini(struct vbox_private *vbox)
>   {
> -#ifdef DRM_MTRR_WC
> -	drm_mtrr_del(vbox->fb_mtrr,
> -		     pci_resource_start(vbox->ddev.pdev, 0),
> -		     pci_resource_len(vbox->ddev.pdev, 0), DRM_MTRR_WC);
> -#else
>   	arch_phys_wc_del(vbox->fb_mtrr);
> -#endif
>   	drm_vram_helper_release_mm(&vbox->ddev);
>   }
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
