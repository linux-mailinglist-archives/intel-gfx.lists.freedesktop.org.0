Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAF8969BBD
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9240310E4C6;
	Tue,  3 Sep 2024 11:28:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="VaiRqlmw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7332E10E4CA
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362920;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LWaiVxUDn5x4EDUb0RXQKucUIM8lh/m7gazYhUKWNcw=;
 b=VaiRqlmwZgQ2Im5AzxgOrwVb1wCqKsRqKcwzeUHVIUrApaLPbhH/VhHmd74h3PV358bxeq
 5Ppsbg0v9VVH99Whh6yh+R9Dv95M6GDP9aSQLqUURWFr4hiFXheMAU5gmd0o+jqN5vUCGJ
 rX2jpQnkTh4WpvnCYdd++y0Y6LOVblY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-388-ODW9U2baOn26YnUD0HTz0g-1; Tue, 03 Sep 2024 07:28:37 -0400
X-MC-Unique: ODW9U2baOn26YnUD0HTz0g-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-42bb6f0f35cso47966885e9.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362916; x=1725967716;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LWaiVxUDn5x4EDUb0RXQKucUIM8lh/m7gazYhUKWNcw=;
 b=b3mp2zoc7SbO4TFMKOaEcWVqTBne5kzE5IxvTJGEeMR6hDg/1RmNND2omljrcx/kC9
 xgT/KQ+4PLAvfp+ZAhfrBmXwGSUmGvjcGJ72LueaVThoWrJHC/ouTdGMg73+jN+VWoPs
 TPFjdfVURlk0kpEll19ldgk9/KaeOu119TESXOE4V6QUvl4iFkprM9zvHQjIz9UJ3gbs
 MRzaBRhJGun1avzkEJ+tkQ41uYS/1IlaEpQdrikF22YatE6Xba3FWybAIXtnmDhvuvny
 YfRB2QZ3HWOepCJFYV/rbIvePqxzJBi1kbMla3HFchLZnTa57ub0u3Yo5sfW6Yd2IhPx
 u/Og==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFGstK5rykbVU3gStUTaPcq8EVKkFAWEKauXumQyoNWh6EoVGj6UWUCrOyFJMFsvrJWEl7V8UOdZA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxBDDN7o7hI3Tl2ndedSd+h9tVLVlZ/g198y66YqTJYJYh4HRh4
 ggaH7L9CeTZLVVU5ujEChQ0RU20BfIJhN4/l+DjF4DHu2f0zytcEvgJFzzA9cF4PcEh9DgMBLvV
 OzIT9+LPen+WL/kjpob7SEtMqTQEpM0853G3KF9jjOH/WW3Rv82Wk7pQFwv1WCGdDeQ==
X-Received: by 2002:a5d:6446:0:b0:368:445e:91cc with SMTP id
 ffacd0b85a97d-374c2659badmr6645355f8f.21.1725362916417; 
 Tue, 03 Sep 2024 04:28:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOC1T6h6rVXlfVpjA/pVe7KOeoA4/WKcQU1WD4uFO7ri9zXFh51Y6FFr5rxsYl8wc+Lnpi4g==
X-Received: by 2002:a5d:6446:0:b0:368:445e:91cc with SMTP id
 ffacd0b85a97d-374c2659badmr6645326f8f.21.1725362915923; 
 Tue, 03 Sep 2024 04:28:35 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374c5ba7027sm7134412f8f.19.2024.09.03.04.28.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:28:35 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v3 29/81] drm/mxsfb/lcdif: Run DRM default client setup
In-Reply-To: <20240830084456.77630-30-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-30-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:28:34 +0200
Message-ID: <878qw9f02l.fsf@minerva.mail-host-address-is-not-set>
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
> The lcdif driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> ---
>  drivers/gpu/drm/mxsfb/lcdif_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

