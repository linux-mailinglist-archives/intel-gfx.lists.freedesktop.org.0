Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDEA6449CB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 17:58:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3557E10E341;
	Tue,  6 Dec 2022 16:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF82410E335
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 16:58:36 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id a19so17976509ljk.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Dec 2022 08:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ABdB+3Esrp9zxfUZff8hJnBP5DFeavA52Xo786Xc6cE=;
 b=VRSK3xaqFaRnyP3sXhT4qRIJNV9aEuurJfHmLvuPlb2nc32LB/hVCaWMNYnKRoLmoY
 ZYrJXGW7dsh59q9QXFbEjPXPGORfSM8FVGn76Gk/yRmIXxfkUeZEyLOH+MteCTYZAJA7
 /5Nc9QLNDPI8vcBiyEa3PPr6NzjPdtPcIPVXWUzMTDRgy8PIAz8V6xSNAFHWmLztMRP8
 pFypsc9jRDLEeeMuHUleN0s27x3cyZ3JcmizWiHUzTzH4mlhZPCN6gcIh+DscgJ8aeDg
 cFGkzhpfSZka0NwfkPXqHmLeGho6D73PmPZ994gOkfMpqxL+iux0lzWWzxJ4SDkVqEkL
 1ERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ABdB+3Esrp9zxfUZff8hJnBP5DFeavA52Xo786Xc6cE=;
 b=mkLTD9s6icCTSrRxAgJ/IMkFgvCnCmf0qT4dlkP8lNjwIsuF+i7tnzYkgiWeLYA4wd
 gtDwuiT49E9Lsa3dCegyWl0ERItsvW72Ap8a2i5WYXY9CwsOdWN0baeUQqzpzzhRm7Oe
 dFcAVMDzv0ye53wWrKuA70gqyuux9Jjk/fBv30QaWPquyANsH2qVOt/L8R/oBXFZEOva
 ZNi6iImptjijL76eRcRglCH6oiLtwiszoqt4/MqICQRiM7+j1I1NcjGzYcCkSGlHNyTc
 KxJNTIULX0fmdsYng7t4jBkEGJkpEfUa4I9VEJELcVa710sEyRwB9F1XuJ0d7TZNHgJ8
 bAAQ==
X-Gm-Message-State: ANoB5plUJka0uiIDYR0OANSYl/iHCRHLwqVAzHT82UMBBpnc2MuVBhDF
 v47+bmSaslirXAdASfy+FDDPvpb3geWrP01MNR8=
X-Google-Smtp-Source: AA0mqf6I5GWs1IXVQ8X9vu5wd0t3CA/3icrmSVgjqKnBzTgnnRQOHLJqlkQveeo9OkWzaA7B5G/IlQSClVX4da4OXXA=
X-Received: by 2002:a2e:b051:0:b0:279:e5a3:1fa0 with SMTP id
 d17-20020a2eb051000000b00279e5a31fa0mr4896486ljl.385.1670345915003; Tue, 06
 Dec 2022 08:58:35 -0800 (PST)
MIME-Version: 1.0
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <f8cfaaab25f700b1826eedeba55d68334396e92a.1670311877.git.aravind.iddamsetty@intel.com>
In-Reply-To: <f8cfaaab25f700b1826eedeba55d68334396e92a.1670311877.git.aravind.iddamsetty@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 6 Dec 2022 16:58:07 +0000
Message-ID: <CAM0jSHOT5iTUM6Yo08OtqtnHonooiOyjay5RXE7y7F_7YSDm7w@mail.gmail.com>
To: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl/UAPI: Disable
 GET/SET_CACHING IOCTL for MTL+
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 6 Dec 2022 at 08:13, Aravind Iddamsetty
<aravind.iddamsetty@intel.com> wrote:
>
> From: Pallavi Mishra <pallavi.mishra@intel.com>
>
> It's a noop on all new platforms starting from MTL.
> Refer: (e7737b67ab46) drm/i915/uapi: reject caching ioctls for discrete
>
> v2:
> 1. block get caching ioctl
> 2. return ENODEV similar to DGFX
> 3. update the doc in i915_drm.h
>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>
> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c | 4 ++--
>  include/uapi/drm/i915_drm.h                | 3 +++
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> index d44a152ce680..cf817ee0aa01 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -291,7 +291,7 @@ int i915_gem_get_caching_ioctl(struct drm_device *dev, void *data,
>         struct drm_i915_gem_object *obj;
>         int err = 0;
>
> -       if (IS_DGFX(to_i915(dev)))
> +       if (IS_DGFX(to_i915(dev)) || GRAPHICS_VER_FULL(to_i915(dev)) >= IP_VER(12, 70))
>                 return -ENODEV;
>
>         rcu_read_lock();
> @@ -329,7 +329,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
>         enum i915_cache_level level;
>         int ret = 0;
>
> -       if (IS_DGFX(i915))
> +       if (IS_DGFX(i915) || GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>                 return -ENODEV;
>
>         switch (args->caching) {
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 8df261c5ab9b..3467fd879427 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1626,6 +1626,9 @@ struct drm_i915_gem_busy {
>   *     - Everything else is always allocated and mapped as write-back, with the
>   *       guarantee that everything is also coherent with the GPU.
>   *
> + * Starting from MTL even on integrated platforms set/get caching is no longer
> + * supported and object will be mapped as write-combined only.

Just a drive-by-comment. I assume you meant uncached here, right? i.e
CACHE_NONE.

> + *
>   * Note that this is likely to change in the future again, where we might need
>   * more flexibility on future devices, so making this all explicit as part of a
>   * new &drm_i915_gem_create_ext extension is probable.
> --
> 2.25.1
>
