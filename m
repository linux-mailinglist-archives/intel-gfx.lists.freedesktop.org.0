Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C955210066
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 01:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A4D897D0;
	Tue, 30 Jun 2020 23:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E375C6E045
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 23:28:03 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id w6so22465720ejq.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 16:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gdunLNWFN12W8I6Jcx4ok7NMn9u5V3pNru/OUhxDPk4=;
 b=hmD7haYlB5qNBqK1212qisbBj6xiwPhP4vBZ2yHahtUdigpjA6Z6W9GQltfYQmExb/
 emIqpLjfhcVGx7mX5WtxdYUqTpYLwLJWMjWFONx9Hq26Ev9wLbBOE0UhS3yV+KQrH9dD
 BGbeQGbzaJF8OluP6CBLdiEYUW1bTnb6aLfdvIfAbs1Ge8fh+VxQDqmdtJY9xE4hjN1G
 OIusgzx5J00pL2UZrXxmFT3qsu2lAoLG7dNHDnkwNWqzwb6678yhDwYhdwUDLRjNEj7G
 05CoiO9C/5ZZH+PoOgQF2Z9ZRYGyALwuSdoD4Cjxg2u8YLUWlmPNPDf/tCLmQCWRh3e4
 BwFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gdunLNWFN12W8I6Jcx4ok7NMn9u5V3pNru/OUhxDPk4=;
 b=Ze1B9a/K/tL9b1QpbRhiXY16l7KmEcQlUW9mXtAWv30p3nvviA20++oJwxe++l0lIP
 aAPne/heP34WHlt368jTCEzQ+N+B3uPX983ceyZ6D/0hS5HwTaT3qgcDryTjayOmtb0d
 ok1b2hzDt0rFGXqdWQph/bWwb6ha4MMzsvI3urF9Av4micdtpBUnGgCKa8ZebNEbl5Ha
 pRx1sA+QaGD/nKaY8+6PrkxqJGx1ix4i8NAcp2eFep0nx2ZzsRIQbWWnf6bMCbvKah0D
 MGVN98t5Dz6JJM022iR0TfsZnoMVh0X/5NsvQbczTlrqXQ1mdpxN1KxOBzLfBW6Tu5gB
 M8tA==
X-Gm-Message-State: AOAM531qAd9uehaDZzR7LlfJ8HGqojLbNCmc6I+R1LKS18O8d0KIFLN0
 laZQlaUa5zAwyAie1QPt7chTNy2/pxkUIBEWL2A=
X-Google-Smtp-Source: ABdhPJxa6lDJFY6uo+yfalgl8Oo0N85xvzummujkZjQ7RGtE1BcvI2U+6EbmoraBE0zR2Z8r+/1T/p/9ndPlAOqZIME=
X-Received: by 2002:a17:906:f88a:: with SMTP id
 lg10mr19986055ejb.317.1593559682585; 
 Tue, 30 Jun 2020 16:28:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAPM=9tyx209haPSokJhA_qOi1PRhoVNPX3MTyNHsq68b=Y5W2A@mail.gmail.com>
 <CAKi4VA+3oEPXnH-EKgKkxohf=7+jrDPy-fNfX6QvGBj7QsNYLw@mail.gmail.com>
 <5d75a3d4-4bb2-3307-8d85-2addc64633f4@intel.com>
In-Reply-To: <5d75a3d4-4bb2-3307-8d85-2addc64633f4@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 1 Jul 2020 09:27:51 +1000
Message-ID: <CAPM=9tzBrvMPtwaEkAyMYaOv1W71De3-ZM82GpFfeHV_+XKq8g@mail.gmail.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] DG1 VRAM question
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 27 Jun 2020 at 03:17, Daniele Ceraolo Spurio
<daniele.ceraolospurio@intel.com> wrote:
>
>
>
> On 6/26/20 12:14 AM, Lucas De Marchi wrote:
> > Cc Matt and Daniele
> >
> > On Thu, Jun 25, 2020 at 9:38 PM Dave Airlie <airlied@gmail.com> wrote:
> >>
> >> I can't figure this out easily so I'd thought I'd just ask, but does
> >> DG1 have VRAM > PCIE aperture, I'm not sure I've see any mention of
> >
> > We'd need to go via lmem since there's no mappable aperture. There are
> > a few patches in tree for that
> > (see e.g. 54b512cd7a6d ("drm/i915: do not map aperture if it is not
> > available.")) but more missing.
> >
>
> To clarify, although the legacy aperture mapping that allowed the CPU to
> access memory via the GGTT for swizzling is gone, VRAM/LMEM is still
> cpu-mappable via pci bar.
> Will leave the questions about possible trashing to Matt as he's more
> familiar than me with how this works.

Matt?

Is DG1 assuming we can get 64-bit BARs always and the CPU will have
access to the complete VRAM? or is there any ideas about what happens
in those situations where 64-bit BARs aren't available and there is
memory pressure on the PCI BAR space.

With other discrete GPUs we've got lots of things like visible VRAM
limitations, writing page tables with GPU hw instead of from the CPU,
having mapping bring things into the visible area, so you can stream
something into VRAM, but then it'll migrated to non-visible area if
it's unmapped and there is memory pressure.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
