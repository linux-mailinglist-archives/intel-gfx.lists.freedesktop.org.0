Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F20F21CE5C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 06:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0CB66E48D;
	Mon, 13 Jul 2020 04:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 360186E48D
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 04:46:01 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id z17so11391163edr.9
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Jul 2020 21:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lgxhfNkkVjdtSLeny2l4lRSOUpfL9PuhTxdwhdf054w=;
 b=A09tW2tP05Cg1reyo5T/Wwlry/zJaPdD7ch12xfpSl8W6jhu7D25va+X2sl26h8Br3
 ytgpihd1H2dk6743nCeQ0zuA+Ag8/ktUYNBXCQjii1euhxJtpazDCUJ9J6f+Odp4nc55
 IIPQayeUB3nxCM5XNS38lkzxdkCeNLMqpZtbSvNsRvXLAuhin8JOY1Wmhd/Z8vOIK9TJ
 PVNpWz2toIgTQJyaTsuh0WZGnBiSCS9+K0YxVB79yF/xnZx6kSff5eZjodhuuu4WgzlU
 EtKpjtO1cxIg8iN0M4lMBKgYz+Ak/GX/fWw45DrI0QQJ7c4l+BANxTz/dtKstPlZ2uNb
 XR4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lgxhfNkkVjdtSLeny2l4lRSOUpfL9PuhTxdwhdf054w=;
 b=YnU1s+WFOZez4mJ7oyLAAExWaCnCj/UXcgLSHxGeboP+HsdLnMmR6vUeWZpkzwn7B6
 RGnE1RKUHFZT67UfZ0dagFN9wXZD8+S12wZxXMLQSfEl1H6vS6p6cWvhKH/qcMDw4Q8W
 H4QHyndzARGbKIbjgK57XLo/+a4MdlhbZfiEhcQ06aBjJOF6zYqKpHmYwsM0OdSEt8aJ
 kY+0MBJ+NycxziFF7ropoGB+NcQy/GkKxvGrJo020Ipn9AOfyAxh8vm7PPSUwq7CCbB9
 8UGJhfb9pl0NXqAz7m9lXyhIHxGh7074AVlwMXWdx+7ou5AU6z4sviqKYyQBKBPKQ7Sk
 4rHg==
X-Gm-Message-State: AOAM530D4X2+hwZEaxrKLikvdiFPZiAvHsgjso0b003CMyILhB47rowS
 mgGYX10hmIuGN7s6dPjnqm+xKAA/Sy6zJqDILSY=
X-Google-Smtp-Source: ABdhPJyPuZk7021ABLnjsj79ohut6l1Qgt6ezDE5L2qRSGQJ18kcq7RD+jiX1QcDutGDi/lvwb/OXS8qDv4luFYqQbk=
X-Received: by 2002:a50:ee8a:: with SMTP id f10mr69338149edr.383.1594615559691; 
 Sun, 12 Jul 2020 21:45:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAPM=9tyx209haPSokJhA_qOi1PRhoVNPX3MTyNHsq68b=Y5W2A@mail.gmail.com>
 <CAKi4VA+3oEPXnH-EKgKkxohf=7+jrDPy-fNfX6QvGBj7QsNYLw@mail.gmail.com>
 <5d75a3d4-4bb2-3307-8d85-2addc64633f4@intel.com>
 <CAPM=9tzBrvMPtwaEkAyMYaOv1W71De3-ZM82GpFfeHV_+XKq8g@mail.gmail.com>
 <d2f3ea69-96a3-e7c0-5762-e14b034fde1e@intel.com>
In-Reply-To: <d2f3ea69-96a3-e7c0-5762-e14b034fde1e@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 13 Jul 2020 14:45:48 +1000
Message-ID: <CAPM=9tyrXC1PiANYF-Qj7nc8E1kvcdTsAowX4+Wcx=h-M901-Q@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 7 Jul 2020 at 18:36, Matthew Auld <matthew.auld@intel.com> wrote:
>
> On 01/07/2020 00:27, Dave Airlie wrote:
> > On Sat, 27 Jun 2020 at 03:17, Daniele Ceraolo Spurio
> > <daniele.ceraolospurio@intel.com> wrote:
> >>
> >>
> >>
> >> On 6/26/20 12:14 AM, Lucas De Marchi wrote:
> >>> Cc Matt and Daniele
> >>>
> >>> On Thu, Jun 25, 2020 at 9:38 PM Dave Airlie <airlied@gmail.com> wrote:
> >>>>
> >>>> I can't figure this out easily so I'd thought I'd just ask, but does
> >>>> DG1 have VRAM > PCIE aperture, I'm not sure I've see any mention of
> >>>
> >>> We'd need to go via lmem since there's no mappable aperture. There are
> >>> a few patches in tree for that
> >>> (see e.g. 54b512cd7a6d ("drm/i915: do not map aperture if it is not
> >>> available.")) but more missing.
> >>>
> >>
> >> To clarify, although the legacy aperture mapping that allowed the CPU to
> >> access memory via the GGTT for swizzling is gone, VRAM/LMEM is still
> >> cpu-mappable via pci bar.
> >> Will leave the questions about possible trashing to Matt as he's more
> >> familiar than me with how this works.
> >
> > Matt?
> >
> > Is DG1 assuming we can get 64-bit BARs always and the CPU will have
> > access to the complete VRAM? or is there any ideas about what happens
> > in those situations where 64-bit BARs aren't available and there is
> > memory pressure on the PCI BAR space.
> >
> > With other discrete GPUs we've got lots of things like visible VRAM
> > limitations, writing page tables with GPU hw instead of from the CPU,
> > having mapping bring things into the visible area, so you can stream
> > something into VRAM, but then it'll migrated to non-visible area if
> > it's unmapped and there is memory pressure.
>
> Yes, we just assume that LMEM size == LMEMBAR size, where the whole
> thing is 1:1 mapped and CPU visible. We don't currently have the concept
> of CPU visible/non-visible LMEM.

Okay, so this GPU is happy never being supported when connected to
anything where the firmware doesn't enable 64-bit BARs?

I'd love to say 64-bit BARs were everywhere, I suppose in some worlds
BIOSes and OS might even work flawlessly with them enabled. Considered
plugging one of these in over thunderbolt? (maybe TB always gets a
64-bit BAR).

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
