Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8ED6334C0B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:56:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6875F6E3AE;
	Wed, 10 Mar 2021 22:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722036E3AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:56:36 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id p7so30767577eju.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 14:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LJR2XdhbK1CE71LcJ+Pxs4GZa79PxstZEwCNukG2H1Y=;
 b=BixAK6rVor4SHd/46JkYFbkrAZhrzKCaQDzJlTEPo2RqcjgFR/dSE1qFMg6twgnnid
 K8bL73M1q/gtSV4HLgLuODRUJ0eScKEzxtbOiStoer/f79SPspj1XFNqc+W05EdPAK/D
 3TCOnjIcvnvnZLBU1sJyQgMDKYkI4YPybTo48LycXAybdjAYXeCC9F+3jmL1hOPdjHYH
 EoJTwnz5Wg8PFpBIRrY0L3DjqqN7NgUmVvDOci1gtfLQSAyu0wfSZPva9WN9XXkEYqB8
 B3oCmJw2SlcBFt06BnvzPni6TBQKJpc8CgIHpfeI2e2OpJdj8X5aXkHX4N1hOrXuxyQV
 LO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LJR2XdhbK1CE71LcJ+Pxs4GZa79PxstZEwCNukG2H1Y=;
 b=lcfsMIqWcUFazR3zgxhddgvF6Jnzq0FhcP3Jat98QGQooXUoBbKu6R5ts4Afze9a1a
 tO1Hz28/0de9OaWVfihC8ZI1PyCvaahd6MdWpU9iCzk15PEGHHV9QoFMpR/Ri0Hu+vOP
 Sqb3iAnUOOPSZi+PWhrBu0L7Oqf1wOLMiFW/zfa5xSemnSS4Pr2nDyuf7AveWCj6j9m5
 U/0ucAF+1Mpmnc6jhGOqBbTm6+vdAM+hyAPUvSNTOpV8oBtV334JEaMmFNcDTy2ZuHFF
 bDTyUiEp4I6OGroZzy5pBOFpUBey9OosGRILKVfQykx/+S+mRQGMEbzdLjiMLt9QpcMk
 eZhQ==
X-Gm-Message-State: AOAM53339yJI5EI7hR10oLTg+TDc/hiCM61A0v/7tz3tzcgirS7hwIRF
 RAkck0c9XVc32xOimn/QuXqG6sjYRjx5fCJ8F6dmDQZQ7c/NYQ==
X-Google-Smtp-Source: ABdhPJyRi2l5/pCGeVF6JAkUHBYCaTumPi8D7MuMIoVZT/WwdfR2HdVU+2PbR2feBRH0RB1ddRfp50HiYi/DkZXpClc=
X-Received: by 2002:a17:906:23e9:: with SMTP id j9mr209043ejg.78.1615416994660; 
 Wed, 10 Mar 2021 14:56:34 -0800 (PST)
MIME-Version: 1.0
References: <20210310212606.766121-1-jason@jlekstrand.net>
 <20210310215007.782649-1-jason@jlekstrand.net>
In-Reply-To: <20210310215007.782649-1-jason@jlekstrand.net>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 10 Mar 2021 16:56:22 -0600
Message-ID: <CAOFGe95cwZ1cxcaUCgBfsuO5-vQOgYEwXAfq8r=T70d9euZDeQ@mail.gmail.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>, 
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [PATCH] i915: Drop relocation support on all new
 hardware (v3)
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
Cc: Dave Airlie <airlied@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Zbigniew for review

On Wed, Mar 10, 2021 at 3:50 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
>
> The Vulkan driver in Mesa for Intel hardware never uses relocations if
> it's running on a version of i915 that supports at least softpin which
> all versions of i915 supporting Gen12 do.  On the OpenGL side, Gen12+ is
> only supported by iris which never uses relocations.  The older i965
> driver in Mesa does use relocations but it only supports Intel hardware
> through Gen11 and has been deprecated for all hardware Gen9+.  The
> compute driver also never uses relocations.  This only leaves the media
> driver which is supposed to be switching to softpin going forward.
> Making softpin a requirement for all future hardware seems reasonable.
>
> Rejecting relocations starting with Gen12 has the benefit that we don't
> have to bother supporting it on platforms with local memory.  Given how
> much CPU touching of memory is required for relocations, not having to
> do so on platforms where not all memory is directly CPU-accessible
> carries significant advantages.
>
> v2 (Jason Ekstrand):
>  - Allow TGL-LP platforms as they've already shipped
>
> v3 (Jason Ekstrand):
>  - WARN_ON platforms with LMEM support in case the check is wrong
>
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 99772f37bff60..b02dbd16bfa03 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1764,7 +1764,8 @@ eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
>         return err;
>  }
>
> -static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
> +static int check_relocations(const struct i915_execbuffer *eb,
> +                            const struct drm_i915_gem_exec_object2 *entry)
>  {
>         const char __user *addr, *end;
>         unsigned long size;
> @@ -1774,6 +1775,14 @@ static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
>         if (size == 0)
>                 return 0;
>
> +       /* Relocations are disallowed for all platforms after TGL-LP */
> +       if (INTEL_GEN(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
> +               return -EINVAL;
> +
> +       /* All discrete memory platforms are Gen12 or above */
> +       if (WARN_ON(HAS_LMEM(eb->i915)))
> +               return -EINVAL;
> +
>         if (size > N_RELOC(ULONG_MAX))
>                 return -EINVAL;
>
> @@ -1807,7 +1816,7 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
>                 if (nreloc == 0)
>                         continue;
>
> -               err = check_relocations(&eb->exec[i]);
> +               err = check_relocations(eb, &eb->exec[i]);
>                 if (err)
>                         goto err;
>
> @@ -1880,7 +1889,7 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
>         for (i = 0; i < count; i++) {
>                 int err;
>
> -               err = check_relocations(&eb->exec[i]);
> +               err = check_relocations(eb, &eb->exec[i]);
>                 if (err)
>                         return err;
>         }
> --
> 2.29.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
