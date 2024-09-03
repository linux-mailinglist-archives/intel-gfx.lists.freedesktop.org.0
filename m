Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E392B969B73
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:20:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB72310E497;
	Tue,  3 Sep 2024 11:20:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="RWlDFUbw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C33910E493
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362434;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=H24uYoqbfGl2vUBYr+//xmtelWdObhpGCRj8ekWugog=;
 b=RWlDFUbwKfQJ4D+WMECz9OTP+Ws0jfTGI0uUmRNQdv5Qu7/KDKiOZc52P3egwBA1VJRN8f
 Q4JTtW26ivCT+kHJN0sjo72geXAKIb4FOVtYZh0S+U+8DJmNih7UmrpAULYJ5lLlzUN/uV
 COv/xZ4Ub3SMOq47RlAg/hpk8kEsLBg=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-477-5E8fuaZfNTmSv98WiZ_A1w-1; Tue, 03 Sep 2024 07:20:33 -0400
X-MC-Unique: 5E8fuaZfNTmSv98WiZ_A1w-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-374c3402d93so1770833f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:20:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362432; x=1725967232;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=H24uYoqbfGl2vUBYr+//xmtelWdObhpGCRj8ekWugog=;
 b=CKDDD29pVdu3QGLwUtAglFNK++lQpcewItC4eJ9q062mPqkTWGiNmJKElsxXW/cVXC
 rpUh2l88vD/XTOs8TqSVgYIW7yBTJolgtrcGZxTkLk2KOzHk9aM29tylzGKkRXjHyQ4t
 YUymRn8td/Fmo4JQDRLJ4W+neCwec65YfWrL3msGp4Npkzm/Ut2GomwMuKle2kIDp6wt
 4/28QQ29T5jgnO+2BBSkqZmojwavxU/3X931CqsmtZhAbDhP4DMaaabEJUCyV9ofNjg1
 hIuHzu/WjYeRmdDPKehtG+z31oHtskEEayX6doBkGzi14MjN9upMjJrqacq4J955stV+
 5uQw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX2ZRKjHbE/8M0KNoTPHBEeYH0cr4dPpwvxYKdnoVmk6WI4X/SBmE7PyTSJ8bOIy6ypwcDqqf155nc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy5SQAMmKl4pdhpwYY2ReKdJNbH8PL54iMv1HEhbj6pONnWHGbm
 z3yo1fpBpvcUkXbqtYpHaZF8DoUG79JnAVCZE1bKJEY38UR2HO/r2WHOnGQ3eNT3n8+EnfWGo8I
 HYDkBjDp0/RnRvS9T3cL93IO8QFztIScw91UPOXrNGcOcO9/3EGzt8TOXycJYn26u/g==
X-Received: by 2002:adf:e9c4:0:b0:374:bad0:2b72 with SMTP id
 ffacd0b85a97d-374bad02cdfmr6548892f8f.11.1725362432182; 
 Tue, 03 Sep 2024 04:20:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbwpteDh/jYV60lwH9EfcQ38ojTrOG4EYTUpYCdQn17HGXGrVhhlQh31XG3MTmZZx8V6M3Sw==
X-Received: by 2002:adf:e9c4:0:b0:374:bad0:2b72 with SMTP id
 ffacd0b85a97d-374bad02cdfmr6548866f8f.11.1725362431651; 
 Tue, 03 Sep 2024 04:20:31 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb6e27364sm166897175e9.34.2024.09.03.04.20.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:20:31 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 14/81] drm/hx8357d: Run DRM default client setup
In-Reply-To: <20240830084456.77630-15-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-15-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:20:30 +0200
Message-ID: <8734mhgf0h.fsf@minerva.mail-host-address-is-not-set>
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
>  drivers/gpu/drm/tiny/hx8357d.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

