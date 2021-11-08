Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42255449D49
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 21:54:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F25A36E8F1;
	Mon,  8 Nov 2021 20:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB97B6E8F1
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 20:54:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="318522074"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="318522074"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 12:54:45 -0800
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="503196271"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 12:54:44 -0800
Date: Mon, 8 Nov 2021 22:54:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20211108205440.GB4060668@ideak-desk.fi.intel.com>
References: <20211105212156.5697-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211105212156.5697-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Call intel_update_active_dpll()
 for both bigjoiner pipes
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

On Fri, Nov 05, 2021 at 11:21:56PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently we're only calling intel_update_active_dpll() for the
> bigjoiner master pipe but not for the slave. With TC ports this
> leads to the two pipes end up trying to use different PLLs
> (TC vs. TBT). What's worse we're enabling the PLL that didn't get
> intel_update_active_dpll() called on it at the spot where we
> need the clocks turned on. So we turn on the wrong PLL and the
> DDI is now trying to source its clock from the other PLL which is
> still disabled. Naturally that doesn't end so well and the DDI
> fails to start up.
> 
> The state checker also gets a bit unhappy (which is a good thing)
> when it notices that one of the pipes was using the wrong PLL.
> 
> Let's fix this by remembering to call intel_update_active_dpll()
> for both pipes. That should get the correct PLL turned on when
> we need it, and the state checker should also be happy.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4434
> Fixes: e12d6218fda2 ("drm/i915: Reduce bigjoiner special casing")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 145d51ac43a3..f9e7e3d1c7d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3140,8 +3140,14 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
>  
>  	intel_tc_port_get_link(enc_to_dig_port(encoder),
>  		               required_lanes);
> -	if (crtc_state && crtc_state->hw.active)
> +	if (crtc_state && crtc_state->hw.active) {
> +		struct intel_crtc *slave_crtc = crtc_state->bigjoiner_linked_crtc;
> +
>  		intel_update_active_dpll(state, crtc, encoder);
> +
> +		if (slave_crtc)
> +			intel_update_active_dpll(state, slave_crtc, encoder);
> +	}
>  }
>  
>  static void
> -- 
> 2.32.0
> 
