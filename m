Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BA0969BD8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0587F10E4DE;
	Tue,  3 Sep 2024 11:31:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="fh0ht9fB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1213E10E4DE
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725363110;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=G6Z3wxXNuqkdNQKBlR4V5hxpw8pNzMmDdZpwiBC57Mk=;
 b=fh0ht9fB0pQMTmaRFrBvqK2XzKzffcECjPe3O1FX8dBwoZ1ATDT34N+8nWqXyheQEV8HzU
 65JyTTSVUgt2uCrbTUWnh6klbphaob2IoqNEkyq0J6DEY1m9tSDCkCRTYQWZYnyV/bIcgT
 aFGgm29arWEWLxdTD1wesF80XyaLYl4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-427-FHemmOy1Pr2iiR3DjvGiqQ-1; Tue, 03 Sep 2024 07:31:48 -0400
X-MC-Unique: FHemmOy1Pr2iiR3DjvGiqQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42bb6f7e7adso48539685e9.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:31:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725363107; x=1725967907;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G6Z3wxXNuqkdNQKBlR4V5hxpw8pNzMmDdZpwiBC57Mk=;
 b=iw2fPq2WY91tebIqma8Domn/PvPkEnvYK4R+6XA+G5zq8BXNk9tdymg/AwS1aYUYLk
 QDI0IVNXWk6KQZsJen/G8r2ObKqb/VYAKHTQG9Cuppd93UuIU99RJYuAu4Ss+jOcfd+Z
 H7AIW0JUlpPUZxpnaINMF48lvR61Z6PLuNSZzJBmlcMfG78HdPymU+VXdO8INijmsnvB
 trisVghBPMwBbpfRYWDd0atllSjeA8/tojT1mom58t0Bnz+gULItgAD+o9ZDRVBlgDiw
 D5OM/U+e/rKldNWS1V++NT9tHWa8fTUB9R8DbViUPctrL4GXuI/v5jo6MMWviTiHh6ki
 opEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW/Wm+m1tM2nTghcCMWklrjuhKbpG1/NBCE1irMP27kNcYi8ssCilU77Kuct1wRv6FKBEIY78xLdfk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YypIcgbqY5GrnX6PfSiKViaLSZQFpgO6jP043J1wBisOuIZO4CF
 qPuce9DgNSf7GpK0f+krq/gKDxo7bsEW4bd1KaaA6SrFEIcpPui9cMFoR2ugZVvBeOYeSdwjAOH
 Ur4x9t8DNNztxrAMIxMQgvm8N6fNbRy7hLXzY/nTQ6aQweEvMDKawqpePYGgbdvrL1w==
X-Received: by 2002:a05:600c:4ed0:b0:426:654e:16da with SMTP id
 5b1f17b1804b1-42c7b517656mr67767385e9.0.1725363107475; 
 Tue, 03 Sep 2024 04:31:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEeMOyjzQgizDJPCm6Kr9tFNsJyk2nqnC/B+gZS4uzByo92kWKPWlduCmztovidAzuV/DZW6g==
X-Received: by 2002:a05:600c:4ed0:b0:426:654e:16da with SMTP id
 5b1f17b1804b1-42c7b517656mr67767215e9.0.1725363106992; 
 Tue, 03 Sep 2024 04:31:46 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374c7e62b1esm6705752f8f.36.2024.09.03.04.31.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:31:46 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Jyri Sarha <jyri.sarha@iki.fi>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH v3 42/81] drm/tidss: Run DRM default client setup
In-Reply-To: <20240830084456.77630-43-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-43-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:31:45 +0200
Message-ID: <87ttexdlcu.fsf@minerva.mail-host-address-is-not-set>
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
> The tidss driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Jyri Sarha <jyri.sarha@iki.fi>
> Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/gpu/drm/tidss/tidss_drv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

