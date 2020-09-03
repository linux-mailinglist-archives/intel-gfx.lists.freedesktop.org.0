Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B73D261293
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:23:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497416E83C;
	Tue,  8 Sep 2020 14:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4E686E8B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 20:27:09 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id j2so4798504ioj.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Sep 2020 13:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XHoryAxbdooXqCdzEiDfBNHDRDqVJTRBeWqND7AhQWw=;
 b=RCNqeDrberJQa8iEXoKdFFmsXmVgm0OJW7eIchkOEab4PeUqCYPXFDpEN7VrPE2Q2r
 GUQQuiaAGbKydhEJAnnDCPiK90LXur6kCJr5L5sQ2r/ne46TMpiIdcTaCv2fHYoM6yNb
 n/CznyFIPF9GJUXXveE7AfWdl33o/8t6SBeJ8YB3I8NVC2PqmD4/iWDqPdEI5wN78LVf
 ncTI5ftXwXoF9V4Ax5mdMwpMg3xer78eQreGPZO8czXhtl772MKmX11X+ribr9UqcF1C
 urDp6n8FeZvPlJlmjz8S3oOgFUFG1EujxtEbZKlxpUccJF2SFlBjkXHX8U39zQ/QDpq6
 IUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XHoryAxbdooXqCdzEiDfBNHDRDqVJTRBeWqND7AhQWw=;
 b=r2Ymgk/2aMKdyoWol9iZ3+VVfB40fSLlSG6Exof8tAP61eeVQkoVSUD5wW0XmpEw/U
 guYAoC4ik41BFmNmz+/8LBwfAhuTKilSjGnbF0Af2f8ZOAEqEDt7GF221VdrO/ojEmZm
 09VlanBh5kDptL777+rWH7UbUHR991P4XB8pMpAlcKlAbiwlmqgqQzmE9PSlJbA9op0k
 ep64+0pfVzD/Wpws35kGNI1yLxvQtvQzXU9zkTy7eqXseAGYK2pBXr2xsFt62z7dRlqH
 RpCCh36qz6yeJ141e0+E6NOeAOgvjpV3CqiHlcRzNyNJfFevoWwz+JOgPw3fCI8W5jlW
 7XKg==
X-Gm-Message-State: AOAM5307QgnCLb3EN3zZZL14yI22Gvtc+c+YH3AqXKc+4an5p7HT8TkE
 ijGshF+TCsfSqJeZq15+3unGVjKKs0b9t4VGNpycOQ==
X-Google-Smtp-Source: ABdhPJwmTrpk85LWcnftpfNTJtQ24c/2yXv/TkIoKUAohLkMn+MLB1sF1W3BqKfqx9SeVWLrNTgZBBPqyFF6pQr5QKA=
X-Received: by 2002:a02:834a:: with SMTP id w10mr5122585jag.63.1599164828964; 
 Thu, 03 Sep 2020 13:27:08 -0700 (PDT)
MIME-Version: 1.0
References: <20191221150402.13868-1-murphyt7@tcd.ie>
 <465815ae-9292-f37a-59b9-03949cb68460@deltatee.com>
 <20200529124523.GA11817@infradead.org>
 <CGME20200529190523eucas1p2c086133e707257c0cdc002f502d4f51d@eucas1p2.samsung.com>
 <33137cfb-603c-86e8-1091-f36117ecfaf3@deltatee.com>
 <ef2150d5-7b6a-df25-c10d-e43316fe7812@samsung.com>
 <b9140772-0370-a858-578c-af503a06d8e9@deltatee.com>
 <CALQxJuutRaeX89k2o4ffTKYRMizmMu0XbRnzpFuSSrkQR02jKg@mail.gmail.com>
 <766525c3-4da9-6db7-cd90-fb4b82cd8083@deltatee.com>
 <CALQxJuuS8KKUX_eWWSE81gsq5ePAETB-FoqRUSWFfqgr+B13gg@mail.gmail.com>
In-Reply-To: <CALQxJuuS8KKUX_eWWSE81gsq5ePAETB-FoqRUSWFfqgr+B13gg@mail.gmail.com>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Thu, 3 Sep 2020 21:26:57 +0100
Message-ID: <CALQxJuuk0YR9dZWkqSmLU-kUKoOuuNj-kSikvQGq0wekijycLA@mail.gmail.com>
To: Logan Gunthorpe <logang@deltatee.com>
X-Mailman-Approved-At: Tue, 08 Sep 2020 14:23:54 +0000
Subject: Re: [Intel-gfx] [PATCH 0/8] Convert the intel iommu driver to the
 dma-iommu api
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
Cc: kvm@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 28 Aug 2020 at 00:34, Tom Murphy <murphyt7@tcd.ie> wrote:
>
> On Thu, 27 Aug 2020 at 22:36, Logan Gunthorpe <logang@deltatee.com> wrote:
> >
> >
> >
> > On 2020-08-23 6:04 p.m., Tom Murphy wrote:
> > > I have added a check for the sg_dma_len == 0 :
> > > """
> > >  } __sgt_iter(struct scatterlist *sgl, bool dma) {
> > >         struct sgt_iter s = { .sgp = sgl };
> > >
> > > +       if (sgl && sg_dma_len(sgl) == 0)
> > > +           s.sgp = NULL;
> > >
> > >         if (s.sgp) {
> > >             .....
> > > """
> > > at location [1].
> > > but it doens't fix the problem.
> >
> > Based on my read of the code, it looks like we also need to change usage
> > of sgl->length... Something like the rough patch below, maybe?
> >
> > Also, Tom, do you have an updated version of the patchset to convert the
> > Intel IOMMU to dma-iommu available? The last one I've found doesn't
> > apply cleanly (I'm assuming parts of it have been merged in slightly
> > modified forms).
> >
>
> I'll try and post one in the next 24hours

I have just posted this now:
The subject of the cover letter is:
"[PATCH V2 0/5] Convert the intel iommu driver to the dma-iommu api"

>
> > Thanks,
> >
> > Logan
> >
> > --
> >
> > diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h
> > b/drivers/gpu/drm/i915/i915
> > index b7b59328cb76..9367ac801f0c 100644
> > --- a/drivers/gpu/drm/i915/i915_scatterlist.h
> > +++ b/drivers/gpu/drm/i915/i915_scatterlist.h
> > @@ -27,13 +27,19 @@ static __always_inline struct sgt_iter {
> >  } __sgt_iter(struct scatterlist *sgl, bool dma) {
> >         struct sgt_iter s = { .sgp = sgl };
> >
> > +       if (sgl && !sg_dma_len(s.sgp))
> > +               s.sgp = NULL;
> > +
> >         if (s.sgp) {
> >                 s.max = s.curr = s.sgp->offset;
> > -               s.max += s.sgp->length;
> > -               if (dma)
> > +
> > +               if (dma) {
> > +                       s.max += sg_dma_len(s.sgp);
> >                         s.dma = sg_dma_address(s.sgp);
> > -               else
> > +               } else {
> > +                       s.max += s.sgp->length;
> >                         s.pfn = page_to_pfn(sg_page(s.sgp));
> > +               }
> >         }
> >
> >         return s;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
