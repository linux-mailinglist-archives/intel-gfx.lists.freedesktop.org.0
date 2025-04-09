Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93897A82524
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 14:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 160D710E885;
	Wed,  9 Apr 2025 12:42:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WAw9bfgD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2525010E885;
 Wed,  9 Apr 2025 12:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744202562; x=1775738562;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ki+9+JPvZ4eaJOhF7yzkrpj1WnUqw2+6ywY7TGkVRf0=;
 b=WAw9bfgDXcvhpbwwukhrTvhGoWb6PYki7DTvotgxtiiyy0ZNBMMdG853
 sPwkHnvYlvmURpaSx1EhB9WNs3ogdg6x228TfFVdZLkVQLIOG232ccXBT
 iP2YGPetj+vTchdbVBVw8pvR2EC3AGbyYrOnd58xmHmF9JksgjUgAk2XH
 G9sfBuAxuwglCXtev0S72cQd0yV7LX9ncpvDpTjvgpTy/SzWR8NlkwkVK
 zcc/kwKM+JWXUB7kNDRH0mpv4HNa8FgD2qgq3SRQRfs/dVr6Ml+WBPBVV
 gieIA7YvtY0Pp3rpzDdbeA3SsJXHgxi22SD4eZtpL1OdtTNaDep+UXkCg A==;
X-CSE-ConnectionGUID: SuHisFS2QuWUdkiJ4jAHpQ==
X-CSE-MsgGUID: qCgULDrqSKip91ZMpLbDTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="63072446"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="63072446"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:42:41 -0700
X-CSE-ConnectionGUID: T+5dnIkfSxmlXUW9y9eweQ==
X-CSE-MsgGUID: WbnKjzHoT/SMvbsxMxtLAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133561524"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:42:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Vivek Kasireddy
 <vivek.kasireddy@intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2] drm/i915/xe2hpd: Identify the memory type for SKUs
 with GDDR + ECC
In-Reply-To: <3lydvtc7tikmhr4cmtzkt23bgjehmzucfyjvdbcitejwax5vkp@epdi3bkvq7fr>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250324-tip-v2-1-38397de319f8@intel.com>
 <20250324200207.GN3175483@mdroper-desk1.amr.corp.intel.com>
 <32lakxysapix2hgoh5e7n2b6zlv544nh6vcvmg6zllzjnlikmd@7k37w7pqy4p2>
 <87bjtpa3e6.fsf@intel.com>
 <3lydvtc7tikmhr4cmtzkt23bgjehmzucfyjvdbcitejwax5vkp@epdi3bkvq7fr>
Date: Wed, 09 Apr 2025 15:42:35 +0300
Message-ID: <87ikndwlok.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 25 Mar 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Mar 25, 2025 at 11:03:13AM +0200, Jani Nikula wrote:
>>On Mon, 24 Mar 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Mon, Mar 24, 2025 at 01:02:07PM -0700, Matt Roper wrote:
>>>>On Mon, Mar 24, 2025 at 10:22:33AM -0700, Lucas De Marchi wrote:
>>>>> From: Vivek Kasireddy <vivek.kasireddy@intel.com>
>>>>>
>>>>> Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type
>>>>> with ECC enabled. We need to identify this scenario and add a new
>>>>> case in xelpdp_get_dram_info() to handle it. In addition, the
>>>>> derating value needs to be adjusted accordingly to compensate for
>>>>> the limited bandwidth.
>>>>>
>>>>> Bspec: 64602
>>>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>>>> Fixes: 3adcf970dc7e ("drm/xe/bmg: Drop force_probe requirement")
>>>>> Cc: stable@vger.kernel.org
>>
>>FYI, this does not cherry-pick cleanly to drm-intel-next-fixes, and
>>needs a backport.
>>
>>There are dependencies on at least
>>
>>4051c59e2a6a ("drm/i915/xe3lpd: Update bandwidth parameters")
>>9377c00cfdb5 ("drm/i915/display: Convert intel_bw.c internally to intel_display")
>>d706998b6da6 ("drm/i915/display: Convert intel_bw.c externally to intel_display")
>>
>>but I don't think we want to backport those.
>
> yeah, I expected issues like that and was going to provide the specific
> patch for stable. However I thought it would at least apply to
> drm-intel-next-fixes :(. Below is the patch to drm-intel-next-fixes. It
> also applies cleanly to 6.13. For 6.12 there's an additional small
> conflict due to the DISPLAY_VER_FULL conversion.

Thanks, just sent a fixes pull request with this.

BR,
Jani.


>
> Also available at https://gitlab.freedesktop.org/demarchi/xe/-/commit/14cb226dc4526971fb7cfd1e79bb3196734f2ab4
>
> Thanks
> Lucas De Marchi
> -------
>
>  From f61fd762498be6291626cb9cfcb8da28be6485e3 Mon Sep 17 00:00:00 2001
> From: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Date: Mon, 24 Mar 2025 10:22:33 -0700
> Subject: [PATCH] drm/i915/xe2hpd: Identify the memory type for SKUs with GDDR
>   + ECC
>
> Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type
> with ECC enabled. We need to identify this scenario and add a new
> case in xelpdp_get_dram_info() to handle it. In addition, the
> derating value needs to be adjusted accordingly to compensate for
> the limited bandwidth.
>
> Bspec: 64602
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Fixes: 3adcf970dc7e ("drm/xe/bmg: Drop force_probe requirement")
> Cc: stable@vger.kernel.org
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20250324-tip-v2-1-38397de319f8@intel.com
> (cherry picked from commit 327e30123cafcb45c0fc5843da0367b90332999d)
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bw.c | 14 +++++++++++++-
>   drivers/gpu/drm/i915/i915_drv.h         |  1 +
>   drivers/gpu/drm/i915/soc/intel_dram.c   |  4 ++++
>   drivers/gpu/drm/xe/xe_device_types.h    |  1 +
>   4 files changed, 19 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 048be28722477..5e49f8f7c9804 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -244,6 +244,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>   			qi->deinterleave = 4;
>   			break;
>   		case INTEL_DRAM_GDDR:
> +		case INTEL_DRAM_GDDR_ECC:
>   			qi->channel_width = 32;
>   			break;
>   		default:
> @@ -398,6 +399,12 @@ static const struct intel_sa_info xe2_hpd_sa_info = {
>   	/* Other values not used by simplified algorithm */
>   };
>   
> +static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
> +	.derating = 45,
> +	.deprogbwlimit = 53,
> +	/* Other values not used by simplified algorithm */
> +};
> +
>   static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
>   {
>   	struct intel_qgv_info qi = {};
> @@ -740,10 +747,15 @@ static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
>   
>   void intel_bw_init_hw(struct drm_i915_private *dev_priv)
>   {
> +	const struct dram_info *dram_info = &dev_priv->dram_info;
> +
>   	if (!HAS_DISPLAY(dev_priv))
>   		return;
>   
> -	if (DISPLAY_VERx100(dev_priv) >= 1401 && IS_DGFX(dev_priv))
> +	if (DISPLAY_VERx100(dev_priv) >= 1401 && IS_DGFX(dev_priv) &&
> +	    dram_info->type == INTEL_DRAM_GDDR_ECC)
> +		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_ecc_sa_info);
> +	else if (DISPLAY_VERx100(dev_priv) >= 1401 && IS_DGFX(dev_priv))
>   		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
>   	else if (DISPLAY_VER(dev_priv) >= 14)
>   		tgl_get_bw_info(dev_priv, &mtl_sa_info);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ffc346379cc2c..54538b6f85df5 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -305,6 +305,7 @@ struct drm_i915_private {
>   			INTEL_DRAM_DDR5,
>   			INTEL_DRAM_LPDDR5,
>   			INTEL_DRAM_GDDR,
> +			INTEL_DRAM_GDDR_ECC,
>   		} type;
>   		u8 num_qgv_points;
>   		u8 num_psf_gv_points;
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 9e310f4099f42..f60eedb0e92cf 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -687,6 +687,10 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
>   		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
>   		dram_info->type = INTEL_DRAM_GDDR;
>   		break;
> +	case 9:
> +		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
> +		dram_info->type = INTEL_DRAM_GDDR_ECC;
> +		break;
>   	default:
>   		MISSING_CASE(val);
>   		return -EINVAL;
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 72ef0b6fc4250..9f8667ebba853 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -585,6 +585,7 @@ struct xe_device {
>   			INTEL_DRAM_DDR5,
>   			INTEL_DRAM_LPDDR5,
>   			INTEL_DRAM_GDDR,
> +			INTEL_DRAM_GDDR_ECC,
>   		} type;
>   		u8 num_qgv_points;
>   		u8 num_psf_gv_points;

-- 
Jani Nikula, Intel
