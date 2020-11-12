Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F21A42B12E2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 00:53:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D98BE6E123;
	Thu, 12 Nov 2020 23:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C7A6E123
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 23:53:36 +0000 (UTC)
IronPort-SDR: 6Iz/+GYgnfXrqpujKPTseAJKWrueZ5JV7vaZIU6mng8kURcoat0Hk4T0ahENxbsd7Yr0fHCK4Z
 Qv1RryWXNZMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="166892927"
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400"; d="scan'208";a="166892927"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 15:53:35 -0800
IronPort-SDR: 8CQmkfKGP1XejCegVAshVLDSb3BCXVpffojEpt/AgJUZTDnqju3vL1qyG+oeEfCJyc4RtAI1Sr
 kzj1Dqmk/Nzw==
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400"; d="scan'208";a="532365795"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 15:53:35 -0800
Date: Thu, 12 Nov 2020 15:53:34 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <20201112235334.GF627052@mdroper-desk1.amr.corp.intel.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
 <20201102135614.857-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201102135614.857-1-shawn.c.lee@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/rkl: new rkl ddc map for
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

On Mon, Nov 02, 2020 at 09:56:14PM +0800, Lee Shawn C wrote:
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
> v3: update ddc table for RKL+TGP sku.
>     RKL+CNP sku will load cnp_ddc_pin_map[] setting.
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
>  drivers/gpu/drm/i915/display/intel_bios.c     | 16 ++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 ++
>  2 files changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 4cc949b228f2..4de991bafd10 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1623,6 +1623,13 @@ static const u8 icp_ddc_pin_map[] = {
>  	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,
>  };
>  
> +static const u8 rkl_pch_tgp_ddc_pin_map[] = {
> +	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
> +	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> +	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
> +	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP,
> +};
> +
>  static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
>  {
>  	const u8 *ddc_pin_map;
> @@ -1631,8 +1638,13 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
>  		return vbt_pin;
>  	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
> -		ddc_pin_map = icp_ddc_pin_map;
> -		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
> +		if (IS_ROCKETLAKE(dev_priv)) {
> +			ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
> +			n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);

It's probably best to just keep this at the top-level of the if/else
chain rather than nesting.

        ...
        } else if (IS_ROCKETLAKE(dev_priv) && INTEL_PCH_TYPE(dev_priv) == PCH_TGP) {
                ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
                n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
        } else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
        ...

The RKL+CMP pairing will still fall through to the PCH_CNP case
properly if we do this.

Also, I think we still need an update to rkl_port_to_ddc_pin() to handle
the CMP case properly when the VBT doesn't specify a valid pin to use
with the output.  I.e., the final return should be

        return GMBUS_PIN_1_BXT + phy - 1;

since by default CNP/CMP's DDI-B should start with an input to the
mapping table of 1 rather than 2 (according to bspec 20124).


Matt


> +		} else {
> +			ddc_pin_map = icp_ddc_pin_map;
> +			n_entries = ARRAY_SIZE(icp_ddc_pin_map);
> +		}
>  	} else if (HAS_PCH_CNP(dev_priv)) {
>  		ddc_pin_map = cnp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(cnp_ddc_pin_map);
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index 49b4b5fca941..187ec573de59 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -319,6 +319,8 @@ enum vbt_gmbus_ddi {
>  	ICL_DDC_BUS_DDI_A = 0x1,
>  	ICL_DDC_BUS_DDI_B,
>  	TGL_DDC_BUS_DDI_C,
> +	RKL_DDC_BUS_DDI_D = 0x3,
> +	RKL_DDC_BUS_DDI_E,
>  	ICL_DDC_BUS_PORT_1 = 0x4,
>  	ICL_DDC_BUS_PORT_2,
>  	ICL_DDC_BUS_PORT_3,
> -- 
> 2.17.1
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
