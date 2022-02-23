Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 758BD4C1CB4
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 20:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5F8588220;
	Wed, 23 Feb 2022 19:59:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66BEC10E67B
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 19:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645646339; x=1677182339;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cvEP0gTcjumnxFMPR4aw80pycjGck0QkGBcQ0XDQZug=;
 b=EyoxPX+N1k34lwkmNaXmKT9GyWfQbRWuGe/SfZJLcg7pGmLBo8RSOhMO
 1a68Xc5FntBo0YLbP7w6GlH2AT0Ffb2NTLZmtWZ7ZMvQ3MLL58EQBWsOh
 tctilMxNKFRig0f9WLFqBBHrSDnBHBcpaERgUl4u1PWkKVhPLOkE7j187
 RiFzgGWQ2UBcsPlMZxzNUnfeH7oiSn9R4no7MM/H20aywldYLsXd9EMHY
 ClrBQRpWFQoP+66PkCOvVfI4jB3bEz3XgyVUl8YJlvfrgCuAjrquy745I
 GjjMQ79T1LFd1Fy0HiBNT+ciWkvrpZcotQwo6JCcvEs73cY83iMJdaacc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="235577540"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="235577540"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:58:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="548417580"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:58:57 -0800
Date: Wed, 23 Feb 2022 21:58:53 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20220223195853.GA1034106@ideak-desk.fi.intel.com>
References: <20220222142045.48509-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220222142045.48509-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Use unions per platform
 in intel_dpll_hw_state
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 22, 2022 at 06:20:45AM -0800, José Roberto de Souza wrote:
[...]
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index ba2fdfce15792..4360e1c9266d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -184,52 +184,74 @@ enum icl_port_dpll_id {
>  };
>  
>  struct intel_dpll_hw_state {
> -	/* i9xx, pch plls */
> -	u32 dpll;
> -	u32 dpll_md;
> -	u32 fp0;
> -	u32 fp1;
> -
> -	/* hsw, bdw */
> -	u32 wrpll;
> -	u32 spll;
> -
> -	/* skl */
> -	/*
> -	 * DPLL_CTRL1 has 6 bits for each each this DPLL. We store those in
> -	 * lower part of ctrl1 and they get shifted into position when writing
> -	 * the register.  This allows us to easily compare the state to share
> -	 * the DPLL.
> -	 */
> -	u32 ctrl1;
> -	/* HDMI only, 0 when used for DP */
> -	u32 cfgcr1, cfgcr2;
> -
> -	/* icl */
> -	u32 cfgcr0;
> -
> -	/* tgl */
> -	u32 div0;
> -
> -	/* bxt */
> -	u32 ebb0, ebb4, pll0, pll1, pll2, pll3, pll6, pll8, pll9, pll10, pcsdw12;
> -
> -	/*
> -	 * ICL uses the following, already defined:
> -	 * u32 cfgcr0, cfgcr1;
> -	 */
> -	u32 mg_refclkin_ctl;
> -	u32 mg_clktop2_coreclkctl1;
> -	u32 mg_clktop2_hsclkctl;
> -	u32 mg_pll_div0;
> -	u32 mg_pll_div1;
> -	u32 mg_pll_lf;
> -	u32 mg_pll_frac_lock;
> -	u32 mg_pll_ssc;
> -	u32 mg_pll_bias;
> -	u32 mg_pll_tdc_coldst_bias;
> -	u32 mg_pll_bias_mask;
> -	u32 mg_pll_tdc_coldst_bias_mask;
> +	union {
> +		/* icl+ combo */
> +		struct {
> +			u32 icl_cfgcr0;
> +			u32 icl_cfgcr1;
> +			u32 icl_div0;

At least icl_ddi_combo_pll_get_freq() and icl_dump_hw_state() missed
converting cfgcr1 to icl_cfgcr1. Would it be less error-prone/simpler to
store here all the skl+ combo state? That would also reduce the diff
size.

> +		};
> +
> +		/* icl+ TC */
> +		struct {
> +			u32 mg_refclkin_ctl;
> +			u32 mg_clktop2_coreclkctl1;
> +			u32 mg_clktop2_hsclkctl;
> +			u32 mg_pll_div0;
> +			u32 mg_pll_div1;
> +			u32 mg_pll_lf;
> +			u32 mg_pll_frac_lock;
> +			u32 mg_pll_ssc;
> +			u32 mg_pll_bias;
> +			u32 mg_pll_tdc_coldst_bias;
> +			u32 mg_pll_bias_mask;
> +			u32 mg_pll_tdc_coldst_bias_mask;
> +		};
> +
> +		/* bxt */
> +		struct {
> +			/* bxt */
> +			u32 ebb0;
> +			u32 ebb4;
> +			u32 pll0;
> +			u32 pll1;
> +			u32 pll2;
> +			u32 pll3;
> +			u32 pll6;
> +			u32 pll8;
> +			u32 pll9;
> +			u32 pll10;
> +			u32 pcsdw12;
> +		};
> +
> +		/* skl */
> +		struct {
> +			/*
> +			 * DPLL_CTRL1 has 6 bits for each this DPLL. We store those in
> +			 * lower part of ctrl1 and they get shifted into position when writing
> +			 * the register.  This allows us to easily compare the state to share
> +			 * the DPLL.
> +			 */
> +			u32 ctrl1;
> +			u32 cfgcr1;
> +			/* HDMI only, 0 when used for DP */
> +			u32 cfgcr2;
> +		};
> +
> +		/* hsw, bdw */
> +		struct {
> +			u32 wrpll;
> +			u32 spll;
> +		};
> +
> +		/* i9xx, pch plls */
> +		struct {
> +			u32 dpll;
> +			u32 dpll_md;
> +			u32 fp0;
> +			u32 fp1;
> +		};
> +	};
>  };
>  
>  /**
> -- 
> 2.35.1
> 
