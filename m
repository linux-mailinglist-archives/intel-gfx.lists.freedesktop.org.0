Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FCD969B36
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE97810E473;
	Tue,  3 Sep 2024 11:09:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Jv1iQGsD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1072310E46D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725361739;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5KNCsJ15HkUgltOPMm708gH3cAto2XwAuJxZwET5MHs=;
 b=Jv1iQGsDscG4vY8v3IFxvipGXQOyKUxFNWFIKt/GK4B+KQgs/WCoMPZuTgYrEWCnNbKI7j
 tO7q4BYEnp4KtyTmRrrNUF6ve6V2vC8T4eyFHZ4vtg7uNW3Uv9nkcZXw5rJPfSA8NlxMi4
 GYb58T03oEvyJhaNW9uNTaNJYP75cNE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-83-k-tESebiNCiTp5oebbZnJQ-1; Tue, 03 Sep 2024 07:08:58 -0400
X-MC-Unique: k-tESebiNCiTp5oebbZnJQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42c827c4d3aso19699135e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:08:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725361737; x=1725966537;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5KNCsJ15HkUgltOPMm708gH3cAto2XwAuJxZwET5MHs=;
 b=o7/yqaX0KfCuqnOtaXl9lA0GcYQKsarWZZzNUBMz+dTLE98i6T1LFpV/3CoWL15LVH
 XCAGy/tw9xkAUBn15bA/CE+LKs2B9lltV2d1quyYTnx0L0t89+hRsGXUoNWsSTm4186q
 PJfitvBdOuiBNGK1qydwXhKot3X/TJ/BNU83ROQAuMkV844SpVRyXYZRMyMCVBgGUBM3
 /RurRlL0oVl+nJy5UYwae4JNrC3Ny3pnQBpJXNfCnYu0LcsJpZuO62ofQvxNpaqH1VSS
 0/mV4BK9NW4lkq4ciZx2LN40ZlAAXE8M4/tQfqRSzAgj04P6IE+77YJwWL37A77vakuQ
 mwkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQa5nivUwro8F5U0u3RiywGorCc7n9Rdtw7ATmtcMShKc2PAr+qv4G5rYQwvRDRAW4c2LzEt+RYmQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyA11kwzCr3yeOEYpD/PHtcdjn4BRrM3JfXEGPtaiPrjOpFaS0R
 HcUzv+NW0RM0/3j3CiKFhvil+zlY9sHPxwHF9MTdfmSFX/hYl5uks73+c0p8/TIjh+q/jBoyI5r
 XVjF7KFqX6Ds0MufTynLFWbhr+kKkpg9RTgknInUgzvi91zbKsuBfQ8i9lxLeAqP41Q==
X-Received: by 2002:a05:600c:6592:b0:426:61ef:ec36 with SMTP id
 5b1f17b1804b1-42c82f13bb8mr49158855e9.0.1725361736882; 
 Tue, 03 Sep 2024 04:08:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/LIzZrmcj69ybDsKA77dubjSmW4Tpk5zW1Gf9bYbxoUzrG0GhAgYYbYf75Z9LDiQ3xPDERQ==
X-Received: by 2002:a05:600c:6592:b0:426:61ef:ec36 with SMTP id
 5b1f17b1804b1-42c82f13bb8mr49158605e9.0.1725361736297; 
 Tue, 03 Sep 2024 04:08:56 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bbc36bd88sm139398275e9.24.2024.09.03.04.08.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:08:56 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 05/81] drm/fbdev-dma: Support struct
 drm_driver.fbdev_probe
In-Reply-To: <20240830084456.77630-6-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-6-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:08:55 +0200
Message-ID: <87h6axgfjs.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Rework fbdev probing to support fbdev_probe in struct drm_driver
> and reimplement the old fb_probe callback on top of it. Provide an
> initializer macro for struct drm_driver that sets the callback
> according to the kernel configuration.
>
> This change allows the common fbdev client to run on top of DMA-
> based DRM drivers.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_fbdev_dma.c | 60 ++++++++++++++++++++-------------
>  include/drm/drm_fbdev_dma.h     | 12 +++++++
>  2 files changed, 48 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_fbdev_dma.c b/drivers/gpu/drm/drm_fbdev_dma.c
> index 7ef5a48c8029..aeccf7f7a522 100644
> --- a/drivers/gpu/drm/drm_fbdev_dma.c
> +++ b/drivers/gpu/drm/drm_fbdev_dma.c
> @@ -86,6 +86,40 @@ static const struct fb_ops drm_fbdev_dma_fb_ops = {
>  
>  static int drm_fbdev_dma_helper_fb_probe(struct drm_fb_helper *fb_helper,
>  					 struct drm_fb_helper_surface_size *sizes)
> +{

static inline for this wrapper maybe ?

> +	return drm_fbdev_dma_driver_fbdev_probe(fb_helper, sizes);
> +}
> +

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

