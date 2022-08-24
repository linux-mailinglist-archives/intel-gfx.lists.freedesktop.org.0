Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 505D45A0D0A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 11:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CF6511B5AC;
	Thu, 25 Aug 2022 09:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E85411B5AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661420895;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QQYWm+a+dWbY84ofHv5p7ZkgFL1UHTJco9y7zH1BEdE=;
 b=DwYH8ckhO1HdF1rwJK1gJu3NyPEXktt4tfuDVAIHSOwL9RqP9+KL4M09aOl0o2Io10Eske
 rniHcbwnUbpzlwcULFL0uP+601GtAGskLML8Ql+C1ceqvuYRENTD5n61KBBNTL+GcqzjQY
 8f7ZJ+R5Mwe7Vh4fERcyZkKbL98/kCE=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-251-oA6UVcpyMZmnlgXBjue2Ig-1; Wed, 24 Aug 2022 13:41:26 -0400
X-MC-Unique: oA6UVcpyMZmnlgXBjue2Ig-1
Received: by mail-qk1-f198.google.com with SMTP id
 bj2-20020a05620a190200b006bba055ab6eso15255956qkb.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 10:41:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc;
 bh=QQYWm+a+dWbY84ofHv5p7ZkgFL1UHTJco9y7zH1BEdE=;
 b=K5hQw/rWgZauBHkTqEkdvvZlHqutjTpJ6663btwfiGG1cmM/4wPeeI4swl5PqZHyiP
 mOCvgd5LaWrw+b3LjTXPZ5i/ncygHPoqwKPihbWdYzJ4o5hijp/0ArzHlnICfA58n5Y4
 T7knORV8QAJXeTsdOpIMGvKAnN9QTOBFNXjB823HAdfOvnJlbS/nbN+ZpSDcCSlyAAWR
 xKCEC0IPcPa0FRNp3LUevFpmE9sD742WSCLsJtetSOSROrUO14xvnVHsbPlB0566uPoK
 8G/6g094wZiuKfoOGe4kwmbTvd640BzDum4lLj8oMkxldSCXTXutoUpb9B+q3TyyowEE
 hPiw==
X-Gm-Message-State: ACgBeo3iuuBNB1WKy+akg/BDx6I0VrTrHg63Vc6kA5HwlcczLsQ3dPOX
 HAOquz9IKI2rGUuSHmRDGAXRaJ6uLW681EIGLNHfZa3kSvOhJHw/ucrJgYxZCoEkQ6t5ScVonUx
 t0rW+kxVTN8yN0QtYP7ZYG7Q64/6a
X-Received: by 2002:a05:620a:2a0a:b0:6bb:d296:3196 with SMTP id
 o10-20020a05620a2a0a00b006bbd2963196mr241434qkp.785.1661362885685; 
 Wed, 24 Aug 2022 10:41:25 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4k9upIjIL6VhJVoX42w7PZHf4ZeB0YlayxyCpkfOZfncucIivKxnpawGDLxvj+codgniVL0w==
X-Received: by 2002:a05:620a:2a0a:b0:6bb:d296:3196 with SMTP id
 o10-20020a05620a2a0a00b006bbd2963196mr241398qkp.785.1661362885362; 
 Wed, 24 Aug 2022 10:41:25 -0700 (PDT)
Received: from [192.168.8.139] (pool-100-0-245-4.bstnma.fios.verizon.net.
 [100.0.245.4]) by smtp.gmail.com with ESMTPSA id
 bm30-20020a05620a199e00b006bb11f9a859sm15477427qkb.122.2022.08.24.10.41.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Aug 2022 10:41:24 -0700 (PDT)
Message-ID: <1463d0d38e97e5664dbc0b67a7a5620bb198bcce.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Hans de Goede <hdegoede@redhat.com>, Ben Skeggs <bskeggs@redhat.com>, 
 Karol Herbst <kherbst@redhat.com>, Daniel Dadap <ddadap@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Alex Deucher
 <alexander.deucher@amd.com>, Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, Pan Xinhui <Xinhui.Pan@amd.com>, "Rafael J .
 Wysocki" <rafael@kernel.org>, Mika Westerberg
 <mika.westerberg@linux.intel.com>, Lukas Wunner <lukas@wunner.de>, Mark
 Gross <markgross@kernel.org>, Andy Shevchenko <andy@kernel.org>
Date: Wed, 24 Aug 2022 13:41:22 -0400
In-Reply-To: <20220824121523.1291269-6-hdegoede@redhat.com>
References: <20220824121523.1291269-1-hdegoede@redhat.com>
 <20220824121523.1291269-6-hdegoede@redhat.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 05/31] drm/nouveau: Don't register
 backlight when another backlight should be used (v2)
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
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just one tiny nitpick below:

On Wed, 2022-08-24 at 14:14 +0200, Hans de Goede wrote:
> Before this commit when we want userspace to use the acpi_video backlight
> device we register both the GPU's native backlight device and acpi_video's
> firmware acpi_video# backlight device. This relies on userspace preferring
> firmware type backlight devices over native ones.
> 
> Registering 2 backlight devices for a single display really is
> undesirable, don't register the GPU's native backlight device when
> another backlight device should be used.
> 
> Changes in v2:
> - Add nouveau_acpi_video_backlight_use_native() wrapper to avoid unresolved
>   symbol errors on non X86
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/nouveau/nouveau_acpi.c      | 5 +++++
>  drivers/gpu/drm/nouveau/nouveau_acpi.h      | 2 ++
>  drivers/gpu/drm/nouveau/nouveau_backlight.c | 6 ++++++
>  3 files changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/nouveau/nouveau_acpi.c b/drivers/gpu/drm/nouveau/nouveau_acpi.c
> index 6140db756d06..1592c9cd7750 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_acpi.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_acpi.c
> @@ -386,3 +386,8 @@ nouveau_acpi_edid(struct drm_device *dev, struct drm_connector *connector)
>  
>  	return kmemdup(edid, EDID_LENGTH, GFP_KERNEL);
>  }
> +
> +bool nouveau_acpi_video_backlight_use_native(void)
> +{
> +	return acpi_video_backlight_use_native();
> +}
> diff --git a/drivers/gpu/drm/nouveau/nouveau_acpi.h b/drivers/gpu/drm/nouveau/nouveau_acpi.h
> index 330f9b837066..3c666c30dfca 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_acpi.h
> +++ b/drivers/gpu/drm/nouveau/nouveau_acpi.h
> @@ -11,6 +11,7 @@ void nouveau_register_dsm_handler(void);
>  void nouveau_unregister_dsm_handler(void);
>  void nouveau_switcheroo_optimus_dsm(void);
>  void *nouveau_acpi_edid(struct drm_device *, struct drm_connector *);
> +bool nouveau_acpi_video_backlight_use_native(void);
>  #else
>  static inline bool nouveau_is_optimus(void) { return false; };
>  static inline bool nouveau_is_v1_dsm(void) { return false; };
> @@ -18,6 +19,7 @@ static inline void nouveau_register_dsm_handler(void) {}
>  static inline void nouveau_unregister_dsm_handler(void) {}
>  static inline void nouveau_switcheroo_optimus_dsm(void) {}
>  static inline void *nouveau_acpi_edid(struct drm_device *dev, struct drm_connector *connector) { return NULL; }
> +static inline bool nouveau_acpi_video_backlight_use_native(void) { return true; }
>  #endif
>  
>  #endif
> diff --git a/drivers/gpu/drm/nouveau/nouveau_backlight.c b/drivers/gpu/drm/nouveau/nouveau_backlight.c
> index a2141d3d9b1d..d2b8f8c13db4 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_backlight.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_backlight.c
> @@ -38,6 +38,7 @@
>  #include "nouveau_reg.h"
>  #include "nouveau_encoder.h"
>  #include "nouveau_connector.h"
> +#include "nouveau_acpi.h"
>  
>  static struct ida bl_ida;
>  #define BL_NAME_SIZE 15 // 12 for name + 2 for digits + 1 for '\0'
> @@ -405,6 +406,11 @@ nouveau_backlight_init(struct drm_connector *connector)
>  		goto fail_alloc;
>  	}
>  
> +	if (!nouveau_acpi_video_backlight_use_native()) {
> +		NV_INFO(drm, "Skipping nv_backlight registration\n");
> +		goto fail_alloc;
> +	}

We should probably make this say something like "No native backlight
interface, using ACPI instead" instead. With that fixed

Reviewed-by: Lyude Paul <lyude@redhat.com>

> +
>  	if (!nouveau_get_backlight_name(backlight_name, bl)) {
>  		NV_ERROR(drm, "Failed to retrieve a unique name for the backlight interface\n");
>  		goto fail_alloc;

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

