Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE71969BD6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:31:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEFC610E4DC;
	Tue,  3 Sep 2024 11:31:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="VfHRHZnN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F43110E4DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725363091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JsgjyVAoZiwX/0plI8r6xhrkXgx4B8n714qF3W8WxEQ=;
 b=VfHRHZnNzEXEhY+idCUgy+rlDhnAuIzYOINl75/ntUpguqS3EZrcH0XK/v/G1x020xLosT
 IrttWblm2HUeo1Qb6ZvRXFs1JA9U2qlOLz2pSasLBidIGn3a3C0JJj2bEtWEm1Bc8UWcM8
 95yVaOsbMPcXX1ucWnW4G7Ns/XsFKvI=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-56-n184_S3iMzKvJ6jQqMoHQw-1; Tue, 03 Sep 2024 07:31:28 -0400
X-MC-Unique: n184_S3iMzKvJ6jQqMoHQw-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42bb6d3cd05so48074375e9.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:31:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725363087; x=1725967887;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JsgjyVAoZiwX/0plI8r6xhrkXgx4B8n714qF3W8WxEQ=;
 b=Ps6tRpjdXGWMBdQczY6qwHJVX9KtE3Ooxl1SZVornMujnkKufvxjnS35maGrn8rHCl
 tHqtvG9zdTT37xmHLeRNiz838yat7ud00ZYmxYQU/zfag6CKe5p4P9JFtIM0dLmrb0Tp
 RUEcAzjyud3t+JgTGhvMd5XEpGDPaym7k8BryVSlST2UixVfw1QYiHhlfvVTArZvBMrx
 a+0ZG7SzFfrCjjfauL44SD/YDCzkENvqPpKGGhYxxaMW2U0yUwLN+1M30UpKS5j6tMbu
 e8OGwsAH979QphRrH1XR89URWISfkNoN38xwQgjVWHVD39VaM9WdEmwIgmLTm8ALnCld
 Bcgw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUAqj6fSfcru82m83HfFQfqCN6A7GWwPKYXQ+zLJoMYx4i5aCfGNtAMGJiMTgRrpt1Fkzs+wPSfvmk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy1knckak4gMB4QaiEyzqwRXRdEFRbpa/PlVG85hmJ8meU8v7St
 UiCM0WGbxYO+vCeVGq/sVDGnJjjv9gLLXigKMFZqJfOYZ/N4sVY1iZ8xlFRUxCegrI8b/wK3+fG
 Qd7jfh0q4SBaQd9677p/yGek7P3zKklEIp3epsLVhT3pl1SPSIthee/jVrZEZOnV/rg==
X-Received: by 2002:a05:600c:3ca0:b0:426:5e8e:410a with SMTP id
 5b1f17b1804b1-42c8810319emr24400945e9.24.1725363086975; 
 Tue, 03 Sep 2024 04:31:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5maMqjeo2zbQD/i+Rl7OMnLTPEPO4OhEAVhbI0hhGbDze6A2VsY4Z4sxV6OhxoUjaVqcBwg==
X-Received: by 2002:a05:600c:3ca0:b0:426:5e8e:410a with SMTP id
 5b1f17b1804b1-42c8810319emr24400635e9.24.1725363086472; 
 Tue, 03 Sep 2024 04:31:26 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb6e274b6sm168609195e9.33.2024.09.03.04.31.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:31:26 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v3 41/81] drm/sun4i: Run DRM default client setup
In-Reply-To: <20240830084456.77630-42-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-42-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:31:25 +0200
Message-ID: <87wmjtdlde.fsf@minerva.mail-host-address-is-not-set>
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
> The sun4i driver specifies as preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Samuel Holland <samuel@sholland.org>
> ---
>  drivers/gpu/drm/sun4i/sun4i_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

