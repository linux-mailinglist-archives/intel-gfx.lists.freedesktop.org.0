Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3548651DE0
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C3C10E370;
	Tue, 20 Dec 2022 09:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC17310E36E
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671529598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ykdKuygOSTPkcM25esQW4i241lwYH2V5lSGsmvsr/ls=;
 b=BldQbzBhuE0/5vrwaJdn65DNG2D+TkgHJnSVkCFDElj8SV5/SrhPac9qhRT98S7FRhBuih
 9cdMIme56nIL1SK+biulHxp27arVWr8wn74JQigP4HP7begtgzn+nqY9uBi8RaextJeRG/
 NJKDT7If1x105Ugs4WEheobLpymJzVU=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-227-qJwX7qs7N8GJVNT88z0mHQ-1; Tue, 20 Dec 2022 04:46:37 -0500
X-MC-Unique: qJwX7qs7N8GJVNT88z0mHQ-1
Received: by mail-wm1-f72.google.com with SMTP id
 b47-20020a05600c4aaf00b003d031aeb1b6so7801281wmp.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:46:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ykdKuygOSTPkcM25esQW4i241lwYH2V5lSGsmvsr/ls=;
 b=yHxMe3nEa18XIW7//aOOkkRQF4kzhYftN65tpIkocdSzAGQVi+LdT5mn01fJR3UYcp
 wJTIH8mbUYVMBzX/N5alRRdT535+6s++IhbHjNovpkac0hh6/7A61mLLXvyYXIFnfSdF
 m3jHmY9bDc3BlEhs8+4ow2W5uX8Ouv+KabLjDP2Y5eCvR4p8naFoSwEO9VbFbzNj2UtQ
 gW4aptAjQ3W+4SZjoJb/s9LuAPl+yHlSxDLc/PZgJL3f9vi7Be4WZq0q3tmTGntU9g+c
 DMF+V+n6pgc1QnpfM201FraciIqbrUrWAa0ppZFFI16jQtWDid3+e9CybMgkbJDg5JnM
 cvwg==
X-Gm-Message-State: AFqh2kq0aKS2U3+pY4bKGf5yXkcW3CuAm6vnfnnLGlaZhemnCW0Q8S5p
 RkP1ZTsMcgf2HiKWqpv41+UTv0S1EouYqj0rIATudseVylJSoFWOau/zwoFsdUf+7tW6mgh+Ckd
 l8XPIlZHEXn9IS7WRn2/5NhqBpNWz
X-Received: by 2002:a05:6000:718:b0:256:ce1b:74ac with SMTP id
 bs24-20020a056000071800b00256ce1b74acmr19147670wrb.29.1671529596403; 
 Tue, 20 Dec 2022 01:46:36 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvJLK/eM71NU46wbs2aboKoDtpTCvPv8+GeJSh+yzufeE4NK5CbBNZkmGr9N2Pg6bIDfe3F3Q==
X-Received: by 2002:a05:6000:718:b0:256:ce1b:74ac with SMTP id
 bs24-20020a056000071800b00256ce1b74acmr19147664wrb.29.1671529596230; 
 Tue, 20 Dec 2022 01:46:36 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 c16-20020adffb50000000b002365254ea42sm12325758wrs.1.2022.12.20.01.46.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:46:35 -0800 (PST)
Message-ID: <978cd907-65ce-2a89-e046-17a75c0ab832@redhat.com>
Date: Tue, 20 Dec 2022 10:46:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-19-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-19-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 18/18] drm/fbdev: Remove aperture handling
 and FBINFO_MISC_FIRMWARE
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
> There are no users left of struct fb_info.apertures and the flag
> FBINFO_MISC_FIRMWARE. Remove both and the aperture-ownership code
> in the fbdev core. All code for aperture ownership is now located
> in the fbdev drivers.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/video/fbdev/core/fbmem.c   | 33 ------------------------------
>  drivers/video/fbdev/core/fbsysfs.c |  1 -
>  include/linux/fb.h                 | 22 --------------------
>  3 files changed, 56 deletions(-)

Nice patch!

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

