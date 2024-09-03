Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 356BE969A68
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 12:42:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA3110E3A6;
	Tue,  3 Sep 2024 10:42:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="E52uMII6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 483E010E3B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725360124;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6lwmVfPx2sszsBri4TFoZL/uMUGIYxHzznRQSGZUMD4=;
 b=E52uMII6OAGpiXMbmHRi4kDStzop1mfkPo6CKAkke0HeCO3gJ2UW3CL2LDjWrmKgNIw2sn
 OEB9kC1kSnmr/HLcOLPjGdlE5ZbYCXj1GWl4/HOz0pSGeu9EgAkWpp/YhyoZTE0NxJUbYI
 OoVfwI2Al3pQXzYGwuzoa5Q/b+ds1pY=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-232-hhJGeiCFMTGfUXr5ANtvqw-1; Tue, 03 Sep 2024 06:42:03 -0400
X-MC-Unique: hhJGeiCFMTGfUXr5ANtvqw-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-374cd315c68so1138406f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 03:42:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725360122; x=1725964922;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6lwmVfPx2sszsBri4TFoZL/uMUGIYxHzznRQSGZUMD4=;
 b=OEXD4HHtvmpchb2ayHCpY0amDzuJNrSYUIe6keFqEpIOriQ1VQnI+M1duYtu/Imow7
 HEyoYcbPXthGO2VGPcTKwyfH5qPY+Lz23b5cYtlc/ikH7XVzVfz76lnP/s+Zr4Tw+BUU
 Xs0O8HZl8aywUJcOgTg+uc05CD/xek6A0glZ+j4sCGh3TEdidoKcuayebIpekZQ0jSxy
 Je8pqX4U+wCKsByW/uRVEs2uWsZC5wpZpBBglqOJa3KRJ3q6F3uSrUUvBwWM08TP4aE9
 uu6LtQ2cr0EITTqhx6fnoiL95JPJfF3A2sdtymqTG/ANQDP5p1Zwt2HfIfNosYjwHFh8
 IXFg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWdgXD3yuPnwOwFymU0Tmu/ToAHwhsGM0G3NKWN3bCOkj7bfPW04awsM3Zsc/ass+rFAUzSGMpopO8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxQJSUJ/wpO53iD0BQE6RIPTjSfN8/a/rqOUdMjPekYuLs5y3WJ
 kgFNCB5sR7u54+ffNW5WJiam1Q0OzehNR35hHXFZUZwV1vqppwiCBglegXl6YJ2bmGZyV24z69c
 TIcO9WaMNmdjNVhuKi419c9ciiqCW3LkRms+z01brdLfp9jIaIoXIr0NlVeDxpJWuKA==
X-Received: by 2002:a05:6000:18a7:b0:376:7a68:bc42 with SMTP id
 ffacd0b85a97d-3767a68c23dmr1148285f8f.27.1725360122022; 
 Tue, 03 Sep 2024 03:42:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHn4YS9bNBLLWoNJTDrRNeKzv2DqbtrI+GY2Fyjm7bbAi6bx9DMubdkqlGYZw08xR/rtbBxWw==
X-Received: by 2002:a05:6000:18a7:b0:376:7a68:bc42 with SMTP id
 ffacd0b85a97d-3767a68c23dmr1148260f8f.27.1725360121455; 
 Tue, 03 Sep 2024 03:42:01 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb6df0a0asm167347215e9.13.2024.09.03.03.42.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 03:42:01 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 03/81] drm/fbdev: Add memory-agnostic fbdev client
In-Reply-To: <20240830084456.77630-4-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-4-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 12:42:00 +0200
Message-ID: <87jzftggsn.fsf@minerva.mail-host-address-is-not-set>
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

> Add an fbdev client that can work with any memory manager. The
> client implementation is the same as existing code in fbdev-dma or
> fbdev-shmem.
>
> Provide struct drm_driver.fbdev_probe for the new client to allocate
> the surface GEM buffer. The new callback replaces fb_probe of struct
> drm_fb_helper_funcs, which does the same.
>
> To use the new client, DRM drivers set fbdev_probe in their struct
> drm_driver instance and call drm_fbdev_client_setup(). Probing and
> creating the fbdev surface buffer is now independent from the other
> operations in struct drm_fb_helper. For the pixel format, the fbdev
> client either uses a specified format, the value in preferred_depth
> or 32-bit RGB.
>
> v2:
> - test for struct drm_fb_helper.funcs for NULL (Sui)
> - respect struct drm_mode_config.preferred_depth for default format
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

