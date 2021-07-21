Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAA63D0D8D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 13:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C97F6EBD0;
	Wed, 21 Jul 2021 11:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20ED36EBA8
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 11:26:25 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id d12so1757247wre.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 04:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SHXTqODjZMjL7ems7eQOdMuntJ59DwSRCnurAgLXpD8=;
 b=VASvrozaCGnLisNK4Xlibl8ySlOT/+g5WuAkRQmPLaRyufdY5KTxqw8UKAjaGvdID8
 DtiexV9zlca8dOa1kvCUhp8ZoG6eWFzUdRUM2YFQY9KQd0QOwzdrGMHMPDnthnvKUjVC
 HYLCdWxLR6AvLKc4k42IkPFKdNFvk6lnbkrsg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SHXTqODjZMjL7ems7eQOdMuntJ59DwSRCnurAgLXpD8=;
 b=e70wZmDN85sMVIAhdtIN9ZfqDGu+c9jlHhyQCuURUpjo+hNg/xPFU71JgYA4Xzz4ja
 nkE762ob9bh6bk4HJLLSf4Jzs1BOuHxniWsh4P5zJG2vDJtTMwXtomwUyn5xXJLwri1y
 ir6fcsBXsH/O3vZ10RhJk0r/VoBNrLlWr46Q5HB2B2Aly+p+X6X6qemSMuAkZ3M9zfxb
 D0s0/edm1UI+/OLtO9Xa5wzvn/goRi5uSy1VCa3Bxdla6UUI6NmjQASggow/tJBWk7KJ
 dzVXyF8vgR8cxkwE7sxKSulbFePF3c0AoO4XimWMJ1E8isIuYWQwkj+J70UDDlUHty9u
 tDUg==
X-Gm-Message-State: AOAM532cgWQCxLpvgcrJHNwPsPin/bHoKtKPon2Ei1afclTQXxYr18Ch
 upS+i94ROUMR9joeOIPx7Ft71A==
X-Google-Smtp-Source: ABdhPJxI4G9Kh4w4H5hhaSS3JGjdwP4S1wByysNecFr4KR5xj440C3JjB0XJMswp9lbNU3vAAHhMLA==
X-Received: by 2002:a5d:4b46:: with SMTP id w6mr42766727wrs.352.1626866783761; 
 Wed, 21 Jul 2021 04:26:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u16sm32090963wrw.36.2021.07.21.04.26.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 04:26:23 -0700 (PDT)
Date: Wed, 21 Jul 2021 13:26:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YPgEXZ4zXuR4374o@phenom.ffwll.local>
References: <20210719183047.2624569-1-jason@jlekstrand.net>
 <20210719183047.2624569-4-jason@jlekstrand.net>
 <YPbbSKpaB7yZ8KtE@phenom.ffwll.local>
 <CAOFGe973b3YPNs+0aGThP0uFTu13t94To=wu3_ZwX5DJhSoGMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe973b3YPNs+0aGThP0uFTu13t94To=wu3_ZwX5DJhSoGMw@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Always call
 i915_globals_exit() from i915_exit()
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 20, 2021 at 09:55:22AM -0500, Jason Ekstrand wrote:
> On Tue, Jul 20, 2021 at 9:18 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Mon, Jul 19, 2021 at 01:30:44PM -0500, Jason Ekstrand wrote:
> > > If the driver was not fully loaded, we may still have globals lying
> > > around.  If we don't tear those down in i915_exit(), we'll leak a bunch
> > > of memory slabs.  This can happen two ways: use_kms = false and if we've
> > > run mock selftests.  In either case, we have an early exit from
> > > i915_init which happens after i915_globals_init() and we need to clean
> > > up those globals.  While we're here, add an explicit boolean instead of
> > > using a random field from i915_pci_device to detect partial loads.
> > >
> > > The mock selftests case gets especially sticky.  The load isn't entirely
> > > a no-op.  We actually do quite a bit inside those selftests including
> > > allocating a bunch of mock objects and running tests on them.  Once all
> > > those tests are complete, we exit early from i915_init().  Perviously,
> > > i915_init() would return a non-zero error code on failure and a zero
> > > error code on success.  In the success case, we would get to i915_exit()
> > > and check i915_pci_driver.driver.owner to detect if i915_init exited early
> > > and do nothing.  In the failure case, we would fail i915_init() but
> > > there would be no opportunity to clean up globals.
> > >
> > > The most annoying part is that you don't actually notice the failure as
> > > part of the self-tests since leaking a bit of memory, while bad, doesn't
> > > result in anything observable from userspace.  Instead, the next time we
> > > load the driver (usually for next IGT test), i915_globals_init() gets
> > > invoked again, we go to allocate a bunch of new memory slabs, those
> > > implicitly create debugfs entries, and debugfs warns that we're trying
> > > to create directories and files that already exist.  Since this all
> > > happens as part of the next driver load, it shows up in the dmesg-warn
> > > of whatever IGT test ran after the mock selftests.
> > >
> > > While the obvious thing to do here might be to call i915_globals_exit()
> > > after selftests, that's not actually safe.  The dma-buf selftests call
> > > i915_gem_prime_export which creates a file.  We call dma_buf_put() on
> > > the resulting dmabuf which calls fput() on the file.  However, fput()
> > > isn't immediate and gets flushed right before syscall returns.  This
> > > means that all the fput()s from the selftests don't happen until right
> > > before the module load syscall used to fire off the selftests returns
> > > which is after i915_init().  If we call i915_globals_exit() in
> > > i915_init() after selftests, we end up freeing slabs out from under
> > > objects which won't get released until fput() is flushed at the end of
> > > the module load.
> > >
> > > The solution here is to let i915_init() return success early and detect
> > > the early success in i915_exit() and only tear down globals and nothing
> > > else.  This way the module loads successfully, regardless of the success
> > > or failure of the tests.  Because we've not enumerated any PCI devices,
> > > no device nodes are created and it's entirely useless from userspace.
> > > The only thing the module does at that point is hold on to a bit of
> > > memory until we unload it and i915_exit() is called.  Importantly, this
> > > means that everything from our selftests has the ability to properly
> > > flush out between i915_init() and i915_exit() because there are a couple
> > > syscall boundaries in between.
> > >
> > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > Fixes: 32eb6bcfdda9 ("drm/i915: Make request allocation caches global")
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > ---
> > >  drivers/gpu/drm/i915/i915_pci.c | 32 +++++++++++++++++++++++++-------
> > >  1 file changed, 25 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > > index 4e627b57d31a2..24e4e54516936 100644
> > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > @@ -1194,18 +1194,31 @@ static struct pci_driver i915_pci_driver = {
> > >       .driver.pm = &i915_pm_ops,
> > >  };
> > >
> > > +static bool i915_fully_loaded = false;
> > > +
> > >  static int __init i915_init(void)
> > >  {
> > >       bool use_kms = true;
> > >       int err;
> > >
> > > +     i915_fully_loaded = false;
> > > +
> > >       err = i915_globals_init();
> > >       if (err)
> > >               return err;
> > >
> > > +     /* i915_mock_selftests() only returns zero if no mock subtests were
> > > +      * run.  If we get any non-zero error code, we return early here.
> > > +      * We always return success because selftests may have allocated
> > > +      * objects from slabs which will get cleaned up by i915_exit().  We
> > > +      * could attempt to clean up immediately and fail module load but,
> > > +      * thanks to interactions with other parts of the kernel (struct
> > > +      * file, in particular), it's safer to let the module fully load
> > > +      * and then clean up on unload.
> > > +      */
> > >       err = i915_mock_selftests();
> > >       if (err)
> > > -             return err > 0 ? 0 : err;
> > > +             return 0;
> >
> > At least the module options still claim that you can run selftests and
> > still load the driver. Which makes sense for perf/hw selftests, since
> > those need the driver, but would result in the same old bug resurfacing
> > that you're trying to fix there.
> >
> > Is that description just confused and needs some fixing, or do we have a
> > gap here?
> 
> I don't think there's real need for a fully loaded driver after mock
> selftests.  They exist entirely to run against a mock driver, not the
> real one.

Can you pls update the module option help then for the next round?
-Daniel

> 
> > Patch itself looks reasonable, with the nits from Tvrtko addressed:
> 
> Done
> 
> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> Thanks
> 
> --Jason
> 
> > >
> > >       /*
> > >        * Enable KMS by default, unless explicitly overriden by
> > > @@ -1225,6 +1238,12 @@ static int __init i915_init(void)
> > >               return 0;
> > >       }
> > >
> > > +     /* After this point, i915_init() must either fully succeed or
> > > +      * properly tear everything down and fail.  We don't have separate
> > > +      * flags for each set-up bit.
> > > +      */
> > > +     i915_fully_loaded = true;
> > > +
> > >       i915_pmu_init();
> > >
> > >       err = pci_register_driver(&i915_pci_driver);
> > > @@ -1240,12 +1259,11 @@ static int __init i915_init(void)
> > >
> > >  static void __exit i915_exit(void)
> > >  {
> > > -     if (!i915_pci_driver.driver.owner)
> > > -             return;
> > > -
> > > -     i915_perf_sysctl_unregister();
> > > -     pci_unregister_driver(&i915_pci_driver);
> > > -     i915_pmu_exit();
> > > +     if (i915_fully_loaded) {
> > > +             i915_perf_sysctl_unregister();
> > > +             pci_unregister_driver(&i915_pci_driver);
> > > +             i915_pmu_exit();
> > > +     }
> > >       i915_globals_exit();
> > >  }
> > >
> > > --
> > > 2.31.1
> > >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
