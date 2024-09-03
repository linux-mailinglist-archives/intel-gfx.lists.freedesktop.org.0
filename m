Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4E5969CD4
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82B210E513;
	Tue,  3 Sep 2024 12:04:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="dFW91iIA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2736010E3DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725365061;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3fiZjoQDP1pxCas9l8KljpRaPLENWaMi4jehrGgSlHU=;
 b=dFW91iIAtx99Wx9S0eA8oIPAtRqF2zhgfZuICPCy7POYqhh8MrnG0ZjxGfyTP917s4c0C9
 3499/hbw94frmTiy7ICXg+Nx1sg74RrwdFuC1IzWzBAhGFHc8MIicB9olUp3mid9PqyS7h
 uobtvw2SNW/b1xOal/MizLQMsG8JiO8=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-182-gbGMQWR4NlWzRyE7kFGErw-1; Tue, 03 Sep 2024 08:04:20 -0400
X-MC-Unique: gbGMQWR4NlWzRyE7kFGErw-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-42bb5950d1aso59553195e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:04:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725365059; x=1725969859;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3fiZjoQDP1pxCas9l8KljpRaPLENWaMi4jehrGgSlHU=;
 b=apriVX/M3zm/thjXV4B6gaL+Uq2YlEn25YidA/jj4/xnCWxhuQ2yQGaNROIfLy24R/
 OTl5DxIqGdDFkJ+WgZ88PUsfpibiaE8LpsdoUJ9kEB3QmD0OFlK8NSS2Jwbvu/l0LNdD
 +e+3qGJTqeNW4uWJA4b4npBC+fiabEqGuIrbYAsv6+IOyMtpovD3YSTvQzXk+9eOZHSk
 Wp3rpgRDhgrVooVh3LYbA6MP/bTLAUYrWwKmpmg7hRwLSJYea7O9Du6DqKhP6uJvwQ5/
 FKj0rpG3QW+qlhW6ZjJMvxV3Hkor2Ron1DJ7MuNdB3+/AW052HweblQhj4KtFeP/lQDz
 J42A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUZLkoL8Swzf0Z/WjseeKp7IdN507oHF3ZpQiYi/uR6A2zAZ63EcIughQxwZ8jyeM77WygkOQBdip8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwXVPwYCWcABjzFhT92fQrzlv1l+iJiHXiCVyntlWnsIjK2a+Hm
 ge1jnT/ae+xM1di4LR+460ogTHtUknbrd2iFzvdWnY7pPkBoQMXtDDRouX/Cl7NP5tavLVn6mDL
 HyI7LgZ/Un+RtLzubphBIuaZnK2rKkTyZUAIR/nN/+xddEtwl7/UFcZleZyfKqR63SA==
X-Received: by 2002:a05:600c:474c:b0:429:c674:d9de with SMTP id
 5b1f17b1804b1-42bb01ad776mr149399545e9.2.1725365058831; 
 Tue, 03 Sep 2024 05:04:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExAsxohFpaNmRsPtig4vIEqTLLJJ6A9qw2cCf0dEsQNkZ8aqk53IDxglqBJcoW1INXcnXT9w==
X-Received: by 2002:a05:600c:474c:b0:429:c674:d9de with SMTP id
 5b1f17b1804b1-42bb01ad776mr149399315e9.2.1725365058397; 
 Tue, 03 Sep 2024 05:04:18 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bbf00e095sm129587485e9.13.2024.09.03.05.04.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:04:18 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 63/81] drm/fbdev-shmem: Remove obsolete setup function
In-Reply-To: <20240830084456.77630-64-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-64-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:04:17 +0200
Message-ID: <874j6xdjum.fsf@minerva.mail-host-address-is-not-set>
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

> The old setup function drm_fbdev_shmem_setup() is unused. Remove it
> and its internal callbacks. New drivers should call drm_client_setup()
> instead.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_fbdev_shmem.c | 120 +-----------------------------
>  include/drm/drm_fbdev_shmem.h     |   6 --
>  2 files changed, 1 insertion(+), 125 deletions(-)
>

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

