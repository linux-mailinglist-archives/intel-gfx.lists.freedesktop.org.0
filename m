Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F4E6F6DD5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 16:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4CDB10E120;
	Thu,  4 May 2023 14:39:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9EC10E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 14:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683211169; x=1714747169;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=F6/7VeEC+qG1DZfKSj819AKjUO0eBPEPP5o80nBNhhw=;
 b=ifl16u4b7Mq6tc1FrNfWQEsdOBNdLfR6m+nAGTRNEQqL0NpGerMCzRsR
 FZdFTIBXB/D0/+DT1kFamGG8Mtm6ZjKvgo+d8HvRNNtLMGhtzbzldGD6J
 Of/TX2Y+DNEel7Kyx0VwBcT+wqik3qy5NScT4TTcUo8WnYji1Mx+kWsQi
 WIKOBz6TRq5XiKZt8ZlYgCDjwLSrBBOGWD1pnb38gintw6fxqltaVU057
 t6LXGLsJjpMvyEh5lMR49amaiOXCBzXe34xC4ed0984t2/yyMV0WDLTQv
 HKjFzW+Tg7qdN4mJgAMGnTwfc8g4/evfbchcx/VzS237iKfXEbV9P8Nuz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="347768403"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="347768403"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 07:39:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="786576009"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="786576009"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 04 May 2023 07:39:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 May 2023 17:39:25 +0300
Date: Thu, 4 May 2023 17:39:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZFPDnbS46w2/5pEa@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230503231048.432368-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 01/12] drm/i915: Fix PIPEDMC disabling
 for a bigjoiner configuration
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 04, 2023 at 02:10:37AM +0300, Imre Deak wrote:
> For a bigjoiner configuration display->crtc_disable() will be called
> first for the slave CRTCs and then for the master CRTC. However slave
> CRTCs will be actually disabled only after the master CRTC is disabled
> (from the encoder disable hooks called with the master CRTC state).
> Hence the slave PIPEDMCs can be disabled only after the master CRTC is
> disabled, make this so.
> 
> intel_encoders_post_pll_disable() must be called only for the master
> CRTC, as for the other two encoder disable hooks. While at it fix this
> up as well. This didn't cause a problem, since
> intel_encoders_post_pll_disable() will call the corresponding hook only
> for an encoder/connector connected to the given CRTC, however slave
> CRTCs will have no associated encoder/connector.
> 
> Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Looks sensible.
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3d3483e6f8363..ca95cf6764c04 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1700,9 +1700,17 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  
>  	intel_disable_shared_dpll(old_crtc_state);
>  
> -	intel_encoders_post_pll_disable(state, crtc);
> +	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> +		struct intel_crtc *slave_crtc;
> +
> +		intel_encoders_post_pll_disable(state, crtc);
>  
> -	intel_dmc_disable_pipe(i915, crtc->pipe);
> +		intel_dmc_disable_pipe(i915, crtc->pipe);
> +
> +		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> +						 intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
> +			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
> +	}
>  }
>  
>  static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
