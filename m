Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49800969BE2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DF0D10E4E3;
	Tue,  3 Sep 2024 11:32:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="LBYUyt4A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D2810E4E0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725363142;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=c51g429CqBiAb8sLxTg967o4LCr9w5BY0m8TTXdBTJI=;
 b=LBYUyt4AukJGQpQGT8yQX0XtdOUMXzBvvU40LrIW8LpWM+h8FP03LtFLZ29g6e+nd2CZzg
 z1/mKYPqQuAptohD9pjPTN2sIjv6EANpUIt7meyZsR2VhFLAMZNX4Gq5AMHes2xAXvPMqq
 uGPmuHWOBgixtcLFVB8Gc4mBHiy/GQg=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-68-RbHH9FyWNPi7tNkhRssJXQ-1; Tue, 03 Sep 2024 07:32:21 -0400
X-MC-Unique: RbHH9FyWNPi7tNkhRssJXQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42bbe70c1c2so35369065e9.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:32:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725363140; x=1725967940;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=c51g429CqBiAb8sLxTg967o4LCr9w5BY0m8TTXdBTJI=;
 b=BfBC9bhUKQpMd3zx7KiWgrme/u3BSXH4KjKYivSSj7Gi3utEr6VVWC07CdIazdTuig
 qnH5klfjZxfUmcgm5qA7lRdkqJzVKoDhLQ156fu0Pc4zIO9rLIoKtE+D66Yf1SJZpMmh
 db5brGIriL6tBebH+aToH8A4kEfKVXY/ugZPOFlCMxaKYlKy1rFdXInQcWRP6SqlniYG
 5RgfnRhQW21IrCEl7FBYtoj5rufK+xF545zTstfsI4FnGxIAYwd3sX4R34hPYrVHjAER
 UKWHme4Vsnyv3T1omZWFQxK+N7R6+0TYypmaitId7+ySCUUvkrRKWfGTkN0++Fo/wVit
 3H2w==
X-Forwarded-Encrypted: i=1;
 AJvYcCX+CoplJbvzlJvMl/5qyvOWcepEIDMhyojcJnFxUQelwmAPmkklALjpHAKBfic/Ji9PUc+zfhp47io=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyQVi2V7QqjuiRgOt1p+fQKnNKMFQDBB0vVXIowqJpMY0HCOrZr
 bCaY+J8gWskpX9i83fUb5QkWODyCNz46zKqWNo6z8ICyOJWfk06mHAvobUe9scKKTUj8cug7hDI
 LZqREDkrz9OmPZiAxhq+eESWTIv5Hc7gOaSK1wRAfJsA8FNjBpM0VsXcxG/YKfVqs+g==
X-Received: by 2002:a05:600c:4591:b0:42a:a6aa:4135 with SMTP id
 5b1f17b1804b1-42bb0308417mr139793745e9.20.1725363140443; 
 Tue, 03 Sep 2024 04:32:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGp42gNprz2um//CdGf3nf4XLE2F7OEX9FA43AbT1f7fMaJeIdKj5LbeBnDqdBCONucMiA4yQ==
X-Received: by 2002:a05:600c:4591:b0:42a:a6aa:4135 with SMTP id
 5b1f17b1804b1-42bb0308417mr139793465e9.20.1725363140014; 
 Tue, 03 Sep 2024 04:32:20 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374b67ff88dsm11060831f8f.26.2024.09.03.04.32.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:32:19 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Jyri Sarha <jyri.sarha@iki.fi>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH v3 43/81] drm/tilcdc: Run DRM default client setup
In-Reply-To: <20240830084456.77630-44-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-44-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:32:18 +0200
Message-ID: <87r0a1dlbx.fsf@minerva.mail-host-address-is-not-set>
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

> Call drm_client_setup_with_color_mode() to run the kernel's default
> client setup for DRM. Set fbdev_probe in struct drm_driver, so that
> the client setup can start the common fbdev client.
>
> v3:
> - add DRM_FBDEV_DMA_DRIVER_OPS macro
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Jyri Sarha <jyri.sarha@iki.fi>
> Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/gpu/drm/tilcdc/tilcdc_drv.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

