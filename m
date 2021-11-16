Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50204453A1C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 20:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C555E883C5;
	Tue, 16 Nov 2021 19:25:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com
 [IPv6:2607:f8b0:4864:20::82c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7963C883C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 19:25:22 +0000 (UTC)
Received: by mail-qt1-x82c.google.com with SMTP id a2so206385qtx.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 11:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RqHLafW3hg/DUMbxdxNOJNL3yaiiCP7Ah46KZAOW+JM=;
 b=WO30u0mq66Yn7JiQrkDjHHURh6J3n8p9CR4+bHLlZWMktpfrmTr60Wa21o2ZHcSR6Y
 A30HY1f5Ug6F0rhvX1PNnXe2Y4CnDKEXCpsR0ZOZxeurktjalN0YK8a/SRsy1TfuzCGf
 v+JZhALgbmUfG3qS0f6WortJnu/gFfvz7dmJUeFz42mFeoc9IRFxhcTH3UalG03+VCqn
 MDt8Pui+Rrxn9xekk2NbNXCXiFKElTPe5lLBxtZpov0NZ1UDChHi4B2Y0fsX5COOIWIp
 Ap5yY3uEd0Odcl5nxZGpUocd8ZSdEJU2kAYjbBgXlJj00fQUxVoeqr9waraaCKoVQbSh
 d8xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RqHLafW3hg/DUMbxdxNOJNL3yaiiCP7Ah46KZAOW+JM=;
 b=TY6rCM71GXeZgG+FAASKc/U80asMkla32GledQ+phNsX4+jRifrQ2/2es3zFUVjZQW
 oFGjeHs9QeC3g0RJOSFXtbxXmj5bEBu/hYmnhOqnjIz+NZcsGKb4+k+QiBdhTA6ecfQS
 yRRtynQaCyuNWhSpnG2zjDa8+mHpb5h4njm6uxkKJv+lnyTwkGRWnXBEMIljYacCEbpV
 o+l5rbEXxmJPY0UtuDsQVTLFaq9GMONAVeJAxT7Q2uIy6JDZxHd9Ep9kYE95J0CNPidl
 sxZpaat8DKZZNoBdZQirkp4biP343Od2yPb1r0mG7RhEru8Gx7MLeMefH7rrZKvYCYLH
 aZmA==
X-Gm-Message-State: AOAM5323stiJ2rBQl4CtN9KOyEkveazq0fW2sycfZckNoVtAR3TFEAAZ
 kYUtYXZocQPGDyONGsKi+cOU57aP9vQ0PNaAfGQ=
X-Google-Smtp-Source: ABdhPJyGlJR7F+4B+mL4NbDH1uQLygNIgYST53Yjjp5qW9eDCpZHQC1GWu+mvc1t32dx+OjOpUHgIVyWZgVixLoxkfQ=
X-Received: by 2002:a05:622a:118b:: with SMTP id
 m11mr10606401qtk.165.1637090721460; 
 Tue, 16 Nov 2021 11:25:21 -0800 (PST)
MIME-Version: 1.0
References: <20211112171828.21770-1-siva.mullati@intel.com>
 <87r1bl2f31.fsf@intel.com> <20211113173413.d3qsmxjiztfla6t2@ldmartin-desk2>
In-Reply-To: <20211113173413.d3qsmxjiztfla6t2@ldmartin-desk2>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 16 Nov 2021 19:24:55 +0000
Message-ID: <CAM0jSHPg4Xb-uMw0PXAd+CW6nUSqqzkOGW=aLoZ=nUJioUL0FA@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip remap_io_mapping() for
 non-x86 platforms
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
Cc: Jani Nikula <jani.nikula@intel.com>, Mullati Siva <siva.mullati@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 13 Nov 2021 at 17:33, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>
> On Sat, Nov 13, 2021 at 12:18:10AM +0200, Jani Nikula wrote:
> >On Fri, 12 Nov 2021, Mullati Siva <siva.mullati@intel.com> wrote:
> >> The _PAGE_CACHE_MASK macro is not defined in non-x86
> >> architectures and it's been used in remap_io_mapping().
> >> Only hw that supports mappable aperture would hit this path
> >> remap_io_mapping(), So skip this code for non-x86 architectures.
> >
> >Patch changelog goes here.
> >
> >> Signed-off-by: Mullati Siva <siva.mullati@intel.com>
>
> Is your git config correct?
>
>
> >> ---
> >>  drivers/gpu/drm/i915/i915_mm.c | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
> >> index 666808cb3a32..d76feeaf3fd1 100644
> >> --- a/drivers/gpu/drm/i915/i915_mm.c
> >> +++ b/drivers/gpu/drm/i915/i915_mm.c
> >> @@ -91,6 +91,7 @@ int remap_io_mapping(struct vm_area_struct *vma,
> >>                   unsigned long addr, unsigned long pfn, unsigned long size,
> >>                   struct io_mapping *iomap)
> >>  {
> >> +#if IS_ENABLED(CONFIG_X86)
> >
> >My feedback to the previous version was:
> >
> >Please don't add conditional compilation within functions.
> >
> >I mean it.
>
> if it's not clear, that means we should have a stub remap_io_mapping()
> in the header rather than doing the conditional compilation here.
>
> However, I'm still not confident about the approach since in DG1 for
> example we have mappable aperture. And even for the cases we don't need
> it, are you sure we never call remap_io_mapping()?  Did you add a trace
> or printk() in this function to confirm that while loading the module?

We don't probe the gmadr on discrete, and so i915_ggtt_has_aperture()
should always return false, which should make hitting this path
impossible. Also for discrete the fault handler stuff all goes though
vm_fault_ttm only, which doesn't use any of this stuff.

>
> Lastly, see commit b87482dfe800 ("Revert "i915: use io_mapping_map_user"")
> We had a function added in mm/io-mapping.c - io_mapping_map_user() that
> is now unused.
>
> We still want to use that api (see https://lore.kernel.org/all/20211021061839.GA27953@lst.de/so).
> So since you are touching this area, it would be good if you can help
> figure out why it was failing.

Apparently some IGTs were able to reproduce it in case that helps:
https://gitlab.freedesktop.org/drm/intel/-/issues/3468

There was also an issue with allocation vs mapping cache type
mismatch, but I guess the BUG_ON(!pte_none(*pte)) is something else.

>
> thanks
> Lucas De Marchi
