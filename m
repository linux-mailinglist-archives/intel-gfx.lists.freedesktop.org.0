Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E2D338AC8
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 11:56:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C33E6F56A;
	Fri, 12 Mar 2021 10:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com
 [IPv6:2607:f8b0:4864:20::f2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB966F56A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 10:56:56 +0000 (UTC)
Received: by mail-qv1-xf2e.google.com with SMTP id g14so4021142qvn.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 02:56:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UH3VQTQkcSldWIxV+utDxeqRKGcb3QVVAH71xZBrZPg=;
 b=cpWXyu7R9quYahSQgg3qytsnUAiqJa7+3mG7Ybnc9Hbf+aRi43dTUyieLZ4o4Jl7uk
 85m7M7GCx1icZODSrXfPrs+5ba0wSoNM5hoB0MKTOukZ62R2BkcWUO2Mv5Pg7WFdqcJB
 0q3dYMUPmrhmBWpkA1z9Hhjuoq5m6S5yClRx1v/PuE+2lRU38jfKJ6d5d0cavnXV1HDJ
 +jk0RXfWpFXkJjOtaIMbJLUA9zT36zi3QANhtM/32EzeBqJSoRAbeP390vqOrJB2FgHk
 FWIWXCzBHDqTlu58klj0rf1rn0rDieFlkQujYMMhs7F1n8PaleLWXw9P0FdCOt7tptKr
 ucGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UH3VQTQkcSldWIxV+utDxeqRKGcb3QVVAH71xZBrZPg=;
 b=QPXBLZtZbNiVnyuvo5IEU412FG5cof5cpwKXlIxwSvlnrugIf35zk8CUvTl7Q6BuoL
 gy/dZZ1Ffc87BbU5+64BeACsf82dx93/EgMyDPA7IPJw0NAr3b/A9J5G9zmtH+1AgUF8
 hLzlj0BW2k9JNK/7wEq2nTHn1aAaY4VOAy2S6ZgI3blp33NUSfJ5LowFzOigZDlYra6+
 n8SfJxXmrZgOWcnaSYcV/ugsD3lPuvAbSEXfIr/2OLl7xc7K5DoOpKneBqKgWSl5/BTa
 rR98HyQNzgyULyUveTAk+dgyA5PEhUYmmi3Y49UAf44fxMRXoGstDYyC485+8Kdzij42
 wfYQ==
X-Gm-Message-State: AOAM530OoUk+zUqNkboPdN4XZnTX4nDhjFTWrhCEjUbOI52PcDP1qm7O
 +XDUQ+W8UhffobdTicVUq0yxeirJKtQzXbJDpfE=
X-Google-Smtp-Source: ABdhPJyckXFLuPZ6m28eB3dKK48UCk1HxhkGRo1Tsr0UXb8bSbV14/0ydCYXb7cad0QcdR3ym8tK4/LEpJCerSns4zM=
X-Received: by 2002:a05:6214:20a1:: with SMTP id
 1mr11931290qvd.30.1615546615742; 
 Fri, 12 Mar 2021 02:56:55 -0800 (PST)
MIME-Version: 1.0
References: <20210310215007.782649-1-jason@jlekstrand.net>
 <20210311181733.1048640-1-jason@jlekstrand.net>
 <39bfc60f-cc5a-d793-5cea-e1b8e0751d62@linux.intel.com>
In-Reply-To: <39bfc60f-cc5a-d793-5cea-e1b8e0751d62@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 12 Mar 2021 10:56:29 +0000
Message-ID: <CAM0jSHMirGmPp3UrFTr3vPv-EVbw1wjveAYWZ=Xdc0KF8hRb9g@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Drop relocation support on
 all new hardware (v4)
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Mar 2021 at 09:50, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 11/03/2021 18:17, Jason Ekstrand wrote:
> > The Vulkan driver in Mesa for Intel hardware never uses relocations if
> > it's running on a version of i915 that supports at least softpin which
> > all versions of i915 supporting Gen12 do.  On the OpenGL side, Gen12+ is
> > only supported by iris which never uses relocations.  The older i965
> > driver in Mesa does use relocations but it only supports Intel hardware
> > through Gen11 and has been deprecated for all hardware Gen9+.  The
> > compute driver also never uses relocations.  This only leaves the media
> > driver which is supposed to be switching to softpin going forward.
> > Making softpin a requirement for all future hardware seems reasonable.
> >
> > There is one piece of hardware enabled by default in i915: RKL which was
> > enabled by e22fa6f0a976 which has not yet landed in drm-next so this
> > almost but not really a userspace API change for RKL.  If it becomes a
> > problem, we can always add !IS_ROCKETLAKE(eb->i915) to the condition.
> >
> > Rejecting relocations starting with newer Gen12 platforms has the
> > benefit that we don't have to bother supporting it on platforms with
> > local memory.  Given how much CPU touching of memory is required for
> > relocations, not having to do so on platforms where not all memory is
> > directly CPU-accessible carries significant advantages.
> >
> > v2 (Jason Ekstrand):
> >   - Allow TGL-LP platforms as they've already shipped
> >
> > v3 (Jason Ekstrand):
> >   - WARN_ON platforms with LMEM support in case the check is wrong
> >
> > v4 (Jason Ekstrand):
> >   - Call out Rocket Lake in the commit message
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > Acked-by: Keith Packard <keithp@keithp.com>
> > Cc: Dave Airlie <airlied@redhat.com>
> > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 15 ++++++++++++---
> >   1 file changed, 12 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index 99772f37bff60..b02dbd16bfa03 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -1764,7 +1764,8 @@ eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
> >       return err;
> >   }
> >
> > -static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
> > +static int check_relocations(const struct i915_execbuffer *eb,
> > +                          const struct drm_i915_gem_exec_object2 *entry)
> >   {
> >       const char __user *addr, *end;
> >       unsigned long size;
> > @@ -1774,6 +1775,14 @@ static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
> >       if (size == 0)
> >               return 0;
> >
> > +     /* Relocations are disallowed for all platforms after TGL-LP */
> > +     if (INTEL_GEN(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
> > +             return -EINVAL;
>
> I still recommend ENODEV as more inline with our established error
> codes. (Platform does not support vs dear userspace you messed up your
> flags, modes, whatever.)
>
> > +
> > +     /* All discrete memory platforms are Gen12 or above */
> > +     if (WARN_ON(HAS_LMEM(eb->i915)))
> > +             return -EINVAL;
>
> What was the conclusion on value of supporting fake lmem?

From the previous thread, nothing is currently using it, we did have a
dedicated machine in CI but that has been gone for some months it
seems, so it might already be broken. Also its use was limited only to
the live selftests, which can't even hit this path. The plan was to
eventually remove it, since supporting both real and fake lmem in the
same tree is likely more effort than it's worth.

>
> Regards,
>
> Tvrtko
>
> > +
> >       if (size > N_RELOC(ULONG_MAX))
> >               return -EINVAL;
> >
> > @@ -1807,7 +1816,7 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
> >               if (nreloc == 0)
> >                       continue;
> >
> > -             err = check_relocations(&eb->exec[i]);
> > +             err = check_relocations(eb, &eb->exec[i]);
> >               if (err)
> >                       goto err;
> >
> > @@ -1880,7 +1889,7 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
> >       for (i = 0; i < count; i++) {
> >               int err;
> >
> > -             err = check_relocations(&eb->exec[i]);
> > +             err = check_relocations(eb, &eb->exec[i]);
> >               if (err)
> >                       return err;
> >       }
> >
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
