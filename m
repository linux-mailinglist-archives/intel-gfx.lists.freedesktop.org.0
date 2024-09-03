Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE20969BA6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D8A10E4B3;
	Tue,  3 Sep 2024 11:25:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="YSymu/4T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39F1910E4AF
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362746;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9sC7HLJXuWub0EarNCELOa44xh6zW87AqTRwbOpLZOM=;
 b=YSymu/4TSk2Y6nHlbWPrdNZewJdgNmp4iqmEgl8/xThBaxJn1tmI/+aN/eqah4ScK5UUyu
 QV6rNHCz1zI1FhEDMxeiQk9QK+xgOKaJAwZlH486p1Tv1pyrOWEenonflqx0da+Fqg4JIt
 bQK+a9n43a1d0cVBw6Io6PDi1hlUIpM=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-141-eTurtu4zNG2rguK-mRFh8Q-1; Tue, 03 Sep 2024 07:25:45 -0400
X-MC-Unique: eTurtu4zNG2rguK-mRFh8Q-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42c881282cfso9362915e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:25:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362744; x=1725967544;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9sC7HLJXuWub0EarNCELOa44xh6zW87AqTRwbOpLZOM=;
 b=Pm5by45aBqdL/eOPazcU498iQAZdMVzpcK3FVqzHhPp8SuiYwn56AExdH9R2fkR38X
 5pnQkqLiy8F+W5JjClenQefuSUZwtOC0d7vMmCJjK6HyeGnqId8E0CnIz0ffEVdcxuOZ
 7SkKaV2NaIc3XSgQa3b8jzLivRS5toVlYDOdx3BUklIgXpiQp43jc/c19+qURetof95M
 7qLZcChjOYwmeuUj9tWW5Mm0czxdP0fcpETbLzdkvS3xY0p4Hvzt/O7lElOdmMdUYELz
 BtOZkVg4Z5/ArfOSJv1TNMCH+yuJDn7nhUoiTHXilJmB+JHN+63FxmicOOY8Nab2+6Bl
 ZrLg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+oCVIBonchduYEL8mcaHkRPbLwYLYrXshD26YxxQQEa2m13uZCcQEt+vGtytEigydW56spjV0VDw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwSiyw5Tn9d84JvEC4YYGUOq6PEMNfL63oYKuh+fGNmOCQfWak/
 zWpwL6e1i3cRXMaCf8tuyMXVvLgnvbwovwx0VwEEL2N8P0Sbwaoovzq/pXTJoFoCJP84Eq0Agxq
 F8HfoTDJLVki2F+lCBU3d8gP3e8GNf2/n5D3R4EjYjsmr3khuDCrehhJbY5nmaQXbDQ==
X-Received: by 2002:adf:f747:0:b0:376:27b7:da7d with SMTP id
 ffacd0b85a97d-376dd71ab0fmr356725f8f.32.1725362744045; 
 Tue, 03 Sep 2024 04:25:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEA3yj2kCeHDSDWyAEM2Yi0qle8pXxFLZPw8+JMts+88BoPIGSyVA7+QhDZU1CF/5hz8VqrKg==
X-Received: by 2002:adf:f747:0:b0:376:27b7:da7d with SMTP id
 ffacd0b85a97d-376dd71ab0fmr356701f8f.32.1725362743587; 
 Tue, 03 Sep 2024 04:25:43 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bbc36bd88sm139874945e9.24.2024.09.03.04.25.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:25:43 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam
 <festevam@gmail.com>
Subject: Re: [PATCH v3 21/81] drm/imx/lcdc: Run DRM default client setup
In-Reply-To: <20240830084456.77630-22-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-22-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:25:42 +0200
Message-ID: <87le09f07d.fsf@minerva.mail-host-address-is-not-set>
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
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> ---
>  drivers/gpu/drm/imx/lcdc/imx-lcdc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>


-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

