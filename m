Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D538CD2E4
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 14:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 618C610E241;
	Thu, 23 May 2024 12:58:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dk/2oI48";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D57010E241
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469113; x=1748005113;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Yy36NXA+PvdlVobylndl/kQSiNrTxW2Dbt7xEWWLfPw=;
 b=Dk/2oI48essQJ7rocKk1BoiCg9Gw6FakFSQ60khG3AGHBKQPXnvVLlXp
 B5gO2IfwoRoHnA8Opt8pPGNzTqmxPcj+s7XdWSRMSLYEJPM1cjBQzVF1m
 3uzcjxVNDsV5x2IXNMHwiQfOfdI6wSn3ZeDsZHkQq7R7xDgTapESd6mFo
 dQNGBy4HLOs8cvuip2pta9IzLn3Pu5OrkozdfF5UVo4lPBzsRh9a+DGR1
 tvs1AHdUXTa9uX0oA1AJ5VBBU0sOFWf9Kh/F0ISNbJGCbbW8NPnprBGVT
 nF8fzF0c5btSqYy6Mltsc9aq5fLt3b4gkllRp9RpvJxmMAwaFimKbCQv7 Q==;
X-CSE-ConnectionGUID: 6HV8T6vhT4GRhfbqg6kh2g==
X-CSE-MsgGUID: bv9C/J/VRQmCTz+H5xmEDg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="23450880"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="23450880"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 05:58:33 -0700
X-CSE-ConnectionGUID: DJjkIDGISi6k3kNQWKzovQ==
X-CSE-MsgGUID: VVVJf9QXRA2xvuzhyDvu/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33642700"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 05:58:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 15:58:30 +0300
Date: Thu, 23 May 2024 15:58:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 06/21] drm/i915/dp: Use a commit modeset for link
 retraining MST links
Message-ID: <Zk89dsQn9Jg1ZwxQ@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-7-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520185822.3725844-7-imre.deak@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 20, 2024 at 09:58:04PM +0300, Imre Deak wrote:
> Instead of direct calls to the link train functions, retrain the link
> via a commit modeset. The direct call means that the output port will be
> disabled/re-enabled while the rest of the pipeline (transcoder) is
> active, which doesn't seem to work on MST at least. It leads to
> underruns and black screen, presumedly because the transcoder is not
> disabled/re-enabled along the port.
> 
> Leave switching to a commit modeset on SST for a later patchset, as that
> seems to work ok currently (though better to using a commit there too,
> due to the suppressed underruns).
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++++++------
>  1 file changed, 19 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 81e620dd33bb7..120f7b420807b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5147,6 +5147,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct intel_crtc *crtc;
>  	u8 pipe_mask;
> +	bool mst_output = false;

nit: maybe move that up one line to maintain a bit more of a steady slope

>  	int ret;
>  
>  	if (!intel_dp_is_connected(intel_dp))
> @@ -5177,6 +5178,11 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  		const struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
> +			mst_output = true;
> +			break;
> +		}

I was pondering if we need a bit more care to make sure all
the pipes agree, but I suppose if that wasn't the case
check_digital_port_conflicts() would have a failed at its
job. So this seems fine.

Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

> +
>  		/* Suppress underruns caused by re-training */
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
>  		if (crtc_state->has_pch_encoder)
> @@ -5184,16 +5190,23 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  							      intel_crtc_pch_transcoder(crtc), false);
>  	}
>  
> +	/* TODO: use a modeset for SST as well. */
> +	if (mst_output) {
> +		ret = intel_modeset_commit_pipes(dev_priv, pipe_mask, ctx);
> +
> +		if (ret && ret != -EDEADLK)
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "[ENCODER:%d:%s] link retraining failed: %pe\n",
> +				    encoder->base.base.id, encoder->base.name,
> +				    ERR_PTR(ret));
> +
> +		return ret;
> +	}
> +
>  	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
>  		const struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  
> -		/* retrain on the MST master transcoder */
> -		if (DISPLAY_VER(dev_priv) >= 12 &&
> -		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
> -		    !intel_dp_mst_is_master_trans(crtc_state))
> -			continue;
> -
>  		intel_dp_check_frl_training(intel_dp);
>  		intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
>  		intel_dp_start_link_train(intel_dp, crtc_state);
> -- 
> 2.43.3

-- 
Ville Syrj�l�
Intel
