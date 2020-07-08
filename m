Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0AD217C59
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 02:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3FA6E03E;
	Wed,  8 Jul 2020 00:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 014DA6E03E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 00:43:44 +0000 (UTC)
IronPort-SDR: B9SVsSg430CGKLA/M147VIfSzGCSHayLU2GWJbRMIvZllcPt7FFpDluI3bSU2zoGIv1wkoStdJ
 Yh6DupbOqC/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="145217620"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="145217620"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 17:43:44 -0700
IronPort-SDR: ohe9DJf22D1CdEWEMM3HvkpigKetaKeA6OPZwFmIre92UzZPSTcdK3hULtZiEqWcFQqaNB1baS
 +cc2usuTJh+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="314483239"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga008.jf.intel.com with ESMTP; 07 Jul 2020 17:43:42 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.119]) with mapi id 14.03.0439.000;
 Tue, 7 Jul 2020 17:43:42 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v7 5/5] drm/i915/rkl: Add Wa_14011224835
 for PHY B initialization
Thread-Index: AQHWRFfFbBh/iCbSfEKiQVJ/+LKJe6j9bs6A
Date: Wed, 8 Jul 2020 00:43:41 +0000
Message-ID: <ec7a2bd98df05b7e2c61498594b277ff69cb00dc.camel@intel.com>
References: <20200617033100.4044428-1-matthew.d.roper@intel.com>
 <20200617033100.4044428-6-matthew.d.roper@intel.com>
In-Reply-To: <20200617033100.4044428-6-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <B2FB18F0C1468E4DAE427837DE0676DE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 5/5] drm/i915/rkl: Add Wa_14011224835 for
 PHY B initialization
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

On Tue, 2020-06-16 at 20:31 -0700, Matt Roper wrote:
> After doing normal PHY-B initialization on Rocket Lake, we need to
> manually copy some additional PHY-A register values into PHY-B
> registers.
> 
> Note that the bspec's combo phy page doesn't specify that this
> workaround is restricted to specific platform steppings (and doesn't
> even do a very good job of specifying that RKL is the only platform this
> is needed on), but the RKL workaround page lists this as relevant only
> for A and B steppings, so I'm trusting that information for now.
> 
> v2:  Make rkl_combo_phy_b_init_wa() static
> 
> Bspec: 49291
> Bspec: 53273
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_combo_phy.c    | 26 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               | 13 +++++++++-
>  2 files changed, 38 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 77b04bb3ec62..d5d95e2746c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -338,6 +338,27 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
>  	intel_de_write(dev_priv, ICL_PORT_CL_DW10(phy), val);
>  }
>  
> +static void rkl_combo_phy_b_init_wa(struct drm_i915_private *i915)
> +{
> +	u32 grccode, grccode_ldo;
> +	u32 iref_rcal_ord, rcompcode_ld_cap_ov;

Nitpick: you could do all the bellow with just 2 u32(val and grccode).

> +
> +	intel_de_wait_for_register(i915, ICL_PORT_COMP_DW3(PHY_A),
> +				   FIRST_COMP_DONE, FIRST_COMP_DONE, 100);

The timeout parameter here is in ms not usec

> +
> +	grccode = REG_FIELD_GET(GRCCODE,
> +				intel_de_read(i915, ICL_PORT_COMP_DW6(PHY_A)));
> +	iref_rcal_ord = REG_FIELD_PREP(IREF_RCAL_ORD, grccode);
> +	intel_de_rmw(i915, ICL_PORT_COMP_DW2(PHY_B), IREF_RCAL_ORD,
> +		     iref_rcal_ord | IREF_RCAL_ORD_EN);
> +
> +	grccode_ldo = REG_FIELD_GET(GRCCODE_LDO,
> +				    intel_de_read(i915, ICL_PORT_COMP_DW0(PHY_A)));
> +	rcompcode_ld_cap_ov = REG_FIELD_PREP(RCOMPCODE_LD_CAP_OV, grccode_ldo);
> +	intel_de_rmw(i915, ICL_PORT_COMP_DW6(PHY_B), RCOMPCODE_LD_CAP_OV,
> +		     rcompcode_ld_cap_ov | RCOMPCODEOVEN_LDO_SYNC);
> +}
> +
>  static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
>  {
>  	enum phy phy;
> @@ -390,6 +411,11 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
>  		val = intel_de_read(dev_priv, ICL_PORT_CL_DW5(phy));
>  		val |= CL_POWER_DOWN_ENABLE;
>  		intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), val);
> +
> +		if (IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_B0) &&
> +		    phy == PHY_B)
> +			/* Wa_14011224835:rkl[a0..c0] */
> +			rkl_combo_phy_b_init_wa(dev_priv);

Missing the icl_combo_phy_verify_state() counter part.

>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 34b2ec04ccd8..10f6e46523b6 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1908,11 +1908,16 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  
>  #define CNL_PORT_COMP_DW0		_MMIO(0x162100)
>  #define ICL_PORT_COMP_DW0(phy)		_MMIO(_ICL_PORT_COMP_DW(0, phy))
> -#define   COMP_INIT			(1 << 31)
> +#define   COMP_INIT			REG_BIT(31)
> +#define   GRCCODE_LDO			REG_GENMASK(7, 0)
>  
>  #define CNL_PORT_COMP_DW1		_MMIO(0x162104)
>  #define ICL_PORT_COMP_DW1(phy)		_MMIO(_ICL_PORT_COMP_DW(1, phy))
>  
> +#define ICL_PORT_COMP_DW2(phy)		_MMIO(_ICL_PORT_COMP_DW(2, phy))
> +#define   IREF_RCAL_ORD_EN		REG_BIT(7)
> +#define   IREF_RCAL_ORD			REG_GENMASK(6, 0)
> +
>  #define CNL_PORT_COMP_DW3		_MMIO(0x16210c)
>  #define ICL_PORT_COMP_DW3(phy)		_MMIO(_ICL_PORT_COMP_DW(3, phy))
>  #define   PROCESS_INFO_DOT_0		(0 << 26)
> @@ -1925,6 +1930,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define   VOLTAGE_INFO_1_05V		(2 << 24)
>  #define   VOLTAGE_INFO_MASK		(3 << 24)
>  #define   VOLTAGE_INFO_SHIFT		24
> +#define   FIRST_COMP_DONE		REG_BIT(22)
> +
> +#define ICL_PORT_COMP_DW6(phy)		_MMIO(_ICL_PORT_COMP_DW(6, phy))
> +#define   GRCCODE			REG_GENMASK(30, 24)
> +#define   RCOMPCODEOVEN_LDO_SYNC	REG_BIT(23)
> +#define   RCOMPCODE_LD_CAP_OV		REG_GENMASK(22, 16)
>  

Register definition matches.

>  #define ICL_PORT_COMP_DW8(phy)		_MMIO(_ICL_PORT_COMP_DW(8, phy))
>  #define   IREFGEN			(1 << 24)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
