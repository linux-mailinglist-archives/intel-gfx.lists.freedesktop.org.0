Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 478A1651DA4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:41:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0666510E35E;
	Tue, 20 Dec 2022 09:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1B7B10E35E
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671529233;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1J4eLv+5To8BjnLItTbs6pq8g5LjZHk9PMjLEQIi8Lo=;
 b=DhiHk/HyImR4HtOMcFN2LQsGDLUfzWRwh3sFdcTSOXC1iJq7ca4jlIQNnXv1idjBWtUnKP
 IOOySZuIBlswiIhQ7Zj5LMjCwJEspwvGbdp4Q6uBkUk9hverLhJ51jx3ipewVNL1569JWy
 BztCJxnbz4qb3FNgdCDwlF4NWX9JRBM=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-338-gLW8C6sePZGDUOmPRRBsaQ-1; Tue, 20 Dec 2022 04:40:32 -0500
X-MC-Unique: gLW8C6sePZGDUOmPRRBsaQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 t24-20020a1c7718000000b003d1fd0b866fso2410299wmi.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:40:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1J4eLv+5To8BjnLItTbs6pq8g5LjZHk9PMjLEQIi8Lo=;
 b=M7eERG1mr8YCoJWqqMum6OpfODmIuAmO1CDJE1tIBfff0fD6AFBHEXBoo5cJ1xtNHe
 kbwO36+ZEqTlAYrOFtjUUzfNsvOzkFFcwm11orzBWxOXgC2ngcY6EUIJ5u7JuIOS7Ov2
 9Y7BOMn+0yNoI7/aJInHN803ZWQU8DMeTqqbXbPABcNeMvySxaZD4kjMTJ1zvkyTQvkY
 TffMqyPgMWuAW4oz9kAHINRAHfYh1tFcXX2eok+EKQgPS6NU9WysxyKIy/QmyVAF3sie
 Z3cpw6GgttyaXFx3/IH2a4wIMHL8/sk8bMtarLVbaIcAqKFuz0Vmm61Qy5Bl4NHGJbJz
 QnLg==
X-Gm-Message-State: ANoB5plE2GyDKY1gX+wX4bzOhphpZDjtz75rUOERxuR3TT52eKSyHoUT
 7vdZWvv7ovJGnmJPJ3TySxrhgkFyr/MHkASKTBSEhP4x1ZAs+xyc8MSgJ1HCfM1jQgZFb4huJdV
 tkAZceMPgsuhys2fBnbvojvBmF/et
X-Received: by 2002:a05:600c:1c14:b0:3d0:965f:63ed with SMTP id
 j20-20020a05600c1c1400b003d0965f63edmr33960394wms.23.1671529231166; 
 Tue, 20 Dec 2022 01:40:31 -0800 (PST)
X-Google-Smtp-Source: AA0mqf71wOlxFtTuSNW/9jMXBnVwUZwb2b/kuKlWfvoG3RUuoMrRINee90ZtVa/GrwK8ITxjbcPFuQ==
X-Received: by 2002:a05:600c:1c14:b0:3d0:965f:63ed with SMTP id
 j20-20020a05600c1c1400b003d0965f63edmr33960383wms.23.1671529230999; 
 Tue, 20 Dec 2022 01:40:30 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 p2-20020a05600c358200b003d1f2c3e571sm24392373wmq.33.2022.12.20.01.40.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:40:30 -0800 (PST)
Message-ID: <1dd11b16-bf9d-4b86-14c7-095804a2f66d@redhat.com>
Date: Tue, 20 Dec 2022 10:40:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-15-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-15-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 14/18] fbdev/simplefb: Do not use struct
 fb_info.apertures
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
Cc: linux-fbdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-hyperv@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/19/22 17:05, Thomas Zimmermann wrote:
> Acquire ownership of the firmware scanout buffer by calling Linux'
> aperture helpers. Remove the use of struct fb_info.apertures and do
> not set FBINFO_MISC_FIRMWARE; both of which previously configured
> buffer ownership.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

