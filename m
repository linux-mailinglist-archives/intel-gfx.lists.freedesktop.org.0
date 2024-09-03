Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D97969B8C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 256D910E1BA;
	Tue,  3 Sep 2024 11:23:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="icboxGNX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A42310E1BA
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362628;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=bbJNkV9u0ZGr/jKEh9pTFkh2fVXMicyQllArXRfkk5s=;
 b=icboxGNXrqbTB++QzdU48uG5eOw/phj1SSaxm/2LcAWOFWEhYWNmU44mP8fKGgMcK4JER1
 Y6RAk3Vu//JPBxzfwUHj3GWHrZHYzL9X1iwcDK/HYCPx4/bQbJBiGrz9jC5x0mkRok590K
 ODa/kaX14LT1e0rW8VGHGm+W4rV90+0=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-RV2JGSrDM6ydBhqKTIF2mQ-1; Tue, 03 Sep 2024 07:23:47 -0400
X-MC-Unique: RV2JGSrDM6ydBhqKTIF2mQ-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-374ba33b2d2so2325470f8f.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:23:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362626; x=1725967426;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bbJNkV9u0ZGr/jKEh9pTFkh2fVXMicyQllArXRfkk5s=;
 b=J9O2xi9IEdcw8macRFBcToLLZo2MuefvzDDer68ODQje5ONgUYTV+E1ahlOjva0FOx
 1BUfqFaKOIgWQfOmrKadh4F4/QyOGTiWCY7icAUydsSwXaV75ySDB5kUsP4biRphh/2I
 /u/H+22OnrUG5WKdCXh7MROe2tLxfK2o1OWSMn9Hk9jwqB7mDzK7CmDkWsizHIVCJlGq
 x/A4cgeVjIGyckhCi4gASRkBCs8Zn1Htv8a05pOTH/Vp/1dS8xsnTrh6RCK6ZYcfDzjr
 k6EjMoMPuJxx/c2s6zM45NAtlQzldFN92/IdfFS6kO/cFFv4LnhPys/s047OVC506ZUA
 TkEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXT86S+hl9vMMXGebmXa8PcQ72TKx/mT0RnyDknHsNo4+ZvDWY4ANi8UAgTSaPikjAQeS1X/MFxeQ0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyqhrHSfqSrkPbehJmxzhz1/RyRKzkO3LLj/uedo1Q0KSfpQNux
 4ikT7AeuQzB2o5TzznuwtkFzgOQiBc+XiSgUEXvnojvsX8WtwpBJxnYNZ8e5UQIgVSy/taYDqi7
 2tHrVTUDfhwAP62z4IekaOGKLXiCFsSTCnneH2KMqjfg/YFj0b3F7p1u+D6iVSyqhng==
X-Received: by 2002:adf:f784:0:b0:374:c69b:5a16 with SMTP id
 ffacd0b85a97d-374f9e47a5cmr2179065f8f.50.1725362626240; 
 Tue, 03 Sep 2024 04:23:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSm/RqGjce7S7ZMEuf3IOUzOzr9uuowr5iGarnhEC2vfQARAToz2WJdH4ddi+cl3DwZjT8sw==
X-Received: by 2002:adf:f784:0:b0:374:c69b:5a16 with SMTP id
 ffacd0b85a97d-374f9e47a5cmr2179047f8f.50.1725362625744; 
 Tue, 03 Sep 2024 04:23:45 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374ba30d5b8sm10273357f8f.15.2024.09.03.04.23.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:23:45 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 17/81] drm/ili9341: Run DRM default client setup
In-Reply-To: <20240830084456.77630-18-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-18-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:23:44 +0200
Message-ID: <87wmjtf0an.fsf@minerva.mail-host-address-is-not-set>
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
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/tiny/ili9341.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

