Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C614E969CE1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3083210E525;
	Tue,  3 Sep 2024 12:06:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="N31SRYjy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F7E110E524
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725365178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KYNG7ZSPE/elB3b9WkJzkds2S1MCd8qjtTvrXcJahJw=;
 b=N31SRYjy+x7HGK4MuRlniMSrlHHNcidQCmPz3kDyNa5bgEoSm+q0SIKc8lsNqqb2vdJJ+I
 AyknSIUxcAKFZrgIjkjhSH7CpR1oe7kMb7V/lmX6W4odhQSiGVmpSAZ2Zu/suxHwcD1rDE
 8oN+nHfxIA82TD97c6V+QGOH4t248X0=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-468-ZDs6mc8FOHO5HiIx8nIyZQ-1; Tue, 03 Sep 2024 08:06:17 -0400
X-MC-Unique: ZDs6mc8FOHO5HiIx8nIyZQ-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a86f0c0af53so453236866b.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:06:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725365177; x=1725969977;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KYNG7ZSPE/elB3b9WkJzkds2S1MCd8qjtTvrXcJahJw=;
 b=QOnXO8Z11zE54L66CoaYoEGaqWyC3z9oyQGzTBK8jU3OPtc5cs3hroN9j/AEypyG6N
 u9CPbN0lQxWZNbCc9MCSmWG4jQy4piJc94yp/9zVEnYFUMuIt6odsgR7WVcHKICS1pAm
 me6Iq98bIEKqqCOWUkkCMKZuN+4SqzGWIJIUUruUk/Wnj2Atoht8AEKkOoqyAVzncmr2
 s8JZiTNiLCQOl6exXIRw2k8A93ig8lpAM+3TjwM9pzO/gr4+kVDOa3+4BAscERIWo6dT
 aXXLdfHKPwFQwP2Nas5Sj8omgKRAeepQ5/FnSrWMEPzNt/vX9ar3CfVqDi2yuBtilwIp
 LzuQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXS+Kx9RnOXCoxO7PAJchcfoGrYOP6NxN3CO1hGINL/cIqYKBZHLvcoA4M7hOhC9OGJntb6zXDFess=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy/IoC50Ihss1WLh0gS/W1c6xlOwtV8La/XA4lvVBzQQShdWE85
 4Xsm0LAUv8bud9nMufsaBQiMppgtitGkx0+ElNRmqYOnBmX+gymEEFauQNgzstAtrpTPPycE1Ui
 vo/QfDw52OVZL1OEBUhc4PgC07azgqRyP6kd1gjufm7S78D/emhXrKggBariDv7wQgg==
X-Received: by 2002:a17:907:7250:b0:a79:fbf0:8106 with SMTP id
 a640c23a62f3a-a897f77eecdmr1349124566b.6.1725365176616; 
 Tue, 03 Sep 2024 05:06:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKHGdQu76q7cILNEki/LAIO6w7xbkB8ymwVL7bsW03a2bqt4zVKnQvFzb+qrennFW3Jt3aZg==
X-Received: by 2002:a17:907:7250:b0:a79:fbf0:8106 with SMTP id
 a640c23a62f3a-a897f77eecdmr1349122466b.6.1725365176148; 
 Tue, 03 Sep 2024 05:06:16 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a89892164f5sm672520766b.192.2024.09.03.05.06.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:06:15 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Gerd Hoffmann <kraxel@redhat.com>
Subject: Re: [PATCH v3 66/81] drm/bochs: Run DRM default client setup
In-Reply-To: <20240830084456.77630-67-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-67-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:06:15 +0200
Message-ID: <87y149c56w.fsf@minerva.mail-host-address-is-not-set>
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
> The bochs driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> ---
>  drivers/gpu/drm/tiny/bochs.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

