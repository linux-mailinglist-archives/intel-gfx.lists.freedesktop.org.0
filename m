Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E7C969BB7
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B32B210E4B9;
	Tue,  3 Sep 2024 11:27:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="KuYZki7w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBEB10E4BE
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362869;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Six38zRCaVcSjI7X8SSQRqVfbWN9LoiIAfaa2uKesPo=;
 b=KuYZki7wgEkwOaViQkNGl9KH3jDkka6u/onOIuqjXUMsfb38S5IEGhZAHCfvr1lKgBVO8Z
 4KWKOmfZOC1V+CwPFQn/V40zE2mVUJhTUGtWYuGh2XWvpZHty7EChbfpClmnZlCZa/oJkh
 FnvkUyqF5OqxEEcMBY6tcP9CSucyx6U=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-534-M5k3mnA4PhKDJ-BfkgZNDQ-1; Tue, 03 Sep 2024 07:27:48 -0400
X-MC-Unique: M5k3mnA4PhKDJ-BfkgZNDQ-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-374c301db60so1534344f8f.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:27:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362867; x=1725967667;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Six38zRCaVcSjI7X8SSQRqVfbWN9LoiIAfaa2uKesPo=;
 b=P9aIo04tlp+mjzcES9ZP5ZOAfDOOHgX1D/zjVPggSeyhSmOaPEG5dMWKKk6mo8aTUd
 S4fcq5zWLNYG4xMgwuhEEa0/CMSLp6nqyBkd8YJj/xMAnTseWkgQTzsKL6qxMdXNGP7d
 eI2c2+3Q5FA07IXigovPDfAt19bgtxiw6dn41VpfgQ9QKnNmmuBdbiQ2j8a/TjZxbEvP
 jcAdowDY7ab6Hqfw0kokO+P4cCkdsY2b3cbebTi3O3vcSPgom+qUXb8trUGY1f0xdGg2
 YxiwsqgPC2REqq0mRb2LWQ7yxgB0xkOpSi+NirlbzNq8cZ1puu4jwQRvXj+sVhXhF8hg
 y6Kg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW68MYK0cCrNWTYJQtNRU48Tc+xyslraofep/Mnbw74DrJUWCTT5+bSeRIq3Adh8XIuxCaCqjWHk6A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxdlWr/i/McT0RN9VqeuR4/sABhcYPuQiWLPTvsslEnJfhTC0Cq
 niInThqJsfWRT3jZJjg8iclnw2dJ0LsJaoElgUv47cHdo3vfEode3+BorBu8cTcQXfZjFYabtdo
 tY1GDaVnIqoKvlQe2kCprZz/SPo3IhEKHG+RlZCX7mSZuOt/N71CYSL4JEz/WxBtV2w==
X-Received: by 2002:adf:fcc5:0:b0:374:c782:8d5d with SMTP id
 ffacd0b85a97d-374c7828f39mr5378713f8f.10.1725362866997; 
 Tue, 03 Sep 2024 04:27:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHp94tO1qK4mqf4zM7tEKst5ObXZnlzOtHmVRYL5VNue/xInqnwrhNf4Qo0JnEU9e1wjil+MA==
X-Received: by 2002:adf:fcc5:0:b0:374:c782:8d5d with SMTP id
 ffacd0b85a97d-374c7828f39mr5378690f8f.10.1725362866488; 
 Tue, 03 Sep 2024 04:27:46 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3749ef7e109sm13887878f8f.67.2024.09.03.04.27.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:27:46 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3 25/81] drm/mcde: Run DRM default client setup
In-Reply-To: <20240830084456.77630-26-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-26-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:27:45 +0200
Message-ID: <87bk15f03y.fsf@minerva.mail-host-address-is-not-set>
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
> The mcde driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/gpu/drm/mcde/mcde_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

