Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B40211700
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 02:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48BA36EA06;
	Thu,  2 Jul 2020 00:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1905D6EA06
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 00:03:45 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id f7so22906864wrw.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jul 2020 17:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jzOs1EbbzxfvbZOy91XCy4EmP3ud29O7AwG1tEgWkh0=;
 b=Ns13hDQqeQWtld7/t83M9uj7CS4Jz0SvBb5Ckv+n8mBkEroYXPbwAHc9iiZM+w/ctX
 4ndj3FznDLDlf+YxqpIH6tknbCnyymn3VEMxNCQwmSTNsNrdkAHfiZa9NxVw5AO28O4U
 joKm1A6porRbl3bSbam4l850Kvc30qbrmvMbytaLO6YqaT07mBsYRp9ndadx5T8csg9i
 irJIGZuXgIwBdZRWBdVYOYce1K6Sk+AtcyMRnrQ70l2v79LY1qqf/TlXkp0M/hhKcwOe
 6w+6rPor/7nTIzMzma/8qFKbA1mVRgOHFGHuyu0KjySibFv92oy0X8ztGuuTyY0xTOEI
 0LZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jzOs1EbbzxfvbZOy91XCy4EmP3ud29O7AwG1tEgWkh0=;
 b=WNTCLBKiUexCzAigSoL8Br0PlIx3ZXe3b0sKKtwYm4phVSYCpRShzTqTDfwP7RUL3Y
 fDMEifCwPKKs32UpMo/YxqtReU8TpQN7naCikFD/Sq4cwQLI7iaRJoa4iZrCbg8eJv6o
 ke5/Lt8lhUW88yw+Y4LIzxufyjXWiwJdXztf5pzrdgGiJtqh63YjwQ5Gk4rirfsOnavJ
 6bUypyt+UUV+6EVa9SOtIwjuftsq3849Jnq1IvVXxRM7UpWwEjkBssVW6qWwMQZAlLaX
 GJZcFYZmA5MF5qoANAud4+CDxBZROAtt6tAf1T0jjP16DeA7zhaML7F4ciMrkwYMLlUW
 2lBw==
X-Gm-Message-State: AOAM533SYAxRqeI3wG+1ptEg09MiV8XgAsX8WOJurGN2q6yI4Sq6cbIF
 C9Ae+xfH58AN5QoYU8FPoYy0vt0jNGmkv9b7QFyZlA==
X-Google-Smtp-Source: ABdhPJwOZHu+C7N63aKtIO8jNjtKqxG4B4+pS9L8RjF1+9IXYR+VgBh2dkJ9xNdYHjobWWNfOwh2ZYO+aNnQmyJkU9c=
X-Received: by 2002:a5d:4dc2:: with SMTP id f2mr29427252wru.399.1593648223569; 
 Wed, 01 Jul 2020 17:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200701183626.2450-1-lucas.demarchi@intel.com>
 <159363204755.23379.12166844013630420536@build.alporthouse.com>
In-Reply-To: <159363204755.23379.12166844013630420536@build.alporthouse.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Wed, 1 Jul 2020 17:03:31 -0700
Message-ID: <CAKi4VALTO-6+vfuY3-E0_+H_eW-F-pURn+0G-+HAW88pp_za-Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not read swizzle info if
 unavailable
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 1, 2020 at 12:34 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Lucas De Marchi (2020-07-01 19:36:26)
> > Since gen8 we don't use swizzle anymore. Don't dump registers related to
> > it: registers may or may not be there.
> >
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_debugfs.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> > index 8594a8ef08ce..d9e56eee0453 100644
> > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > @@ -1138,13 +1138,17 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
> >         struct intel_uncore *uncore = &dev_priv->uncore;
> >         intel_wakeref_t wakeref;
> >
> > -       wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> > -
> >         seq_printf(m, "bit6 swizzle for X-tiling = %s\n",
> >                    swizzle_string(dev_priv->ggtt.bit_6_swizzle_x));
> >         seq_printf(m, "bit6 swizzle for Y-tiling = %s\n",
> >                    swizzle_string(dev_priv->ggtt.bit_6_swizzle_y));
>
> I'm really tempted to say kill this, it's past the point of usefulness.
> There's one user in igt, who can just use the information provided via
> the get_tiling_ioctl.
>
> However, if you pull the
>
>         if (dev_priv->quirks & QUIRK_PIN_SWIZZLED_PAGES)
>                 seq_puts(m, "L-shaped memory detected\n");
>
> here to before the register read out as well (as that is also plain
> driver state), you have a deal.

Ok. I think I will do this first that is simpler and later take a look in igt.

Thanks
Lucas De Marchi

> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
