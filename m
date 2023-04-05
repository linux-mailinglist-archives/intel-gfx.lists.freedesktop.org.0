Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6368C6D7B78
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 13:36:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2719D10E8F1;
	Wed,  5 Apr 2023 11:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C84A510E8F6
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 11:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680694563;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=w+DpvBDLH+Q2wPQSf5T5cg/6dNPP/wKGiFxJjQmEyog=;
 b=MQ1XtW2uVtZ8yShAl3aRlQ4buUB8n9ewWChX1j0PJ6SP1Y5Rc89gR377d30N5gNayNfoWw
 J6w3qglmKCpVGtRdRwTHDhzUhVkL4s1Ew2eau/5lJIa9RboJUp627GWbM0O6sMQ4MdKcTE
 oIooamISP3nYajn5Kc6f+y24LZ68GGc=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-648-yvwzctD5N56diE_DJIDYPA-1; Wed, 05 Apr 2023 07:36:02 -0400
X-MC-Unique: yvwzctD5N56diE_DJIDYPA-1
Received: by mail-wm1-f72.google.com with SMTP id
 j14-20020a05600c1c0e00b003f066d2638aso304069wms.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 04:36:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680694561;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=w+DpvBDLH+Q2wPQSf5T5cg/6dNPP/wKGiFxJjQmEyog=;
 b=fQZ2QVEhO20YVXiSq7GjFOXDaR7yojFXOpYxz0LxXtvs0FirPhWyyDXNZ95PqusDFm
 sEKrgrs+d1Z+iwAkFWPwMjDNMVOCOmbECY/Ksk1JBg9xNAuJT4zFUC0t/IY7alVaX9bK
 Fkj1ZLluz9R0TW4kImokqdOKMIP7cgBRZDEk+YmrbWeWRZbmcX6163RJclnEY6q3rQow
 biukF6ekU4y3OVvm6G9LzqApSMQ4oBKg4PxwqiY0XmwapBDq5lrNyYS2PIJyaRyyRjTJ
 O31Td9Y6scXX5DIPmqhRBSRm/j/PGBtndtm/7GOmTdFsPBklU9Y6+q7yPGscdULcaVYC
 4uZw==
X-Gm-Message-State: AAQBX9f6/KYZ+qVHQj1UsQLyUeZwOaTBCInPpfpeYQyFFHyZa2Nt8sq6
 O+tF8qwUzLfZzepC0Ghfq8UEbfPx+U3gLt9UoZBbJUDgH4SS6I4wGHGT+1qRVitb2Iq9WgFwSM2
 2TWLhJjRWaGi56udVwL+UB6cbzfH8
X-Received: by 2002:a05:600c:2312:b0:3ef:6396:d9c8 with SMTP id
 18-20020a05600c231200b003ef6396d9c8mr4156038wmo.5.1680694561793; 
 Wed, 05 Apr 2023 04:36:01 -0700 (PDT)
X-Google-Smtp-Source: AKy350bVORkVRtNCVnhi+nkM7YfPRljFYApx+IgQsLCU6O8KIvYjIzhapPCjaV21ZdY+Tdfz0i9VhA==
X-Received: by 2002:a05:600c:2312:b0:3ef:6396:d9c8 with SMTP id
 18-20020a05600c231200b003ef6396d9c8mr4156021wmo.5.1680694561477; 
 Wed, 05 Apr 2023 04:36:01 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 y22-20020a7bcd96000000b003ed4f6c6234sm1954392wmj.23.2023.04.05.04.36.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 04:36:01 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
In-Reply-To: <20230404201842.567344-6-daniel.vetter@ffwll.ch>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <20230404201842.567344-6-daniel.vetter@ffwll.ch>
Date: Wed, 05 Apr 2023 13:36:00 +0200
Message-ID: <87sfdebly7.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 6/8] video/aperture: Drop primary argument
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
Cc: linux-fbdev@vger.kernel.org, linux-hyperv@vger.kernel.org,
 Dexuan Cui <decui@microsoft.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Wei Liu <wei.liu@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel.vetter@ffwll.ch> writes:

> With the preceeding patches it's become defunct. Also I'm about to add
> a different boolean argument, so it's better to keep the confusion
> down to the absolute minimum.
>
> v2: Since the hypervfb patch got droppped (it's only a pci device for
> gen1 vm, not for gen2) there is one leftover user in an actual driver
> left to touch.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Helge Deller <deller@gmx.de>
> Cc: linux-fbdev@vger.kernel.org
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: "K. Y. Srinivasan" <kys@microsoft.com>
> Cc: Haiyang Zhang <haiyangz@microsoft.com>
> Cc: Wei Liu <wei.liu@kernel.org>
> Cc: Dexuan Cui <decui@microsoft.com>
> Cc: linux-hyperv@vger.kernel.org
> ---
>  drivers/gpu/drm/drm_aperture.c  | 2 +-
>  drivers/video/aperture.c        | 7 +++----
>  drivers/video/fbdev/hyperv_fb.c | 2 +-
>  include/linux/aperture.h        | 9 ++++-----
>  4 files changed, 9 insertions(+), 11 deletions(-)
>

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

