Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9777A969CF2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:07:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D0210E536;
	Tue,  3 Sep 2024 12:07:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Dh7fzQ5P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C2D10E537
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725365246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Swr4IS8dbgShAURYPvnCTpzYM2TD6Zc8Nzbs4EI076g=;
 b=Dh7fzQ5PZtKb7X3yDY2+yX0APZaWZj7++cO/gVeHHOS7L7NGlkJmdTNWQBFzmXvS6C0ng8
 TnHAVW5xpZQcpLNxE6xcKbzLcEfg1uUKch9hMulyNX5O7sqN7S11PDjgMb9anGStTAxsdK
 VnBKxJ3VicD1dlWzhWz66mA/qeyPOvc=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-605-eeYSpBxSO2WREfKmwoUsWg-1; Tue, 03 Sep 2024 08:07:23 -0400
X-MC-Unique: eeYSpBxSO2WREfKmwoUsWg-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3756212a589so785632f8f.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:07:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725365242; x=1725970042;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Swr4IS8dbgShAURYPvnCTpzYM2TD6Zc8Nzbs4EI076g=;
 b=jb9uXSbASFInN/QVTitK90iag4vC4wqCH6GXodhaHSSqVDCDIXviaynu8g0rU1RclT
 c0mPuSMzhqHyvgcVHr6Tkvr14+gUdK4vh4bX1rHGPSL2FQ8vFJDg3NX2ykb7VhmkuvsP
 tKFxM+QUGmpBHmJUWbCcxdczLBJfffXOHA/mxakrU83vhn9YAvDyevn5+tIT5Bto5og8
 n8kmqVfwd1DjlreXW/dli0Yf5Q2oLcVep+RG2yR1EkvaZUTQk8ZzjPhCd7f5P3UFU5DZ
 IVw+6wWTUraYnAueKxVkdoVgiK3o7Lsa5+WVasj+am+ZE+W3UJQrcTEAyPF97zGG7o61
 6W0w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXebICjwXIRxsoo01gr3B662+yXQPwP33o8z6P/De9PXKy82Fyxfr/nedU5U/pvK703KogFNpKkajE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxur9Xpfp0KugObQFEtSVcDw+U5FAFY5MYyLTiRK8Z4d4iHkoq+
 cHTMGjBrk6E0zoWTI/brnbThpdlerNDq61DVfq9wLzhD17JgStHCzm2qBC0rtjXw2q+AoxYg6IZ
 YhAauJiHCYsGKPdAqIASWNDLN/2ISAxXX+C+3dTgZf7LN2iaZtzbcyO7YCw6ABLWSsQ==
X-Received: by 2002:a05:6000:cc1:b0:366:f04d:676f with SMTP id
 ffacd0b85a97d-3749b526222mr13863877f8f.12.1725365241916; 
 Tue, 03 Sep 2024 05:07:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2NHKd/OZS0qGl6rQ/cQL7X9ho+DUsYgIVLhqFSVXN311ZJ1N/JkOGUvCE3TFPMHJvuHGT6Q==
X-Received: by 2002:a05:6000:cc1:b0:366:f04d:676f with SMTP id
 ffacd0b85a97d-3749b526222mr13863856f8f.12.1725365241536; 
 Tue, 03 Sep 2024 05:07:21 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42c88c624f7sm27274635e9.39.2024.09.03.05.07.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:07:21 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Hans de Goede <hdegoede@redhat.com>
Subject: Re: [PATCH v3 71/81] drm/vboxvideo: Run DRM default client setup
In-Reply-To: <20240830084456.77630-72-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-72-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:07:20 +0200
Message-ID: <87plplc553.fsf@minerva.mail-host-address-is-not-set>
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

> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
>
> The vboxvideo driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/vboxvideo/vbox_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

