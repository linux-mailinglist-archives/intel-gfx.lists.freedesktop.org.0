Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A6C3CFCBB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 16:55:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE9F6E13C;
	Tue, 20 Jul 2021 14:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E62F889AB5
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 14:55:34 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id c16so26373681ybl.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 07:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VO7FngHvjooR3pflYRMPQSr7EzehAIHkkEAxRVlGWYM=;
 b=C6xq2GrEu+XiarK4lE4sffi9t8zqCdQnvWRc2kyQ4nfwUzGpfKlB916ScuUq5+8itA
 L8KyEN1+Vy9oyCbEb5bv8azNbzMpp1l6dseUXfM10z+pJbJYZTwGSiUzVX3JrHyoAtc/
 /M+p/YlIUXrsqe+EC1JOZ1FQv5FK/EXJgcr2bxB3A4F8ZKzaE9JC1GxfkkeeD7fTnP5f
 NxCjMjyY1f3tMbq856TUw5wpwOcB0j61fpWmUkkQSgBCeuC7l3PTN/F7/ijjBYKjM02o
 t24Vyhy6XZhqA8tBa/F6/KTyBYwjjUU0S3FczQPGsGNrw6zXXBhr8zcAln7V+ReKfXj1
 jbpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VO7FngHvjooR3pflYRMPQSr7EzehAIHkkEAxRVlGWYM=;
 b=U9ywPh15N5qXd/GESZsoS8ZTuvIJcOHO43l5iRY/AydvhAw0fnE/Ngto97LYUlphA/
 QIJ0iTOPOAl/AceAEUKP8iBp7eC6ce4uIW8wEg1SVJ80818X17oVN9AXePZU8ldRI86C
 3mybeaIRsYq4ZJWFK1SOEfPrCeTVi+7dAvDKdrUjvIt7gCYo9cMrBb5f58/7pXoYoD61
 U5JEHRQUjS+vgDfcHXgi8tPbov2oEeasATR9X1PW9RMIMm7/QLaGcsuS8myeGND0V1B4
 SSZMVTodauWuLg2wbwSdKMocdMvXaDWNRrDs4p7Rq/vJ4nOKHi02Xm1uaev6Sw0chQSs
 iXtw==
X-Gm-Message-State: AOAM530P9+21aDqahXAvsi/0AQF5AzOywzXln8rA20kOKSqXHWTdBb4y
 4SgUUcu7JHyY1I9xG6h9F8taW061ZPE9qZbQk5GCBA==
X-Google-Smtp-Source: ABdhPJxkEXpFlWl5pCI5DfNr/N5xhywOim1AuIoDPkrlR1wAOlPms/EB6j64Srd3mndf700JcGaE6V8MJ6pDJjPR+Xo=
X-Received: by 2002:a25:2345:: with SMTP id j66mr35757668ybj.287.1626792934060; 
 Tue, 20 Jul 2021 07:55:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210719183047.2624569-1-jason@jlekstrand.net>
 <20210719183047.2624569-4-jason@jlekstrand.net>
 <YPbbSKpaB7yZ8KtE@phenom.ffwll.local>
In-Reply-To: <YPbbSKpaB7yZ8KtE@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 20 Jul 2021 09:55:22 -0500
Message-ID: <CAOFGe973b3YPNs+0aGThP0uFTu13t94To=wu3_ZwX5DJhSoGMw@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
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

On Tue, Jul 20, 2021 at 9:18 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Mon, Jul 19, 2021 at 01:30:44PM -0500, Jason Ekstrand wrote:
> > If the driver was not fully loaded, we may still have globals lying
> > around.  If we don't tear those down in i915_exit(), we'll leak a bunch
> > of memory slabs.  This can happen two ways: use_kms = false and if we've
> > run mock selftests.  In either case, we have an early exit from
> > i915_init which happens after i915_globals_init() and we need to clean
> > up those globals.  While we're here, add an explicit boolean instead of
> > using a random field from i915_pci_device to detect partial loads.
> >
> > The mock selftests case gets especially sticky.  The load isn't entirely
> > a no-op.  We actually do quite a bit inside those selftests including
> > allocating a bunch of mock objects and running tests on them.  Once all
> > those tests are complete, we exit early from i915_init().  Perviously,
> > i915_init() would return a non-zero error code on failure and a zero
> > error code on success.  In the success case, we would get to i915_exit()
> > and check i915_pci_driver.driver.owner to detect if i915_init exited early
> > and do nothing.  In the failure case, we would fail i915_init() but
> > there would be no opportunity to clean up globals.
> >
> > The most annoying part is that you don't actually notice the failure as
> > part of the self-tests since leaking a bit of memory, while bad, doesn't
> > result in anything observable from userspace.  Instead, the next time we
> > load the driver (usually for next IGT test), i915_globals_init() gets
> > invoked again, we go to allocate a bunch of new memory slabs, those
> > implicitly create debugfs entries, and debugfs warns that we're trying
> > to create directories and files that already exist.  Since this all
> > happens as part of the next driver load, it shows up in the dmesg-warn
> > of whatever IGT test ran after the mock selftests.
> >
> > While the obvious thing to do here might be to call i915_globals_exit()
> > after selftests, that's not actually safe.  The dma-buf selftests call
> > i915_gem_prime_export which creates a file.  We call dma_buf_put() on
> > the resulting dmabuf which calls fput() on the file.  However, fput()
> > isn't immediate and gets flushed right before syscall returns.  This
> > means that all the fput()s from the selftests don't happen until right
> > before the module load syscall used to fire off the selftests returns
> > which is after i915_init().  If we call i915_globals_exit() in
> > i915_init() after selftests, we end up freeing slabs out from under
> > objects which won't get released until fput() is flushed at the end of
> > the module load.
> >
> > The solution here is to let i915_init() return success early and detect
> > the early success in i915_exit() and only tear down globals and nothing
> > else.  This way the module loads successfully, regardless of the success
> > or failure of the tests.  Because we've not enumerated any PCI devices,
> > no device nodes are created and it's entirely useless from userspace.
> > The only thing the module does at that point is hold on to a bit of
> > memory until we unload it and i915_exit() is called.  Importantly, this
> > means that everything from our selftests has the ability to properly
> > flush out between i915_init() and i915_exit() because there are a couple
> > syscall boundaries in between.
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > Fixes: 32eb6bcfdda9 ("drm/i915: Make request allocation caches global")
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 32 +++++++++++++++++++++++++-------
> >  1 file changed, 25 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index 4e627b57d31a2..24e4e54516936 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -1194,18 +1194,31 @@ static struct pci_driver i915_pci_driver = {
> >       .driver.pm = &i915_pm_ops,
> >  };
> >
> > +static bool i915_fully_loaded = false;
> > +
> >  static int __init i915_init(void)
> >  {
> >       bool use_kms = true;
> >       int err;
> >
> > +     i915_fully_loaded = false;
> > +
> >       err = i915_globals_init();
> >       if (err)
> >               return err;
> >
> > +     /* i915_mock_selftests() only returns zero if no mock subtests were
> > +      * run.  If we get any non-zero error code, we return early here.
> > +      * We always return success because selftests may have allocated
> > +      * objects from slabs which will get cleaned up by i915_exit().  We
> > +      * could attempt to clean up immediately and fail module load but,
> > +      * thanks to interactions with other parts of the kernel (struct
> > +      * file, in particular), it's safer to let the module fully load
> > +      * and then clean up on unload.
> > +      */
> >       err = i915_mock_selftests();
> >       if (err)
> > -             return err > 0 ? 0 : err;
> > +             return 0;
>
> At least the module options still claim that you can run selftests and
> still load the driver. Which makes sense for perf/hw selftests, since
> those need the driver, but would result in the same old bug resurfacing
> that you're trying to fix there.
>
> Is that description just confused and needs some fixing, or do we have a
> gap here?

I don't think there's real need for a fully loaded driver after mock
selftests.  They exist entirely to run against a mock driver, not the
real one.

> Patch itself looks reasonable, with the nits from Tvrtko addressed:

Done

> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Thanks

--Jason

> >
> >       /*
> >        * Enable KMS by default, unless explicitly overriden by
> > @@ -1225,6 +1238,12 @@ static int __init i915_init(void)
> >               return 0;
> >       }
> >
> > +     /* After this point, i915_init() must either fully succeed or
> > +      * properly tear everything down and fail.  We don't have separate
> > +      * flags for each set-up bit.
> > +      */
> > +     i915_fully_loaded = true;
> > +
> >       i915_pmu_init();
> >
> >       err = pci_register_driver(&i915_pci_driver);
> > @@ -1240,12 +1259,11 @@ static int __init i915_init(void)
> >
> >  static void __exit i915_exit(void)
> >  {
> > -     if (!i915_pci_driver.driver.owner)
> > -             return;
> > -
> > -     i915_perf_sysctl_unregister();
> > -     pci_unregister_driver(&i915_pci_driver);
> > -     i915_pmu_exit();
> > +     if (i915_fully_loaded) {
> > +             i915_perf_sysctl_unregister();
> > +             pci_unregister_driver(&i915_pci_driver);
> > +             i915_pmu_exit();
> > +     }
> >       i915_globals_exit();
> >  }
> >
> > --
> > 2.31.1
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
