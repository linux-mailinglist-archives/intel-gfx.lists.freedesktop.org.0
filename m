Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159AE3EAC45
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 23:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBF86E486;
	Thu, 12 Aug 2021 21:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 052386E486
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 21:10:53 +0000 (UTC)
Received: by mail-yb1-xb30.google.com with SMTP id w17so14501854ybl.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 14:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pXv3QyEw50y6AyOsD2V+PjO6ve1Tpw796AybsnM1TaM=;
 b=N+6IzEkigg8yk1I83UtQuU9x0LnAIN2x/VSjDX0D40adCDNItUs6FHZhgSg8nZx//O
 j/8rKR9xPjwX3fetop4sIlK/pvM00O8aN0cw0iqpWCWe/6liNAYjIVXoREE2ydc/ZrYa
 25bsxeiuxpuAjlK4LF3s+5o6m+XAyB6aR0Q6fDVp6l1Haz5Qb1hIWx6/+UReKNkk843V
 jy0V9+jDvnp9cihDzuPHkrR4NJF+W23LCFp75GjPmwjgrydqSyyek/je/eS7/W1GdQdV
 EBOPup2aap6EkUKPLPWhf8zij87hSaQOdLpgUmbKAo7gxUAz/HA5mcZgeGN+0owzEScl
 aGLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pXv3QyEw50y6AyOsD2V+PjO6ve1Tpw796AybsnM1TaM=;
 b=UaQtd7L1gPew5AO8iHgTpOlaRD/vg2sBRBzPOKD7M21I7X8cWCx0d1eELK1+vXeVq6
 nDLDl5YxuvPQ6jgupBt3SMtAL5oWiv3MQ/IfF/Ga+MRnrEj9g158eXOD2/4m6BpDgfXQ
 ygSSEHj3fh9G3hiUV/+81avoceWdrT7On9CVmruQb4NNU6+YDMJxLHW15RRauzVje2Sz
 YqeFr6/ziVHyDfNhAaA9Vq4xOjjWx3nE9l6syMP+Mhns7FCwon6MriJ8VsrPJOASI3Gh
 /3iRn7mwMLCJYVDb0Dh8T8JQQ70v61ul6x8IG2T5hLfxYxxd/isR1W4zI75YfnJvVLgB
 +b8g==
X-Gm-Message-State: AOAM532zqG4JbxbQ+sFQHO8q+0OlciFOyZ3A2Y5bP1lWk4sj64JOPQaq
 P1syVPxaE1jUYNbxPGo3PubJfmJvfwwe445NWHtxkw==
X-Google-Smtp-Source: ABdhPJwvzwq4puA1Jw+2CTP0/jOiFL8KL+52NhiWe5JA9KWmqpPTtYa0WwVyGkp2OHSyPj0wUCvO9BhvVzKAPJQPs1I=
X-Received: by 2002:a25:ab54:: with SMTP id u78mr7178701ybi.139.1628802652711; 
 Thu, 12 Aug 2021 14:10:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210812124452.622233-1-maarten.lankhorst@linux.intel.com>
 <20210812124452.622233-2-maarten.lankhorst@linux.intel.com>
 <CAKMK7uGMqYbiqZqV4gUy1KMbBCX=ZAGf-vT69SP9LbZU3hcSiQ@mail.gmail.com>
In-Reply-To: <CAKMK7uGMqYbiqZqV4gUy1KMbBCX=ZAGf-vT69SP9LbZU3hcSiQ@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 12 Aug 2021 16:10:41 -0500
Message-ID: <CAOFGe97N1-6wuP0FxvsYkXknBFW3PaU69kGqAGbJh+o8L53zrA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add pci ids and uapi for DG1
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

On Thu, Aug 12, 2021 at 9:49 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> On Thu, Aug 12, 2021 at 2:44 PM Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com> wrote:
> >
> > DG1 has support for local memory, which requires the usage of the
> > lmem placement extension for creating bo's, and memregion queries
> > to obtain the size. Because of this, those parts of the uapi are
> > no longer guarded behind FAKE_LMEM.
> >
> > According to the pull request referenced below, mesa should be mostly
> > ready for DG1. VK_EXT_memory_budget is not hooked up yet, but we
> > should definitely just enable the uapi parts by default.
> >
> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > References: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/11584
> > Cc: Jordan Justen jordan.l.justen@intel.com
> > Cc: Jason Ekstrand jason@jlekstrand.net
>
> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Acked-by: Jason Ekstrand <jason@jlekstrand.net>

>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_create.c | 3 ---
> >  drivers/gpu/drm/i915/i915_pci.c            | 1 +
> >  drivers/gpu/drm/i915/i915_query.c          | 3 ---
> >  3 files changed, 1 insertion(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > index 23fee13a3384..1d341b8c47c0 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > @@ -347,9 +347,6 @@ static int ext_set_placements(struct i915_user_extension __user *base,
> >  {
> >         struct drm_i915_gem_create_ext_memory_regions ext;
> >
> > -       if (!IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM))
> > -               return -ENODEV;
> > -
> >         if (copy_from_user(&ext, base, sizeof(ext)))
> >                 return -EFAULT;
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index 1bbd09ad5287..93ccdc6bbd03 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -1115,6 +1115,7 @@ static const struct pci_device_id pciidlist[] = {
> >         INTEL_RKL_IDS(&rkl_info),
> >         INTEL_ADLS_IDS(&adl_s_info),
> >         INTEL_ADLP_IDS(&adl_p_info),
> > +       INTEL_DG1_IDS(&dg1_info),
> >         {0, 0, 0}
> >  };
> >  MODULE_DEVICE_TABLE(pci, pciidlist);
> > diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> > index e49da36c62fb..5e2b909827f4 100644
> > --- a/drivers/gpu/drm/i915/i915_query.c
> > +++ b/drivers/gpu/drm/i915/i915_query.c
> > @@ -432,9 +432,6 @@ static int query_memregion_info(struct drm_i915_private *i915,
> >         u32 total_length;
> >         int ret, id, i;
> >
> > -       if (!IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM))
> > -               return -ENODEV;
> > -
> >         if (query_item->flags != 0)
> >                 return -EINVAL;
> >
> > --
> > 2.32.0
> >
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
