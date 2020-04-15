Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A72681AAB3E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 17:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D146EA07;
	Wed, 15 Apr 2020 15:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7936EA08
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 15:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586963054;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5cVMTFnt7DCp/CelD7mmJStwUUEh4AlTLPQyaZCMRw8=;
 b=X9ff56Vil61MbtNEDAZq80IBgNra64dRim2Bwx4fEN59bnhtjD1gyKgSMCPnvj3ckgYCJP
 YMrikHHjDOwTrA1q8OrjtPumHhG2jvfVYVfwmNeT1z0awpE5F8410l3R82UqWvlAylF/AQ
 SylhBlM71BVF2VYh5PqEH3iAlB2oJDQ=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-h1eqtmfoN8a8mUnt4j1dYA-1; Wed, 15 Apr 2020 11:04:08 -0400
X-MC-Unique: h1eqtmfoN8a8mUnt4j1dYA-1
Received: by mail-wm1-f69.google.com with SMTP id d134so130491wmd.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 08:04:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5cVMTFnt7DCp/CelD7mmJStwUUEh4AlTLPQyaZCMRw8=;
 b=lsFdyKgH3uPwjweBgYtzEh6N6cQzASz8rbr6CUTzSrqTYHnSStutTBQtceLlUBaKgI
 tuDVHq/TluO4CbN6059kmIBwJPVwyRCJUwOsVucs5F+ZdWvi+dYXghu/r4fz2CqmuaMZ
 8Wjvkm9LEYhv6e84GD+TdYzJcy799dvayJIYJM/KVNCJ3tYl1q5b3SVrnF7Jagm7AOCl
 UTihUdvn5u06WWK4bFfeH/F9SMjE38ff5VusDgKgQIcRjINSGMfXey0wgRYN8n5Zv4U6
 RkN+2s3jqId5KXJLq8zJbtqxV6s8QHC/xeST5cHqrAx54G42FwVRHcOqA7scQlfdOY/C
 DSrg==
X-Gm-Message-State: AGi0PuZpBtsrArx3pXmpRVH5Gdm/ODQuokbv7zhlsPXeKcvJmmCIDd/N
 mSbBCblZAMi+jX1tuuYpj5TOWvGNxAUhglcS0UGEGMt5pKNStXfqWzILsNzOwrj/I4Lo0TK6Mi7
 kydrYqMTuOObINLF6TjrBiAh9kgCT
X-Received: by 2002:adf:8b48:: with SMTP id v8mr31634819wra.342.1586963046640; 
 Wed, 15 Apr 2020 08:04:06 -0700 (PDT)
X-Google-Smtp-Source: APiQypKNpVZSGQSMbqFxcUHxaJypr6tyU74/diLIVyCVj9dtr3NoAOni37rKCeL1o3ZzyeUvjUIjYA==
X-Received: by 2002:adf:8b48:: with SMTP id v8mr31634799wra.342.1586963046425; 
 Wed, 15 Apr 2020 08:04:06 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id v7sm273585wmg.3.2020.04.15.08.04.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 08:04:05 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-7-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <62e5c3c1-1c14-6450-e525-ce338c951687@redhat.com>
Date: Wed, 15 Apr 2020 17:04:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200415074034.175360-7-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 06/59] drm/vboxvideo: Use
 devm_gen_pool_create
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
> Aside from deleting all the cleanup code we're now also setting a name
> for the pool
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Hans de Goede <hdegoede@redhat.com>

LGTM:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>   drivers/gpu/drm/vboxvideo/vbox_main.c | 22 ++++++++--------------
>   1 file changed, 8 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vboxvideo/vbox_main.c b/drivers/gpu/drm/vboxvideo/vbox_main.c
> index 1336ab9795fc..d68d9bad7674 100644
> --- a/drivers/gpu/drm/vboxvideo/vbox_main.c
> +++ b/drivers/gpu/drm/vboxvideo/vbox_main.c
> @@ -121,7 +121,8 @@ int vbox_hw_init(struct vbox_private *vbox)
>   		return -ENOMEM;
>   
>   	/* Create guest-heap mem-pool use 2^4 = 16 byte chunks */
> -	vbox->guest_pool = gen_pool_create(4, -1);
> +	vbox->guest_pool = devm_gen_pool_create(vbox->ddev.dev, 4, -1,
> +						"vboxvideo-accel");
>   	if (!vbox->guest_pool)
>   		return -ENOMEM;
>   
> @@ -130,12 +131,12 @@ int vbox_hw_init(struct vbox_private *vbox)
>   				GUEST_HEAP_OFFSET(vbox),
>   				GUEST_HEAP_USABLE_SIZE, -1);
>   	if (ret)
> -		goto err_destroy_guest_pool;
> +		return ret;
>   
>   	ret = hgsmi_test_query_conf(vbox->guest_pool);
>   	if (ret) {
>   		DRM_ERROR("vboxvideo: hgsmi_test_query_conf failed\n");
> -		goto err_destroy_guest_pool;
> +		return ret;
>   	}
>   
>   	/* Reduce available VRAM size to reflect the guest heap. */
> @@ -147,30 +148,23 @@ int vbox_hw_init(struct vbox_private *vbox)
>   
>   	if (!have_hgsmi_mode_hints(vbox)) {
>   		ret = -ENOTSUPP;
> -		goto err_destroy_guest_pool;
> +		return ret;
>   	}
>   
>   	vbox->last_mode_hints = devm_kcalloc(vbox->ddev.dev, vbox->num_crtcs,
>   					     sizeof(struct vbva_modehint),
>   					     GFP_KERNEL);
> -	if (!vbox->last_mode_hints) {
> -		ret = -ENOMEM;
> -		goto err_destroy_guest_pool;
> -	}
> +	if (!vbox->last_mode_hints)
> +		return -ENOMEM;
>   
>   	ret = vbox_accel_init(vbox);
>   	if (ret)
> -		goto err_destroy_guest_pool;
> +		return ret;
>   
>   	return 0;
> -
> -err_destroy_guest_pool:
> -	gen_pool_destroy(vbox->guest_pool);
> -	return ret;
>   }
>   
>   void vbox_hw_fini(struct vbox_private *vbox)
>   {
>   	vbox_accel_fini(vbox);
> -	gen_pool_destroy(vbox->guest_pool);
>   }
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
