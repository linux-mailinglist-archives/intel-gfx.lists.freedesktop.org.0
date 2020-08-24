Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D471824FF5A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 15:57:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C193D6E23F;
	Mon, 24 Aug 2020 13:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com
 [IPv6:2607:f8b0:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C8AB6EB8A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 00:04:46 +0000 (UTC)
Received: by mail-il1-x143.google.com with SMTP id p18so5790665ilm.7
 for <intel-gfx@lists.freedesktop.org>; Sun, 23 Aug 2020 17:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2qvzvkep7ZlQHNyjrGsuXQAp+x7s+RjdNiOv81NxtoQ=;
 b=ph3cmZeijsQTsHnHnrr9eCGgxMPexaLwCGnu3F9Od9T7oE9SJ1xriseSecoaLR+A31
 cxdttU99z8vHmtpSvs9wLGOOgPOY6GzwuKuovZh4UMjplaxKJu/wyAtKKGV99cTnuUCc
 b9jW667DJd78gpOSqL093TQrnCvZ9zpW4sDgc9e3s4gqdpHbIh0cqwIbSVLaQrTLqDAX
 thER0vKrZAtqkOJvYQeGZuITMeh4kPZ6AWC1kOvIEmnWvuxZr35lD2OOnlXMpkqB5GBo
 XlqFU7D/ggoXmysuTUVEiDWk1jvnBEMzHRuwpliqu/K2HYrSEPvB6WXxqYArt4mYifKa
 QdMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2qvzvkep7ZlQHNyjrGsuXQAp+x7s+RjdNiOv81NxtoQ=;
 b=kjEiA1FVQzEhNNn3XRaTWsgy4nxlHgtdZneTjhJtIUd6uRB1NHAsNvO76ybzo6CnWh
 UNm5SgEvC8lvoxMnyRPu9BSpxLLf/uIV5Jzl7cvsxmb2aqEoJjUkv4KBmgeSdmtUilva
 k3hlNB3/wMBAuhIAoF64kg0fMeC/FclwvJypuznf8meMdJaMlIyMO/Y9rUl14rwu6Y42
 vLKk+MVzUxcTjSA99AwNJ7UheHZuc/W/EEs7SD6R6uCdlxH2BPgqMbMaWK1umPUxRwfx
 3NMEbE78ugKA17Y7lbuLnR/iu5TZiDz9ULPzAwUQ+LgKbNn9jN0c8ZRplnKvv8oAhlyz
 8ngw==
X-Gm-Message-State: AOAM531jk90h/okJPJyShGI+MLxAygGEwvZg+vyyTSQh3+6bB73a+mNM
 o0zukojl8AXjbetETzI29PxFbFp5gWv8FglKYsfEZA==
X-Google-Smtp-Source: ABdhPJx+Rb9Dh5afCkPV93ubbfa83YINwHuyBNL6aGGIC9gNFt/GVdQQ5DqMV2LQPpqLPd5cGrS+QMzugsAJ9rHE3h4=
X-Received: by 2002:a92:4f:: with SMTP id 76mr2640989ila.11.1598227486317;
 Sun, 23 Aug 2020 17:04:46 -0700 (PDT)
MIME-Version: 1.0
References: <20191221150402.13868-1-murphyt7@tcd.ie>
 <465815ae-9292-f37a-59b9-03949cb68460@deltatee.com>
 <20200529124523.GA11817@infradead.org>
 <CGME20200529190523eucas1p2c086133e707257c0cdc002f502d4f51d@eucas1p2.samsung.com>
 <33137cfb-603c-86e8-1091-f36117ecfaf3@deltatee.com>
 <ef2150d5-7b6a-df25-c10d-e43316fe7812@samsung.com>
 <b9140772-0370-a858-578c-af503a06d8e9@deltatee.com>
In-Reply-To: <b9140772-0370-a858-578c-af503a06d8e9@deltatee.com>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Mon, 24 Aug 2020 01:04:35 +0100
Message-ID: <CALQxJuutRaeX89k2o4ffTKYRMizmMu0XbRnzpFuSSrkQR02jKg@mail.gmail.com>
To: Logan Gunthorpe <logang@deltatee.com>
X-Mailman-Approved-At: Mon, 24 Aug 2020 13:57:44 +0000
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

Hi Logan/All,

I have added a check for the sg_dma_len == 0 :
"""
 } __sgt_iter(struct scatterlist *sgl, bool dma) {
        struct sgt_iter s = { .sgp = sgl };

+       if (sgl && sg_dma_len(sgl) == 0)
+           s.sgp = NULL;

        if (s.sgp) {
            .....
"""
at location [1].
but it doens't fix the problem.

You're right though, this change does need to be made, this code
doesn't handle pages of sg_dma_len(sg) == 0 correctly
So my guess is that we have more bugs in other parts of the i915
driver (or there is a problem with my "sg_dma_len == 0" fix above).
I have been trying to spot where else the code might be buggy but I
haven't had any luck so far.

I'm doing a microconfernce (at LPC 2020) this wednesdays [1] on this
if you're interested in attending.
I'm hoping I can chat about it with a few people and find how can
reproduce and fix this issues. I don't have any more time I can give
to this unfortunately and it would be a shame for the work to go to
waste.

[0] https://github.com/torvalds/linux/blob/d012a7190fc1fd72ed48911e77ca97ba4521bccd/drivers/gpu/drm/i915/i915_scatterlist.h#L28
[1] https://linuxplumbersconf.org/event/7/contributions/846/

On Fri, 29 May 2020 at 22:21, Logan Gunthorpe <logang@deltatee.com> wrote:
>
>
>
> On 2020-05-29 3:11 p.m., Marek Szyprowski wrote:
> > Patches are pending:
> > https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
>
> Cool, nice! Though, I still don't think that fixes the issue in
> i915_scatterlist.h given it still ignores sg_dma_len() and strictly
> relies on sg_next()/sg_is_last() to stop iterating -- and I suspect this
> is the bug that got in Tom's way.
>
> >> However, as Robin pointed out, there are other ugly tricks like stopping
> >> iterating through the SGL when sg_dma_len() is zero. For example, the
> >> AMD driver appears to use drm_prime_sg_to_page_addr_arrays() which does
> >> this trick and thus likely isn't buggy (otherwise, I'd expect someone to
> >> have complained by now seeing AMD has already switched to IOMMU-DMA.
> >
> > I'm not sure that this is a trick. Stopping at zero sg_dma_len() was
> > somewhere documented.
>
> Well whatever you want to call it, it is ugly to have some drivers doing
> one thing with the returned value and others assuming there's an extra
> zero at the end. It just causes confusion for people reading/copying the
> code. It would be better if they are all consistent. However, I concede
> stopping at zero should not be broken, presently.
>
> Logan
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
