Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76989255414
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 07:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A2F6E127;
	Fri, 28 Aug 2020 05:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com
 [IPv6:2607:f8b0:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 094876E0F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 23:34:53 +0000 (UTC)
Received: by mail-il1-x144.google.com with SMTP id w3so6278118ilh.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 16:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WedloSq7WEmmdLIoMis0OnTbQ3vwipQyHuMeYXqSrtc=;
 b=z5afeT1uAO8r4nUnyvdyA9XOFk/fx4rNEV7OzYIxSzIyRPXSSuP0kLR0uFLb5b32/u
 2F9MWfvV9WNZ+AXIi+QLZ8p0NAvNTBNro8XHBAkvaJyY3ufO9Q62GJ4oCd3Mw0z1agKr
 qFAx/HdJ+EmG1djyMZ9CSGcKQmWFu/zVKz5vJDxg6Nx++SMMng1dGMX9Fmd/wZDTKzHU
 hK7p1r057Z3QOjx4Tgjjmk5k/beu18E/9gkjDnfpmsN6+7UO8xqzHsjZBJhd37zZ1RdM
 prBipf1AI2muUbFcyfU3La5FJDcrT8wuyB+danzKbVnftQC2AzrWmBaIjshroZB9Cb96
 Llhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WedloSq7WEmmdLIoMis0OnTbQ3vwipQyHuMeYXqSrtc=;
 b=st7KxabLblI3DqWense/J4DrPqCSr1LEUF7lr+5hAW3TVIxEIvA0GwCri2Ycam8B8+
 2Y8WJ0jsOS8+a5ubJaV9zPMFoKkw8RLx1nMjosQlAr02ws3ciiQra8meAPXZnJeE9mhX
 Mr3l97i5OQFCznEmTL7Y876Mi0wyRYwIGm5P0DpdTdd06arN0SDertoaKS32DuDF7s9X
 otityHtOayBaveNoiXhcZ4WPyT+VrYTYWkxkc1AytnTfof1fM2nMSNwFOsf1cUgU7qyq
 12GgWMdg0pHZYm+vpHmxP9Ftmk+87CF/Vy2NtWPXz+EugCvzc3e5iEHl4VOQ1ikzwdU9
 qGRQ==
X-Gm-Message-State: AOAM531oM5ZB6hRtS5/nU2p6tc7wsYjUrt8xpk8y/68NNbsJHAD1rajw
 f/6rS7cYuUXte8zVgDcXeEE6aH+95QNS0mChZr5iew==
X-Google-Smtp-Source: ABdhPJw0W2KNMSiVDCp6qP+D3bxqQi5szrf3hiteZz0kvkkYuvF0+Qn7lDLtjb0Ko+kJMcKtvMnZ3YU+iAfoJmlGVTk=
X-Received: by 2002:a92:4f:: with SMTP id 76mr18588367ila.11.1598571293162;
 Thu, 27 Aug 2020 16:34:53 -0700 (PDT)
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
In-Reply-To: <766525c3-4da9-6db7-cd90-fb4b82cd8083@deltatee.com>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Fri, 28 Aug 2020 00:34:41 +0100
Message-ID: <CALQxJuuS8KKUX_eWWSE81gsq5ePAETB-FoqRUSWFfqgr+B13gg@mail.gmail.com>
To: Logan Gunthorpe <logang@deltatee.com>
X-Mailman-Approved-At: Fri, 28 Aug 2020 05:42:26 +0000
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

On Thu, 27 Aug 2020 at 22:36, Logan Gunthorpe <logang@deltatee.com> wrote:
>
>
>
> On 2020-08-23 6:04 p.m., Tom Murphy wrote:
> > I have added a check for the sg_dma_len == 0 :
> > """
> >  } __sgt_iter(struct scatterlist *sgl, bool dma) {
> >         struct sgt_iter s = { .sgp = sgl };
> >
> > +       if (sgl && sg_dma_len(sgl) == 0)
> > +           s.sgp = NULL;
> >
> >         if (s.sgp) {
> >             .....
> > """
> > at location [1].
> > but it doens't fix the problem.
>
> Based on my read of the code, it looks like we also need to change usage
> of sgl->length... Something like the rough patch below, maybe?
>
> Also, Tom, do you have an updated version of the patchset to convert the
> Intel IOMMU to dma-iommu available? The last one I've found doesn't
> apply cleanly (I'm assuming parts of it have been merged in slightly
> modified forms).
>

I'll try and post one in the next 24hours

> Thanks,
>
> Logan
>
> --
>
> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h
> b/drivers/gpu/drm/i915/i915
> index b7b59328cb76..9367ac801f0c 100644
> --- a/drivers/gpu/drm/i915/i915_scatterlist.h
> +++ b/drivers/gpu/drm/i915/i915_scatterlist.h
> @@ -27,13 +27,19 @@ static __always_inline struct sgt_iter {
>  } __sgt_iter(struct scatterlist *sgl, bool dma) {
>         struct sgt_iter s = { .sgp = sgl };
>
> +       if (sgl && !sg_dma_len(s.sgp))
> +               s.sgp = NULL;
> +
>         if (s.sgp) {
>                 s.max = s.curr = s.sgp->offset;
> -               s.max += s.sgp->length;
> -               if (dma)
> +
> +               if (dma) {
> +                       s.max += sg_dma_len(s.sgp);
>                         s.dma = sg_dma_address(s.sgp);
> -               else
> +               } else {
> +                       s.max += s.sgp->length;
>                         s.pfn = page_to_pfn(sg_page(s.sgp));
> +               }
>         }
>
>         return s;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
