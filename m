Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAD613D017
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 23:29:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 700A66E0DD;
	Wed, 15 Jan 2020 22:29:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090876E0DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 22:29:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 14:29:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="398048007"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 15 Jan 2020 14:29:36 -0800
Date: Wed, 15 Jan 2020 14:29:36 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200115222936.GM2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200115214556.2052-1-stanislav.lisovskiy@intel.com>
 <20200115214556.2052-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115214556.2052-5-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v12 4/5] drm/i915: Introduce parameterized
 DBUF_CTL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 15, 2020 at 11:45:55PM +0200, Stanislav Lisovskiy wrote:
> Now start using parameterized DBUF_CTL instead
> of hardcoded, this would allow shorter access
> functions when reading or storing entire state.
> 
> Tried to implement it in a MMIO_PIPE manner, however
> DBUF_CTL1 address is higher than DBUF_CTL2, which
> implies that we have to now subtract from base
> rather than add.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 19 +++----------------
>  drivers/gpu/drm/i915/i915_reg.h               | 12 +++++++++---
>  drivers/gpu/drm/i915/intel_pm.c               | 18 ++----------------
>  3 files changed, 14 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 4503f5fab63d..806392fd97ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4415,22 +4415,9 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
>  	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
>  
>  	for (i = 0; i < max_slices; i++) {
> -		u8 slice_set = req_slices & BIT(i);
> -
> -		switch (i) {
> -		case DBUF_S1:
> -			intel_dbuf_slice_set(dev_priv,
> -					     DBUF_CTL_S1,
> -					     slice_set);
> -			break;
> -		case DBUF_S2:
> -			intel_dbuf_slice_set(dev_priv,
> -					     DBUF_CTL_S2,
> -					     slice_set);
> -			break;
> -		default:
> -			MISSING_CASE(i);
> -		}
> +		intel_dbuf_slice_set(dev_priv,
> +				     DBUF_CTL_S(i),
> +				     (req_slices & BIT(i)) != 0);
>  	}
>  
>  	dev_priv->enabled_dbuf_slices_mask = req_slices;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e5071af4a3b3..5978592cd0e1 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7745,9 +7745,15 @@ enum {
>  #define DISP_ARB_CTL2	_MMIO(0x45004)
>  #define  DISP_DATA_PARTITION_5_6	(1 << 6)
>  #define  DISP_IPC_ENABLE		(1 << 3)
> -#define DBUF_CTL	_MMIO(0x45008)
> -#define DBUF_CTL_S1	_MMIO(0x45008)
> -#define DBUF_CTL_S2	_MMIO(0x44FE8)
> +#define DBUF_CTL_ADDR1			0x45008
> +#define DBUF_CTL_ADDR2			0x44FE8
> +#define DBUF_CTL			_MMIO(DBUF_CTL_ADDR1)
> +#define DBUF_CTL_S1			DBUF_CTL
> +#define DBUF_CTL_S2			_MMIO(DBUF_CTL_ADDR2)

These two are never used anywhere now afaics.  I'd also be inclined to
drop DBUF_CTL and just do DBUF_CTL_S(0) in gen9_dbuf_{enable,disable}
and the GVT code.

> +/* DBUF_CTL_ADDR2 is less than DBUF_CTL_ADDR1 */
> +#define DBUF_CTL_DIST			(DBUF_CTL_ADDR1 - DBUF_CTL_ADDR2)
> +#define DBUF_CTL_ADDR(X)		(DBUF_CTL_ADDR1 - (DBUF_CTL_DIST * (X)))
> +#define DBUF_CTL_S(X)			(_MMIO(DBUF_CTL_ADDR(X)))

Given that slice 2's register is below slice 1's register, it doesn't
seem likely that potential future platforms with more slices would use
the same distance between registers.  Probably best to just use a
_PICK() construct.  E.g.,

#define DBUF_CTL_S(X)   _MMIO(_PICK(X, DBUF_CTL_ADDR1, DBUF_CTL_ADDR2))

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  #define  DBUF_POWER_REQUEST		(1 << 31)
>  #define  DBUF_POWER_STATE		(1 << 30)
>  #define GEN7_MSG_CTL	_MMIO(0x45010)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 7bd48f71198a..e5b82264ca5f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3655,22 +3655,8 @@ u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *dev_priv)
>  		return BIT(DBUF_S1);
>  
>  	for (i = 0; i < max_slices; i++) {
> -		u8 slice_bit = BIT(i);
> -		bool res;
> -
> -		switch (i) {
> -		case DBUF_S1:
> -			res = I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE;
> -			break;
> -		case DBUF_S2:
> -			res = I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE;
> -			break;
> -		default:
> -			MISSING_CASE(slice_bit);
> -		}
> -
> -		if (res)
> -			enabled_slices_mask |= slice_bit;
> +		if (I915_READ(DBUF_CTL_S(i)) & DBUF_POWER_STATE)
> +			enabled_slices_mask |= BIT(i);
>  	}
>  
>  	return enabled_slices_mask;
> -- 
> 2.24.1.485.gad05a3d8e5
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
