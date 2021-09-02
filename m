Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5134C3FF472
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 21:57:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF306E804;
	Thu,  2 Sep 2021 19:57:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com
 [IPv6:2607:f8b0:4864:20::c2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 441F26E81A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 19:57:10 +0000 (UTC)
Received: by mail-oo1-xc2b.google.com with SMTP id
 b5-20020a4ac285000000b0029038344c3dso895369ooq.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Sep 2021 12:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=w1iGSI09I7mSDTsqPHx+HBW32W7aNG03ZNJ+RCpWy08=;
 b=gDQBuoNaR1yUUixrd/fgoZGJDkndkbIMdAbWAbf01RkIj2pzUvYf30ftgRXZNFJfNe
 paTAD8mYZRZjxQvesvI54GHVpiAiZjNohYGNtdtlbOkUiXVmYp8FyE6q61n32fOmuChh
 IwhIpfJ+E+WG0WE+HA24PQMUxj8oU/vmv/qIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=w1iGSI09I7mSDTsqPHx+HBW32W7aNG03ZNJ+RCpWy08=;
 b=X3LBiS9cjrjfdjZX1QiyChXASdWVf4Qv1NpwIZ98bgfqhNwehzUzLRypun4HRsHXB1
 +fTchfz6emgV1QAcoBgBtK/b1a5oXIHdOTUtmBzIqdXnWbZ3LhNh2TmYZX6iIvMTM+3Z
 LetdgBMxlKstgQc8QrstKlDG8FRP3fstSExb6YO0dI4ZYvd0yqtjJ/8mLURSoNlPVi6A
 0BvqE8jsVuOoKJikLeYmNDv19UCmorpSiSGwtYb/4IDSV78VjDEZl/Mey45eduyV0Evk
 PRehXXIEw9gbyQzaUQwPWmqlpF4MnfwcGmxdCwPxCiylf8M8N9nD0UP2vnoC/8pwuUkk
 L8UQ==
X-Gm-Message-State: AOAM5322K8WhSs0zekWuSTrcmTDtK2NDxFRPRG1gI1pJvlsrpM1gqqWT
 vv/cLKL5YZ5ZV2uJXq3kB+RKEUKQbDeOrpE15W52Ew==
X-Google-Smtp-Source: ABdhPJwVNgb+X+kV3tKNGPpgmk+PYlIs++l/gQ7+dmr7cXk6tsO8t5e6uP8KBgFEBVrEjdmMsp0Fsxv5NzHbtP5ghcE=
X-Received: by 2002:a4a:a9ce:: with SMTP id h14mr4102606oon.89.1630612629450; 
 Thu, 02 Sep 2021 12:57:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210901151415.177556-1-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20210901151415.177556-1-janusz.krzysztofik@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 2 Sep 2021 21:56:58 +0200
Message-ID: <CAKMK7uHwpbdu-fa8C3TRoLJhja8zn-5D75CoEuJyEdA1iTCFpA@mail.gmail.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, 
 =?UTF-8?Q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark GPU wedging on driver
 unregister unrecoverable
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

On Wed, Sep 1, 2021 at 5:15 PM Janusz Krzysztofik
<janusz.krzysztofik@linux.intel.com> wrote:
>
> GPU wedged flag now set on driver unregister to prevent from further
> using the GPU can be then cleared unintentionally when calling
> __intel_gt_unset_wedged() still before the flag is finally marked
> unrecoverable.  We need to have it marked unrecoverable earlier.
> Implement that by replacing a call to intel_gt_set_wedged() in
> intel_gt_driver_unregister() with intel_gt_set_wedged_on_fini().
>
> With the above in place, intel_gt_set_wedged_on_fini() is now called
> twice on driver remove, second time from __intel_gt_disable().  This
> seems harmless, while dropping intel_gt_set_wedged_on_fini() from
> __intel_gt_disable() proved to break some driver probe error unwind
> paths as well as mock selftest exit path.
>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Micha=C5=82 Winiarski <michal.winiarski@intel.com>

All gt/core/gem patches must cc: dri-devel. Please resend, plus
anything else that matches, and please share in your team apparently
the memo didnt get through (this is the process since half a year
now).
-Daniel

> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt=
/intel_gt.c
> index 62d40c986642..173b53cb2b47 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -750,7 +750,7 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>          * all in-flight requests so that we can quickly unbind the activ=
e
>          * resources.
>          */
> -       intel_gt_set_wedged(gt);
> +       intel_gt_set_wedged_on_fini(gt);
>
>         /* Scrub all HW state upon release */
>         with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> --
> 2.25.1
>


--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
