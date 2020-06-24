Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9ED2068CE
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 02:08:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AAB6EA8C;
	Wed, 24 Jun 2020 00:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 176996EA8C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 00:07:57 +0000 (UTC)
IronPort-SDR: rIMtzU1ydEqMLs+k8k4tNwr3FRv67ZqUgzWXK43bMmZDCCNez9INaeSaPQGSEhR1vMDhMsyeDB
 zQ7S3JGYPSDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="145766878"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="145766878"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 17:07:56 -0700
IronPort-SDR: D+LX19/UQbqWPLedwovUbHmDfUqlxB72+I1gFb2ffk8aLeK16qP0WZjmNUfe8syJklufS1lVfr
 MK0DIkZ7B1eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="310629025"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 23 Jun 2020 17:07:56 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 17:07:55 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.60]) with mapi id 14.03.0439.000;
 Tue, 23 Jun 2020 17:07:55 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 05/32] drm/i915/rkl: Add Wa_14011224835 for PHY B
 initialization
Thread-Index: AQHWRQll1RT/SdhQkkaCws8JAsoWBqjnYrOA
Date: Wed, 24 Jun 2020 00:07:53 +0000
Message-ID: <5af82ae01a757747c44ebd3a913a580d4e714083.camel@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
 <20200618004240.16263-6-lucas.demarchi@intel.com>
In-Reply-To: <20200618004240.16263-6-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.9.172]
Content-ID: <2B807C18ED415B4EAED3852C084DBC34@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 05/32] drm/i915/rkl: Add Wa_14011224835
 for PHY B initialization
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

On Wed, 2020-06-17 at 17:42 -0700, Lucas De Marchi wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> After doing normal PHY-B initialization on Rocket Lake, we need to
> manually copy some additional PHY-A register values into PHY-B
> registers.

Damn, just sent this, did a search using 14011471926 and did not found it anywhere, anyways lets go with this one, please also refers to 14011471926.
https://patchwork.freedesktop.org/patch/372713/?series=78761&rev=1

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
> index 77b04bb3ec624..d5d95e2746c2c 100644
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

The timeout parameter here is in ms not usec.

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
> index 34b2ec04ccd86..10f6e46523b6e 100644
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
>  #define ICL_PORT_COMP_DW8(phy)		_MMIO(_ICL_PORT_COMP_DW(8, phy))
>  #define   IREFGEN			(1 << 24)

Register definition matches.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
