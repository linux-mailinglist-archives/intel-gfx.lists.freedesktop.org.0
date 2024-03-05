Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1915871A55
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 11:14:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8017510F09F;
	Tue,  5 Mar 2024 10:14:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="D+jiI/RT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E2A10F09F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 10:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1709633680;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=bZreK67FpZILAeD49/V7f1eq0sfqv4ispNo3CtdsGzk=;
 b=D+jiI/RTh1S8+yief58X6yFWyck5o4nfrYbG7aZA+i09Co8kVpWTk109yh/JJfUUlWjvuW
 /Ou7eROMBHz7hVUUOaFst96rco2W/TLHv+jk5UVz/DaTQm5kLpHYzetO3X09bs4agMQVTl
 YB5+D6F5NQn3rAeSozTbVHm17w0IcRM=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-391-ntg5V8M_OnaWNUZ246o4Ow-1; Tue, 05 Mar 2024 05:14:39 -0500
X-MC-Unique: ntg5V8M_OnaWNUZ246o4Ow-1
Received: by mail-lf1-f72.google.com with SMTP id
 2adb3069b0e04-5131c91bbc3so4341643e87.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Mar 2024 02:14:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709633677; x=1710238477;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bZreK67FpZILAeD49/V7f1eq0sfqv4ispNo3CtdsGzk=;
 b=Q/Sy0YywJEBBIy644duPBNrC/b+ckNfx+KP13ux1WCUYicGY6kCZgfknuBUVrjRPUP
 wuCHOIW5xugQdRS4kZbANl0tY6/D004CxAbPjZuYjjNuNVA34H68onxiWfp8y8sbasBK
 xxm521RV093JEp7/LZwT4MLIQUJ10R9PoOoUVLJYxf1dBQUQEJ+O13yYT0QpY5IhRhZu
 7Ht6EgmRCAOHsPsoRTxB6ImxpnG4CUvf/XhBBNfs+MBrTX5hKeAQpS8LlHwzglL6Ys+N
 wBNA/bu2W/iT7eIkvhA6yIlMD0UNtD7SLO/yFXn7S5yjJJBhqeZw1iqht+UM9VNGJ2Qa
 w2yA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWcJuE3WW81rdGPOmGbZQzOwO39gTWKz3VJW87ugn7hRQTtlU7DVm2fmyUVRU0TG8HwwjYHZv4wEUGzxMCdsWsC1mbJiV3XyaxurPfolcsL
X-Gm-Message-State: AOJu0YydGNm/Bgx2PZKRaI2ZXRmSwz1ingKieCBbmqHbIddhskpOkQYB
 pvkAyYjdOqwAfLEyi6Ks4ItU/hAL7lUeocSDjLZZlWfp45KnaQOU9F8mPRUm5yuP9Ql/yZx8mfl
 wKYCEp419FURhtbSRlQ8GAoeAHQPmfaNtuQ9tGv9TfSkofnhXSlYAzQ9lIfw+Bhqfpw==
X-Received: by 2002:a19:a405:0:b0:513:4bf6:9710 with SMTP id
 q5-20020a19a405000000b005134bf69710mr940980lfc.26.1709633677481; 
 Tue, 05 Mar 2024 02:14:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGK7AzSAVkRPe1TYpP1NDx4pLfScxk4rOzERyIg+Ds+MY3KzPk22v/8TjCM4JUUhHs/40ihrg==
X-Received: by 2002:a19:a405:0:b0:513:4bf6:9710 with SMTP id
 q5-20020a19a405000000b005134bf69710mr940959lfc.26.1709633676969; 
 Tue, 05 Mar 2024 02:14:36 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 s6-20020a05600c45c600b004129e8af6absm17375630wmo.33.2024.03.05.02.14.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Mar 2024 02:14:36 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Daniel
 Vetter <daniel@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Alex Deucher
 <alexander.deucher@amd.com>, Christian =?utf-8?Q?K=C3=B6nig?=
 <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Karol Herbst <kherbst@redhat.com>,
 Lyude Paul <lyude@redhat.com>, Danilo Krummrich <dakr@redhat.com>, Rob
 Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul
 <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Hamza
 Mahfooz <hamza.mahfooz@amd.com>, Sui Jingfeng <sui.jingfeng@linux.dev>
Subject: Re: [RESEND v3 2/2] drm: Add CONFIG_DRM_WERROR
In-Reply-To: <afe5ed943414f7ec3044c1547503b9941686a867.1709629403.git.jani.nikula@intel.com>
References: <cover.1709629403.git.jani.nikula@intel.com>
 <afe5ed943414f7ec3044c1547503b9941686a867.1709629403.git.jani.nikula@intel.com>
Date: Tue, 05 Mar 2024 11:14:35 +0100
Message-ID: <87bk7trnn8.fsf@minerva.mail-host-address-is-not-set>
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

Jani Nikula <jani.nikula@intel.com> writes:

Hello Jani,

> Add kconfig to enable -Werror subsystem wide. This is useful for
> development and CI to keep the subsystem warning free, while avoiding
> issues outside of the subsystem that kernel wide CONFIG_WERROR=y might
> hit.
>
> v2: Don't depend on COMPILE_TEST
>
> Reviewed-by: Hamza Mahfooz <hamza.mahfooz@amd.com> # v1
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

