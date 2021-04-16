Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 136563622AE
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 16:43:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 635176EBFF;
	Fri, 16 Apr 2021 14:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD57D6EBFF
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 14:43:11 +0000 (UTC)
Received: by mail-io1-xd36.google.com with SMTP id h141so19531149iof.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 07:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lp6KUcpzifC+AOvSZvapIoyzvGHXfJkgx9ufls5cSDs=;
 b=euQfq2wFnH47LbM4abT1kLxvYkf6Sm9dtzlvDEkHRLT16XPhriYBl4jchj3CNIj5Cb
 78dEEh4TPIwY63jFSpB3a/4Hw6jbLBUaSghrWwAniyOnmsLBpSGqHaFBCqMY0IIv7hvo
 XREmLq4799LTQ+vzSqvxuvuQjrowfvajPCs7k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lp6KUcpzifC+AOvSZvapIoyzvGHXfJkgx9ufls5cSDs=;
 b=IOpSbaHKCp4kiA2l9rj8L+oSlr0unCYjalDr5svlfX4rtHUaeRmA0q/jasTXDJbkOM
 JuQU4WdxPaY5bsP5A9PTpWPfEFJ1a1kqk0/dVtCUKYvebZRN59OrU1ohqrcLSmPlSkjp
 Q4nnE3KOtj89ID8YkdVXK4f3R8G1bScUcb64wzbqDA46SNHzDCu31L0uP5/l5cx1Xomf
 QTcoJ7NQpVfhuQBuTVlV+yD+GSxQ5HjC+HdDv/te8yyqRH7o+3IfSa+sUvrXEoyT0MiF
 AOS3W9DtsrRImVLMe13pg5AOYDZcTlxIvAIkZSQ11ktwxWaEAUNBcJGHCa/uFweFvc7J
 Id2w==
X-Gm-Message-State: AOAM531veIoWdYCX1TOru+8m5ZvoPugt3On9GAt17P5ZGjPmDjtD6fOp
 4tw9rSV58G+JSdR1x1SwdeQbwseKg1LPZg72MDogeA==
X-Google-Smtp-Source: ABdhPJzZne3Oah6jq0y3MQ7cXog0eHGiB4uUC0V04tFOpjqhXtg1Qck21Dtp3ESr9EjxkzptDtOP0iJHWG1Ya4WW0SQ=
X-Received: by 2002:a05:6638:38a4:: with SMTP id
 b36mr4265974jav.102.1618584190633; 
 Fri, 16 Apr 2021 07:43:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210414172916.2689361-1-hsinyi@chromium.org>
 <20210414172916.2689361-7-hsinyi@chromium.org>
 <87y2dicnpy.fsf@intel.com>
In-Reply-To: <87y2dicnpy.fsf@intel.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 16 Apr 2021 22:42:44 +0800
Message-ID: <CAJMQK-iUgQBH8uW07fpbptE33D5NsVwmZXngcZknPw93apRK0A@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v19 6/6] drm/i915/selftests: Rename
 functions names
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Wolfram Sang <wsa@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-i2c@vger.kernel.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, intel-gfx@lists.freedesktop.org,
 Qii Wang <qii.wang@mediatek.com>, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 16, 2021 at 10:23 PM Jani Nikula
<jani.nikula@linux.intel.com> wrote:
>
> On Thu, 15 Apr 2021, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > pm_resume and pm_suspend might be conflict with the ones defined in
> > include/linux/suspend.h. Rename pm_resume{suspend} to
> > i915_pm_resume{suspend} since they are only used here.
>
> I agree with the rationale here.
>
> Do you need this to be part of your series, or shall we just pick this
> up for i915? (We might consider renaming to something else or prefix the
> functions with _ though, as we also have existing i915_pm_suspend and
> i915_pm_resume elsewhere.)
>

This patch can be separated from the series, thanks.


> BR,
> Jani.
>
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > Reported-by: kernel test robot <lkp@intel.com>
> > ---
> >  drivers/gpu/drm/i915/selftests/i915_gem.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
> > index dc394fb7ccfa..525afda9d31f 100644
> > --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
> > +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
> > @@ -94,7 +94,7 @@ static int pm_prepare(struct drm_i915_private *i915)
> >       return 0;
> >  }
> >
> > -static void pm_suspend(struct drm_i915_private *i915)
> > +static void i915_pm_suspend(struct drm_i915_private *i915)
> >  {
> >       intel_wakeref_t wakeref;
> >
> > @@ -116,7 +116,7 @@ static void pm_hibernate(struct drm_i915_private *i915)
> >       }
> >  }
> >
> > -static void pm_resume(struct drm_i915_private *i915)
> > +static void i915_pm_resume(struct drm_i915_private *i915)
> >  {
> >       intel_wakeref_t wakeref;
> >
> > @@ -152,12 +152,12 @@ static int igt_gem_suspend(void *arg)
> >       if (err)
> >               goto out;
> >
> > -     pm_suspend(i915);
> > +     i915_pm_suspend(i915);
> >
> >       /* Here be dragons! Note that with S3RST any S3 may become S4! */
> >       simulate_hibernate(i915);
> >
> > -     pm_resume(i915);
> > +     i915_pm_resume(i915);
> >
> >       err = switch_to_context(ctx);
> >  out:
> > @@ -192,7 +192,7 @@ static int igt_gem_hibernate(void *arg)
> >       /* Here be dragons! */
> >       simulate_hibernate(i915);
> >
> > -     pm_resume(i915);
> > +     i915_pm_resume(i915);
> >
> >       err = switch_to_context(ctx);
> >  out:
>
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
