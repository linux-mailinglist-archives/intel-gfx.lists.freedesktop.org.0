Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A544BB86E
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 12:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D63810ECFB;
	Fri, 18 Feb 2022 11:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3877510ECFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 11:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645184617; x=1676720617;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2veBGiMzmUz70SSaUxRw6F6C92oVXB3kAZpTMdkY2/I=;
 b=VVpY8tL4ZInEr9I1KlPkTwb7Lp3jymfgnIeIW8kRmm2E+J0GehAn1fYp
 R7r6NOhc0N5vvmikTnLSo51r9AGEBcuO0jnRiNWRFv3/Ot83YmX5Ixk4w
 LBcMvwxGx3Ykd58W7m9AqJzQPEOsfkqRTKzKsmcHPeKjOliCjz53IJmhE
 wCny764Cz6l1DJeeXa9QYw8FwAHrA0TqU8bmUjv4bNy6hbiaWs+Q6ZIaS
 huhgwcH1OaHXtAJNCXi1h2Am2uPDm3XwMc5kdyoNDvFg2+ImrgtZcgyUG
 2UJlir47JZAZiFmM8W4HKIYf0//Rp8pSBCAFQtKAgcb5+j9VbSiaeGm4y Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="234642255"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="234642255"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 03:43:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="546249000"
Received: from heinerva-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.39.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 03:43:35 -0800
Date: Fri, 18 Feb 2022 06:43:32 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <Yg+GZK6HyTtBawtY@intel.com>
References: <20220215113818.729239-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220215113818.729239-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] iommu/vt-d: Add RPLS to quirk list to skip
 TE disabling
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 15, 2022 at 05:08:18PM +0530, Tejas Upadhyay wrote:
> The VT-d spec requires (10.4.4 Global Command Register, TE
> field) that:
> 
> Hardware implementations supporting DMA draining must drain
> any in-flight DMA read/write requests queued within the
> Root-Complex before completing the translation enable
> command and reflecting the status of the command through
> the TES field in the Global Status register.
> 
> Unfortunately, some integrated graphic devices fail to do
> so after some kind of power state transition. As the
> result, the system might stuck in iommu_disable_translati
> on(), waiting for the completion of TE transition.
> 
> This adds RPLS to a quirk list for those devices and skips
> TE disabling if the qurik hits.
> 
> Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/4898
> Fixes: LCK-10789
> Tested-by: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
> Cc: Ashok Raj <ashok.raj@intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/iommu/intel/iommu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
> index 639e4438827e..bd6dac90a948 100644
> --- a/drivers/iommu/intel/iommu.c
> +++ b/drivers/iommu/intel/iommu.c
> @@ -5741,7 +5741,7 @@ static void quirk_igfx_skip_te_disable(struct pci_dev *dev)
>  	ver = (dev->device >> 8) & 0xff;
>  	if (ver != 0x45 && ver != 0x46 && ver != 0x4c &&
>  	    ver != 0x4e && ver != 0x8a && ver != 0x98 &&
> -	    ver != 0x9a)
> +	    ver != 0x9a && ver != 0xa7)

It is the first time that I look to this code here. I believe that instead of this
if we should be listing the devices individually, probably using the
DECLARE_PCI_FIXUP_HEADER or some other way to make it clear and explicit the opt-in
on the quirk.

Anyway, the addition of this one here is needed and the rest can be in a follow-up:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Cc: Baolu Lu <baolu.lu@linux.intel.com>
Cc: David Woodhouse <dwmw2@infradead.org>

Baolu, David, could we push this through drm-intel?

>  		return;
>  
>  	if (risky_device(dev))
> -- 
> 2.34.1
> 
