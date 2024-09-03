Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6ED969BA8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD1C10E4B4;
	Tue,  3 Sep 2024 11:26:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="UwiqGrh2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B096010E4B7
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725362780;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vdWgGVoYLM430WyC+dlybsR86ICY1TW+TxFH6owfPF0=;
 b=UwiqGrh2nzeF4EPUJSs3WbSAZ8wFOaZ+E5Z3RsrtMuXdYoAxaj9IW2PwddnlJHYql9Daj2
 MhUC5KYNe26olFA5GHeDFWnErqkEM4wx1JD7VhpRRQXRrzmR+pHT+AZU2c0ZMYfc+5z8c8
 dbW32yBpjNui8ozQGWx0WJjNBrbIILQ=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-609-9uZkkotQMCOOVfJRQ6JOdQ-1; Tue, 03 Sep 2024 07:26:19 -0400
X-MC-Unique: 9uZkkotQMCOOVfJRQ6JOdQ-1
Received: by mail-lf1-f72.google.com with SMTP id
 2adb3069b0e04-53349795d48so923806e87.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:26:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725362778; x=1725967578;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vdWgGVoYLM430WyC+dlybsR86ICY1TW+TxFH6owfPF0=;
 b=mQYpGRkMLR5JIWHxnnNHbf2AcMys+6okoGAceM2Vu1oU30yrzx7n0C+/8Y3we3tMpd
 07h5k/1pJAJsiVEYCCZleaLxMp8Vv8PvIgRhZEdNv49KFw8HBif3pgelxZv05PplyOrL
 Oh57JdU7I1GAruv8vMRrHyfo80CQHg9BazXf4S5a0YDdPsMNbtSAntG3y1Fwepfu9U3K
 d/TcQ4aeZreVlxtKJEvIvEvL8yfkbJYNWUPSucJoESEFr8A6Si7xjhQ5HMfBVFYFDyLh
 47wjhvUCmgksXbdGKFM9yVjvpnnx8DdT+TVS6I9Am8z3eQVwsdhLFdxGPfOdPQxTy/lU
 3kKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCURyUKGkpM1yjAVpBs1AZ34jmu/bp6lCCEdWvAGrfrtaworVEk4BC7PhviAfD8x6iEJNe/NVq1AStU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz6NTkO0KX1tzuNPPsUaf6W4kMtJVc9KoYda2R66qcIhgHClPrV
 v+wzk0g25lD6k9V/bKmupe0igVRd00B5tQS2VTe3D1Kfk2AIYGDUFRqz6AdnUOGwOnANDt5S32Y
 YOzfTlY1675qMpH0caFkdorBfRqf0PGTT56rYrIzGTQwKYMJP+TMpVe74Cgu3QXeB+A==
X-Received: by 2002:a05:6512:1294:b0:533:4477:28a2 with SMTP id
 2adb3069b0e04-53546b04544mr8808341e87.16.1725362778304; 
 Tue, 03 Sep 2024 04:26:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHwRLJHDZdrQkwQWAm+tFo/D0GDWaihGfGc3BFYX5j5bYPJbZDKSAndVvvzTOghOv1AtRVHQ==
X-Received: by 2002:a05:6512:1294:b0:533:4477:28a2 with SMTP id
 2adb3069b0e04-53546b04544mr8808321e87.16.1725362777673; 
 Tue, 03 Sep 2024 04:26:17 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42ba7b4271fsm200957535e9.29.2024.09.03.04.26.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:26:17 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Anitha Chrisanthus <anitha.chrisanthus@intel.com>, Edmund Dea
 <edmund.j.dea@intel.com>
Subject: Re: [PATCH v3 23/81] drm/kmb: Run DRM default client setup
In-Reply-To: <20240830084456.77630-24-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-24-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:26:16 +0200
Message-ID: <87ikvdf06f.fsf@minerva.mail-host-address-is-not-set>
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
> Cc: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> Cc: Edmund Dea <edmund.j.dea@intel.com>
> ---
>  drivers/gpu/drm/kmb/kmb_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>


-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

