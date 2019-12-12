Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B156711D094
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 16:11:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112D36E14E;
	Thu, 12 Dec 2019 15:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7DD26E14E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 15:11:31 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id w67so543310vkf.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 07:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ts7c9ho82IzV4CH6iW8Zed9Y8VsC0ZEpqNNmreN6J7A=;
 b=iTKC7IOXkdB0/CZjeG73YSqdoWPY34CxLQnnm89stCqZCnrdy3CaicbIXYLq4FkEsU
 NZz1Ex0jIrMmln51khLmrCW48jHqsLpp0J7kjZU6uemf6KBeS5Mpg8PGwEZ1IkCI6yoQ
 tksCizOhXY5J/TQjAQWcXITy3XHmCqKla+srfhmEz+U+/mSdVmlJukcn90T9keqICgmk
 GstcFuHo5b1e0zqApDFyKW8ip8ZO720jAGPHZ3ARP4EhGTx0MyIKLq7bVRNgHKdKSkJi
 Wa4CPSc0tFqFGSA9vtOQkEe/UX8HtciANqvvb9UnaGyrcnbd5r4KNO5z3P+gycl1bq3k
 mG6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ts7c9ho82IzV4CH6iW8Zed9Y8VsC0ZEpqNNmreN6J7A=;
 b=f5yjmxx9ijsOPOjmU/s/8woOJvd7SzyZDIGOybKSEp6dV51htSFvcvjrW+BnDlts4j
 OtAUZ+FnthE7CFophKry0uC4dxU/wcSuSbVvCMINZi917xO5r0XKMfkg4fSyrLVAPgRe
 oZJhGj9MO52pNomdBg9o0VkJWi2ht8BTFBHxAa9JF3abM1QhnLXWQPcqt/F0RnP6/jr1
 Nyhz3YE2fvn8Gr6bTYKAaoy3g8sRXbFekLiNJffphScIZvHJOinBSB5BZTn+ZC4FThlF
 WYCtiqHFD2cVh1U3Kc3gZlEssgXP+Ngrj2+Rg2MgWLb/cRvvjNHS4lmZHS9TJcMaqAID
 /wSg==
X-Gm-Message-State: APjAAAU6Yd9lQuTZmxYNQJ1w6ThORMDw+hmPcAxAuWnelPu7nHuMuAWu
 fC4y1B3bEJPpmjGXSmPTBmXvWg+qU3TPpsbYfbsS9g==
X-Google-Smtp-Source: APXvYqzgfB/LTYOZ/PDpdsGAD2i2kv5krAGtJAxtf0AWdJu6gaYC30a+sRj/smWaTJx271kk8e1IyURq2+3I8DYQAUM=
X-Received: by 2002:a05:6122:1065:: with SMTP id
 k5mr9099766vko.14.1576163490454; 
 Thu, 12 Dec 2019 07:11:30 -0800 (PST)
MIME-Version: 1.0
References: <20191212113438.5412-1-abdiel.janulgue@linux.intel.com>
 <157616034917.4546.15052864218216216334@skylake-alporthouse-com>
In-Reply-To: <157616034917.4546.15052864218216216334@skylake-alporthouse-com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 12 Dec 2019 15:11:02 +0000
Message-ID: <CAM0jSHNUhAnRXQUGX2xR943GwFZixvEfL6tJWF5+T7Cz1DKUfg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add lmem fault handler
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

On Thu, 12 Dec 2019 at 14:20, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Abdiel Janulgue (2019-12-12 11:34:38)
> > Fault handler to handle missing pages for lmem objects.
> >
> > v3: Add get_vm_cpu_ops, iterate over all memory regions in the
> >     lmem selftest, use remap_io_mapping.
> >
> > Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_lmem.c      |  40 +++++
> >  drivers/gpu/drm/i915/gem/i915_gem_lmem.h      |   6 +
> >  drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  32 +++-
> >  drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   1 +
> >  .../drm/i915/gem/selftests/i915_gem_mman.c    | 137 +++++++++++++++---
> >  5 files changed, 188 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> > index 0e2bf6b7e143..bbe625935005 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> > @@ -6,8 +6,36 @@
> >  #include "intel_memory_region.h"
> >  #include "gem/i915_gem_region.h"
> >  #include "gem/i915_gem_lmem.h"
> > +#include "gem/i915_gem_mman.h"
> >  #include "i915_drv.h"
> >
> > +vm_fault_t vm_fault_iomem(struct vm_fault *vmf)
> > +{
> > +       struct vm_area_struct *area = vmf->vma;
> > +       struct i915_mmap_offset *priv = area->vm_private_data;
> > +       struct drm_i915_gem_object *obj = priv->obj;
> > +       struct intel_memory_region *mem = obj->mm.region;
> > +       unsigned long size = area->vm_end - area->vm_start;
> > +       bool write = area->vm_flags & VM_WRITE;
> > +       int ret;
> > +
> > +       /* Sanity check that we allow writing into this object */
> > +       if (i915_gem_object_is_readonly(obj) && write)
> > +               return VM_FAULT_SIGBUS;
> > +
> > +       ret = i915_gem_object_pin_pages(obj);
> > +       if (ret)
> > +               return i915_error_to_vmf_fault(ret);
> > +
> > +       ret = remap_io_mapping(area, area->vm_start,
> > +                              i915_gem_object_lmem_io_pfn(obj, 0), size,
> > +                              &mem->iomap);
>
> So this implementation only works with contiguous objects, right?

Hmm can't we go back to what we had before, so support !contiguous also?

Also do we need to reject !(WC | UC) somewhere for local-memory?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
