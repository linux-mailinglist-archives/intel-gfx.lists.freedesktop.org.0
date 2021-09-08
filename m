Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6EE40403C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 22:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E406E2E3;
	Wed,  8 Sep 2021 20:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3ED6E2E3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 20:41:12 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id n27so6732104eja.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Sep 2021 13:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AyNuuTGX8YgJ8ye1HvGva5xKs/arJg5EZYPHVPZfmUI=;
 b=IBesmOV0fnUXjLeFnKSPYMZgIG3U9nHJG7wcb96dNsPGjCGQXqFMtdc5qVGssKXeuy
 aFQCoXiOE1rDInNeRRgvQEiKJNNXLyzjOQ+5WFGypbjTwA1K7pFtP6CJeGMKJXKqXOA8
 DNGbGuIeKNTowHJsQ8DZoI3HsJj490iQiTwkv0s0k75YuyKzQjcHakFg+YC23lNZ+WMt
 i/gkYgIG43H66p0m2KSx/z20LzUCM3z4yHrlBoRSUz5qgRinuQhiaCujVxhhqor0+UPQ
 waTVqv9XUbI7GUPiQzoWuq8k1yAdDofn6Kga2JduQ0FsCyxk7LtRD1f3v9+doelNQ2C+
 9rhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AyNuuTGX8YgJ8ye1HvGva5xKs/arJg5EZYPHVPZfmUI=;
 b=XXY9kar9Pfyeo5bMw6YRdfm+WRnL0gXkOHGHz581rks8Y8MGMwfyrf7qQ0zAk3BrVF
 k4/1sgmB/eA/r4jE1KoJqqYd362q6oRvLLjr/CQXt1XpH/sg0upBJLii5JmcvruEIz0Q
 kY8+oqX0lNEGYWLOv7YGyLMCLwb7wJcx1SqY9SP4OzMZVuSZ39AK6m4W3fKWSeApmJhm
 oTMvMyasNvd2vrDHxiEdSKk8XKFAPB3Kj5s3glKrclw3emv1f5kZz0Dter6UjqxjCbaN
 WZyf0ucuHRglIrP6vO7RBZOho0AFqtPt/3hUdUQNvV9v5Dd5xZ591bcMe7LdWJzi+zg+
 WTew==
X-Gm-Message-State: AOAM533frRj0jUDYUnHO5Ld5TsaxSt+3Z9z3WdrOrzrd1N56fvE21VfE
 lDky3XH6y6yo1H+y9ZUH1T83wMa7Tl5DnnghdrTgraIH
X-Google-Smtp-Source: ABdhPJyUOBmYcm9qWKpTWjTQq/R7R+3RCrcyN74npFHMAkmI6IQyE6ZErHfM/aB2xvc7bwTsAdoZc4YXI2KbuzsWPqM=
X-Received: by 2002:a17:907:266f:: with SMTP id
 ci15mr1771189ejc.509.1631133670551; 
 Wed, 08 Sep 2021 13:41:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-4-airlied@gmail.com>
 <87r1dz76os.fsf@intel.com>
In-Reply-To: <87r1dz76os.fsf@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 9 Sep 2021 06:40:59 +1000
Message-ID: <CAPM=9txoo9D7oorULWtPXWCDivNALXEk4ptohWKrCbEFhwdu8Q@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 03/21] drm/i915/wm: move the update
 watermark wrapper to display side.
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

On Wed, 8 Sept 2021 at 19:33, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Wed, 08 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> > From: Dave Airlie <airlied@redhat.com>
> >
> > A vague goal is to have the vfunc table be the api between
> > wm and display, not having direction function calls cross
> > the boundary.
> >
> > This aligns the legacy update_wm with the newer vfuncs.
> >
> > The comment probably needs to live somewhere else, it seems
> > like it should live in the pm side though not the display side,
> > but I brought it along for the ride.
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/intel_pm.c              | 39 -------------------
> >  drivers/gpu/drm/i915/intel_pm.h              |  1 -
> >  3 files changed, 40 insertions(+), 40 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index d95283bf2631..b495371c1889 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>
> We haven't been axing stuff out of intel_display.c so we could add
> somethign else back! ;)
>
> A new file for watermarks or display pm? Ville?

The main reason I landed it there, was because all the other calls to
the wm funcs are in intel_display, and this wrapper is very small and
ends up being a static, the comment on the other hand, I've no idea
where it should have landed.

Dave.
