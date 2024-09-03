Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EDE969BC6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:30:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE24C10E4D1;
	Tue,  3 Sep 2024 11:30:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="LrfAxgyU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B43710E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725363008;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dxxrRERlM1KKjx6cIQxxpxez8ndiAEATgkodVQZqsO4=;
 b=LrfAxgyUyYSs/nEWox5tt+0+4RFjdnIpZ80ijy88O9lqfZz3i+qBe679tIk/ngEmjleCC3
 QIv/7/t4EckQR7KiDsHZMASeff+xJGeskqHdnqbgqUofcsB82EnYlD/mbF8AMBniOqSZYv
 MmpfLfNmNCiYgpbqecPrRAV/z5rFErg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-501-n_8Nqee1Pd6BTVpthWyapw-1; Tue, 03 Sep 2024 07:30:07 -0400
X-MC-Unique: n_8Nqee1Pd6BTVpthWyapw-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-42c881282cfso9396375e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:30:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725363006; x=1725967806;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dxxrRERlM1KKjx6cIQxxpxez8ndiAEATgkodVQZqsO4=;
 b=QxKf/RpYHyonUUX9y27cIdaMtJID126ddDLRLaS4Tq+x5GBXvzyz1A+csm2ZfBxJMh
 c3T/oIUCq422cg0BMofvnxNzKzjJmjDC7r0oJ2UnjgB9edhB04a5tyGTwE6ILbK6XoYx
 T7U4J0Xm+MjT6l2RPEDMGlPZjR+6jjvyxFRcsMLcjPpB8o77yIksoYyY8BKIFaiuVnMh
 Bk8xLgrc/SDHxMQkToEcJe/qM92WON4JjwIWXTMmjx9Ynzgt8yT+qJG+8XN6xppz/9g9
 zwhwQ33IPuAwK6cRukA074zznzkIG4p5hO8Tri3PKyuQ5JOkUxnFmoOFxxSCH8TNeNx7
 Q4bA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOwcwY1NQ6Oxg0oeH06a2NcoCd/zYIHhm452rX+f4v5xL4ycDJccpjyrSMVf7obfQ80UoV6HaAhRI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yytf405y2d0/sWgbQ+nKgX8fCfxEUyr63hQIFCrb21IvD5phN1i
 o+RJDDTk2qGJRK52dxUKqddi8ipXqEOOJ/Q02K7++5qsymHzPlJJfZTQfI6dEl0eNlRBs1BjkmK
 uAeIgaJWGkegxb5nj1mBmswBcS5XwwW6g9CInD7sZosH3ZNssJbfcNqQ/UU5k+FVlxg==
X-Received: by 2002:a05:600c:3c90:b0:428:1a48:d5cf with SMTP id
 5b1f17b1804b1-42c8de798b4mr4038955e9.9.1725363006018; 
 Tue, 03 Sep 2024 04:30:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdvAYpzgdPZsIwkrEWFvZvdn75hpa0fqZPHsIu48fvr3XJmd4Ap7A23CN95pFqKYIWUbhWWg==
X-Received: by 2002:a05:600c:3c90:b0:428:1a48:d5cf with SMTP id
 5b1f17b1804b1-42c8de798b4mr4038695e9.9.1725363005569; 
 Tue, 03 Sep 2024 04:30:05 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb6e27c70sm168136785e9.35.2024.09.03.04.30.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:30:05 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 33/81] drm/pl111: Run DRM default client setup
In-Reply-To: <20240830084456.77630-34-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-34-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:30:03 +0200
Message-ID: <8734mhf004.fsf@minerva.mail-host-address-is-not-set>
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
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/pl111/pl111_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

