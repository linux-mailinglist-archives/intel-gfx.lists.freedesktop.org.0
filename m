Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B845969B96
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB0610E4A7;
	Tue,  3 Sep 2024 11:24:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="ZwW8XIul";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D6910E4A7
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=a0gkkLunGIQ2kaDQMdtHzMdkTGKuWZFk1+nOKDyR4as=;
 b=ZwW8XIulNoas3pJAYIZGxrMKTjupOFwKyj5+pLMFIV5fHm37mTNEFn/wXSc07/7PMEXHea
 BVZXjtp+eZRpcXaiVGlindYDiCFj+w3D+0Ch70PlrDjI+fJ84GCqXVMG41DsnHLrezCt+U
 XX1rSlrLhcJn6i5aXsz1OQCtnTOnwlk=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-277-nGTiVOEBOXW9RlyNJ2oIHw-1; Tue, 03 Sep 2024 07:24:44 -0400
X-MC-Unique: nGTiVOEBOXW9RlyNJ2oIHw-1
Received: by mail-lf1-f70.google.com with SMTP id
 2adb3069b0e04-5343808962cso5873575e87.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:24:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362683; x=1725967483;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=a0gkkLunGIQ2kaDQMdtHzMdkTGKuWZFk1+nOKDyR4as=;
 b=g5FV3bKCCO0aIeJJiQCYvd8PbTKYWJVbxD5HfK7gdpH3KQ9cjRDEJy5DxDk7bSMK6f
 1f+HaBBcbIpvvVqQ8+YVKmE+O8y3rVZimSTtYDtS7g98+W4/3lkivoXXIyp4tFMCNl75
 W3Y8QEyUcoPMu48Wy7qK0EXz20HlkRt5icf4JbP4mJKkPns8LTrMdvEuIbJ1QblP5uLj
 +JzshVJxyGTGD5onG1LgrQqomlu9w5fggiGYTo4m5aZukeN+VI35atAoaQA2YCF2ghfx
 tHhmwAMrRvFtNVHZy53BSjHbXXVVlczSHtmNdMkQD52eOI8oK9ElixHyhFzZtm7Pkcrg
 BSXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW/cG3jkq8UsJgjVnbANl49wCgyvrsQtnuLzguNEfDUXLcEIifhiD5sjRuViHNYaeibOGLaXDQd19E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyb2sK48zQ6x/9hBY5f5vtlPFOQMpcLPRicmlO6MC8oMEKjqPTV
 HZ0Auoo7I2AWV6Gq5y4IpRtp7YLxK5fGkhu3io7cpib3kaOxR5ntksUJkkj6aGg7OTLWT/bKUr2
 fhNYVSZN4S+T7mI0M1pJ18c24tIUJ0WlsNYFOqDBvkrvvLUnSg/7Ww9682veMVDEshA==
X-Received: by 2002:a05:6512:3b99:b0:535:3ca5:daa with SMTP id
 2adb3069b0e04-53546b167famr9189247e87.7.1725362683190; 
 Tue, 03 Sep 2024 04:24:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHV4RoPHMRrjPOqT1ox2wOnC/TMkJttXZQfXhIXmK0ZwIW9dx/0UkvKvAIAwP3zEiWjbdgR2g==
X-Received: by 2002:a05:6512:3b99:b0:535:3ca5:daa with SMTP id
 2adb3069b0e04-53546b167famr9189216e87.7.1725362682612; 
 Tue, 03 Sep 2024 04:24:42 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374b9d54f98sm10542803f8f.69.2024.09.03.04.24.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:24:42 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, Lucas Stach
 <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v3 19/81] drm/imx/dcss: Run DRM default client setup
In-Reply-To: <20240830084456.77630-20-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-20-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:24:41 +0200
Message-ID: <87r0a1f092.fsf@minerva.mail-host-address-is-not-set>
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
> The dcss driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> ---
>  drivers/gpu/drm/imx/dcss/dcss-kms.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
Acked-by: Javier Martinez Canillas <javierm@redhat.com>


-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

