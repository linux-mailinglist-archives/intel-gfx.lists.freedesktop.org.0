Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA63B2D4541
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 16:24:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0936EA8A;
	Wed,  9 Dec 2020 15:24:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E046EA8A
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 15:24:28 +0000 (UTC)
IronPort-SDR: 1jqTXMQaFzEfACAnue8SXWziO81Q5NUMh9tJIiUiSw0ET/jmHBHC+b6/QFuFfbDK8NF1tUcZx/
 ZoqkssNpHRGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="170583688"
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="170583688"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 07:24:28 -0800
IronPort-SDR: xEvkaOO2zmfCqIN8XLHjzaeODfDz83wzSHP2MGOZ9q3su1bvojSlEK1VsPEts9zpnvitInEAOB
 hTvth+DsbrDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="364179008"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 09 Dec 2020 07:24:27 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id BC3805C2003; Wed,  9 Dec 2020 17:22:11 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201208231834.24812-2-chris@chris-wilson.co.uk>
References: <20201208231834.24812-1-chris@chris-wilson.co.uk>
 <20201208231834.24812-2-chris@chris-wilson.co.uk>
Date: Wed, 09 Dec 2020 17:22:11 +0200
Message-ID: <87wnxrknrw.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Sleep around performing iommu
 unmaps on Tigerlake
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Tigerlake is plagued by spontaneous DMAR faults [reason 7, next page
> table ptr is invalid] which lead to GPU hangs. These faults occur when
> an iommu map is immediately reused. Adding further clflushes and
> barriers around either the GTT PTE or iommu PTE updates do not prevent
> the faults. So far the only effect has been from inducing a delay
> between reuse of the iommu on the GPU.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index cf94525be2c1..f5b981443117 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -101,7 +101,16 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
>  	 * Query intel_iommu to see if we need the workaround. Presumably that
>  	 * was loaded first.
>  	 */
> -	return IS_GEN(i915, 5) && IS_MOBILE(i915) && intel_vtd_active();
> +	if (!intel_vtd_active())
> +		return false;
> +
> +	if (IS_GEN(i915, 5) && IS_MOBILE(i915))
> +		return true;
> +
> +	if (IS_GEN(i915, 12))
> +		return true; /* XXX DMAR fault reason 7 */
> +
> +	return false;
>  }
>  
>  void i915_ggtt_suspend(struct i915_ggtt *ggtt)
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
