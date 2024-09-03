Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A6B969D47
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D937810E55E;
	Tue,  3 Sep 2024 12:17:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="CWmbxfJj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4176E10E55A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725365818;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=agFMB1xAtcWm4AXKS6Y4zMlSOya0yRuTuGxykObZEjk=;
 b=CWmbxfJj2SbTa1pdYrzCdkj3PPN1nwYCk2tBwj9xsGM4jIC3DdWAxczta8KxBoFEPng+It
 +NNhBJYdtOCO33NuHa2PsS7N84bWtNMi9WyJsEoWbdiyKmXIjyC+WACOfBbMYSesGqvofT
 gqvjq5vhWvdKbQ2kEUoJ6V8jG1su7ws=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-696-GjXukrmpPXmLjz1wUvqlUg-1; Tue, 03 Sep 2024 08:16:56 -0400
X-MC-Unique: GjXukrmpPXmLjz1wUvqlUg-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42c78767b90so28959585e9.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:16:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725365815; x=1725970615;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=agFMB1xAtcWm4AXKS6Y4zMlSOya0yRuTuGxykObZEjk=;
 b=qJ9Kh1RpERPrelDqQqWq8KTcIvfEqWSolUQk1/yv20+E4/VD/kObSjUGfijhQTUICw
 L4gYQpjNZjTm+NTh8obdN48Z+pw0xQj9PwlDD4I7ybIUt0IYhHsKsJbpuRe9pOU9eixw
 OotLyBCVBfxhcCE58+hJeDGvU71Za7FxFdjDvsc4Fe6FMw8SDNLwxstxO3Ovkm4r5ApO
 AgZyfndJ9CUtUOr+hE3E/+gzmF4ie70x3jrpCCjF87S/EFlTDm5QQqckZmBa3S2sqqEi
 l1rL05sI2yKrRgWf3hnHYAPeabIqmXAOq5eCQMOpXlNF0YqrHZe/rFX3nq/Jdfuqr6h+
 Grjg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVI7vFakhJ1egsDANy/hqoVzm9OLePSXBvsNHBGVPiEoBOYlv9UEUWlmvemk6myVU+sAYw/IdfQWtM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzBiQeCJGQ/+rzRTKnS4XDPv6HzEiZkgl6tQopEoZBizoIX6sm9
 XfZLRts7IRx0XzhF6T9y1cEtaw79SgM70rwjdnEXJLvaN7XLjCgRbjdZvN05r5vDqvUn/vjeQeB
 1fs+9cE64vnr30fO78aJKxgyJ1N3h6/GlqHPdjzENAtfyHrQlvJtBTmw6FwIdb1fzOA==
X-Received: by 2002:a05:600c:310a:b0:42b:ac55:b327 with SMTP id
 5b1f17b1804b1-42c880efb88mr26637295e9.12.1725365815309; 
 Tue, 03 Sep 2024 05:16:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4j1HQbJZ4tQ+5HUrU1wf3ZhSaYNsES3j6jps+inrau18KybLARTHZrpwsf2i8vLhskKlqcQ==
X-Received: by 2002:a05:600c:310a:b0:42b:ac55:b327 with SMTP id
 5b1f17b1804b1-42c880efb88mr26637005e9.12.1725365814792; 
 Tue, 03 Sep 2024 05:16:54 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb6df100csm168841155e9.20.2024.09.03.05.16.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:16:54 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, Dmitry Baryshkov
 <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, Marijn Suijten
 <marijn.suijten@somainline.org>
Subject: Re: [PATCH v3 77/81] drm/msm: Run DRM default client setup
In-Reply-To: <20240830084456.77630-78-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-78-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:16:53 +0200
Message-ID: <878qw9c4p6.fsf@minerva.mail-host-address-is-not-set>
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
> and remove the old fb_probe callback. Provide an initializer macro
> for struct drm_driver that sets the callback according to the kernel
> configuration.
>
> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
>
> The msm driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  drivers/gpu/drm/msm/msm_drv.c   |   4 +-
>  drivers/gpu/drm/msm/msm_drv.h   |  13 ++-
>  drivers/gpu/drm/msm/msm_fbdev.c | 144 ++++++--------------------------
>  3 files changed, 38 insertions(+), 123 deletions(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

