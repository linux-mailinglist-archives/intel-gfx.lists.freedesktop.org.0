Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CA66F5649
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 12:36:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C0AD10E257;
	Wed,  3 May 2023 10:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com
 [IPv6:2001:4860:4864:20::2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B7010E257
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 10:35:59 +0000 (UTC)
Received: by mail-oa1-x2a.google.com with SMTP id
 586e51a60fabf-19259a67bddso717696fac.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 May 2023 03:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1683110158; x=1685702158;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=t/OTPq8n5gyopR/Z17DzFDm/N1xMbWSkhwx2EcMT/eo=;
 b=QxwbPVVzAWVyUa0MOQDKQTEYVi2TJ+HBa5l8r2GtaAIr9u1h93VGcEa4B8hY8rcXFF
 qLBwaj9on95w0Quu5HBUWM5PjKox1gyCdtEgfDR7l6HfXrfzhdVJqdNlc8nTPvhGcGOZ
 tq98FyxxuS6V6TVlSP0pPRH4GRUSd+yMiZYSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683110158; x=1685702158;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=t/OTPq8n5gyopR/Z17DzFDm/N1xMbWSkhwx2EcMT/eo=;
 b=GTS6j2bsXh2ie7MMYoeT853BusqQCiY6q4oiNYOszc+2buDxi9h+LMq7rZF1TNQIi8
 eztVJW4D0fis3PhKxzbbFbadjvxzLqsSyNJ+bGV5GGveNBRSDAjHfJ5DgYcmByhJfJb6
 PCxlBpqF/enD5dt88vHEVh8QT46odnggO/Ok5pTtw+QcELdZyg+yR/XrParTKS0Obwlp
 kW16VECf10iTIHMbkdc2vS1MLLDbFX/R7DaHe/5mLbouL/Oy+Avif6xlyuw0QFqVTPeZ
 whYH0XX72JZHuXiktgCPh62gYcCkZ4JjOVWvjjb60usGT0AlAWwDRE9fO9k0LfGualXZ
 Mfbg==
X-Gm-Message-State: AC+VfDyonVEIV0XmnrI3Q/109natPXHXQfX2pi8QbdBR9ECCkcnMlOVE
 dpbf+vEPc2RbYhr1jAr3jZk0gB/rLB0ljypf7jSEJQ==
X-Google-Smtp-Source: ACHHUZ4qsUwGYJJw74sDrJXRix2sbmnSAf/rgKKHYIG/Kde2XqzEUYsu+2CsAefjG67RotoyL35pmq0bhEowkDW5QwE=
X-Received: by 2002:a05:6870:1fcb:b0:17a:d300:fd1a with SMTP id
 gp11-20020a0568701fcb00b0017ad300fd1amr3313649oac.2.1683110158128; Wed, 03
 May 2023 03:35:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230503094826.1467208-1-jani.nikula@intel.com>
In-Reply-To: <20230503094826.1467208-1-jani.nikula@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 3 May 2023 12:35:46 +0200
Message-ID: <CAKMK7uESbaF_B-eZE=GEaiPQtQCat2Y7hMAttT9uW7OuweySjg@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: taint kernel when force probing
 unsupported devices
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
Cc: intel-gfx@lists.freedesktop.org, Dave Airlie <airlied@gmail.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 3 May 2023 at 11:48, Jani Nikula <jani.nikula@intel.com> wrote:
>
> For development and testing purposes, the i915.force_probe module
> parameter and DRM_I915_FORCE_PROBE kconfig option allow probing of
> devices that aren't supported by the driver.
>
> The i915.force_probe module parameter is "unsafe" and setting it taints
> the kernel. However, using the kconfig option does not.
>
> Always taint the kernel when force probing a device that is not
> supported.
>
> Fixes: 7ef5ef5cdead ("drm/i915: add force_probe module parameter to replace alpha_support")
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Dave Airlie <airlied@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/Kconfig    | 13 ++++++++-----
>  drivers/gpu/drm/i915/i915_pci.c |  6 ++++++
>  2 files changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 06a0ca157e89..12ba19da9bc3 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -58,14 +58,16 @@ config DRM_I915
>  config DRM_I915_FORCE_PROBE
>         string "Force probe i915 for selected Intel hardware IDs"
>         depends on DRM_I915
> +       depends on EXPERT
>         help
>           This is the default value for the i915.force_probe module
>           parameter. Using the module parameter overrides this option.
>
> -         Force probe the i915 for Intel graphics devices that are
> -         recognized but not properly supported by this kernel version. It is
> -         recommended to upgrade to a kernel version with proper support as soon
> -         as it is available.
> +         Force probe the i915 driver for Intel graphics devices that are
> +         recognized but not properly supported by this kernel version. Force
> +         probing an unsupported device taints the kernel. It is recommended to
> +         upgrade to a kernel version with proper support as soon as it is
> +         available.
>
>           It can also be used to block the probe of recognized and fully
>           supported devices.
> @@ -75,7 +77,8 @@ config DRM_I915_FORCE_PROBE
>           Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
>           devices. For example, "4500" or "4500,4571".
>
> -         Use "*" to force probe the driver for all known devices.
> +         Use "*" to force probe the driver for all known devices. Not
> +         recommended.
>
>           Use "!" right before the ID to block the probe of the device. For
>           example, "4500,!4571" forces the probe of 4500 and blocks the probe of
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 5fcc9cfed671..c509ea4aa70f 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1346,6 +1346,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>                 return -ENODEV;
>         }
>
> +       if (intel_info->require_force_probe) {
> +               dev_info(&pdev->dev, "Force probing unsupported Device ID %04x, tainting kernel\n",
> +                        pdev->device);
> +               add_taint(TAINT_USER, LOCKDEP_STILL_OK);
> +       }
> +
>         /* Only bind to function 0 of the device. Early generations
>          * used function 1 as a placeholder for multi-head. This causes
>          * us confusion instead, especially on the systems where both
> --
> 2.39.2
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
