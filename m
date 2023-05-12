Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D15FE700A2E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 16:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DAFA10E6D0;
	Fri, 12 May 2023 14:18:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com
 [IPv6:2607:f8b0:4864:20::12c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ABA210E6D0
 for <Intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 14:18:53 +0000 (UTC)
Received: by mail-il1-x12c.google.com with SMTP id
 e9e14a558f8ab-3313fe59a61so23747335ab.0
 for <Intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 07:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1683901132; x=1686493132;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9Bt0A/yUK9ZXR5E3B6m/I6hErseLUyHvQzWDVZfjOdw=;
 b=V0mpkqfg7WG7Q7i9Ju2BRde1pSPJNaD9Ko1ISJndTJAaXR3RJZZLRFZ2QylTGaASVb
 hs7V9S6+2DyockNrkjLLA3Yx1BDcjJwlgr/Brswwy7fO2nDFSKhc2n7PM/EPbasWhvXo
 vwRlY2gBpYtDH1LiqSiNP/XjP8IFV1UohqfNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683901132; x=1686493132;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9Bt0A/yUK9ZXR5E3B6m/I6hErseLUyHvQzWDVZfjOdw=;
 b=ajNHLKwB0TqFxdYLnwT29WyFWzF6/ePkhD6qY2QH3zmoPxgu07C4lAyqQVyv/cDI68
 xXylToeSAswyLIzh4dtItkMxe99Sn6XI293nglGidw/hLNlUx48bQJS04K4WQWKu8ZLA
 KgxGzkLo1SXluKZ7F63C/UTQ58fJ1me9TirALlwJLNpSvgpiajj4YRRLC1IAuKEZFwBg
 hhc4/XHsc9RQ2hdRsDu7iLugjdgZIiArWPxio6pje+eR2noZZOBVIcaJ4ExwDZfOWVcM
 0YqqiR/G3ZMZvo4d2ShMyO9pxVqOmiOFgduY6MTqZaTuCxRgSSwGKGBI3UGfQ/lQZVpZ
 Osdg==
X-Gm-Message-State: AC+VfDzzvPobt05GmbTLn+6fW1zgIZrRB8IO4z8JQSp4RHi+/pEOgmLj
 fDtnRynRorBaphP9sgVqF7+j09KB0lGywmnRQtQrNA==
X-Google-Smtp-Source: ACHHUZ7DUc3V/avJMFTb1Z+lUM14qROtJMSX4EnyTpBTH+DEXAgPjoV6zbnWrlTbGuUYUjgQtH5KsGTYSICuzPAgb1o=
X-Received: by 2002:a92:d902:0:b0:335:fef6:6b87 with SMTP id
 s2-20020a92d902000000b00335fef66b87mr3858485iln.1.1683901131761; Fri, 12 May
 2023 07:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
 <20230131113237.3707217-9-tvrtko.ursulin@linux.intel.com>
 <CAJs_Fx6viBKQwoRofup8z4ZBcGC6dabvLarzT8aoevBEjQe8Ew@mail.gmail.com>
 <c80ae665-0177-355e-e38c-a7cce5043617@linux.intel.com>
 <CAF6AEGvP-AfKW7AtJuz3a020_E15fRa_vmKvNOBy_QQo5-zopQ@mail.gmail.com>
 <c288faf6-28ad-b0bc-c77d-16628ba93475@linux.intel.com>
In-Reply-To: <c288faf6-28ad-b0bc-c77d-16628ba93475@linux.intel.com>
From: Rob Clark <robdclark@chromium.org>
Date: Fri, 12 May 2023 07:18:40 -0700
Message-ID: <CAJs_Fx7=zKUeE5sejc-ZCjUZ47W6Taw4_AP9ZWT7e-kkzL3h2g@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 8/8] gputop: Basic vendor
 agnostic GPU top tool
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
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 6, 2023 at 7:33=E2=80=AFAM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 06/04/2023 15:21, Rob Clark wrote:
> > On Thu, Apr 6, 2023 at 4:08=E2=80=AFAM Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> >>
> >>
> >> On 05/04/2023 18:57, Rob Clark wrote:
> >>> On Tue, Jan 31, 2023 at 3:33=E2=80=AFAM Tvrtko Ursulin
> >>> <tvrtko.ursulin@linux.intel.com> wrote:
> >>>>
> >>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>>>
> >>>> Rudimentary vendor agnostic example of how lib_igt_drm_clients can b=
e used
> >>>> to display a sorted by card and usage list of processes using GPUs.
> >>>>
> >>>> Borrows a bit of code from intel_gpu_top but for now omits the fancy
> >>>> features like interactive functionality, card selection, client
> >>>> aggregation, sort modes, JSON output  and pretty engine names. Also =
no
> >>>> support for global GPU or system metrics.
> >>>>
> >>>> On the other hand it shows clients from all DRM cards which
> >>>> intel_gpu_top does not do.
> >>>>
> >>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>>> Cc: Rob Clark <robdclark@chromium.org>
> >>>> Cc: Christian K=C3=B6nig <ckoenig.leichtzumerken@gmail.com>
> >>>> Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> >>>
> >>> Reviewed-by: Rob Clark <robdclark@chromium.org>
> >>
> >> Presumably for 8/8 only?
> >>
> >> The rest of the series does not apply any more by now. I need to rebas=
e..
> >
> > I didn't look closely at the rest of the series (was kinda assuming
> > that was mostly just moving things around).. but I see you rebased it
> > so I can take a look.
>
> There's a lot in there - first patch is extracting some code into a
> library, with the corresponding renames, but then there are six patches
> of tweaks and feature additions which finally make gputop possible.
>
> Hopefully you can penetrate the concepts. It was all at least Valgrind
> clean back in the day I first did it.
>

by now I've read (and rebased locally) the series, and even added a
couple things on top.. so r-b for the series, we should get this
landed

BR,
-R
