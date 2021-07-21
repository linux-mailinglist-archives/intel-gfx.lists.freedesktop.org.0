Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 839FA3D172E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 21:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A73476E896;
	Wed, 21 Jul 2021 19:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9196E86F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 19:41:31 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id x192so4841440ybe.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 12:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aE+5WwECBEzPAUwAaWfDdAD19hgeRUlb1b67ifBCq5o=;
 b=NHYeqjAvIR5LX96lTaPKxGXirYVHohK75u0STCtpH04+EhGdt5RBfH8jzsRvPlV7D0
 /YGsy0IYccphno9DdjcT0mO52fkPh+Z+n4iF6zfYXBJdC7kzLk2R/MufTGGJb59S8Uwv
 ZrQ5prbfZxJTqWGdbeQ54WrSKbtUc424c3vmHupcPvbs9+jMk91TizR1RESmW4P6h+xz
 kpWv6wz+xHU8UudN2lEvSA51KK28QvhEpJuKfxocw0M+4o6UD7MGlEmQyVyaSbrs7LWy
 RdkhpSPnCtXSjIT2wRXULKihbl74OMq4F8FDmUHHiZVyUDuycIjVQUs9Z2mCwC1XdGhS
 YEaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aE+5WwECBEzPAUwAaWfDdAD19hgeRUlb1b67ifBCq5o=;
 b=al6ReBxw7gBBQUKbrPXFzSMV4ndWvuqL4DIFypbDmz50SOgidz7QYkNWFwT5ZUKQVe
 X/0lpzWDJfUm2FSABsDEz5i6H0m6aAwxzi1gl+nsEa9ODz/XoVT+hSlTjzWzhmYy2Uyw
 pZ0IR6BCUDGpj5ugHjMUCCjXxzWqTGhXdnnHJ7lK14C7QiF6mgrFb19+y891Z33ZwPoE
 egrJrD0CYQiuaHrdpfJO7pt3afDXBG7qRq5ycOxXwZ8rWbC9bVxV7rMsZUQ+qNNj3KUC
 UuUFOUw0ThDn7gGr1smAtx24mVZyhmRPepntTN8EsWLYn4A7VU8hKwY7O3FQoYocaJyv
 oH1Q==
X-Gm-Message-State: AOAM531BHG95RlkKVsreUGUCZyd8LNKLweDAaISiBy04NwU4Awpm/0+Y
 ysNcmLwZowip7MNn6y/36I1zi0M+iJAkUBPHduJJnQ==
X-Google-Smtp-Source: ABdhPJwv81VIOC4BcCR36exqFNCJG7bRgBnlMaYWgf2/RhJ0NJYg55BQ0FzNosliXCaFLiih8NKuFq7PxdVM6uvCJ44=
X-Received: by 2002:a25:aa69:: with SMTP id s96mr48626057ybi.241.1626896490772; 
 Wed, 21 Jul 2021 12:41:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210721062607.512307-1-zhenyuw@linux.intel.com>
 <CAKMK7uGhcnfOPMUuWOZMErHWFqeixpPFURXFS2oVm2d-r32NZw@mail.gmail.com>
In-Reply-To: <CAKMK7uGhcnfOPMUuWOZMErHWFqeixpPFURXFS2oVm2d-r32NZw@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 21 Jul 2021 14:41:19 -0500
Message-ID: <CAOFGe97Q=gVZcH2U94s87ftj-YeeeoEVwF8cuo4-jO8Y-ZR4NQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: Fix cached atomics setting
 for Windows VM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>, "Xu, Terrence" <terrence.xu@intel.com>,
 intel-gvt-dev <intel-gvt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 21, 2021 at 4:08 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Wed, Jul 21, 2021 at 8:21 AM Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> > We've seen recent regression with host and windows VM running
> > simultaneously that cause gpu hang or even crash. Finally bisect to
> > 58586680ffad ("drm/i915: Disable atomics in L3 for gen9"), which seems
> > cached atomics behavior difference caused regression issue.
> >
> > This trys to add new scratch register handler and add those in mmio
> > save/restore list for context switch. No gpu hang produced with this one.
> >
> > Cc: stable@vger.kernel.org # 5.12+
> > Cc: "Xu, Terrence" <terrence.xu@intel.com>
> > Fixes: 58586680ffad ("drm/i915: Disable atomics in L3 for gen9")
> > Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
>
> Adding Jon Bloomfield, since different settings between linux and
> windows for something that can hard-hang the machine on gen9 sounds
> ... not good.

The difference there is legit and intentional.

As far as what we do about it for GVT, if we can safely smash L3
atomics off underneath Windows without causing problems for the VM, we
should do that.  If not, we need to discuss this internally before
proceeding.

--Jason

> -Daniel
>
> > ---
> >  drivers/gpu/drm/i915/gvt/handlers.c     | 1 +
> >  drivers/gpu/drm/i915/gvt/mmio_context.c | 2 ++
> >  2 files changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> > index 98eb48c24c46..345b4be5ebad 100644
> > --- a/drivers/gpu/drm/i915/gvt/handlers.c
> > +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> > @@ -3134,6 +3134,7 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
> >         MMIO_DFH(_MMIO(0xb100), D_BDW, F_CMD_ACCESS, NULL, NULL);
> >         MMIO_DFH(_MMIO(0xb10c), D_BDW, F_CMD_ACCESS, NULL, NULL);
> >         MMIO_D(_MMIO(0xb110), D_BDW);
> > +       MMIO_D(GEN9_SCRATCH_LNCF1, D_BDW_PLUS);
> >
> >         MMIO_F(_MMIO(0x24d0), 48, F_CMD_ACCESS | F_CMD_WRITE_PATCH, 0, 0,
> >                 D_BDW_PLUS, NULL, force_nonpriv_write);
> > diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
> > index b8ac80765461..f776c470914d 100644
> > --- a/drivers/gpu/drm/i915/gvt/mmio_context.c
> > +++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
> > @@ -105,6 +105,8 @@ static struct engine_mmio gen9_engine_mmio_list[] __cacheline_aligned = {
> >         {RCS0, COMMON_SLICE_CHICKEN2, 0xffff, true}, /* 0x7014 */
> >         {RCS0, GEN9_CS_DEBUG_MODE1, 0xffff, false}, /* 0x20ec */
> >         {RCS0, GEN8_L3SQCREG4, 0, false}, /* 0xb118 */
> > +       {RCS0, GEN9_SCRATCH1, 0, false}, /* 0xb11c */
> > +       {RCS0, GEN9_SCRATCH_LNCF1, 0, false}, /* 0xb008 */
> >         {RCS0, GEN7_HALF_SLICE_CHICKEN1, 0xffff, true}, /* 0xe100 */
> >         {RCS0, HALF_SLICE_CHICKEN2, 0xffff, true}, /* 0xe180 */
> >         {RCS0, HALF_SLICE_CHICKEN3, 0xffff, true}, /* 0xe184 */
> > --
> > 2.32.0.rc2
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
