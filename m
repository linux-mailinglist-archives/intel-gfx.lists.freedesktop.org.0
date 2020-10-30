Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 209302A0C96
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 18:35:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6306E9CE;
	Fri, 30 Oct 2020 17:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF7206E9CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 17:35:32 +0000 (UTC)
IronPort-SDR: B9k0RQC9HUeXhxwHIDFlVKq8lAAwhd5yZCgasMSwBXliQeNi7FC/Gi4o5SHkk8nqxeNzRtg+Fx
 fXTZ6tmH3/cw==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="156415165"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="156415165"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 10:35:32 -0700
IronPort-SDR: jLcBwVEnoJfgQ08310lQ3n/tSeCSao+nk+rZR+ZECITvXRGLUN+ZJvuIXthbDC0NbNCIPo08vE
 farGimHazzEQ==
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="362509184"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 10:35:31 -0700
Date: Fri, 30 Oct 2020 10:35:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <20201030173530.GO627052@mdroper-desk1.amr.corp.intel.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
 <20201030134137.30867-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030134137.30867-1-shawn.c.lee@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/rkl: new rkl ddc map for
 different PCH
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 30, 2020 at 09:41:37PM +0800, Lee Shawn C wrote:
> After boot into kernel. Driver configured ddc pin mapping based on
> predefined table in parse_ddi_port(). Now driver configure rkl
> ddc pin mapping depends on icp_ddc_pin_map[]. Then this table will
> give incorrect gmbus port number to cause HDMI can't work.
> 
> Refer to commit d0a89527d06 ("drm/i915/rkl: Add DDC pin mapping").
> Create two ddc pin table for rkl TGP and CMP pch. Then HDMI can
> works properly on rkl.
> 
> v2: update patch based on latest dinq branch.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 0a309645fe06..ca9426e1768a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1623,6 +1623,18 @@ static const u8 icp_ddc_pin_map[] = {
>  	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,
>  };
>  
> +static const u8 rkl_pch_tgp_ddc_pin_map[] = {
> +	[RKL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> +	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
> +	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP,
> +};
> +
> +static const u8 rkl_pch_cmp_ddc_pin_map[] = {
> +	[RKL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> +	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_3_BXT,
> +	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_4_CNP,
> +};
> +
>  static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
>  {
>  	const u8 *ddc_pin_map;
> @@ -1630,6 +1642,14 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
>  
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
>  		return vbt_pin;
> +	} else if (IS_ROCKETLAKE(dev_priv)) {
> +		if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP) {
> +			ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
> +			n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> +		} else {
> +			ddc_pin_map = rkl_pch_cmp_ddc_pin_map;
> +			n_entries = ARRAY_SIZE(rkl_pch_cmp_ddc_pin_map);
> +		}
>  	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
>  		ddc_pin_map = icp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index 49b4b5fca941..2df009996128 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -319,6 +319,10 @@ enum vbt_gmbus_ddi {
>  	ICL_DDC_BUS_DDI_A = 0x1,
>  	ICL_DDC_BUS_DDI_B,
>  	TGL_DDC_BUS_DDI_C,
> +	RKL_DDC_BUS_DDI_B = 0x1,
> +	RKL_DDC_BUS_DDI_C,
> +	RKL_DDC_BUS_DDI_D,
> +	RKL_DDC_BUS_DDI_E,

These definitions don't really make sense; according to the VBT
definition in the bspec (20124), the symbolic names map to different VBT
input values depending on which PCH is paired with RKL.  E.g., VBT value
of "2" refers to PHY-C when using a CMP PCH, but refers to PHY-B when
using a TGP PCH.

From what I can see, RKL+TGP is already handled properly today in the
code and doesn't need any special handling.  The patch here would
actually break it, because it would associate the wrong pins to outputs
(and fail to associate anything at all with PHY-B [vbt value 2]).

For RKL+CMP, we do need a change to the code to pick valid output pins
in the range 1-4 rather than 1,2,9,A, but it doesn't look like the
mapping being added here is quite right for that either.  CMP is a
derivative of CNP, so I believe we should be following the "CNL-PCH"
column of the VBT definition.


Matt

>  	ICL_DDC_BUS_PORT_1 = 0x4,
>  	ICL_DDC_BUS_PORT_2,
>  	ICL_DDC_BUS_PORT_3,
> -- 
> 2.28.0
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
