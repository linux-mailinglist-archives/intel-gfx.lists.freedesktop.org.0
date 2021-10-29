Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 841DB4401B8
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 20:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D963F6E105;
	Fri, 29 Oct 2021 18:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A676E105
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 18:09:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="228177482"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="228177482"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 11:09:29 -0700
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="499007032"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 11:09:28 -0700
Date: Fri, 29 Oct 2021 21:09:24 +0300
From: Imre Deak <imre.deak@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Message-ID: <20211029180924.GA3313089@ideak-desk.fi.intel.com>
References: <20211026225105.2783797-1-imre.deak@intel.com>
 <20211026225105.2783797-4-imre.deak@intel.com>
 <CAM0jSHPnGZO86DEi6X8D_bs_CqDVED1TGuzgoOeOTnOtnKXWuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAM0jSHPnGZO86DEi6X8D_bs_CqDVED1TGuzgoOeOTnOtnKXWuQ@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/fb: Factor out functions to
 remap contiguous FB obj pages
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 29, 2021 at 05:26:05PM +0100, Matthew Auld wrote:
> On Tue, 26 Oct 2021 at 23:51, Imre Deak <imre.deak@intel.com> wrote:
> >
> > Factor out functions needed to map contiguous FB obj pages to a GTT/DPT
> > VMA view in the next patch.
> >
> > No functional changes.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_ggtt.c | 110 +++++++++++++++------------
> >  1 file changed, 60 insertions(+), 50 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > index 57c97554393b9..a30366d4965b6 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -1387,6 +1387,25 @@ intel_rotate_pages(struct intel_rotation_info *rot_info,
> >         return ERR_PTR(ret);
> >  }
> >
> > +static struct scatterlist *
> > +add_padding_pages(unsigned int count,
> > +                 struct sg_table *st, struct scatterlist *sg)
> > +{
> > +       st->nents++;
> > +
> > +       /*
> > +        * The DE ignores the PTEs for the padding tiles, the sg entry
> > +        * here is just a convenience to indicate how many padding PTEs
> > +        * to insert at this spot.
> > +        */
> > +       sg_set_page(sg, NULL, count * 4096, 0);
> 
> s/4096/I915_GTT_PAGE_SIZE ?

Yes, will change this.

> > +       sg_dma_address(sg) = 0;
> 
> I guess maybe a little bit scary, since that might be a valid address.

Was pondering what to use here, but this looked the simple and fast way.
Using the scratch page (for all padding PTEs this sg covers) would
require special-casing this sg entry that the insert_entries hook could
see and repeat the same address for each PTE instead of the usual
increment-by-page-size for each sg iteration step. Or we could add here
'count' number of sg entries each pointing to the scratch page, but
that's not the most compact.

Another concern was the prefetching done by VTd, which may require a
valid PTE. But these PTEs go to DPT (vs. GGTT) and at least there the HW
is not using the padding PTEs for anything. (Bspec 53393): "The padded
entries do not need to be valid."

> Using the vma->vm scratch might be annoying though, since it could be
> a different type than the object, plus this is only the GGTT.
> 
> Looks fine I think,
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Thanks.
