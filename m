Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0236E12CF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 18:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A829810E380;
	Thu, 13 Apr 2023 16:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A995910E086
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 16:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681404651; x=1712940651;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=sVM5UvFY1wlBBib7NFJhx+Vfd8QijrtMHWs7i6Z9ePM=;
 b=YYCSLLBwCGIwXTo0HgCBsAM65cqaw+4DsI7VhBTK5VitDziUFZ7TPp4q
 JzKwZ/icVDdMAehrgKS2sISBwWxNRI1YO+DEfs4yNzVy3i5uTmoLF3gUD
 V8YAoL4Q0HkYahpDPtyz7JZB2jFhSCZrzVhIPOvMz9bKrq8ei2Y5pWawZ
 /4eDdmmoawDE+KmAakJjo4PxINqogh72xtC+YQ7EOh1W4KoEwU59O81rF
 rBshaJPwRky9vuAbSJsENOLGE9zLaH1J8DPnp1cj+AueU5jkWy/S/HlUN
 RB36vJ8Q5BNrqchnFgsRmExRduMxOzgxE41DLun/Jd1liAGI9DeWmLFm6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344234679"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="344234679"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:50:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="813529489"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="813529489"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:50:37 -0700
Date: Thu, 13 Apr 2023 19:50:33 +0300
From: Imre Deak <imre.deak@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZDgy2ZRi1bIKRWgc@ideak-desk.fi.intel.com>
References: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
 <20230412224925.1309815-4-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230412224925.1309815-4-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/mtl: Add Support for C10 PHY
 message bus and pll programming
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

On Wed, Apr 12, 2023 at 03:49:19PM -0700, Radhakrishna Sripada wrote:
> [...]
> @@ -980,21 +981,38 @@ static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
>  static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc)
>  {
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder =
>  		intel_get_crtc_new_encoder(state, crtc_state);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  	int ret;
>  
>  	ret = intel_mpllb_calc_state(crtc_state, encoder);
>  	if (ret)
>  		return ret;
>  
> +	/* TODO: Do the readback via intel_compute_shared_dplls() */
> +	if (intel_is_c10phy(i915, phy))
> +		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
> +

Added to the wrong function.

>  	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);

The above is also missing for mtl.

>  
>  	return 0;
>  }
>  
> +static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_encoder *encoder =
> +		intel_get_crtc_new_encoder(state, crtc_state);
> +
> +	return intel_cx0pll_calc_state(crtc_state, encoder);
> +}
> +
>
> [...]
>
> +/**
> + * REG_FIELD_PREP8() - Prepare a u8 bitfield value
> + * @__mask: shifted mask defining the field's length and position
> + * @__val: value to put in the field
> + *
> + * Local copy of FIELD_PREP8() to generate an integer constant expression, force

Local copy of FIELD_PREP()

> + * u8 and for consistency with REG_FIELD_GET8(), REG_BIT8() and REG_GENMASK8().
> + *
> + * @return: @__val masked and shifted into the field defined by @__mask.
> + */
> +#define REG_FIELD_PREP8(__mask, __val)                                          \
> +	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
> +	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
> +	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
> +	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
> +	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
> +
>  /**
>   * REG_FIELD_GET() - Extract a u32 bitfield value
>   * @__mask: shifted mask defining the field's length and position
> @@ -155,6 +200,18 @@
>   */
>  #define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
>  
