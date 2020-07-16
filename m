Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B02221905
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 02:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCE206E09A;
	Thu, 16 Jul 2020 00:43:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD6A6E09A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 00:43:21 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id by13so3251827edb.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 17:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wm5rJ32rLxO+HO9N/RfA/c5d8e0S0rmJhNnlIvFPu/g=;
 b=XzgEBvzua4F/MqATPSgL7+0zde3fT1UZ8TftoriI0pnSYV/5xcioHnAOx4KV4nP5JE
 E6zpg17luVhyb4EfBTYnF/bsS8oFxV8ZBD2UVNG8/z4QlhPgwcQePd80Y0zuLxTdnBjs
 su37JSP8dqRE/R1cLWk3wdOjV8XEX3Ia5ws5UCc3pwzItW9l7bXl/5U5b7dApSWlaY7x
 ZSJ80Mdp5Yz3JvtbWPrc3Bc5k1cpLWGB/QTSrhKxflgU+S58CvZuU2JriWowdRggHqcL
 T7hgVb0N5m4+60tNjRZ4qXiyI/mr5iW6ZgWPaI4yGTiJyOU9Xeee4h6GBm+bUvaFvYOF
 h6rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wm5rJ32rLxO+HO9N/RfA/c5d8e0S0rmJhNnlIvFPu/g=;
 b=q0+HI1YzfZ3JXZHzv03Ylh37bR5gj13EIRpSLtxlU8AnP8Ff+aKp1zcLI+FnUbadRW
 zyoSoBbPmQELaVqftgiUPYauMO93e9QHGYsR5AcK+7ThMJUwr7o5l7lpPGTSjXnFPxpv
 AwaDz2NH+6mbEnncIKW3RWcgQI+NQ1Qog0S4ot+Y+T0fvv6vtAWafFLzGRjsn/uQSfZe
 7ia3O5Kg991dahiSxm42uCRJ5nEClOl6bl1mLd7a7JvYoV08+hg9l7+ZEw/Hp+a+JX8k
 ycRV4IWwjn1xbiartztKeVrgGiSD5zwUtU4GJQKm5+NlyQMt+vxxoB/fEGML0wu49PTW
 6H/Q==
X-Gm-Message-State: AOAM531vUzZcyy+G1TE+ikNZzGnR1J7PAxdm6RMKR2qVkXDWAFHD/L4N
 kk1yjJSfmY2Ljd7UJfTMxZaajBqu6cWXpWahBIQ=
X-Google-Smtp-Source: ABdhPJwGpc4Lxfce33OEdBBuSfcfDP33JIUqfDcw5DDZ3V8E4HVGHAsjGJKq/H/TFYfSSagWtuOtUFcwzvr2DXe49+8=
X-Received: by 2002:a50:e883:: with SMTP id f3mr2173979edn.220.1594860200343; 
 Wed, 15 Jul 2020 17:43:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-34-matthew.auld@intel.com>
 <CAPM=9tzvetxhBJBOC60ydOVcTN9ujtHLCODFNwGtONTDzuzwZA@mail.gmail.com>
 <c6cd965d-9a03-10fd-517e-a44934a2b0c9@intel.com>
In-Reply-To: <c6cd965d-9a03-10fd-517e-a44934a2b0c9@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 16 Jul 2020 10:43:09 +1000
Message-ID: <CAPM=9txaksu8brsPTHsLkQudpNLd6O1MOzG8APGTrMaoXMioqw@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [RFC 33/60] drm/i915/lmem: support pwrite
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Jul 2020 at 00:35, Matthew Auld <matthew.auld@intel.com> wrote:
>
> On 13/07/2020 06:09, Dave Airlie wrote:
> > On Fri, 10 Jul 2020 at 22:00, Matthew Auld <matthew.auld@intel.com> wrote:
> >>
> >> We need to add support for pwrite'ing an LMEM object.
> >
> > why? DG1 is a discrete GPU, these interfaces we already gross and
> > overly hacky for integrated, I'd prefer not to drag them across into
> > discrete land.
> >
> > same goes for pread.
> >
> > You have no legacy userspace here, userspace needs change to support
> > LMEM, it can be fixed to avoid legacy ioctls paths.
>
> Ok, there have also been similar discussions internally in the past. I
> think one of the reasons was around IGT, and how keeping the
> pread/pwrite interface meant slightly less pain, also it's not much
> effort to implement for LMEM. If this is a NACK, then I guess the other
> idea was to somehow fallback to mmap and update IGT accordingly.

I just don't think we should have internal kernel interfaces for
mapping ram in the kernel address space, seems pointless, makes less
sense with a discrete GPU in the mix, so yes I think NAK for
pread/pwrite at least at this time.

I'd also like to see a hard no relocs policy for DG1 enforced in the kernel.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
