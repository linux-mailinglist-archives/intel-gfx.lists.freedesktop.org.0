Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEDF33905D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 15:53:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3C46F878;
	Fri, 12 Mar 2021 14:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2984B6F878
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 14:53:07 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id h13so8325983eds.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 06:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y0yPz2WTjfVoNxcvRCF94HLRbjFvIgAnULg1/zNSPvY=;
 b=VSvqt4YkActDHon0Yup2NZQOmDcJecXN4m4vFbfFFXPspkTUg1eOwsdlLVGFWPA+YB
 DGlLIf0x82G1NBL9Eweo6ZoE4tLInEU32U0OHz1TTDgfcOVDufmuGml5o5o+J+uXHS93
 9HQ6Rk74DjY4c0KD6GhU5hG20S6Ham1AofXEkorUroFNhzThdG9dvzRCHszvcWSAk0jk
 Ngx9pWrwmMCguhPYqGbWWEe2WebSSgtFudCTB6PNQ/5A4hRj2x/K+Q5n3rqNKOEYbqf4
 sQozhCKlbJLBWN4f8d6nxvWwYcBCQo9Hj08E9Jhxzm+NMWoAFoFLmpRAGzrmwSuenKJO
 4L3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y0yPz2WTjfVoNxcvRCF94HLRbjFvIgAnULg1/zNSPvY=;
 b=sZ/TMlqEGiWrCv5We7YlQcPBM8BnOZW63bBur7mJOa+XSCwWKb4coKBhJ5k+Dzd9CY
 hguLbXpmZHMvY4xLaWIjFvcix7fzuuQcYkguc193sFG0jjCoeyjTybADiPBaZDX8IeHw
 ibI5CE096Cxb7tOb198de4NwbvrJ/QdmJqbeu9ccAxcMgqFyi4L3fv9e3YpY1mxhldto
 bN7GKWZvXc+h2rtBWaruFB+4LxF5rRzURRKliJE7NUVThjL+yg97Z6jt2CEo4wmi4tBQ
 8AdByqpxM3U7OTU+6HIdIB+HDbJBVVYrmVy0EILglMS9NIFfRk3MAMmC9mnilK2l80JJ
 C7PA==
X-Gm-Message-State: AOAM533ldnKFYstApydRGpdMC3w45EeNTKLCarntABsusbmkpsqkussC
 h/5KbDozq/eLkZxlOee9TGWJz98uABZZ85pPLsBPww==
X-Google-Smtp-Source: ABdhPJy7dodDDO4vk45f40hiPVJeZd1RO6oKVz9aF5OKFobbGn2+/qFu7W2x7S0dXiqGq4QleR4kJj2ckYRBXf8vj6I=
X-Received: by 2002:a05:6402:3047:: with SMTP id
 bu7mr14570323edb.227.1615560785647; 
 Fri, 12 Mar 2021 06:53:05 -0800 (PST)
MIME-Version: 1.0
References: <20210310215007.782649-1-jason@jlekstrand.net>
 <20210311181733.1048640-1-jason@jlekstrand.net>
 <39bfc60f-cc5a-d793-5cea-e1b8e0751d62@linux.intel.com>
 <CAM0jSHMirGmPp3UrFTr3vPv-EVbw1wjveAYWZ=Xdc0KF8hRb9g@mail.gmail.com>
 <25050bac-d576-bfdc-b318-21bcc8afd6f8@linux.intel.com>
 <CAM0jSHPMaKHnJFynL6XBZ8DvB9xTK_zeGo3PJmZedXNCWg-iLA@mail.gmail.com>
In-Reply-To: <CAM0jSHPMaKHnJFynL6XBZ8DvB9xTK_zeGo3PJmZedXNCWg-iLA@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 12 Mar 2021 08:52:54 -0600
Message-ID: <CAOFGe96BJKupsL8RysPQAbA-p0nvuHJw2r5Hp4cCeynyFBc5ww@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 12, 2021 at 6:17 AM Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Fri, 12 Mar 2021 at 11:47, Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
> >
> >
> > On 12/03/2021 10:56, Matthew Auld wrote:
> > > On Fri, 12 Mar 2021 at 09:50, Tvrtko Ursulin
> > > <tvrtko.ursulin@linux.intel.com> wrote:
> > >>
> > >>
> > >> On 11/03/2021 18:17, Jason Ekstrand wrote:
> > >>> The Vulkan driver in Mesa for Intel hardware never uses relocations if
> > >>> it's running on a version of i915 that supports at least softpin which
> > >>> all versions of i915 supporting Gen12 do.  On the OpenGL side, Gen12+ is
> > >>> only supported by iris which never uses relocations.  The older i965
> > >>> driver in Mesa does use relocations but it only supports Intel hardware
> > >>> through Gen11 and has been deprecated for all hardware Gen9+.  The
> > >>> compute driver also never uses relocations.  This only leaves the media
> > >>> driver which is supposed to be switching to softpin going forward.
> > >>> Making softpin a requirement for all future hardware seems reasonable.
> > >>>
> > >>> There is one piece of hardware enabled by default in i915: RKL which was
> > >>> enabled by e22fa6f0a976 which has not yet landed in drm-next so this
> > >>> almost but not really a userspace API change for RKL.  If it becomes a
> > >>> problem, we can always add !IS_ROCKETLAKE(eb->i915) to the condition.
> > >>>
> > >>> Rejecting relocations starting with newer Gen12 platforms has the
> > >>> benefit that we don't have to bother supporting it on platforms with
> > >>> local memory.  Given how much CPU touching of memory is required for
> > >>> relocations, not having to do so on platforms where not all memory is
> > >>> directly CPU-accessible carries significant advantages.
> > >>>
> > >>> v2 (Jason Ekstrand):
> > >>>    - Allow TGL-LP platforms as they've already shipped
> > >>>
> > >>> v3 (Jason Ekstrand):
> > >>>    - WARN_ON platforms with LMEM support in case the check is wrong
> > >>>
> > >>> v4 (Jason Ekstrand):
> > >>>    - Call out Rocket Lake in the commit message
> > >>>
> > >>> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > >>> Acked-by: Keith Packard <keithp@keithp.com>
> > >>> Cc: Dave Airlie <airlied@redhat.com>
> > >>> Cc: Daniel Vetter <daniel.vetter@intel.com>
> > >>> ---
> > >>>    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 15 ++++++++++++---
> > >>>    1 file changed, 12 insertions(+), 3 deletions(-)
> > >>>
> > >>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > >>> index 99772f37bff60..b02dbd16bfa03 100644
> > >>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > >>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > >>> @@ -1764,7 +1764,8 @@ eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
> > >>>        return err;
> > >>>    }
> > >>>
> > >>> -static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
> > >>> +static int check_relocations(const struct i915_execbuffer *eb,
> > >>> +                          const struct drm_i915_gem_exec_object2 *entry)
> > >>>    {
> > >>>        const char __user *addr, *end;
> > >>>        unsigned long size;
> > >>> @@ -1774,6 +1775,14 @@ static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
> > >>>        if (size == 0)
> > >>>                return 0;
> > >>>
> > >>> +     /* Relocations are disallowed for all platforms after TGL-LP */
> > >>> +     if (INTEL_GEN(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
> > >>> +             return -EINVAL;
> > >>
> > >> I still recommend ENODEV as more inline with our established error
> > >> codes. (Platform does not support vs dear userspace you messed up your
> > >> flags, modes, whatever.)

I don't know that I care that much what color we paint this shed.  I
just want it decided so we can all move on.  Here's a few comments:

 -ENODEV, at least based on the DRM error code docs doesn't make much
sense to me because the device is very much still there, you just did
something wrong.

 -EOPNOTSUPP I could see but the operation of execbuf is very much
supported, just not with this set of parameters.  This makes sense to
me for the removal of pread/pwrite but not here.

 -EINVAL is always a correct choice but tells you nothing.  On the
other hand, this is what's returned by drm_invalid_op which is what we
use when we entirely delete a feature.

As someone who has spent way too much of their life trying to figure
out why execbuffer is returning -EINVAL, I really don't think one more
makes it any worse.  If anything, -EINVAL has the advantage that you
can smash some #defines at the top of the file and get dmesg stuff
which can be pretty useful.

In any case, could we please pick a color so I can send a, hopefully
final, new version. :-)

> > >>> +
> > >>> +     /* All discrete memory platforms are Gen12 or above */
> > >>> +     if (WARN_ON(HAS_LMEM(eb->i915)))
> > >>> +             return -EINVAL;
> > >>
> > >> What was the conclusion on value of supporting fake lmem?
> > >
> > >>From the previous thread, nothing is currently using it, we did have a
> > > dedicated machine in CI but that has been gone for some months it
> > > seems, so it might already be broken. Also its use was limited only to
> > > the live selftests, which can't even hit this path. The plan was to
> > > eventually remove it, since supporting both real and fake lmem in the
> > > same tree is likely more effort than it's worth.
> >
> > If I understand correctly you are saying it is safe to not have this
> > check even if fake lmem is removed later? Presumably since there is no
> > way to place an object into lmem in upstream from userspace, hence
> > execbuf cannot use any?
>
> The current usage is gated behind setting i915_selftest.live < 0 (when
> loading the driver, run the live selfests and then exit module probe).
> So for this and pread/pwrite, or any uAPI stuff we shouldn't have to
> worry about fake lmem.

Ok, I'll drop all my WARN_ON(HAS_LMEM()).  I thought it was a nice bit
of extra documentation and safety but others seem to think it's just
clutter.  Fine with me.  I'll just update the comment on the first
check to point out that it also covers all LMEM platforms.

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
