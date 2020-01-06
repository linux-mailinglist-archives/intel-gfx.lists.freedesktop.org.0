Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06207130DB6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 07:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F61896EB;
	Mon,  6 Jan 2020 06:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C6BA896EB
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 06:50:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jan 2020 22:50:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,401,1571727600"; d="scan'208";a="215112265"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 05 Jan 2020 22:50:01 -0800
Date: Mon, 6 Jan 2020 12:19:31 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200106064931.GB29868@intel.com>
References: <20191230132351.17487-1-ramalingam.c@intel.com>
 <20191230132351.17487-4-ramalingam.c@intel.com>
 <157783622738.11133.14762984348391872908@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157783622738.11133.14762984348391872908@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/dumb: return the allocated
 memory size
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2019-12-31 at 23:50:27 +0000, Chris Wilson wrote:
> Quoting Ramalingam C (2019-12-30 13:23:51)
> > On successful allocation, instead returning the requested size
> > return the total size of allocated pages.
> > 
> > Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_gem.c | 13 +++++++++++--
> >  1 file changed, 11 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> > index 7f39df3fab7f..5a53de797852 100644
> > --- a/drivers/gpu/drm/i915/i915_gem.c
> > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > @@ -241,7 +241,9 @@ i915_gem_dumb_create(struct drm_file *file,
> >  {
> >         enum intel_memory_type mem_type = INTEL_MEMORY_SYSTEM;
> >         int cpp = DIV_ROUND_UP(args->bpp, 8);
> > +       struct intel_memory_region *mr;
> >         u32 format;
> > +       int ret;
> >  
> >         switch (cpp) {
> >         case 1:
> > @@ -270,8 +272,15 @@ i915_gem_dumb_create(struct drm_file *file,
> >         if (HAS_LMEM(to_i915(dev)))
> >                 mem_type = INTEL_MEMORY_LOCAL;
> >  
> > -       return i915_gem_create(file, to_i915(dev), mem_type,
> > -                              &args->size, &args->handle);
> > +       ret = i915_gem_create(file, to_i915(dev), mem_type,
> > +                             &args->size, &args->handle);
> > +       if (ret)
> > +               goto out;
> > +
> > +       mr = intel_memory_region_by_type(to_i915(dev), mem_type);
> > +       args->size = ALIGN(args->size, mr->min_page_size);
> 
> How? How did we create an object that was not a multiple of the minimum
> page size?
We round_up to PAGE_SIZE at i915_gem_create. But page size varies
between memory regions. So we might need to round up the size requested at
i915_gem_object_create_region!? So that we can consider the page size of
the region used for allocation?
> 
> (Besides you should be using obj->mm.region here rather than assuming,
> so more rearrangement if this is the right approach.)
Yes this i will fix it. This is just to report the right size to dumb
buffer. If we move the round up of the size requested at i915_gem_object_create_region
this change can be removed.

-Ram
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
