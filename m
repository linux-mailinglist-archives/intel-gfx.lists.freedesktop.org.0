Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B90023CEE0F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 23:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242056E1F6;
	Mon, 19 Jul 2021 21:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D916E17A
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 21:20:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="190720497"
X-IronPort-AV: E=Sophos;i="5.84,253,1620716400"; d="scan'208";a="190720497"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 14:20:26 -0700
X-IronPort-AV: E=Sophos;i="5.84,253,1620716400"; d="scan'208";a="509512969"
Received: from gmbianda-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.212.166.171])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 14:20:25 -0700
Date: Mon, 19 Jul 2021 14:20:23 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>;,
	intel-gfx@lists.freedesktop.org
Message-ID: <20210719212023.GB18704@msatwood-mobl>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210714031540.3539704-4-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 03/50] drm/i915/xehp: VDBOX/VEBOX fusing
 registers are enable-based
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

On Tue, Jul 13, 2021 at 08:14:53PM -0700, Matt Roper wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> On Xe_HP the fusing register is renamed and changed to have the "enable"
> semantics, but otherwise remains compatible (mmio address, bitmask
> ranges) with older platforms.
> 
> To simplify things we do not add a new register definition but just stop
> inverting the fusing masks before processing them.
> 
> Bspec: 52615
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index d561573ed98c..5cfeb91d1b7b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -468,7 +468,14 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
>  	if (GRAPHICS_VER(i915) < 11)
>  		return info->engine_mask;
>  
> -	media_fuse = ~intel_uncore_read(uncore, GEN11_GT_VEBOX_VDBOX_DISABLE);
> +	/*
> +	 * On newer platforms the fusing register is called 'enable' and has
> +	 * enable semantics, while on older platforms it is called 'disable'
> +	 * and bits have disable semantices.
> +	 */
> +	media_fuse = intel_uncore_read(uncore, GEN11_GT_VEBOX_VDBOX_DISABLE);
> +	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
> +		media_fuse = ~media_fuse;
>  
>  	vdbox_mask = media_fuse & GEN11_GT_VDBOX_DISABLE_MASK;
>  	vebox_mask = (media_fuse & GEN11_GT_VEBOX_DISABLE_MASK) >>
> -- 
> 2.25.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
