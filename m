Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC931AAB42
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 17:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880A86EA08;
	Wed, 15 Apr 2020 15:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F27C36EA08
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 15:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586963089;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qjoV7UUa4yRjcvmATbRtOzlGZcTOLW2L0/Is7k1YqTQ=;
 b=CNAggsXJkeiOVe3yZuOvd1a8CpOATr1eT+tV6b/u4PEzKpb4wohgrr6zJq7J6gOJrRLfqA
 50xesBHwGfiz3xX6cYln26cek774xrJ+j5ESuja/5AJpIcVyFSKLKetmU59viIm5jXJiVA
 SGxtrd3RYlbGLHsPbiOnLFfRejVmf3A=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-qbu6QzFeNwiysElRalHToA-1; Wed, 15 Apr 2020 11:04:47 -0400
X-MC-Unique: qbu6QzFeNwiysElRalHToA-1
Received: by mail-wr1-f70.google.com with SMTP id 11so62008wrc.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 08:04:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qjoV7UUa4yRjcvmATbRtOzlGZcTOLW2L0/Is7k1YqTQ=;
 b=sUFG1X/5o7IJneOdTx5HjQ58qlAjI4tj0oUVfIjvELnaNYh09HzCKc6nIfmjhwYDUS
 ILHFWEDSCpLjwAwKEr1sDL5YvP5WK4z4JOmo1Lpq3wm9Pfr3OEj/QddSdp8hg8LYqQ/L
 D8srZXXWswxzYvEYix13kGQle4OmslBcSc4lNw4sPgazaPSp8XHoZF7zY7TkuLr/+MJT
 5a3iVDs4OhuDdECNyjOmMxg8zOAxCNHSEZS2Fxg4+O7DYmz1wSkEhJpTUZseFElI9KGk
 xSP9TPaUvy46lTOWo/Lco4Yb3O/FXCe6TiXJFtRFay2s/fVHjZ0gk5ZJZqNHGhj2B6ou
 u4kA==
X-Gm-Message-State: AGi0PuaRtwhF+FgSzCIy1Lw1Z5b8+9fKaIz6DqinAU3tKHkWrX1f6Vwg
 BMC/Lh+Fn0vYHL8ocgGhOrgQMwNpVrndrWIJb0G/EnWeLh7eWhlK7PRGTPPpZeFLZk1mzK1swLF
 w3F6Jxdytp693GOw8vrxqt/cyIw4w
X-Received: by 2002:a5d:694a:: with SMTP id r10mr29608657wrw.228.1586963086101; 
 Wed, 15 Apr 2020 08:04:46 -0700 (PDT)
X-Google-Smtp-Source: APiQypJyRLtqSTORCQdgg4n8rhVYMVuFz6ruZQkgZ+GE5eCFRzJcfpD0tVg1OfJRAeeKS1wcQXmz0A==
X-Received: by 2002:a5d:694a:: with SMTP id r10mr29608638wrw.228.1586963085914; 
 Wed, 15 Apr 2020 08:04:45 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id b7sm23766421wrn.67.2020.04.15.08.04.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 08:04:45 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-22-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <046dc29e-f643-b05e-a030-3b1c1ebef661@redhat.com>
Date: Wed, 15 Apr 2020 17:04:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200415074034.175360-22-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 21/59] drm/gm12u320: Use devm_drm_dev_alloc
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
> Already using devm_drm_dev_init, so very simple replacment.
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Hans de Goede <hdegoede@redhat.com>

LGTM:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>   drivers/gpu/drm/tiny/gm12u320.c | 13 ++++---------
>   1 file changed, 4 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/tiny/gm12u320.c b/drivers/gpu/drm/tiny/gm12u320.c
> index 6f0ea2827d62..907739a67bf6 100644
> --- a/drivers/gpu/drm/tiny/gm12u320.c
> +++ b/drivers/gpu/drm/tiny/gm12u320.c
> @@ -631,22 +631,17 @@ static int gm12u320_usb_probe(struct usb_interface *interface,
>   	if (interface->cur_altsetting->desc.bInterfaceNumber != 0)
>   		return -ENODEV;
>   
> -	gm12u320 = kzalloc(sizeof(*gm12u320), GFP_KERNEL);
> -	if (gm12u320 == NULL)
> -		return -ENOMEM;
> +	gm12u320 = devm_drm_dev_alloc(&interface->dev, &gm12u320_drm_driver,
> +				      struct gm12u320_device, dev);
> +	if (IS_ERR(gm12u320))
> +		return PTR_ERR(gm12u320);
>   
>   	gm12u320->udev = interface_to_usbdev(interface);
>   	INIT_DELAYED_WORK(&gm12u320->fb_update.work, gm12u320_fb_update_work);
>   	mutex_init(&gm12u320->fb_update.lock);
>   
>   	dev = &gm12u320->dev;
> -	ret = devm_drm_dev_init(&interface->dev, dev, &gm12u320_drm_driver);
> -	if (ret) {
> -		kfree(gm12u320);
> -		return ret;
> -	}
>   	dev->dev_private = gm12u320;
> -	drmm_add_final_kfree(dev, gm12u320);
>   
>   	ret = drmm_mode_config_init(dev);
>   	if (ret)
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
