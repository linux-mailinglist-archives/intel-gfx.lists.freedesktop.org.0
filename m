Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 467FF5757D7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jul 2022 01:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3018A10F986;
	Thu, 14 Jul 2022 23:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3777F10F986
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jul 2022 23:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1657839912;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V3eV0HtQIeNgwSw4KYhB/lbHU6rdtwImxed2P/gkI6w=;
 b=b7GrAY1bxudQTeTRN2YoYJQn2W7LM6pl8dsYsu1DZsa1mY9MSImMjIg0shNc2+K/T7YKsz
 B6yqCdvzqYYW5gOL/yAbm0qXmiK53lmC6L+n8Z2VfVALr5qX0Fn44SHDghF24EXfROvCoG
 d6dSE01owBWB2d/Pt7WiZt6zYLgAiRs=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-FchOCgeaM3as5AKJ0g2vrQ-1; Thu, 14 Jul 2022 17:04:53 -0400
X-MC-Unique: FchOCgeaM3as5AKJ0g2vrQ-1
Received: by mail-qk1-f197.google.com with SMTP id
 l15-20020a05620a28cf00b006b46997c070so2012383qkp.20
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jul 2022 14:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=V3eV0HtQIeNgwSw4KYhB/lbHU6rdtwImxed2P/gkI6w=;
 b=pBce+apZGFvBJktVv80k48eAp3ZUVLWgMq++bTcLWp5q67mUr0i+e/8PWVZG7AYbF1
 bohjOFYloBsmyKmv14z8N1dUxsrC07D5hQguZSp9hQWLXtGz2850JZgPTc2AuUr2UOx4
 XKH0NiZxENZ6vCoZYHbknf5PJ/hmM/DuJVtlnU5pkeeGzNBKwspr/DO3d5br5qVK6MZ2
 85pEZxaCiLqq3BVuvGAXps7qaeiaq3yXZEYpfcmO99ufoH7KaNWyEIB3nQ2NdD936yPK
 P4NPaNxamAc1anj5xpSw/usF0J59Yo3DGna8SiX+y5yDxIgXqXVXoE3W+wWW5J1kmab0
 u/Hw==
X-Gm-Message-State: AJIora9B0uyw04o+NZ1k9rHBlC/XsP6AhdDlZPeO9NB9r5yICjb9GhXR
 SwF9iUJITo1qhVUOxnGFI5Q90fifeMv7dhU0aIxp+9hayYyasDAuIIzeO8uMz9uscSAUlAtLp2L
 XSEP7vZI5TnEkhCKuMtg3etNUgZ7O
X-Received: by 2002:a05:622a:58d:b0:317:ca0d:91a5 with SMTP id
 c13-20020a05622a058d00b00317ca0d91a5mr9655876qtb.601.1657832692141; 
 Thu, 14 Jul 2022 14:04:52 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1sbx+zK8/mPtD0D+YyNPAbK5LK8NiDtBFPc01KiEA2vmrSBhdBxGvlsaL94Yg7djHKtma5eHQ==
X-Received: by 2002:a05:622a:58d:b0:317:ca0d:91a5 with SMTP id
 c13-20020a05622a058d00b00317ca0d91a5mr9655836qtb.601.1657832691869; 
 Thu, 14 Jul 2022 14:04:51 -0700 (PDT)
Received: from [192.168.8.138] ([141.154.49.182])
 by smtp.gmail.com with ESMTPSA id
 k10-20020ac8474a000000b00304bc2acc25sm2306978qtp.6.2022.07.14.14.04.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Jul 2022 14:04:50 -0700 (PDT)
Message-ID: <e99fa5b8ff05cbfe9e8db8c551acfed86d23f69e.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Hans de Goede <hdegoede@redhat.com>, Ben Skeggs <bskeggs@redhat.com>, 
 Karol Herbst <kherbst@redhat.com>, Daniel Dadap <ddadap@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Alex Deucher
 <alexander.deucher@amd.com>, Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, "Pan,  Xinhui" <Xinhui.Pan@amd.com>, "Rafael J
 . Wysocki" <rafael@kernel.org>, Mika Westerberg
 <mika.westerberg@linux.intel.com>, Lukas Wunner <lukas@wunner.de>, Mark
 Gross <markgross@kernel.org>, Andy Shevchenko <andy@kernel.org>
Date: Thu, 14 Jul 2022 17:04:49 -0400
In-Reply-To: <20220712193910.439171-6-hdegoede@redhat.com>
References: <20220712193910.439171-1-hdegoede@redhat.com>
 <20220712193910.439171-6-hdegoede@redhat.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 05/29] drm/nouveau: Don't register
 backlight when another backlight should be used
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
Cc: David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 intel-gfx <intel-gfx@lists.freedesktop.org>, amd-gfx@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, linux-acpi@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Lyude Paul <lyude@redhat.com>

You also have permission to push this to drm-misc-whatever

On Tue, 2022-07-12 at 21:38 +0200, Hans de Goede wrote:
> Before this commit when we want userspace to use the acpi_video backlight
> device we register both the GPU's native backlight device and acpi_video's
> firmware acpi_video# backlight device. This relies on userspace preferring
> firmware type backlight devices over native ones.
> 
> Registering 2 backlight devices for a single display really is
> undesirable, don't register the GPU's native backlight device when
> another backlight device should be used.
> 
> Reviewed-by: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/nouveau/nouveau_backlight.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/nouveau/nouveau_backlight.c
> b/drivers/gpu/drm/nouveau/nouveau_backlight.c
> index a2141d3d9b1d..91c504c7b82c 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_backlight.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_backlight.c
> @@ -34,6 +34,8 @@
>  #include <linux/backlight.h>
>  #include <linux/idr.h>
>  
> +#include <acpi/video.h>
> +
>  #include "nouveau_drv.h"
>  #include "nouveau_reg.h"
>  #include "nouveau_encoder.h"
> @@ -405,6 +407,11 @@ nouveau_backlight_init(struct drm_connector *connector)
>                 goto fail_alloc;
>         }
>  
> +       if (!acpi_video_backlight_use_native()) {
> +               NV_INFO(drm, "Skipping nv_backlight registration\n");
> +               goto fail_alloc;
> +       }
> +
>         if (!nouveau_get_backlight_name(backlight_name, bl)) {
>                 NV_ERROR(drm, "Failed to retrieve a unique name for the
> backlight interface\n");
>                 goto fail_alloc;

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

