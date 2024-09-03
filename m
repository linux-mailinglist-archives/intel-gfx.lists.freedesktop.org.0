Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E38969CD8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5D310E51C;
	Tue,  3 Sep 2024 12:05:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="C4MYhrF4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8533D10E519
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725365133;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NHMOo9WHt2Js8QMS+ivCDnsW0bhD6c2SxEScDuVLqTo=;
 b=C4MYhrF4Q2v2qEFKHC07jj+Q+dL4DT/kPdhoeG3VY1ty+vL5z5GKQE4q2V0doP+THhuvHY
 vHRcaoWeWRs4gkMU5Q41ilvrStCV51SH2twnsfDz083g3jLTKuKJGLd7rAtsjWYUaujJMw
 wN4LQ+7BoajJgBOwBfjQpR6mDqbg9cM=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-169-YPJL_SqyOtuqu2IAsZmqFw-1; Tue, 03 Sep 2024 08:05:32 -0400
X-MC-Unique: YPJL_SqyOtuqu2IAsZmqFw-1
Received: by mail-lf1-f72.google.com with SMTP id
 2adb3069b0e04-5334573b3e6so5213713e87.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:05:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725365131; x=1725969931;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NHMOo9WHt2Js8QMS+ivCDnsW0bhD6c2SxEScDuVLqTo=;
 b=GqervIVz4+XqSRB93Seog+xGdu8w+mjMXe5j2IIUGNH7G3H0JucFMXuEY0XnnUuwRQ
 ok8IgR5l0Odd7NS2gkpHXRcLTufF74DiQ51T4MFteJ93CFPXUnnxkkYTIiNgt0dlse+K
 hEBFQIKSHuKG3GQ28QGynYqcG3NMRZCXSrsGptriMFM6jVuqjWrFY0+5ZjRCgMtuBQqg
 iCc2aN59n9accv+8JH4j1g3tQTwzvqs4jPBG+UyZZNWMgaOyyZjSiY03tO47jh014gwm
 eyehI7E9r8onsTq2uD1Yb+YdngCCaeotVf8llWqoQQ5MHoq3oMhVHiu6JgURBhnApgUE
 tI3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWix4BIitUgU6QkdLJOe1LEpCBqGbT9lGq5P1MFzzWSoTVWdCdDginiA9zoP4BZnnKuX5Qtf+0YkVY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy9EBtQfA6Hw4f6XgtQFqTpbMtaWh/w3rTwOTPmsX5oUw7US6R8
 uzTMn/NRWkwDcSttFNR+CsoPZxhaV6dyaUSJZ0bLL6n6fTO7zFYELk4yZkzm1NX74J/uc3BkKHW
 +1q+zUiII2Z6cF9JMENYta1FGboYWGjANfjFRRmfdRZRxaPSxfZsIomUhwzH7kYBBiA==
X-Received: by 2002:a05:6512:10d2:b0:52f:ca2b:1d33 with SMTP id
 2adb3069b0e04-53546aff5a3mr8192616e87.20.1725365131109; 
 Tue, 03 Sep 2024 05:05:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpghN3bq0VjJ2vU/J5Df8ul1O4uqOm+Qk8JhPzaDhtvMoqfngbzTsco324Pw6cFzJjTlVtzw==
X-Received: by 2002:a05:6512:10d2:b0:52f:ca2b:1d33 with SMTP id
 2adb3069b0e04-53546aff5a3mr8192591e87.20.1725365130473; 
 Tue, 03 Sep 2024 05:05:30 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3749ee4ddc8sm14049200f8f.21.2024.09.03.05.05.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:05:30 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 64/81] drm/fbdev-ttm: Support struct
 drm_driver.fbdev_probe
In-Reply-To: <20240830084456.77630-65-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-65-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:05:29 +0200
Message-ID: <871q21djsm.fsf@minerva.mail-host-address-is-not-set>
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
> and reimplement the old fb_probe callback on top of it. Provide an
> initializer macro for struct drm_driver that sets the callback
> according to the kernel configuration.
>
> This change allows the common fbdev client to run on top of TTM-
> based DRM drivers.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_fbdev_ttm.c | 142 +++++++++++++++++---------------
>  include/drm/drm_fbdev_ttm.h     |  13 +++
>  2 files changed, 90 insertions(+), 65 deletions(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

