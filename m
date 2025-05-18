Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D83ABAE21
	for <lists+intel-gfx@lfdr.de>; Sun, 18 May 2025 08:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E04AC10E1EA;
	Sun, 18 May 2025 06:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="jbLYb4vZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D85F110E0F3;
 Sun, 18 May 2025 06:17:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8D7A15C31A0;
 Sun, 18 May 2025 06:14:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0205C4CEE9;
 Sun, 18 May 2025 06:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1747549028;
 bh=wKeSZPSyX8iX4JyTNeOos4CzlBkoU40E/puTyBr7Mwc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jbLYb4vZ/31WsfOV2ChI1GFIpYj5nJXEoUSOEAp8PCh1eHRJna9Et+eDvfrxQVPqV
 4m6kcXNhZzAJGtNL0rWAf/8pTv/7p8LoEMkvns3VbVCY0Z8YMzVgcNT0iU7WbjkLYU
 R35iW4Q0HYQSPRTmu5qnPt9Wz+oIAxKTgThhmrHdkLGmD20c2arat4Mic00afiIOO/
 bhIJq0iAt/Pl0enB5YJYMo071YCEhlD1Tk1tcYTA+JPDpB5tP7kuweNDvfnDLRPU1o
 YCW2xyTYwzGZcGA8kELQEi9UFx77xLPX03Z868Tv2aQKYrNl4zzE+JH/HEZ5wpAa/M
 q65nhzUrHRDcw==
Date: Sun, 18 May 2025 09:17:03 +0300
From: Leon Romanovsky <leon@kernel.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: Jason Gunthorpe <jgg@nvidia.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: Re: [REGRESSION] on linux-next (next-20250507)
Message-ID: <20250518061703.GB7435@unreal>
References: <SJ1PR11MB61292CE72D7BE06B8810021CB997A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20250512122102.GF5657@nvidia.com>
 <SJ1PR11MB61292A304C9FA6BF92B568A3B991A@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ1PR11MB61292A304C9FA6BF92B568A3B991A@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Wed, May 14, 2025 at 12:40:02PM +0000, Borah, Chaitanya Kumar wrote:
> 
> 
> > -----Original Message-----
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > Sent: Monday, May 12, 2025 5:51 PM
> > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Saarinen,
> > Jani <jani.saarinen@intel.com>; Nikula, Jani <jani.nikula@intel.com>; Kurmi,
> > Suresh Kumar <suresh.kumar.kurmi@intel.com>; De Marchi, Lucas
> > <lucas.demarchi@intel.com>; iommu@lists.linux.dev
> > Subject: Re: [REGRESSION] on linux-next (next-20250507)
> > 
> > On Mon, May 12, 2025 at 06:00:39AM +0000, Borah, Chaitanya Kumar
> > wrote:
> > 
> > > ``````````````````````````````````````````````````````````````````````
> > > ```````````````````````````````````
> > > commit 13f43d7cf3e0570004a0d960bc1be23db827c2ff
> > > Author: Jason Gunthorpe mailto:jgg@nvidia.com
> > > Date:   Tue Apr 8 13:53:56 2025 -0300
> > >
> > >     iommu/pages: Formalize the freelist API
> > > ``````````````````````````````````````````````````````````````````````
> > > ```````````````````````````````````
> > >
> > > We could not revert the patch because of merge conflicts but resetting to the
> > parent of the commit seems to fix the issue.
> > >
> > > Could you please check why the patch causes this regression and provide a
> > fix if necessary?
> > 
> > Could this be the solution?
> 
> Apologies for the delay, this change seems to solve the issue. Can we expect a patch soon?

Jason is on vacation this week. I recommend to submit the patch by itself.

Thanks

> 
> Regards
> 
> Chaitanya
> 
> > 
> > diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> > index 0af1ab36283cba..7d2b51a890c75a 100644
> > --- a/drivers/iommu/dma-iommu.c
> > +++ b/drivers/iommu/dma-iommu.c
> > @@ -154,6 +154,8 @@ static void fq_ring_free_locked(struct
> > iommu_dma_cookie *cookie, struct iova_fq
> >  			       fq->entries[idx].iova_pfn,
> >  			       fq->entries[idx].pages);
> > 
> > +		fq->entries[idx].freelist =
> > +			IOMMU_PAGES_LIST_INIT(fq->entries[idx].freelist);
> >  		fq->head = (fq->head + 1) & fq->mod_mask;
> >  	}
> >  }
> > 
> > Jason
