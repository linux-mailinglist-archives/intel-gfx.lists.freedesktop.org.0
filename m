Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBBC444389
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 15:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB8A6EA2C;
	Wed,  3 Nov 2021 14:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D3566EA40
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 14:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635949720;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wjCrBXWwYzBj3m1TWb42Da2qoJJrqcfHeMnXi0fhczc=;
 b=jJRai2dU4RM0+tEparQIsy8VlNos8VTqdrSBYtIrFZw/5y0eTbyygdrQQIbYDmxdrV733S
 4/Z740NgcmNgE30MAjkpOU3Tov/Fad95YsnCplfC4vEknjVxobG50/9yA6CVIeYQFbET0D
 bAofaeTCbtBiPAqi2yUZKEVNFAyXjXQ=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-ZcFoxa_LP-qVO0FLkbLydg-1; Wed, 03 Nov 2021 10:28:39 -0400
X-MC-Unique: ZcFoxa_LP-qVO0FLkbLydg-1
Received: by mail-wm1-f69.google.com with SMTP id
 v5-20020a1cac05000000b0032ccf04ba2cso2838245wme.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Nov 2021 07:28:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=wjCrBXWwYzBj3m1TWb42Da2qoJJrqcfHeMnXi0fhczc=;
 b=NgDN+2PTNCc/XbsZiWqybO4539IijG9LNOhwX8kljiBACCQORPXBOou471+mgcgsUs
 sPqf7Dz8FJl/TUhgnUbq4/a4HlHDHkaeorHS2JWNhGEgiikAPbrb6t3Mpu6wJKIxU9Yw
 2HvuxtgAAR5XPW7SmcKVhstZcoRPq7ycztgKVZZy4iMJCp/oD8hJ8Twy+TXJcow9Mkoj
 O8X5H5TI2Ah3IbdkVtfIYZR0ooRKf3b2uPU42Xe7965FROIa+zzmT4H+k+SLd2nOth73
 odPCIyH3S1ftmsykIPQmhqmbbpH6TFdi8f23hqy1tuvEt03FHwiMFukM4TM3qfKbs+z0
 3Grg==
X-Gm-Message-State: AOAM532EQ4uGfADJL1PSBOFUm7sH3az146o0AKF9xskfZKJe9aE0KwAD
 BMqBgGf3sim+B+YlSiEuMbscSlhTNtqlB8HaRjfHkRBbkUz51krND+YrcLSnCDPKIFtmFXNLtqJ
 VhDaOiDIgQpJkGJNKKtD35Nogz7mj
X-Received: by 2002:a5d:6d88:: with SMTP id l8mr21502526wrs.270.1635949718047; 
 Wed, 03 Nov 2021 07:28:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJygbrJwATC2G/bV3PqN0MYXRcgYe3aBtB674/ombGZ2HxFPH0E2H3yEXKRBe/gbkyWGcW/pQQ==
X-Received: by 2002:a5d:6d88:: with SMTP id l8mr21502482wrs.270.1635949717828; 
 Wed, 03 Nov 2021 07:28:37 -0700 (PDT)
Received: from [192.168.1.128] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id z8sm2163734wrh.54.2021.11.03.07.28.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Nov 2021 07:28:37 -0700 (PDT)
Message-ID: <5b4e4534-4786-d231-e331-78fdb5d8496a@redhat.com>
Date: Wed, 3 Nov 2021 15:28:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org
References: <20211103122809.1040754-1-javierm@redhat.com>
 <20211103122809.1040754-4-javierm@redhat.com>
 <eddc2967-8355-b64a-79d8-6c1cda1bc732@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <eddc2967-8355-b64a-79d8-6c1cda1bc732@suse.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RESEND PATCH 3/5] drm: Rename vgacon_text_force()
 function to drm_modeset_disabled()
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Gurchetan Singh <gurchetansingh@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Dave Airlie <airlied@redhat.com>,
 amd-gfx@lists.freedesktop.org,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, Neal Gompa <ngompa13@gmail.com>,
 spice-devel@lists.freedesktop.org,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Peter Robinson <pbrobinson@gmail.com>, intel-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/3/21 13:57, Thomas Zimmermann wrote:

[snip]

>>   
>> -	if (vgacon_text_force()) {
>> +	if (drm_modeset_disabled()) {
>>   		DRM_ERROR("amdgpu kernel modesetting disabled.\n");
> 
> Please remove all such error messages from drivers. 
> drm_modeset_disabled() should print a unified message instead.
>

Agreed.

>> -static bool vgacon_text_mode_force;
>> +static bool drm_nomodeset;
>>   
>> -bool vgacon_text_force(void)
>> +bool drm_modeset_disabled(void)
> 
> I suggest to rename this function to drm_check_modeset() and have it 
> return a negative errno code on failure. This gives maximum flexibility 
> and reduces errors in drivers. Right now the drivers return something 
> like -EINVAL, which seems wrong. Returning -ENODEV seems more appropriate.
>

Good idea. I'll do it in v2 as well.
 
Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

