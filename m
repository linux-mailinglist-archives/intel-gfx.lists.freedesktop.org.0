Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 289A8969B53
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:15:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C6410E485;
	Tue,  3 Sep 2024 11:15:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="RVm0TRaE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B4810E485
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362102;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qPIaWn3XKTIUYS+fskj3MRFK24/VwACXAg9gDBEvo1Q=;
 b=RVm0TRaEbuKhsGY740Jz1XcERq637dAA865C5NqGloni+OFgcDarEmQlckuMcqybVCq4H0
 iGq/49FZ1mgikHluXEx9D3vxccAbzHJIcC7Bos33dhMEynGCCncr7Xn1DWE9lPftqqSEa0
 T9rr6EuUM6SqzZVL5d7wEa19AdQBOh4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-115-FPhTz_WWOB2xJL8YlMbfVA-1; Tue, 03 Sep 2024 07:15:01 -0400
X-MC-Unique: FPhTz_WWOB2xJL8YlMbfVA-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42bbff6a0aeso33205855e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:15:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362100; x=1725966900;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qPIaWn3XKTIUYS+fskj3MRFK24/VwACXAg9gDBEvo1Q=;
 b=W5rKut+eUwLlkucdmjUtG9Q/byhwNrNHCA6YbQntYq0oRAQ0UquApGuhZC4wnv63cM
 m9/ir7ft2wU9+6YvhM0F1sX4PM/yadKuyIF8jj+g6fOusCeMngNIqMzNuoPdLTHV1qvK
 T/2HnVL7dgO5UCbLf9FLUPiEtWtbMoufaJTSQ38eZQc2h8JUjM2/Ep6mmpM4w6ly7fP8
 lywk4WxZyAifa20JS1igdYa31mfF5HpGH/fzKf0+Y+aGF7D+rBt7yC9Ltk10iobEDKYk
 kMi5PkmINJuqhRPq8gER+seeWODyKNfA48QkL1whMD8YEl5nzuAmK5rC2PjSvRmH+VXt
 v8dQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFGavV111dStqlOGUBdpfmPJNzM4VfX+O8nFpA8A+zIckQhYoKvyGHXtKW0vywey7VQChp0ZmfT00=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzUYeOZNnlDbfHz9+wLEG+RKvQmeyHIgLHCw8cJqz6c4UN8GwvI
 YrmDt71qtdH37hjDmDwn4s33usREGL2vgl8sEx8cap3ZwioPCcRcgilCI5vnretpmVoSprLQwel
 f8s8Xaz7RfcG4/xA4vG8/q1fcildAmf01a/NPDrMD/h/NqTfeu2ItqbPkEzxbfUOXwlTpvIqPNw
 ==
X-Received: by 2002:adf:ffc6:0:b0:374:c075:ff34 with SMTP id
 ffacd0b85a97d-376dea47229mr253921f8f.38.1725362099845; 
 Tue, 03 Sep 2024 04:14:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEr9s7pVNolnOfMNcbdY8XHk0ufGy7cJsjGqLu3OjVig8fSkTk0+X4NyG6sNUsFTrkUHEkNUg==
X-Received: by 2002:adf:ffc6:0:b0:374:c075:ff34 with SMTP id
 ffacd0b85a97d-376dea47229mr253900f8f.38.1725362099279; 
 Tue, 03 Sep 2024 04:14:59 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374ba3da654sm10294803f8f.89.2024.09.03.04.14.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:14:59 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Stefan Agner <stefan@agner.ch>, Alison Wang <alison.wang@nxp.com>
Subject: Re: [PATCH v3 12/81] drm/fsl-dcu: Run DRM default client setup
In-Reply-To: <20240830084456.77630-13-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-13-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:14:58 +0200
Message-ID: <878qw9gf9p.fsf@minerva.mail-host-address-is-not-set>
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

> Call drm_client_setup_with_color_mode() to run the kernel's default
> client setup for DRM. Set fbdev_probe in struct drm_driver, so that
> the client setup can start the common fbdev client.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Alison Wang <alison.wang@nxp.com>
> ---
>  drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

