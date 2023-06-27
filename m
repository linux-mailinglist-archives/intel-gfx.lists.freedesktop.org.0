Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8737402F3
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 20:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219A710E2F8;
	Tue, 27 Jun 2023 18:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D477810E2F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 18:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687889528; x=1719425528;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=/la/HVkhwvDyW1+UXwBedCuZNTMYaT4GqxMqiK0IKXA=;
 b=MQOnJM5/TadwzirSUN1VAHjRQl3SoxUBIwIIzh7li4/2fJD/wMUL+Njx
 k4pRX/GOzh2VxlbzIkTbbG/owJYA8SN9g1x3VnnH+7RTBwItm3CKcd25w
 mCmQFSyeQ37Ff9gI22NzjU975d/gqUYqnApwO+eQfkVoD1t1l7+mXxiVL
 BapvDs5wym+V8DTx5LzIK4JXs0VCiMdyhO6BalUUBcgHSxCkRn3HCAPs9
 S6NjjkcjyAB7qWg2X/9ol/zSsEkqSdvg0GXBMbbrXBAunB5lVS2jaTKEi
 rmAZ5qEo5gIe7K6sKmbdc7SHC9pSEUis8veE/gJnrnirwbvusdWvExmq6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="392262232"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="392262232"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 11:12:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="710738102"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="710738102"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 11:12:06 -0700
Date: Tue, 27 Jun 2023 21:12:11 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <ZJsmWgF7innuBvIy@ideak-desk>
References: <20230627153451.2834196-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230627153451.2834196-2-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230627153451.2834196-2-mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/display: HDMI2.0/DP1p62Gbps
 skew violation when there is skew between DL PCLK
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 27, 2023 at 09:04:51PM +0530, Mitul Golani wrote:
> When doing type-C PHY voltage swing programming for HDMI and
> DP 1.62Gbps, program DKLP_PCS_GLUE_TX_DPCNTL2[loadgen_sharing_pmd_disable]
> to '1'. For other DP frequencies, program
> DKLP_PCS_GLUE_TX_DPCNTL2[loadgen_sharing_pmd_disable] to '0'.
> 
> This Workaround is specific to Display Version 13
> 
> Wa_15010727533
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h          |  6 ++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 61722556bb47..5a6f048f4f1c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1362,6 +1362,19 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
>  		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port, ln),
>  				  DKL_TX_DP20BITMODE, 0);
>  
> +		if (DISPLAY_VER(dev_priv) == 13) {

The above check here is equivalent to IS_ALDERLAKE_P(), so the
programming should be done under that condition below, along with the
other bits in DKL_TX_DPCNTL2.

Also the WA is limited to STEP_A0 .. STEP_C0.

> +			if ((crtc_state->port_clock == 594000 &&
> +			    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) ||
> +			    (crtc_state->port_clock == 162000 &&
> +			    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))) {
> +				intel_de_rmw(dev_priv, DKLP_TX_DPCNTL2(tc_port),
> +					     LOADGEN_SHARING_PMD_DISABLE, 1);

Must use intel_dkl_phy_rmw() with DKL regs.

> +			} else {
> +				intel_de_rmw(dev_priv, DKLP_TX_DPCNTL2(tc_port),
> +					     LOADGEN_SHARING_PMD_DISABLE, 0);
> +			}
> +		}
> +
>  		if (IS_ALDERLAKE_P(dev_priv)) {
>  			u32 val;
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index dcf64e32cd54..5487301d4ad3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6663,4 +6663,10 @@ enum skl_power_gate {
>  
>  #define MTL_MEDIA_GSI_BASE		0x380000
>  
> +#define _DKLP_PCS_GLUE_TX_DPCNTL2	0xB68

These registers are defined in intel_dkl_phy_regs.h.

Not sure about the above offset. There's been updates to the spec and I
think the last known good value is 0x02c8 defined at

Bspec 49295

That is just the already defined DKL_TX_DPCNTL2.

> +#define LOADGEN_SHARING_PMD_DISABLE	REG_BIT(2)

This doesn't seem to match either bspec 55359, where bit 2 is
cfg_dp20bitmode and bit 12 is loadgen_sharing_pmd_disable.

> +#define DKLP_TX_DPCNTL2(tc_port)	_MMIO(_PORT(tc_port, \
> +						    _DKL_PHY1_BASE, \
> +						    _DKL_PHY2_BASE) + \
> +						    _DKLP_PCS_GLUE_TX_DPCNTL2)
>  #endif /* _I915_REG_H_ */
> -- 
> 2.25.1
> 
