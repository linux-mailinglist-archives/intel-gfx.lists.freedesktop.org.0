Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EDF2CC2CE
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 17:56:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D8C8931D;
	Wed,  2 Dec 2020 16:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A32F8931D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 16:56:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23192936-1500050 for multiple; Wed, 02 Dec 2020 16:56:28 +0000
MIME-Version: 1.0
In-Reply-To: <CAM0jSHMyWDR6PKxwS0rGeiJjDU8orD1Ms0=LOh=LC8A2=UtbeQ@mail.gmail.com>
References: <20201202155139.15143-1-chris@chris-wilson.co.uk>
 <20201202155139.15143-2-chris@chris-wilson.co.uk>
 <CAM0jSHMyWDR6PKxwS0rGeiJjDU8orD1Ms0=LOh=LC8A2=UtbeQ@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 02 Dec 2020 16:56:26 +0000
Message-ID: <160692818681.15703.5212727038349277570@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 2/2] Revert "drm/i915/lmem: Limit block
 size to 4G"
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

Quoting Matthew Auld (2020-12-02 16:40:36)
> On Wed, 2 Dec 2020 at 15:51, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Mixing I915_ALLOC_CONTIGUOUS and I915_ALLOC_MAX_SEGMENT_SIZE fared
> > badly. The two directives conflict, with the contiguous request setting
> > the min_order to the full size of the object, and the max-segment-size
> > setting the max_order to the limit of the DMA mapper, resulting in a
> > situation where max_order < min_order, causing our sanity checks to
> > fail.
> >
> > Instead of limiting the buddy block size, in the previous patch we split
> > the oversized buddy into multiple scatterlist elements.
> >
> > Fixes: d2cf0125d4a1 ("drm/i915/lmem: Limit block size to 4G")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > ---
> > +       for (sg = obj->mm.pages->sgl; sg; sg = sg_next(sg)) {
> > +               if (sg->length > max_segment) {
> > +                       pr_err("%s: Created an oversized scatterlist entry, %u > %u\n",
> > +                              __func__, sg->length, max_segment);
> 
> err = -EINVAL;

Indeed. Thanks,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
