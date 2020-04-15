Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9632B1AAB33
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 17:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9FAB6E9FF;
	Wed, 15 Apr 2020 15:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2C3E6E9FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 15:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586962933;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=myXKXkPhI0YO5uvHdoGbAr5c30JpzJRFVuKEAMn7Ras=;
 b=fH2AMp15mDfg4w1rF1+vRjr+VKZPvyk/epfAyhE0eWRr/kBnFpXkY4yH4mzdZ4jNGY+OlE
 zP98KFbhsPluu08UzV3VHw0EyNl3GSsFOyGxotICZekBBo0CRf3+81mWOhWky6+XYIMjuX
 T7sMtHHKHGQAokB3ut9ZouLFRRqq+Ns=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-z224PSLaO6OWBDnasY-JDQ-1; Wed, 15 Apr 2020 11:02:12 -0400
X-MC-Unique: z224PSLaO6OWBDnasY-JDQ-1
Received: by mail-wr1-f69.google.com with SMTP id h14so41883wrr.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 08:02:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=myXKXkPhI0YO5uvHdoGbAr5c30JpzJRFVuKEAMn7Ras=;
 b=Q40NUp0gWuSe2WkJ9eGWGhHNUjNwiC9tq/rcQF18vH4WzKFrEPXaYAeAm4DGqGUKG8
 D8I077U3DJOzTZibeUO60HaTHCop8O6CtOfOMkdDADxeoHnVrRrpWPirzWqwNdLlFHRK
 Xfmbp7UkEE+Hseh7OavP1qT3iMSKMduCH/QJwXO5Bum5UEL7k3FUrb27uu/59+rPj0LH
 e1czp4WPyx03a9Lsyt6WJnREuX5p7zje9Uy4fm7EeRVcajF1ZHeGahmYLq8xJQANhuf6
 3693cZIjVzQemZ1Wwftb7DtJ03QSqLEqUWkVHVN8ECdrX4entcDWoY8KYI1RgnJNfbpo
 VHGg==
X-Gm-Message-State: AGi0Pub9OVh7ITZX9o+Kv4Ar3N6gR6VhSEQHLWnrw3Z33CTQPmyjrMij
 E4UMM2JO+reHSLVyhhMjCGU8dbUcqIj2l0t+8ir42HDHghNvUrGQ2vFDg3Bzq/ECpkOKDvNWW+v
 lRq0RlBOn+NiIx6+ZU+lxpgcm6l3W
X-Received: by 2002:a1c:1f8e:: with SMTP id f136mr5463877wmf.166.1586962930566; 
 Wed, 15 Apr 2020 08:02:10 -0700 (PDT)
X-Google-Smtp-Source: APiQypLh6eLZN8FjmFn+CItFuUjpHT6h97ckl+foTbrICqX92GwQYad70pu2toY2tjYZ5dhwbegsFg==
X-Received: by 2002:a1c:1f8e:: with SMTP id f136mr5463775wmf.166.1586962929424; 
 Wed, 15 Apr 2020 08:02:09 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id f63sm22744288wma.47.2020.04.15.08.02.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 08:02:08 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-4-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <223676df-c1a1-853b-cf5a-ccba1954170a@redhat.com>
Date: Wed, 15 Apr 2020 17:02:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200415074034.175360-4-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 03/59] drm/vboxvideo: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 4/15/20 9:39 AM, Daniel Vetter wrote:
> Straightforward conversion.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Hans de Goede <hdegoede@redhat.com>

LGTM:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>   drivers/gpu/drm/vboxvideo/vbox_drv.c | 19 +++++--------------
>   1 file changed, 5 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
> index 282348e071fe..7dd25c7a3768 100644
> --- a/drivers/gpu/drm/vboxvideo/vbox_drv.c
> +++ b/drivers/gpu/drm/vboxvideo/vbox_drv.c
> @@ -46,25 +46,19 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	if (ret)
>   		return ret;
>   
> -	vbox = kzalloc(sizeof(*vbox), GFP_KERNEL);
> -	if (!vbox)
> -		return -ENOMEM;
> -
> -	ret = drm_dev_init(&vbox->ddev, &driver, &pdev->dev);
> -	if (ret) {
> -		kfree(vbox);
> -		return ret;
> -	}
> +	vbox = devm_drm_dev_alloc(&pdev->dev, &driver,
> +				  struct vbox_private, ddev);
> +	if (IS_ERR(vbox))
> +		return PTR_ERR(vbox);
>   
>   	vbox->ddev.pdev = pdev;
>   	vbox->ddev.dev_private = vbox;
>   	pci_set_drvdata(pdev, vbox);
> -	drmm_add_final_kfree(&vbox->ddev, vbox);
>   	mutex_init(&vbox->hw_mutex);
>   
>   	ret = pci_enable_device(pdev);
>   	if (ret)
> -		goto err_dev_put;
> +		return ret;
>   
>   	ret = vbox_hw_init(vbox);
>   	if (ret)
> @@ -100,8 +94,6 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	vbox_hw_fini(vbox);
>   err_pci_disable:
>   	pci_disable_device(pdev);
> -err_dev_put:
> -	drm_dev_put(&vbox->ddev);
>   	return ret;
>   }
>   
> @@ -114,7 +106,6 @@ static void vbox_pci_remove(struct pci_dev *pdev)
>   	vbox_mode_fini(vbox);
>   	vbox_mm_fini(vbox);
>   	vbox_hw_fini(vbox);
> -	drm_dev_put(&vbox->ddev);
>   }
>   
>   #ifdef CONFIG_PM_SLEEP
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
