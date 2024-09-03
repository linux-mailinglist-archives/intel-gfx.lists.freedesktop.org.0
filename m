Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 494E1969CAF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F4210E4FF;
	Tue,  3 Sep 2024 12:01:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="RETw3OGQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263AD10E4F9
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725364878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=V9gsRbdqhPEIKCsQpJy/x7F2uImH8BkNI5v72GFAu1g=;
 b=RETw3OGQW7l5Y/wfJwheHhz4HumHhsr9xUosn4m5HnAYuxL4HnlKUmx2EfRI6Vdg+eh6qL
 KStB/fMQ9aMSjROw0oCQduBACllaB2Cx8PK4FA2TdJlzqdCV3326jwMrwznt4vmWb95tCG
 nYRRHQWiJE1G53Kuy23U49AYmzrpkH8=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-537-k9IS0ZmvOyyvMygdxlG6DQ-1; Tue, 03 Sep 2024 08:01:17 -0400
X-MC-Unique: k9IS0ZmvOyyvMygdxlG6DQ-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-374cbbaf315so1050498f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725364876; x=1725969676;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=V9gsRbdqhPEIKCsQpJy/x7F2uImH8BkNI5v72GFAu1g=;
 b=GldK28w9mJfFmNstt++PYARHt4144ChOJIqbEE7ceZY0w3DrM0DpzJmaBTaGsCqzB3
 eXpCayjKre6JD2gkh3QNEoMmNJLKLu4J75GSjy8tx4OjOwTD6uAwXHQDB3Lr8/3uyGEg
 ErX/qopLOMQLDwH7nTo85IT4F5u3ELGnk36OE00uqQDJXZJtRR0xZA0odF4BYLz8Z+jc
 w7kYhr+BA9Mab8e8gDkR2dNi7yY6K1BQFzuyOPFNWQTSuLMUoWZTkR0+BPxUbyndgxxu
 CKgsTkUcSmn8qRCcx+SkEg5eQ/KbDxoZl2ZQjjstgpylI7mtf5FTeZGAPZmV3oxsJLfM
 /Emg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXKHs7BYTBSrH7UulF2l1XCspmfAV6odmPKfod7u9R/fhQLMzEyv9ap71PSU80I9zo/p7YQ/Ql6MCU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx9XZ5ky7y/zwyr+wfwA/Uc6J7i10n5SagScIpjaJxTWvDG7rvO
 4lP6x7eyTwPXSW+0hZcCaRtGnpMlP2VmZng2R8uIFSnvwC5rKC1vcZmBZycrusXCnpYYHSkg8hs
 StHjvAwmokr/ZtnQHo/ZyS4sm1H9MmxqmUY6qkr7qaMwYebjnp/UH5IQ0Hqgz0k2eGA==
X-Received: by 2002:a05:6000:210e:b0:374:cf83:23dd with SMTP id
 ffacd0b85a97d-374cf83267cmr3482198f8f.2.1725364875768; 
 Tue, 03 Sep 2024 05:01:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFx2bg2gwLkC+/OnEbJU244Rbdx9z+fiPs23OJRduhZ0HmBzycTM5BYbSjOgqOTznhch3vbqw==
X-Received: by 2002:a05:6000:210e:b0:374:cf83:23dd with SMTP id
 ffacd0b85a97d-374cf83267cmr3482168f8f.2.1725364875356; 
 Tue, 03 Sep 2024 05:01:15 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374c23d6a38sm8407636f8f.38.2024.09.03.05.01.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:01:15 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Hans de Goede <hdegoede@redhat.com>
Subject: Re: [PATCH v3 53/81] drm/gm12u320: Run DRM default client setup
In-Reply-To: <20240830084456.77630-54-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-54-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:01:14 +0200
Message-ID: <87frqhdjzp.fsf@minerva.mail-host-address-is-not-set>
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
> Cc: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/tiny/gm12u320.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

