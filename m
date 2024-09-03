Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6EC969D4E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:18:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE76010E563;
	Tue,  3 Sep 2024 12:18:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="CjfGhaK2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B980910E563
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725365894;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+pVSR+7TVbjbUaLmGraYgM7q/wqENOvzyHgdTPQixk4=;
 b=CjfGhaK2Gpg/KjYT+bYxyB4OsIqZnFmc1DpBm1b5yJtlcDjV5GVn7cHJavoJOba7n3EOTh
 pX4GURpH75UgTDIpiYMRncTVLzxQLwMSEcPz6O3+6wdxh/DbcCWuqG9eH3BumQDLs1MyQn
 kVxU6WV6T7xKFzwhMAmnDk3Zg3ObGRU=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-134-2bciFNypPPOLsdrByM3uvg-1; Tue, 03 Sep 2024 08:18:13 -0400
X-MC-Unique: 2bciFNypPPOLsdrByM3uvg-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-42c827c4d3aso20250825e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:18:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725365892; x=1725970692;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+pVSR+7TVbjbUaLmGraYgM7q/wqENOvzyHgdTPQixk4=;
 b=f4Kp5e6FSkgMQESZmE1lAJ8T/8NeIinKd9p9UmgFhpx80JOQCY/rNWXok8FIo9LYBK
 w8yOOvpW9R/9pJenPgQ2wKzGCXqW65OPT+dkg+j4CK43NGtuwdWSwRk2PhMdQZ7BdooJ
 +ezyiyRCIheXlqEYCc2ctJHEhXPCzqR5GqL0HV3xXbvPM7npFA/VA5VTe/oszl4V3D+4
 Oksilff3IldZevonc7RiEjtrKrLsJ5HVKrY5vIRfVPcEplDcEI1WNQ9M2OJceMeCUVmi
 Kqi81RJc5lHxVvrjraKGb+JyUNM+SaOUDtAeF0boPZo1WteVOAALIcIX4Ha8MF1V/hLd
 6RCw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV/U++3glojXAFfpD7RWajFAXK+Sp59YAk8yuPpXBoyQmDqaOBaynv0xzL+/9kkgjuu9Cqhy8oDCyg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyqhJhS8RfWPkgyrE+vjqp35egTdfpTcV/MsCprkYXPE6Z2hdOK
 RwWe5rsZa6NSyHISqxZkbHSC3tFGjw0QccQ3JvXXBd27VSi9vbxpQOHqL9B4HQLRJohcFskuHGx
 2axo7l+WRRdOsocTpPNf8Kca/hRHO86QN43yRomgXT3aRHoYnj/OKiZ4C0JW/52ToYg==
X-Received: by 2002:a05:600c:511d:b0:426:5ee3:728b with SMTP id
 5b1f17b1804b1-42c82f53210mr49626415e9.13.1725365891691; 
 Tue, 03 Sep 2024 05:18:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1PB5397pxPS+al287j5eSLcqH0EiAmMQ60AOH/NehoWOvOhNnHbQE2ALKLczHDDhpPV0k3A==
X-Received: by 2002:a05:600c:511d:b0:426:5ee3:728b with SMTP id
 5b1f17b1804b1-42c82f53210mr49626185e9.13.1725365891158; 
 Tue, 03 Sep 2024 05:18:11 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb6e367b3sm168493655e9.48.2024.09.03.05.18.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:18:10 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Thierry Reding <thierry.reding@gmail.com>, Mikko Perttunen
 <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH v3 79/81] drm/tegra: Run DRM default client setup
In-Reply-To: <20240830084456.77630-80-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-80-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:18:10 +0200
Message-ID: <875xrdc4n1.fsf@minerva.mail-host-address-is-not-set>
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

> Rework fbdev probing to support fbdev_probe in struct drm_driver
> and remove the old fb_probe callback. Provide an initializer macro
> for struct drm_driver that sets the callback according to the kernel
> configuration.
>
> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
>
> The tegra driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Mikko Perttunen <mperttunen@nvidia.com>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> ---
>  drivers/gpu/drm/tegra/drm.c   |  5 +-
>  drivers/gpu/drm/tegra/drm.h   | 12 +++--
>  drivers/gpu/drm/tegra/fbdev.c | 98 +++--------------------------------
>  3 files changed, 19 insertions(+), 96 deletions(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

