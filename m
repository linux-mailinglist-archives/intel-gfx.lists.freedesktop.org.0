Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C43B0338C81
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 13:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEDAE6F5F3;
	Fri, 12 Mar 2021 12:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F26236F5F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 12:17:02 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id g185so23960175qkf.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 04:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+8JRpFohPP4j2aTXo11/57U1KgLRvi/DRdUrZ/X17Bc=;
 b=uFoHUp/J9Uup+karbdcOHfBGoFh1xz+MfMblBmpjZGpFPgsm/gu9jWJmHv5F1VJTS2
 nrusFruo++xVBfx7eGp8eVbNq7ky01KS34cr0i/nvNzatZyT2EJBL4zqhm9esUjf0s9J
 j3VZyAcjfV0nORVSZeWy47l6adauYTkAHwlc1pKWdS7anPppeyeBvZKjhzseTH529xNi
 xX1wgtqUlkvSS+MoKKBDbZRKfjLZYGRynCfeTTZ1aYuYXaOPyY+GqKrfAY5eBB70Ixah
 uAAjicWYER5bhKZ73GKb56a+bztEl/QfQSo5859fPAuRd9Ppjl6ler2yiKbP9c5+I7oi
 G8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+8JRpFohPP4j2aTXo11/57U1KgLRvi/DRdUrZ/X17Bc=;
 b=e6x1fmLNMljT6nv3LsLCqLRO3rv+/M4yk4sKeL/2PsEUdr/KhgbbUMJxoxkHbBsrH9
 L2i2UTrYNl3TKzJ6+TLLK9R8vEUMPEnYau1qphte/1/8VU7M6QZa+EljVfjCX02jr5bp
 GaV1XKJHSXxERuvVBc2anh80XoUnbwceYmt6f7U5s+6vQTrw/dwev+1H2atiaTOolkpo
 llboRoRnR3gc+H0uU2X4npIhSckvtDkepPgK3s+oPZ7BbIXjBRuNs0ZjYLf0M5A5XuZj
 p6GaDQ5/UjraYP1XePFGdz3eLzpFaHGNTcUqc6I4oUwdpHPQU6A6s/vjZXhJP2Y0FOCu
 W79g==
X-Gm-Message-State: AOAM53142fVjzZE9dtb7+u4wV57IaYYCpmYQR4VnCmZ3hhWqM/E+6dP3
 +z4j/Ly/kZWVsdKrpoFs9HbNYTLKmRRn8Z2cslc=
X-Google-Smtp-Source: ABdhPJxQeSg54PBrqWlWXrx3lkJXPCfSBIJc5tmsFTWrhErXBIC4rsA6K0PO4S6rKG5axsjLoVb8gN1I4wpJi1zr2YA=
X-Received: by 2002:a37:a0d1:: with SMTP id
 j200mr12218153qke.426.1615551422067; 
 Fri, 12 Mar 2021 04:17:02 -0800 (PST)
MIME-Version: 1.0
References: <20210310215007.782649-1-jason@jlekstrand.net>
 <20210311181733.1048640-1-jason@jlekstrand.net>
 <39bfc60f-cc5a-d793-5cea-e1b8e0751d62@linux.intel.com>
 <CAM0jSHMirGmPp3UrFTr3vPv-EVbw1wjveAYWZ=Xdc0KF8hRb9g@mail.gmail.com>
 <25050bac-d576-bfdc-b318-21bcc8afd6f8@linux.intel.com>
In-Reply-To: <25050bac-d576-bfdc-b318-21bcc8afd6f8@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 12 Mar 2021 12:16:35 +0000
Message-ID: <CAM0jSHPMaKHnJFynL6XBZ8DvB9xTK_zeGo3PJmZedXNCWg-iLA@mail.gmail.com>
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

On Fri, 12 Mar 2021 at 11:47, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 12/03/2021 10:56, Matthew Auld wrote:
> > On Fri, 12 Mar 2021 at 09:50, Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> >>
> >>
> >> On 11/03/2021 18:17, Jason Ekstrand wrote:
> >>> The Vulkan driver in Mesa for Intel hardware never uses relocations if
> >>> it's running on a version of i915 that supports at least softpin which
> >>> all versions of i915 supporting Gen12 do.  On the OpenGL side, Gen12+ is
> >>> only supported by iris which never uses relocations.  The older i965
> >>> driver in Mesa does use relocations but it only supports Intel hardware
> >>> through Gen11 and has been deprecated for all hardware Gen9+.  The
> >>> compute driver also never uses relocations.  This only leaves the media
> >>> driver which is supposed to be switching to softpin going forward.
> >>> Making softpin a requirement for all future hardware seems reasonable.
> >>>
> >>> There is one piece of hardware enabled by default in i915: RKL which was
> >>> enabled by e22fa6f0a976 which has not yet landed in drm-next so this
> >>> almost but not really a userspace API change for RKL.  If it becomes a
> >>> problem, we can always add !IS_ROCKETLAKE(eb->i915) to the condition.
> >>>
> >>> Rejecting relocations starting with newer Gen12 platforms has the
> >>> benefit that we don't have to bother supporting it on platforms with
> >>> local memory.  Given how much CPU touching of memory is required for
> >>> relocations, not having to do so on platforms where not all memory is
> >>> directly CPU-accessible carries significant advantages.
> >>>
> >>> v2 (Jason Ekstrand):
> >>>    - Allow TGL-LP platforms as they've already shipped
> >>>
> >>> v3 (Jason Ekstrand):
> >>>    - WARN_ON platforms with LMEM support in case the check is wrong
> >>>
> >>> v4 (Jason Ekstrand):
> >>>    - Call out Rocket Lake in the commit message
> >>>
> >>> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> >>> Acked-by: Keith Packard <keithp@keithp.com>
> >>> Cc: Dave Airlie <airlied@redhat.com>
> >>> Cc: Daniel Vetter <daniel.vetter@intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 15 ++++++++++++---
> >>>    1 file changed, 12 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> >>> index 99772f37bff60..b02dbd16bfa03 100644
> >>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> >>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> >>> @@ -1764,7 +1764,8 @@ eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
> >>>        return err;
> >>>    }
> >>>
> >>> -static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
> >>> +static int check_relocations(const struct i915_execbuffer *eb,
> >>> +                          const struct drm_i915_gem_exec_object2 *entry)
> >>>    {
> >>>        const char __user *addr, *end;
> >>>        unsigned long size;
> >>> @@ -1774,6 +1775,14 @@ static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
> >>>        if (size == 0)
> >>>                return 0;
> >>>
> >>> +     /* Relocations are disallowed for all platforms after TGL-LP */
> >>> +     if (INTEL_GEN(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
> >>> +             return -EINVAL;
> >>
> >> I still recommend ENODEV as more inline with our established error
> >> codes. (Platform does not support vs dear userspace you messed up your
> >> flags, modes, whatever.)
> >>
> >>> +
> >>> +     /* All discrete memory platforms are Gen12 or above */
> >>> +     if (WARN_ON(HAS_LMEM(eb->i915)))
> >>> +             return -EINVAL;
> >>
> >> What was the conclusion on value of supporting fake lmem?
> >
> >>From the previous thread, nothing is currently using it, we did have a
> > dedicated machine in CI but that has been gone for some months it
> > seems, so it might already be broken. Also its use was limited only to
> > the live selftests, which can't even hit this path. The plan was to
> > eventually remove it, since supporting both real and fake lmem in the
> > same tree is likely more effort than it's worth.
>
> If I understand correctly you are saying it is safe to not have this
> check even if fake lmem is removed later? Presumably since there is no
> way to place an object into lmem in upstream from userspace, hence
> execbuf cannot use any?

The current usage is gated behind setting i915_selftest.live < 0 (when
loading the driver, run the live selfests and then exit module probe).
So for this and pread/pwrite, or any uAPI stuff we shouldn't have to
worry about fake lmem.

>
> Regards,
>
> Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
