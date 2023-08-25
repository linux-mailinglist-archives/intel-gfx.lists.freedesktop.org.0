Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AB0788DC0
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 19:23:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889A910E146;
	Fri, 25 Aug 2023 17:23:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155C810E146
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 17:23:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 73A9F634B6;
 Fri, 25 Aug 2023 17:23:35 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.55.52])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 7C3C3C433C8;
 Fri, 25 Aug 2023 17:23:33 +0000 (UTC)
Date: Fri, 25 Aug 2023 13:23:31 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <ZOjjk2Gde6u7tOke@rdvivi-mobl4>
References: <20230824224249.365665-1-radhakrishna.sripada@intel.com>
 <87ttsn3947.fsf@intel.com>
 <DM4PR11MB59710E7CD4B94D2A5F5BA04D87E3A@DM4PR11MB5971.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM4PR11MB59710E7CD4B94D2A5F5BA04D87E3A@DM4PR11MB5971.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [topic/core-for-ci v2] iommu/vt-d: Check domain
 flags before setting snp bit in page-control
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Raj,
 Ashok" <ashok.raj@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 25, 2023 at 02:15:27PM +0000, Sripada, Radhakrishna wrote:
> I was trying this as a solution for the Pipe fault errors. However, I still see
> The pipe fault errors which do not occur all the time.

We should avoid overloading CI with tests. But if needed because we cannot
reproduce locally but only on CI, please use the try-bot list instead of
this one.

And in the very last case where this list needs to be used, please use
another prefix like CI or HAX, but not the topic/core-for-ci, otherwise
we will think you are already asking to get that merged there.

> 
> Will update the explanation in my follow up patches.

> 
> Thanks,
> Radhakrishna Sripada
> 
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Thursday, August 24, 2023 11:54 PM
> > To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Raj, Ashok <ashok.raj@intel.com>
> > Subject: Re: [Intel-gfx] [topic/core-for-ci v2] iommu/vt-d: Check domain flags
> > before setting snp bit in page-control
> > 
> > On Thu, 24 Aug 2023, Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > wrote:
> > > From: Ashok Raj <ashok.raj@intel.com>
> > >
> > 
> > The *why* goes here, along with a link to a gitlab issue.
> > 
> > Please don't expect topic/core-for-ci to have lower standards than any
> > other branches. That's not the case. On the contrary, you'll need the
> > *additional* justification for the commit being in topic/core-for-ci,
> > and the gitlab issue.
> > 
> > 
> > BR,
> > Jani.
> > 
> > 
> > > Signed-off-by: Ashok Raj <ashok.raj@intel.com>
> > > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > > ---
> > >  drivers/iommu/intel/iommu.c | 2 +-
> > >  drivers/iommu/intel/pasid.c | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
> > > index 5c8c5cdc36cf..71da6f818e96 100644
> > > --- a/drivers/iommu/intel/iommu.c
> > > +++ b/drivers/iommu/intel/iommu.c
> > > @@ -2150,7 +2150,7 @@ __domain_mapping(struct dmar_domain *domain,
> > unsigned long iov_pfn,
> > >  	if ((prot & (DMA_PTE_READ|DMA_PTE_WRITE)) == 0)
> > >  		return -EINVAL;
> > >
> > > -	attr = prot & (DMA_PTE_READ | DMA_PTE_WRITE | DMA_PTE_SNP);
> > > +	attr = prot & (DMA_PTE_READ | DMA_PTE_WRITE);
> > >  	attr |= DMA_FL_PTE_PRESENT;
> > >  	if (domain->use_first_level) {
> > >  		attr |= DMA_FL_PTE_XD | DMA_FL_PTE_US |
> > DMA_FL_PTE_ACCESS;
> > > diff --git a/drivers/iommu/intel/pasid.c b/drivers/iommu/intel/pasid.c
> > > index c5d479770e12..a057ecf84d82 100644
> > > --- a/drivers/iommu/intel/pasid.c
> > > +++ b/drivers/iommu/intel/pasid.c
> > > @@ -538,7 +538,7 @@ int intel_pasid_setup_first_level(struct intel_iommu
> > *iommu,
> > >  	if (flags & PASID_FLAG_FL5LP)
> > >  		pasid_set_flpm(pte, 1);
> > >
> > > -	if (flags & PASID_FLAG_PAGE_SNOOP)
> > > +	if ((flags & PASID_FLAG_PAGE_SNOOP) && ecap_sc_support(iommu-
> > >ecap))
> > >  		pasid_set_pgsnp(pte);
> > >
> > >  	pasid_set_domain_id(pte, did);
> > 
> > --
> > Jani Nikula, Intel Open Source Graphics Center
