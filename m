Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4DD1AE203
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 18:20:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720AB6E0B9;
	Fri, 17 Apr 2020 16:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC09D6E0B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 16:20:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20935945-1500050 for multiple; Fri, 17 Apr 2020 17:20:16 +0100
MIME-Version: 1.0
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E86630102122CAD@FMSMSX108.amr.corp.intel.com>
References: <20200417152244.77623-1-michael.j.ruhl@intel.com>
 <158713815129.2062.12766316238588477850@build.alporthouse.com>
 <14063C7AD467DE4B82DEDB5C278E86630102122CAD@FMSMSX108.amr.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <158714041470.2062.15804332544742923526@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 17:20:14 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
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

Quoting Ruhl, Michael J (2020-04-17 17:07:24)
> >-----Original Message-----
> >From: Chris Wilson <chris@chris-wilson.co.uk>
> >Sent: Friday, April 17, 2020 11:43 AM
> >To: Ruhl, Michael J <michael.j.ruhl@intel.com>; intel-
> >gfx@lists.freedesktop.org
> >Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
> >common helper
> >
> >Quoting Michael J. Ruhl (2020-04-17 16:22:44)
> >> DMA_MASK bit values are different for different generations.
> >>
> >> This will become more difficult to manage over time with the open
> >> coded usage of different versions of the device.
> >>
> >> Fix by:
> >>   adding dma_mask_size to the device info configuration,
> >>   updating open code call sequence to the latest interface,
> >>   refactoring into a common function for setting the dma_mask
> >>
> >> Note: GEN(5) and down is also set in intel_gmch_probe().
> >
> >Assume we pull that code into i915.ko, we will one day.
> 
> The gen5 stuff has the same dma_mask_size that I added to the
> i915 config structures.
> 
> I thought about pulling it out of the gen 5 area, but it appears that that
> can be built as a separate driver, and if I pulled it out, the ability for it to
> be set in that path would be lost.

It's not viable standalone anymore. It's over a decade dead by this
point, we can drop the old AGP interface and then the sole user is
i915.ko. Even if we did not, you can't use the AGP interface at the same
time as i915.ko so we can just orphan char/agp, and use our own code.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
