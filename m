Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ED278805A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 08:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D0010E617;
	Fri, 25 Aug 2023 06:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85AB610E617
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 06:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692946464; x=1724482464;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4PPGfnw5VrfPyn63N93QK2jFX0tUw7mZ0NK3ytsQNlM=;
 b=mB6iMvMouyC6rq8QanWWdvh9fHisi4ZX45tgy8jPlhm4/LINymsMP78Z
 N8rIKPD8wtBbsnQ71WDLeLpPS0d2F4EZ34qCLllgYBtcZRuuWb4EXeIwa
 Iu4V/ccbAWjRlhbzRdCPLv2bcaniA+KYxvaokue4ZpolE3Jt04k0GI9LE
 OKCZVATRH3l6qWb0+NzBCFTFVk6JTZRmRz963GfEUouBfZgXki7wca5BS
 LnLyH+9Z/Y1JZW5El4RBHXIAC0NRWLUaHUuPDUt8/p9EawtcUS05ym7F2
 Apb7Z4V/ey5hjXpGaJitd0F/CyrSbbx1VzisqtxVed5nYN9fqyl01iCAb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="354175778"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="354175778"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 23:54:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="687194186"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="687194186"
Received: from ogbrugge-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.56])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 23:54:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230824224249.365665-1-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230824224249.365665-1-radhakrishna.sripada@intel.com>
Date: Fri, 25 Aug 2023 09:54:16 +0300
Message-ID: <87ttsn3947.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Ashok Raj <ashok.raj@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 24 Aug 2023, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> From: Ashok Raj <ashok.raj@intel.com>
>

The *why* goes here, along with a link to a gitlab issue.

Please don't expect topic/core-for-ci to have lower standards than any
other branches. That's not the case. On the contrary, you'll need the
*additional* justification for the commit being in topic/core-for-ci,
and the gitlab issue.


BR,
Jani.


> Signed-off-by: Ashok Raj <ashok.raj@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/iommu/intel/iommu.c | 2 +-
>  drivers/iommu/intel/pasid.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
> index 5c8c5cdc36cf..71da6f818e96 100644
> --- a/drivers/iommu/intel/iommu.c
> +++ b/drivers/iommu/intel/iommu.c
> @@ -2150,7 +2150,7 @@ __domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
>  	if ((prot & (DMA_PTE_READ|DMA_PTE_WRITE)) == 0)
>  		return -EINVAL;
>  
> -	attr = prot & (DMA_PTE_READ | DMA_PTE_WRITE | DMA_PTE_SNP);
> +	attr = prot & (DMA_PTE_READ | DMA_PTE_WRITE);
>  	attr |= DMA_FL_PTE_PRESENT;
>  	if (domain->use_first_level) {
>  		attr |= DMA_FL_PTE_XD | DMA_FL_PTE_US | DMA_FL_PTE_ACCESS;
> diff --git a/drivers/iommu/intel/pasid.c b/drivers/iommu/intel/pasid.c
> index c5d479770e12..a057ecf84d82 100644
> --- a/drivers/iommu/intel/pasid.c
> +++ b/drivers/iommu/intel/pasid.c
> @@ -538,7 +538,7 @@ int intel_pasid_setup_first_level(struct intel_iommu *iommu,
>  	if (flags & PASID_FLAG_FL5LP)
>  		pasid_set_flpm(pte, 1);
>  
> -	if (flags & PASID_FLAG_PAGE_SNOOP)
> +	if ((flags & PASID_FLAG_PAGE_SNOOP) && ecap_sc_support(iommu->ecap))
>  		pasid_set_pgsnp(pte);
>  
>  	pasid_set_domain_id(pte, did);

-- 
Jani Nikula, Intel Open Source Graphics Center
