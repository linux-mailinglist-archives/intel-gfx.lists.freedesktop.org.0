Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFC11AE5E3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:37:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAD3D6E12C;
	Fri, 17 Apr 2020 19:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 496D86E12C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 19:37:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20938023-1500050 for multiple; Fri, 17 Apr 2020 20:37:12 +0100
MIME-Version: 1.0
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E86630102123147@FMSMSX108.amr.corp.intel.com>
References: <20200417185134.47401-1-michael.j.ruhl@intel.com>
 <158715031025.2062.239714179327017572@build.alporthouse.com>
 <14063C7AD467DE4B82DEDB5C278E86630102123147@FMSMSX108.amr.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <158715223110.2062.10256376923112336875@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 20:37:11 +0100
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Refactor setting dma info to a
 common helper
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ruhl, Michael J (2020-04-17 20:31:52)
> >-----Original Message-----
> >From: Chris Wilson <chris@chris-wilson.co.uk>
> >> diff --git a/drivers/char/agp/intel-gtt.c b/drivers/char/agp/intel-gtt.c
> >> index 3d42fc4290bc..4b34a5195c65 100644
> >> --- a/drivers/char/agp/intel-gtt.c
> >> +++ b/drivers/char/agp/intel-gtt.c
> >> @@ -1407,13 +1407,16 @@ int intel_gmch_probe(struct pci_dev
> >*bridge_pdev, struct pci_dev *gpu_pdev,
> >>
> >>         dev_info(&bridge_pdev->dev, "Intel %s Chipset\n",
> >intel_gtt_chipsets[i].name);
> >>
> >> -       mask = intel_private.driver->dma_mask_size;
> >> -       if (pci_set_dma_mask(intel_private.pcidev, DMA_BIT_MASK(mask)))
> >> -               dev_err(&intel_private.pcidev->dev,
> >> -                       "set gfx device dma mask %d-bit failed!\n", mask);
> >> -       else
> >> -               pci_set_consistent_dma_mask(intel_private.pcidev,
> >> -                                           DMA_BIT_MASK(mask));
> >> +       if (bridge) {
> >> +               mask = intel_private.driver->dma_mask_size;
> >> +               if (pci_set_dma_mask(intel_private.pcidev,
> >DMA_BIT_MASK(mask)))
> >> +                       dev_err(&intel_private.pcidev->dev,
> >> +                               "set gfx device dma mask %d-bit failed!\n",
> >> +                               mask);
> >> +               else
> >> +                       pci_set_consistent_dma_mask(intel_private.pcidev,
> >> +                                                   DMA_BIT_MASK(mask));
> >> +       }
> >
> >This could even go under IS_ENABLED(CONFIG_AGP_INTEL)
> 
> I was going to, but then I was going to have to add:
> 
> #if IS_ENABLED(CONFIG_AGP_INTEL)
>         int mask;
> #endif
> 
> as well...so I stopped while I was a ahead.  If you would like the #if I will
> add it.

Nope. If it ends up making the code much harder to read, then its not
worth the hassle.

> >> @@ -685,6 +698,7 @@ static const struct intel_device_info skl_gt4_info = {
> >>         .has_logical_ring_contexts = 1, \
> >>         .has_logical_ring_preemption = 1, \
> >>         .has_gt_uc = 1, \
> >> +       .dma_mask_size = 39, \
> >>         .ppgtt_type = INTEL_PPGTT_FULL, \
> >>         .ppgtt_size = 48, \
> >>         .has_reset_engine = 1, \
> >
> >Diff making a hash of this file again, but they all looked correct.
> >
> >> diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> >b/drivers/gpu/drm/i915/intel_device_info.h
> >> index cce6a72c5ebc..69c9257c6c6a 100644
> >> --- a/drivers/gpu/drm/i915/intel_device_info.h
> >> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> >> @@ -158,6 +158,8 @@ struct intel_device_info {
> >>
> >>         enum intel_platform platform;
> >>
> >> +       unsigned int dma_mask_size; /* available DMA address bits */
> >
> >One day we should pack this struct and see how much .data we can save.
> 
> Hmm, this value could be a u8. However, placement for optimal usage is a
> bit more difficult...
> 
> I can update if you would like.

Rainy day task. To make any savings we need to look at all the fields
and pahole. Plus if we do more at once, it feels like we accomplished
something :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
