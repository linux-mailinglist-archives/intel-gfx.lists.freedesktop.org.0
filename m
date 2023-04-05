Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5073B6D83A5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 18:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 724CF10EA13;
	Wed,  5 Apr 2023 16:27:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D234210EA16
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 16:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680712041;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BepbRdXMmknjyJpXJ6R3qQ1sNQIxMV2arEMQCnNCsRo=;
 b=UGBTpxrEkKPEvMvTY9MfhqZNjUP7OdxgnV6+Z2VKqTA7e/qyizA1Dsv7jYh0QDUJ4ZnsUM
 5zTS3LJadEyUqkUmFJm4lVNMGfBpLORAHQZ1lARs4pp2xXhPpARuN7l/Mgi2Sc7FqEKy9j
 5nnkmzjAgYSTLIYn/dLuKeZIExuxOdc=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-621-FwPo3-QFM161sW8leWGBoA-1; Wed, 05 Apr 2023 12:27:19 -0400
X-MC-Unique: FwPo3-QFM161sW8leWGBoA-1
Received: by mail-wm1-f69.google.com with SMTP id
 bg33-20020a05600c3ca100b003ef6d684105so15059290wmb.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 09:27:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680712038;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BepbRdXMmknjyJpXJ6R3qQ1sNQIxMV2arEMQCnNCsRo=;
 b=ouJ82Y6HS77U19xsTPJBNCuoqZG1W36ACd4h+GU2bxf4WIsdwnPuBxHbIm+HHqC5JV
 IPg78v5cYuFBgYXAWJh2rSDbWj/xQMVkOg46Bs6jRsgEtMzjYHgalsKC5YgG1XMYwBCi
 VKl5iEooWCTiKNvkn8jGEif9lt2cjHPno0/t22rZ3F9azJ9xfMLSq0WbFmB/hVq15Xxu
 lL8JPf/YGEk5e9s0KZ9B+G9V2zakQznbSpkExREvJhIwB0efQ5JhvRmZDiMwflsdaNEn
 EC5NJ8Nxu6PdYvctO0GQOK0TGTstLCyTMniB33BPc5FpWNmsxdqxcr3RwTEJnDMfnxyb
 Wqtg==
X-Gm-Message-State: AAQBX9ffs8+KURkv4VQlkWASI0GBExZuSt/o9uqDNgx0juDvkTkG9Yp4
 PB15rRsSchHoD7D1L/+2t9XkbNadewmUiex+cm3s7GH4AN/p48fkSkZPtUq5cPRCf7lg8s5CXp0
 gc2OoBsP0x+/IXGVMDvgKATs/cxbW
X-Received: by 2002:adf:db4d:0:b0:2d1:7ade:aad with SMTP id
 f13-20020adfdb4d000000b002d17ade0aadmr4963257wrj.31.1680712038614; 
 Wed, 05 Apr 2023 09:27:18 -0700 (PDT)
X-Google-Smtp-Source: AKy350be0ydhuGHVuI4dvQaCzef1K++pPNT56jl9mJW1ZgzNP+ITW5Avc2lYYjw5qxrGjFAo0K1NxA==
X-Received: by 2002:adf:db4d:0:b0:2d1:7ade:aad with SMTP id
 f13-20020adfdb4d000000b002d17ade0aadmr4963244wrj.31.1680712038275; 
 Wed, 05 Apr 2023 09:27:18 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 v12-20020a5d4b0c000000b002cfed482e9asm15380895wrq.61.2023.04.05.09.27.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 09:27:18 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <ZC12aR9ddp3j/3dL@phenom.ffwll.local>
References: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
 <20230404194038.472803-3-daniel.vetter@ffwll.ch>
 <87a5zmd2jn.fsf@minerva.mail-host-address-is-not-set>
 <ZC12aR9ddp3j/3dL@phenom.ffwll.local>
Date: Wed, 05 Apr 2023 18:27:17 +0200
Message-ID: <87ilea9twa.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/fb-helper: fix input validation
 gaps in check_var
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel@ffwll.ch> writes:

[...]

>> 
>> but only the 'var->xres > fb->width || var->yres > fb->height' from the
>> conditions checked could be false after your __fill_var() call above.
>> 
>> You should drop the 'var->bits_per_pixel > bpp', 'var->xres_virtual >
>> fb->width' and 'var->yres_virtual > fb->height' checks I believe since
>> those will always be true.
>
> The __fill_var is after this. I'm honestly not sure what the exact

Ah, your patch adds it after that indeed. Please ignore my comment then.

> semantics are supposed to be, but essentially if userspace asks for too
> big virtual size, we reject it. And for anything else we then tell it
> (with __fill_var) how big the actually available space is.
>
> What I'm wondering now is whether too small x/yres won't lead to problems
> of some sorts ... For multi-screen we set the virtual size to be big
> enough for all crtc, and then just set x/yres to be the smallest output.
> That way fbcon knows to only draw as much as is visible on all screens.
> But if you then pan that too much, the bigger screens might not have a big
> enough buffer anymore and things fail (but shouldn't).
>
> Not sure how to fix that tbh.

Would this be a problem in practice?

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

