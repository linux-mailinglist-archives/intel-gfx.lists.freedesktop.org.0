Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B7034AC66
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:18:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C50986F400;
	Fri, 26 Mar 2021 16:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2783F6F400
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 16:18:22 +0000 (UTC)
IronPort-SDR: xi3FkdPKq9Z4jQlWVYskrkv0xcnx5ShN0DA8Ru+xJDbZo/UIt4VpQ24pqLXe7e6ln9OAW2f7Oz
 3C7RiKw0Sa8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="188904120"
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="188904120"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:18:21 -0700
IronPort-SDR: fhz3s7J5lzNiUNBrJ7lSeAbPyG8o4Q6RiEpCTRdzCOuIHhQwPR6+dlMyfPV0wfv1EcFOHBA97G
 cEDUsYLyb2KA==
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="515111586"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:18:20 -0700
Date: Fri, 26 Mar 2021 18:18:16 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210326161816.GK2237616@ideak-desk.fi.intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
 <20210325180720.401410-40-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325180720.401410-40-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 39/50] drm/i915/adl_p: Enable/disable
 loadgen sharing
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
Cc: intel-gfx@lists.freedesktop.org, me@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 11:07:09AM -0700, Matt Roper wrote:
> From: Mika Kahola <mika.kahola@intel.com>
> 
> Disable loadgen sharing for DP link rate 1.62 GHz and HDMI 5.94 GHz.
> For all other modes, we can enable loadgen sharing feature.
> 
> BSpec: 55359
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 8 ++++++++
>  drivers/gpu/drm/i915/i915_reg.h          | 1 +
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 1a5213447db1..d58f6d297a2f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1460,6 +1460,14 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  		val = intel_de_read(dev_priv, DKL_TX_DPCNTL2(tc_port));
>  		val &= ~DKL_TX_DP20BITMODE;
>  		intel_de_write(dev_priv, DKL_TX_DPCNTL2(tc_port), val);
> +
> +		if ((intel_crtc_has_dp_encoder(crtc_state) &&
> +		    crtc_state->port_clock == 162000) ||
> +		    (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> +		    crtc_state->port_clock == 594000))
> +			val |= DKL_TX_LOADGEN_SHARING_PMD_DISABLE;
> +		else
> +			val &= ~DKL_TX_LOADGEN_SHARING_PMD_DISABLE;

Setting this flags isn't needed any more by the spec (bspec 54956).

>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index f25f68f3b2f4..393071cde6d4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10887,6 +10887,7 @@ enum skl_power_gate {
>  						     _DKL_TX_DPCNTL1)
>  
>  #define _DKL_TX_DPCNTL2				0x2C8
> +#define  DKL_TX_LOADGEN_SHARING_PMD_DISABLE            REG_BIT(12)
>  #define  DKL_TX_DP20BITMODE				(1 << 2)
>  #define DKL_TX_DPCNTL2(tc_port) _MMIO(_PORT(tc_port, \
>  						     _DKL_PHY1_BASE, \
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
