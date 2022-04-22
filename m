Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 023E350BDED
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 19:05:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CB3710E572;
	Fri, 22 Apr 2022 17:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA1D10E572
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Apr 2022 17:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650647155; x=1682183155;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=skJOQ57gUDzUNUOTTaIvbbrM952t2BdPny5pjFmpJ1M=;
 b=MWn6C4YRQnypHD7peks2wwgpUZSYzMZi8vW5lND1ia1vJbLSiNHQ7m4L
 ErdP5Es2HPdM5l+mWedNqKMhoNNRRI7FWBxuv2/dWvMsPzyH1VNJ9/nYt
 JOTPsLw0RDsrUUt+wI/3/TG0qj8SMPLQZLoSEYevh+jrcUgnpBYiJ1dQ7
 6KqupX0OTXGTdzmNjRihYDpy4i7Y4CuR9PVUUhq6BNjgv78JUYxOdWOKZ
 pRitpmxJmtYNPqab+uyphuOccJs6szQbWLx0i9OVPJhBwhWF+d74aTKcb
 jzrWVy2KYjIX5+EBBl7S7yBTeZIcYwIoQVRPuQ1U1COwg0MWrqPQeeKu1 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="246636842"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="246636842"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 10:05:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="648698626"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 10:05:28 -0700
Date: Fri, 22 Apr 2022 10:05:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YmLgV1brwAtBEnL/@mdroper-desk1.amr.corp.intel.com>
References: <20220422165535.3952178-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220422165535.3952178-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH] i915: Add first set of DG2 PCI IDs
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Looks like I somehow lost the "drm/" at the beginning of the subject
line prefix...that wasn't intentional.


Matt

On Fri, Apr 22, 2022 at 09:55:35AM -0700, Matt Roper wrote:
> The IDs added here are the subset reserved for 'motherboard down'
> designs of DG2.  We have all the necessary support upstream to enable
> these now (although they'll continue to require force_probe until the
> usual requirements are met).
> 
> The remaining DG2 IDs for add-in cards will come in a future patch once
> some additional required functionality has fully landed.
> 
> Bspec: 44477
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Dave Airlie <airlied@gmail.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
> 
> These IDs already exist in drm-tip via the topic/core-for-CI branch, so
> I've based this patch on drm-intel-next (where we intend to land it)
> instead of drm-tip.
> 
>  drivers/gpu/drm/i915/i915_pci.c          |  2 +-
>  drivers/gpu/drm/i915/intel_device_info.c | 21 +++++++++++++++++++++
>  include/drm/i915_pciids.h                | 22 ++++++++++++++++++++++
>  3 files changed, 44 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index f59e526b03fc..c88e454a74bb 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1056,7 +1056,6 @@ static const struct intel_device_info xehpsdv_info = {
>  		BIT(VECS0) | BIT(VECS1) | \
>  		BIT(VCS0) | BIT(VCS2)
>  
> -__maybe_unused
>  static const struct intel_device_info dg2_info = {
>  	DG2_FEATURES,
>  	XE_LPD_FEATURES,
> @@ -1152,6 +1151,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_DG1_IDS(&dg1_info),
>  	INTEL_RPLS_IDS(&adl_s_info),
>  	INTEL_RPLP_IDS(&adl_p_info),
> +	INTEL_DG2_IDS(&dg2_info),
>  	{0, 0, 0}
>  };
>  MODULE_DEVICE_TABLE(pci, pciidlist);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 74c3ffb66b8d..cefa9ed784ff 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -186,6 +186,18 @@ static const u16 subplatform_rpl_ids[] = {
>  	INTEL_RPLP_IDS(0),
>  };
>  
> +static const u16 subplatform_g10_ids[] = {
> +	INTEL_DG2_G10_IDS(0),
> +};
> +
> +static const u16 subplatform_g11_ids[] = {
> +	INTEL_DG2_G11_IDS(0),
> +};
> +
> +static const u16 subplatform_g12_ids[] = {
> +	INTEL_DG2_G12_IDS(0),
> +};
> +
>  static bool find_devid(u16 id, const u16 *p, unsigned int num)
>  {
>  	for (; num; num--, p++) {
> @@ -231,6 +243,15 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_rpl_ids,
>  			      ARRAY_SIZE(subplatform_rpl_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_RPL);
> +	} else if (find_devid(devid, subplatform_g10_ids,
> +			      ARRAY_SIZE(subplatform_g10_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_G10);
> +	} else if (find_devid(devid, subplatform_g11_ids,
> +			      ARRAY_SIZE(subplatform_g11_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_G11);
> +	} else if (find_devid(devid, subplatform_g12_ids,
> +			      ARRAY_SIZE(subplatform_g12_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_G12);
>  	}
>  
>  	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index a7b5eea7ffaa..283dadfbb4db 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -692,4 +692,26 @@
>  	INTEL_VGA_DEVICE(0xA7A8, info), \
>  	INTEL_VGA_DEVICE(0xA7A9, info)
>  
> +/* DG2 */
> +#define INTEL_DG2_G10_IDS(info) \
> +	INTEL_VGA_DEVICE(0x5690, info), \
> +	INTEL_VGA_DEVICE(0x5691, info), \
> +	INTEL_VGA_DEVICE(0x5692, info)
> +
> +#define INTEL_DG2_G11_IDS(info) \
> +	INTEL_VGA_DEVICE(0x5693, info), \
> +	INTEL_VGA_DEVICE(0x5694, info), \
> +	INTEL_VGA_DEVICE(0x5695, info), \
> +	INTEL_VGA_DEVICE(0x56B0, info)
> +
> +#define INTEL_DG2_G12_IDS(info) \
> +	INTEL_VGA_DEVICE(0x5696, info), \
> +	INTEL_VGA_DEVICE(0x5697, info), \
> +	INTEL_VGA_DEVICE(0x56B2, info)
> +
> +#define INTEL_DG2_IDS(info) \
> +	INTEL_DG2_G10_IDS(info), \
> +	INTEL_DG2_G11_IDS(info), \
> +	INTEL_DG2_G12_IDS(info)
> +
>  #endif /* _I915_PCIIDS_H */
> -- 
> 2.35.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
